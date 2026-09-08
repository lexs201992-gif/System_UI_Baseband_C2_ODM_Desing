.class public Lcom/android/services/telephony/rcs/validator/OutgoingTransportStateValidator;
.super Ljava/lang/Object;
.source "OutgoingTransportStateValidator.java"

# interfaces
.implements Lcom/android/services/telephony/rcs/validator/SipMessageValidator;


# static fields
.field private static final ENUM_TO_STRING_MAP:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAllowedTags:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDeniedTags:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mReason:I

.field private mRestrictedFeatureTags:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mSipSessionTracker:Lcom/android/services/telephony/rcs/SipSessionTracker;

.field private mState:I


# direct methods
.method public static synthetic $r8$lambda$2RmKQ6d5uaBV1jHziigL9XRlHDE(Lcom/android/services/telephony/rcs/validator/OutgoingTransportStateValidator;Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/services/telephony/rcs/validator/OutgoingTransportStateValidator;->lambda$validateMessageFeatureTag$3(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$DjYEnMXcNI3dwdJOaTZyM3bNrL4(Lcom/android/services/telephony/rcs/validator/OutgoingTransportStateValidator;Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/services/telephony/rcs/validator/OutgoingTransportStateValidator;->lambda$validateMessageFeatureTag$1(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$IPJKoWjcvzdYw-HpzeVPVfAEdQE(Lcom/android/services/telephony/rcs/validator/OutgoingTransportStateValidator;Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/services/telephony/rcs/validator/OutgoingTransportStateValidator;->lambda$validateMessageFeatureTag$2(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$LMtVIDJBAqBEMIPn0KrKLFe9FAc([Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/android/services/telephony/rcs/validator/OutgoingTransportStateValidator;->lambda$verifyOpenMessage$0([Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/util/ArrayMap;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    sput-object v0, Lcom/android/services/telephony/rcs/validator/OutgoingTransportStateValidator;->ENUM_TO_STRING_MAP:Landroid/util/ArrayMap;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CLOSED"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->append(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "RESTRICTED"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->append(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "OPEN"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->append(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/services/telephony/rcs/SipSessionTracker;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/services/telephony/rcs/validator/OutgoingTransportStateValidator;->mState:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/services/telephony/rcs/validator/OutgoingTransportStateValidator;->mReason:I

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/services/telephony/rcs/validator/OutgoingTransportStateValidator;->mAllowedTags:Ljava/util/Set;

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/services/telephony/rcs/validator/OutgoingTransportStateValidator;->mDeniedTags:Ljava/util/Set;

    iput-object p1, p0, Lcom/android/services/telephony/rcs/validator/OutgoingTransportStateValidator;->mSipSessionTracker:Lcom/android/services/telephony/rcs/SipSessionTracker;

    return-void
.end method

.method private synthetic lambda$validateMessageFeatureTag$1(Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/services/telephony/rcs/validator/OutgoingTransportStateValidator;->mAllowedTags:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$validateMessageFeatureTag$2(Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/services/telephony/rcs/validator/OutgoingTransportStateValidator;->mDeniedTags:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$validateMessageFeatureTag$3(Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/services/telephony/rcs/validator/OutgoingTransportStateValidator;->mRestrictedFeatureTags:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$verifyOpenMessage$0([Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    aget-object p0, p0, v0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private validateMessageFeatureTag(Landroid/telephony/ims/SipMessage;)Lcom/android/services/telephony/rcs/validator/ValidationResult;
    .locals 8

    invoke-virtual {p1}, Landroid/telephony/ims/SipMessage;->getHeaderSection()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/telephony/SipMessageParsingUtils;->getAcceptContactFeatureTags(Ljava/lang/String;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/android/services/telephony/rcs/validator/OutgoingTransportStateValidator$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/services/telephony/rcs/validator/OutgoingTransportStateValidator$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/android/services/telephony/rcs/validator/OutgoingTransportStateValidator$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/android/services/telephony/rcs/validator/OutgoingTransportStateValidator$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/services/telephony/rcs/validator/OutgoingTransportStateValidator$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/android/services/telephony/rcs/validator/OutgoingTransportStateValidator$$ExternalSyntheticLambda3;-><init>(Lcom/android/services/telephony/rcs/validator/OutgoingTransportStateValidator;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->count()J

    move-result-wide v0

    invoke-interface {p1}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/android/services/telephony/rcs/validator/OutgoingTransportStateValidator$$ExternalSyntheticLambda4;

    invoke-direct {v3, p0}, Lcom/android/services/telephony/rcs/validator/OutgoingTransportStateValidator$$ExternalSyntheticLambda4;-><init>(Lcom/android/services/telephony/rcs/validator/OutgoingTransportStateValidator;)V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/stream/Stream;->count()J

    move-result-wide v2

    invoke-interface {p1}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v5, Lcom/android/services/telephony/rcs/validator/OutgoingTransportStateValidator$$ExternalSyntheticLambda5;

    invoke-direct {v5, p0}, Lcom/android/services/telephony/rcs/validator/OutgoingTransportStateValidator$$ExternalSyntheticLambda5;-><init>(Lcom/android/services/telephony/rcs/validator/OutgoingTransportStateValidator;)V

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/Stream;->count()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long p0, v2, v6

    const/4 v2, 0x6

    if-lez p0, :cond_0

    new-instance p0, Lcom/android/services/telephony/rcs/validator/ValidationResult;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "contains denied tags in Accept-Contact: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v2, p1}, Lcom/android/services/telephony/rcs/validator/ValidationResult;-><init>(ILjava/lang/String;)V

    return-object p0

    :cond_0
    cmp-long p0, v4, v6

    if-lez p0, :cond_1

    new-instance p0, Lcom/android/services/telephony/rcs/validator/ValidationResult;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "contains restricted tags in Accept-Contact: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v2, p1}, Lcom/android/services/telephony/rcs/validator/ValidationResult;-><init>(ILjava/lang/String;)V

    return-object p0

    :cond_1
    cmp-long p0, v0, v6

    if-nez p0, :cond_2

    new-instance p0, Lcom/android/services/telephony/rcs/validator/ValidationResult;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No Accept-Contact feature tags are in accepted feature tag list: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v2, p1}, Lcom/android/services/telephony/rcs/validator/ValidationResult;-><init>(ILjava/lang/String;)V

    return-object p0

    :cond_2
    sget-object p0, Lcom/android/services/telephony/rcs/validator/ValidationResult;->SUCCESS:Lcom/android/services/telephony/rcs/validator/ValidationResult;

    return-object p0
.end method

.method private verifyOpenMessage(Landroid/telephony/ims/SipMessage;)Lcom/android/services/telephony/rcs/validator/ValidationResult;
    .locals 3

    invoke-virtual {p1}, Landroid/telephony/ims/SipMessage;->getStartLine()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/SipMessageParsingUtils;->isSipRequest(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p0, Lcom/android/services/telephony/rcs/validator/ValidationResult;->SUCCESS:Lcom/android/services/telephony/rcs/validator/ValidationResult;

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/android/services/telephony/rcs/validator/OutgoingTransportStateValidator;->mRestrictedFeatureTags:Ljava/util/Set;

    if-nez v0, :cond_1

    new-instance p0, Lcom/android/services/telephony/rcs/validator/ValidationResult;

    const/16 p1, 0x9

    const-string v0, "no reg state from vendor"

    invoke-direct {p0, p1, v0}, Lcom/android/services/telephony/rcs/validator/ValidationResult;-><init>(ILjava/lang/String;)V

    return-object p0

    :cond_1
    invoke-virtual {p1}, Landroid/telephony/ims/SipMessage;->getStartLine()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/SipMessageParsingUtils;->splitStartLineAndVerify(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    new-instance p0, Lcom/android/services/telephony/rcs/validator/ValidationResult;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "couldn\'t parse start line: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/telephony/ims/SipMessage;->getStartLine()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Lcom/android/services/telephony/rcs/validator/ValidationResult;-><init>(ILjava/lang/String;)V

    return-object p0

    :cond_2
    sget-object v1, Lcom/android/services/telephony/rcs/SipSessionTracker;->SIP_REQUEST_DIALOG_START_METHODS:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/services/telephony/rcs/validator/OutgoingTransportStateValidator$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Lcom/android/services/telephony/rcs/validator/OutgoingTransportStateValidator$$ExternalSyntheticLambda0;-><init>([Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/services/telephony/rcs/validator/OutgoingTransportStateValidator;->getAllowedCallIds()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p1}, Landroid/telephony/ims/SipMessage;->getCallIdParameter()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_4

    invoke-direct {p0, p1}, Lcom/android/services/telephony/rcs/validator/OutgoingTransportStateValidator;->validateMessageFeatureTag(Landroid/telephony/ims/SipMessage;)Lcom/android/services/telephony/rcs/validator/ValidationResult;

    move-result-object p0

    return-object p0

    :cond_4
    sget-object p0, Lcom/android/services/telephony/rcs/validator/ValidationResult;->SUCCESS:Lcom/android/services/telephony/rcs/validator/ValidationResult;

    return-object p0
.end method

.method private verifyRestrictedMessage(Landroid/telephony/ims/SipMessage;)Lcom/android/services/telephony/rcs/validator/ValidationResult;
    .locals 3

    invoke-virtual {p1}, Landroid/telephony/ims/SipMessage;->getStartLine()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/SipMessageParsingUtils;->isSipRequest(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p0, Lcom/android/services/telephony/rcs/validator/ValidationResult;->SUCCESS:Lcom/android/services/telephony/rcs/validator/ValidationResult;

    return-object p0

    :cond_0
    invoke-virtual {p1}, Landroid/telephony/ims/SipMessage;->getCallIdParameter()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance p1, Lcom/android/services/telephony/rcs/validator/ValidationResult;

    iget p0, p0, Lcom/android/services/telephony/rcs/validator/OutgoingTransportStateValidator;->mReason:I

    const-string v0, "empty call id"

    invoke-direct {p1, p0, v0}, Lcom/android/services/telephony/rcs/validator/ValidationResult;-><init>(ILjava/lang/String;)V

    return-object p1

    :cond_1
    invoke-virtual {p0}, Lcom/android/services/telephony/rcs/validator/OutgoingTransportStateValidator;->getAllowedCallIds()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Lcom/android/services/telephony/rcs/validator/ValidationResult;

    iget p0, p0, Lcom/android/services/telephony/rcs/validator/OutgoingTransportStateValidator;->mReason:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "call id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not associated with any active sessions"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/android/services/telephony/rcs/validator/ValidationResult;-><init>(ILjava/lang/String;)V

    return-object v0

    :cond_2
    sget-object p0, Lcom/android/services/telephony/rcs/validator/ValidationResult;->SUCCESS:Lcom/android/services/telephony/rcs/validator/ValidationResult;

    return-object p0
.end method


# virtual methods
.method public close(I)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/services/telephony/rcs/validator/OutgoingTransportStateValidator;->mState:I

    iput p1, p0, Lcom/android/services/telephony/rcs/validator/OutgoingTransportStateValidator;->mReason:I

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/android/services/telephony/rcs/validator/OutgoingTransportStateValidator;->mAllowedTags:Ljava/util/Set;

    return-void
.end method

.method public getAllowedCallIds()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/services/telephony/rcs/validator/OutgoingTransportStateValidator;->mSipSessionTracker:Lcom/android/services/telephony/rcs/SipSessionTracker;

    invoke-virtual {v0}, Lcom/android/services/telephony/rcs/SipSessionTracker;->getEarlyDialogs()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    iget-object p0, p0, Lcom/android/services/telephony/rcs/validator/OutgoingTransportStateValidator;->mSipSessionTracker:Lcom/android/services/telephony/rcs/SipSessionTracker;

    invoke-virtual {p0}, Lcom/android/services/telephony/rcs/SipSessionTracker;->getConfirmedDialogs()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {v0, p0}, Ljava/util/stream/Stream;->concat(Ljava/util/stream/Stream;Ljava/util/stream/Stream;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/services/telephony/rcs/SipSessionTracker$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/services/telephony/rcs/SipSessionTracker$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    return-object p0
.end method

.method public open(Ljava/util/Set;Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/services/telephony/rcs/validator/OutgoingTransportStateValidator;->mState:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/services/telephony/rcs/validator/OutgoingTransportStateValidator;->mReason:I

    invoke-interface {p1}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/android/services/telephony/rcs/validator/OutgoingTransportStateValidator$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/android/services/telephony/rcs/validator/OutgoingTransportStateValidator$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/android/services/telephony/rcs/validator/OutgoingTransportStateValidator$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/services/telephony/rcs/validator/OutgoingTransportStateValidator$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    iput-object p1, p0, Lcom/android/services/telephony/rcs/validator/OutgoingTransportStateValidator;->mAllowedTags:Ljava/util/Set;

    invoke-interface {p2}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance p2, Lcom/android/services/telephony/rcs/validator/OutgoingTransportStateValidator$$ExternalSyntheticLambda2;

    invoke-direct {p2}, Lcom/android/services/telephony/rcs/validator/OutgoingTransportStateValidator$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance p2, Lcom/android/services/telephony/rcs/validator/OutgoingTransportStateValidator$$ExternalSyntheticLambda1;

    invoke-direct {p2}, Lcom/android/services/telephony/rcs/validator/OutgoingTransportStateValidator$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    iput-object p1, p0, Lcom/android/services/telephony/rcs/validator/OutgoingTransportStateValidator;->mDeniedTags:Ljava/util/Set;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/services/telephony/rcs/validator/OutgoingTransportStateValidator;->mRestrictedFeatureTags:Ljava/util/Set;

    return-void
.end method

.method public restrict(I)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/services/telephony/rcs/validator/OutgoingTransportStateValidator;->mState:I

    iput p1, p0, Lcom/android/services/telephony/rcs/validator/OutgoingTransportStateValidator;->mReason:I

    return-void
.end method

.method public restrictFeatureTags(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/android/services/telephony/rcs/validator/OutgoingTransportStateValidator$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/android/services/telephony/rcs/validator/OutgoingTransportStateValidator$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/android/services/telephony/rcs/validator/OutgoingTransportStateValidator$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/services/telephony/rcs/validator/OutgoingTransportStateValidator$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    iput-object p1, p0, Lcom/android/services/telephony/rcs/validator/OutgoingTransportStateValidator;->mRestrictedFeatureTags:Ljava/util/Set;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Outgoing Transport State: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/services/telephony/rcs/validator/OutgoingTransportStateValidator;->ENUM_TO_STRING_MAP:Landroid/util/ArrayMap;

    iget v2, p0, Lcom/android/services/telephony/rcs/validator/OutgoingTransportStateValidator;->mState:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Lcom/android/services/telephony/rcs/validator/OutgoingTransportStateValidator;->mState:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", reason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/telephony/ims/SipDelegateManager;->MESSAGE_FAILURE_REASON_STRING_MAP:Landroid/util/ArrayMap;

    iget v2, p0, Lcom/android/services/telephony/rcs/validator/OutgoingTransportStateValidator;->mReason:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Lcom/android/services/telephony/rcs/validator/OutgoingTransportStateValidator;->mReason:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", allowed tags: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/services/telephony/rcs/validator/OutgoingTransportStateValidator;->mAllowedTags:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", restricted tags: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/services/telephony/rcs/validator/OutgoingTransportStateValidator;->mRestrictedFeatureTags:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", denied tags: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/services/telephony/rcs/validator/OutgoingTransportStateValidator;->mDeniedTags:Ljava/util/Set;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public validate(Landroid/telephony/ims/SipMessage;)Lcom/android/services/telephony/rcs/validator/ValidationResult;
    .locals 2

    iget v0, p0, Lcom/android/services/telephony/rcs/validator/OutgoingTransportStateValidator;->mState:I

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const-string p0, "SipTransportC"

    const-string p1, "OutgoingTSV - warning, unexpected state"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lcom/android/services/telephony/rcs/validator/ValidationResult;->SUCCESS:Lcom/android/services/telephony/rcs/validator/ValidationResult;

    return-object p0

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/services/telephony/rcs/validator/OutgoingTransportStateValidator;->verifyOpenMessage(Landroid/telephony/ims/SipMessage;)Lcom/android/services/telephony/rcs/validator/ValidationResult;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/services/telephony/rcs/validator/OutgoingTransportStateValidator;->verifyRestrictedMessage(Landroid/telephony/ims/SipMessage;)Lcom/android/services/telephony/rcs/validator/ValidationResult;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance p1, Lcom/android/services/telephony/rcs/validator/ValidationResult;

    iget p0, p0, Lcom/android/services/telephony/rcs/validator/OutgoingTransportStateValidator;->mReason:I

    const-string v0, "outgoing transport closed."

    invoke-direct {p1, p0, v0}, Lcom/android/services/telephony/rcs/validator/ValidationResult;-><init>(ILjava/lang/String;)V

    return-object p1
.end method
