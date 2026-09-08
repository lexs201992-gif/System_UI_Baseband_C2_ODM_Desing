.class public Lcom/android/services/telephony/rcs/validator/MalformedSipMessageValidator;
.super Ljava/lang/Object;
.source "MalformedSipMessageValidator.java"

# interfaces
.implements Lcom/android/services/telephony/rcs/validator/SipMessageValidator;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public validate(Landroid/telephony/ims/SipMessage;)Lcom/android/services/telephony/rcs/validator/ValidationResult;
    .locals 2

    invoke-virtual {p1}, Landroid/telephony/ims/SipMessage;->getStartLine()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/SipMessageParsingUtils;->isSipRequest(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-virtual {p1}, Landroid/telephony/ims/SipMessage;->getStartLine()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/SipMessageParsingUtils;->isSipResponse(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    new-instance p0, Lcom/android/services/telephony/rcs/validator/ValidationResult;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "malformed start line: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/telephony/ims/SipMessage;->getStartLine()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Lcom/android/services/telephony/rcs/validator/ValidationResult;-><init>(ILjava/lang/String;)V

    return-object p0

    :cond_0
    sget-object p0, Lcom/android/services/telephony/rcs/validator/ValidationResult;->SUCCESS:Lcom/android/services/telephony/rcs/validator/ValidationResult;

    return-object p0
.end method
