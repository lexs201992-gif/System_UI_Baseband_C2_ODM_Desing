.class public Lcom/android/services/telephony/unisoc/voiceclearcode/VoiceClearCodeHelper;
.super Ljava/lang/Object;
.source "VoiceClearCodeHelper.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEnTextRequiredHashmap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mEsTextRequiredHashmap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSpecialVoiceClearCode:Z

.field private mSubId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/services/telephony/unisoc/voiceclearcode/VoiceClearCodeHelper;->mEsTextRequiredHashmap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/services/telephony/unisoc/voiceclearcode/VoiceClearCodeHelper;->mEnTextRequiredHashmap:Ljava/util/HashMap;

    iput-object p1, p0, Lcom/android/services/telephony/unisoc/voiceclearcode/VoiceClearCodeHelper;->mContext:Landroid/content/Context;

    iput p2, p0, Lcom/android/services/telephony/unisoc/voiceclearcode/VoiceClearCodeHelper;->mSubId:I

    invoke-direct {p0}, Lcom/android/services/telephony/unisoc/voiceclearcode/VoiceClearCodeHelper;->isSupportVoiceClearCodeSpecial()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/services/telephony/unisoc/voiceclearcode/VoiceClearCodeHelper;->mSpecialVoiceClearCode:Z

    return-void
.end method

.method private getAttributeValue(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 4

    const-string v0, "getAttributeValue: causeNumber = %d"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "VoiceClearCodeHelper"

    invoke-static {v2, v0, v1}, Lcom/android/services/telephony/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "persist.sys.locale"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getAttributeValue: language = %s"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v1, v3}, Lcom/android/services/telephony/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v1, ""

    if-eqz v0, :cond_0

    const-string v2, "es"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/services/telephony/unisoc/voiceclearcode/VoiceClearCodeHelper;->mEsTextRequiredHashmap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/services/telephony/unisoc/voiceclearcode/VoiceClearCodeHelper;->mEsTextRequiredHashmap:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/services/telephony/unisoc/voiceclearcode/VoiceClearCodeHelper;->mEnTextRequiredHashmap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/services/telephony/unisoc/voiceclearcode/VoiceClearCodeHelper;->mEnTextRequiredHashmap:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto :goto_0

    :cond_1
    move-object p0, v1

    :goto_0
    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    move-object v1, p0

    :goto_1
    return-object v1
.end method

.method private isSupportVoiceClearCodeSpecial()Z
    .locals 2

    iget-object v0, p0, Lcom/android/services/telephony/unisoc/voiceclearcode/VoiceClearCodeHelper;->mContext:Landroid/content/Context;

    const-string v1, "carrier_config"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget p0, p0, Lcom/android/services/telephony/unisoc/voiceclearcode/VoiceClearCodeHelper;->mSubId:I

    invoke-virtual {v0, p0}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object p0

    invoke-static {p0}, Landroid/telephony/CarrierConfigManager;->isConfigForIdentifiedCarrier(Landroid/os/PersistableBundle;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "support_voice_clear_code_special"

    invoke-virtual {p0, v0, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    :cond_1
    return v1
.end method

.method private parseXml(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/HashMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string p0, "VoiceClearCodeHelper"

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "resources"

    invoke-static {p1, v1}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    const-string v1, "number"

    const/4 v2, 0x0

    invoke-interface {p1, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const-string v3, "text_required"

    invoke-interface {p1, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "parseXml IOException"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, p1, p2, v0}, Lcom/android/services/telephony/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :catch_1
    move-exception p1

    const-string p2, "parseXml XmlPullParserException"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, p1, p2, v0}, Lcom/android/services/telephony/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_1
    return-void
.end method


# virtual methods
.method public getVoiceClearCodeLabel(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    const-string v1, ""

    const-string v2, "VoiceClearCodeHelper"

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v3, "getVoiceClearCodeLabel: reason = %s"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/android/services/telephony/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v3, "Call ended during conference merge process"

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {p0}, Lcom/android/services/telephony/unisoc/voiceclearcode/VoiceClearCodeHelper;->parserAttributeValue()V

    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/services/telephony/unisoc/voiceclearcode/VoiceClearCodeHelper;->getAttributeValue(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "getVoiceClearCodeLabel NumberFormatException when parse vendorCause."

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v2, p0, p1, v0}, Lcom/android/services/telephony/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    :cond_2
    :goto_0
    const-string p0, "getVoiceClearCodeLabel reason is null or reason.length is 0."

    new-array p1, v0, [Ljava/lang/Object;

    invoke-static {v2, p0, p1}, Lcom/android/services/telephony/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1
.end method

.method public parserAttributeValue()V
    .locals 4

    iget-object v0, p0, Lcom/android/services/telephony/unisoc/voiceclearcode/VoiceClearCodeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/services/telephony/unisoc/voiceclearcode/VoiceClearCodeHelper;->mSpecialVoiceClearCode:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "VoiceClearCodeHelper"

    const-string v3, "parserAttributeValue: mSpecialVoiceClearCode = %b"

    invoke-static {v2, v3, v1}, Lcom/android/services/telephony/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-boolean v1, p0, Lcom/android/services/telephony/unisoc/voiceclearcode/VoiceClearCodeHelper;->mSpecialVoiceClearCode:Z

    if-eqz v1, :cond_0

    const v1, 0x7f140014

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    goto :goto_0

    :cond_0
    const v1, 0x7f140013

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    :goto_0
    iget-object v2, p0, Lcom/android/services/telephony/unisoc/voiceclearcode/VoiceClearCodeHelper;->mEsTextRequiredHashmap:Ljava/util/HashMap;

    invoke-direct {p0, v1, v2}, Lcom/android/services/telephony/unisoc/voiceclearcode/VoiceClearCodeHelper;->parseXml(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/HashMap;)V

    const v1, 0x7f140015

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    iget-object v1, p0, Lcom/android/services/telephony/unisoc/voiceclearcode/VoiceClearCodeHelper;->mEnTextRequiredHashmap:Ljava/util/HashMap;

    invoke-direct {p0, v0, v1}, Lcom/android/services/telephony/unisoc/voiceclearcode/VoiceClearCodeHelper;->parseXml(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/HashMap;)V

    return-void
.end method

.method public showToastMessage(Ljava/lang/String;)V
    .locals 3

    const-string v0, "showToastMessage: reason = %s"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "VoiceClearCodeHelper"

    invoke-static {v2, v0, v1}, Lcom/android/services/telephony/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/android/services/telephony/unisoc/voiceclearcode/VoiceClearCodeHelper;->getVoiceClearCodeLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/services/telephony/unisoc/voiceclearcode/VoiceClearCodeHelper;->mContext:Landroid/content/Context;

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method
