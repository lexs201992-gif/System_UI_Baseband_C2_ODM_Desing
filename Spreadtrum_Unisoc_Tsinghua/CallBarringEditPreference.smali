.class public Lcom/unisoc/phone/CallBarringEditPreference;
.super Lcom/android/phone/settings/fdn/EditPinPreference;
.source "CallBarringEditPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unisoc/phone/CallBarringEditPreference$MyHandler;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "UniCallBarringEditPreference"

.field private static final PW_LENGTH:I = 0x4


# instance fields
.field private mButtonClicked:I

.field private mDefaultPassword:Ljava/lang/String;

.field private mDialogMessageDisabled:Ljava/lang/CharSequence;

.field private mDialogMessageEnabled:Ljava/lang/CharSequence;

.field private mDisableText:Ljava/lang/CharSequence;

.field private mEnableText:Ljava/lang/CharSequence;

.field private mFacility:Ljava/lang/String;

.field private final mHandler:Lcom/unisoc/phone/CallBarringEditPreference$MyHandler;

.field mIsActivated:Z

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mServiceClass:I

.field private mShowPassword:Z

.field private mSummaryOff:Ljava/lang/CharSequence;

.field private mSummaryOn:Ljava/lang/CharSequence;

.field private mSupportVtCB:Z

.field private mTcpListener:Lcom/unisoc/phone/TimeConsumingPreferenceListener;


# direct methods
.method static bridge synthetic -$$Nest$fgetmFacility(Lcom/unisoc/phone/CallBarringEditPreference;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/unisoc/phone/CallBarringEditPreference;->mFacility:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPhone(Lcom/unisoc/phone/CallBarringEditPreference;)Lcom/android/internal/telephony/Phone;
    .locals 0

    iget-object p0, p0, Lcom/unisoc/phone/CallBarringEditPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmServiceClass(Lcom/unisoc/phone/CallBarringEditPreference;)I
    .locals 0

    iget p0, p0, Lcom/unisoc/phone/CallBarringEditPreference;->mServiceClass:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmShowPassword(Lcom/unisoc/phone/CallBarringEditPreference;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/unisoc/phone/CallBarringEditPreference;->mShowPassword:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmTcpListener(Lcom/unisoc/phone/CallBarringEditPreference;)Lcom/unisoc/phone/TimeConsumingPreferenceListener;
    .locals 0

    iget-object p0, p0, Lcom/unisoc/phone/CallBarringEditPreference;->mTcpListener:Lcom/unisoc/phone/TimeConsumingPreferenceListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmShowPassword(Lcom/unisoc/phone/CallBarringEditPreference;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/unisoc/phone/CallBarringEditPreference;->mShowPassword:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mcheckResultByServiceClass(Lcom/unisoc/phone/CallBarringEditPreference;I)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/unisoc/phone/CallBarringEditPreference;->checkResultByServiceClass(I)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mgetServiceClassForCallBarring(Lcom/unisoc/phone/CallBarringEditPreference;Lcom/android/internal/telephony/Phone;)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/unisoc/phone/CallBarringEditPreference;->getServiceClassForCallBarring(Lcom/android/internal/telephony/Phone;)I

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/unisoc/phone/CallBarringEditPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    invoke-direct {p0, p1, p2}, Lcom/android/phone/settings/fdn/EditPinPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unisoc/phone/CallBarringEditPreference;->mIsActivated:Z

    new-instance v1, Lcom/unisoc/phone/CallBarringEditPreference$MyHandler;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p0, v2}, Lcom/unisoc/phone/CallBarringEditPreference$MyHandler;-><init>(Lcom/unisoc/phone/CallBarringEditPreference;Lcom/unisoc/phone/CallBarringEditPreference;Lcom/unisoc/phone/CallBarringEditPreference$MyHandler-IA;)V

    iput-object v1, p0, Lcom/unisoc/phone/CallBarringEditPreference;->mHandler:Lcom/unisoc/phone/CallBarringEditPreference$MyHandler;

    const/4 v1, 0x1

    iput v1, p0, Lcom/unisoc/phone/CallBarringEditPreference;->mServiceClass:I

    iput-boolean v0, p0, Lcom/unisoc/phone/CallBarringEditPreference;->mSupportVtCB:Z

    sget-object v2, Landroid/R$styleable;->CheckBoxPreference:[I

    invoke-virtual {p1, p2, v2, v0, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/unisoc/phone/CallBarringEditPreference;->mSummaryOn:Ljava/lang/CharSequence;

    invoke-virtual {v2, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/unisoc/phone/CallBarringEditPreference;->mSummaryOff:Ljava/lang/CharSequence;

    const v3, 0x7f11025d

    invoke-virtual {p1, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Lcom/unisoc/phone/CallBarringEditPreference;->mDisableText:Ljava/lang/CharSequence;

    const v3, 0x7f110285

    invoke-virtual {p1, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Lcom/unisoc/phone/CallBarringEditPreference;->mEnableText:Ljava/lang/CharSequence;

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    iput-object v2, p0, Lcom/unisoc/phone/CallBarringEditPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    sget-object v2, Lcom/android/phone/R$styleable;->CallBarringEditPreference:[I

    const v3, 0x7f120145

    invoke-virtual {p1, p2, v2, v0, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/unisoc/phone/CallBarringEditPreference;->mFacility:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/unisoc/phone/CallBarringEditPreference;->mDialogMessageEnabled:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/unisoc/phone/CallBarringEditPreference;->mDialogMessageDisabled:Ljava/lang/CharSequence;

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private CheckDefaultPassword(Ljava/lang/String;)Z
    .locals 2

    invoke-direct {p0}, Lcom/unisoc/phone/CallBarringEditPreference;->getCarrierConfig()Landroid/os/PersistableBundle;

    move-result-object v0

    const-string v1, "call_barring_default_password_string"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unisoc/phone/CallBarringEditPreference;->mDefaultPassword:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CheckDefaultPassword: mDefaultPassword= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/unisoc/phone/CallBarringEditPreference;->mDefaultPassword:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UniCallBarringEditPreference"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/unisoc/phone/CallBarringEditPreference;->mDefaultPassword:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/unisoc/phone/CallBarringEditPreference;->mDefaultPassword:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private checkResultByServiceClass(I)Z
    .locals 3

    iget-boolean v0, p0, Lcom/unisoc/phone/CallBarringEditPreference;->mSupportVtCB:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    :cond_1
    iget p0, p0, Lcom/unisoc/phone/CallBarringEditPreference;->mServiceClass:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    invoke-static {p1}, Lcom/unisoc/phone/GsmUmtsVideoUtils;->isVideoCallServiceClass(I)Z

    move-result p0

    return p0

    :cond_2
    if-nez p0, :cond_3

    if-eqz p1, :cond_4

    goto :goto_1

    :cond_3
    and-int/2addr p0, p1

    if-eqz p0, :cond_4

    goto :goto_1

    :cond_4
    move v1, v2

    :goto_1
    return v1
.end method

.method private getCarrierConfig()Landroid/os/PersistableBundle;
    .locals 2

    invoke-virtual {p0}, Landroid/preference/EditTextPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "carrier_config"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/unisoc/phone/CallBarringEditPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    invoke-static {}, Landroid/telephony/CarrierConfigManager;->getDefaultConfig()Landroid/os/PersistableBundle;

    move-result-object p0

    return-object p0
.end method

.method private getServiceClassForCallBarring(Lcom/android/internal/telephony/Phone;)I
    .locals 1

    iget p0, p0, Lcom/unisoc/phone/CallBarringEditPreference;->mServiceClass:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object p0

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/phone/PhoneGlobals;->getCarrierConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string p1, "call_barring_default_service_class_int"

    invoke-virtual {p0, p1, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    goto :goto_0

    :cond_0
    move p0, v0

    :cond_1
    :goto_0
    return p0
.end method

.method private setShowPassword()V
    .locals 2

    iget-object v0, p0, Lcom/unisoc/phone/CallBarringEditPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/imsphone/ImsPhone;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->isUtEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/unisoc/phone/CallBarringEditPreference;->getCarrierConfig()Landroid/os/PersistableBundle;

    move-result-object v0

    const-string v1, "oem_key_call_barring_require_password"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unisoc/phone/CallBarringEditPreference;->mShowPassword:Z

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unisoc/phone/CallBarringEditPreference;->mShowPassword:Z

    :goto_1
    return-void
.end method


# virtual methods
.method handleCallBarringResult(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/unisoc/phone/CallBarringEditPreference;->mIsActivated:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleCallBarringResult: mIsActivated="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/unisoc/phone/CallBarringEditPreference;->mIsActivated:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UniCallBarringEditPreference"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/unisoc/phone/CallBarringEditPreference;->mTcpListener:Lcom/unisoc/phone/TimeConsumingPreferenceListener;

    if-eqz v0, :cond_0

    check-cast v0, Lcom/unisoc/phone/TimeConsumingPreferenceActivity;

    invoke-virtual {v0, p0, p1}, Lcom/unisoc/phone/TimeConsumingPreferenceActivity;->onUpdate(Landroid/preference/Preference;Z)V

    :cond_0
    return-void
.end method

.method init(Lcom/unisoc/phone/TimeConsumingPreferenceListener;ZLcom/android/internal/telephony/Phone;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "init: phone id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UniCallBarringEditPreference"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p3, p0, Lcom/unisoc/phone/CallBarringEditPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    iput-object p1, p0, Lcom/unisoc/phone/CallBarringEditPreference;->mTcpListener:Lcom/unisoc/phone/TimeConsumingPreferenceListener;

    if-nez p2, :cond_0

    iget-object p1, p0, Lcom/unisoc/phone/CallBarringEditPreference;->mFacility:Ljava/lang/String;

    iget-object p2, p0, Lcom/unisoc/phone/CallBarringEditPreference;->mHandler:Lcom/unisoc/phone/CallBarringEditPreference$MyHandler;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p2

    iget-object v0, p0, Lcom/unisoc/phone/CallBarringEditPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-direct {p0, v0}, Lcom/unisoc/phone/CallBarringEditPreference;->getServiceClassForCallBarring(Lcom/android/internal/telephony/Phone;)I

    move-result v0

    const-string v1, ""

    invoke-virtual {p3, p1, v1, p2, v0}, Lcom/android/internal/telephony/Phone;->getCallBarring(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;I)V

    iget-object p1, p0, Lcom/unisoc/phone/CallBarringEditPreference;->mTcpListener:Lcom/unisoc/phone/TimeConsumingPreferenceListener;

    if-eqz p1, :cond_0

    const/4 p2, 0x1

    invoke-interface {p1, p0, p2}, Lcom/unisoc/phone/TimeConsumingPreferenceListener;->onStarted(Landroid/preference/Preference;Z)V

    :cond_0
    return-void
.end method

.method public isToggled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/unisoc/phone/CallBarringEditPreference;->mIsActivated:Z

    return p0
.end method

.method public needInputMethod()Z
    .locals 0

    iget-boolean p0, p0, Lcom/unisoc/phone/CallBarringEditPreference;->mShowPassword:Z

    return p0
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/phone/settings/fdn/EditPinPreference;->onBindDialogView(Landroid/view/View;)V

    const/4 v0, -0x2

    iput v0, p0, Lcom/unisoc/phone/CallBarringEditPreference;->mButtonClicked:I

    const v0, 0x1020003

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setSingleLine(Z)V

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    invoke-static {}, Landroid/text/method/DigitsKeyListener;->getInstance()Landroid/text/method/DigitsKeyListener;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    iget-boolean p0, p0, Lcom/unisoc/phone/CallBarringEditPreference;->mShowPassword:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/16 p0, 0x8

    :goto_0
    invoke-virtual {p1, p0}, Landroid/widget/EditText;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/preference/EditTextPreference;->onBindView(Landroid/view/View;)V

    const v0, 0x1020010

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_3

    iget-boolean v0, p0, Lcom/unisoc/phone/CallBarringEditPreference;->mIsActivated:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unisoc/phone/CallBarringEditPreference;->mSummaryOn:Ljava/lang/CharSequence;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/preference/EditTextPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/unisoc/phone/CallBarringEditPreference;->mSummaryOff:Ljava/lang/CharSequence;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/preference/EditTextPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object p0

    move-object v0, p0

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    const/16 p0, 0x8

    :goto_1
    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eq p0, v0, :cond_3

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_3
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/preference/EditTextPreference;->onClick(Landroid/content/DialogInterface;I)V

    iput p2, p0, Lcom/unisoc/phone/CallBarringEditPreference;->mButtonClicked:I

    return-void
.end method

.method protected onDialogClosed(Z)V
    .locals 8

    invoke-super {p0, p1}, Lcom/android/phone/settings/fdn/EditPinPreference;->onDialogClosed(Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDialogClosed: mButtonClicked="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/unisoc/phone/CallBarringEditPreference;->mButtonClicked:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", positiveResult="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "UniCallBarringEditPreference"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget p1, p0, Lcom/unisoc/phone/CallBarringEditPreference;->mButtonClicked:I

    const/4 v1, -0x2

    if-eq p1, v1, :cond_4

    iget-boolean p1, p0, Lcom/unisoc/phone/CallBarringEditPreference;->mShowPassword:Z

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/unisoc/phone/CallBarringEditPreference;->CheckDefaultPassword(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Landroid/preference/EditTextPreference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0}, Landroid/preference/EditTextPreference;->getContext()Landroid/content/Context;

    move-result-object p0

    const v2, 0x7f11015d

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    const-string p0, "onDialogClosed: password error"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/preference/EditTextPreference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0}, Landroid/preference/EditTextPreference;->getContext()Landroid/content/Context;

    move-result-object p0

    const v0, 0x7f11015f

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void

    :cond_2
    const/4 p1, 0x0

    :cond_3
    move-object v5, p1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDialogClosed: password="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/unisoc/phone/CallBarringEditPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v3, p0, Lcom/unisoc/phone/CallBarringEditPreference;->mFacility:Ljava/lang/String;

    iget-boolean p1, p0, Lcom/unisoc/phone/CallBarringEditPreference;->mIsActivated:Z

    const/4 v0, 0x1

    xor-int/lit8 v4, p1, 0x1

    iget-object p1, p0, Lcom/unisoc/phone/CallBarringEditPreference;->mHandler:Lcom/unisoc/phone/CallBarringEditPreference$MyHandler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    iget-object p1, p0, Lcom/unisoc/phone/CallBarringEditPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-direct {p0, p1}, Lcom/unisoc/phone/CallBarringEditPreference;->getServiceClassForCallBarring(Lcom/android/internal/telephony/Phone;)I

    move-result v7

    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/telephony/Phone;->setCallBarring(Ljava/lang/String;ZLjava/lang/String;Landroid/os/Message;I)V

    iget-object p1, p0, Lcom/unisoc/phone/CallBarringEditPreference;->mTcpListener:Lcom/unisoc/phone/TimeConsumingPreferenceListener;

    if-eqz p1, :cond_4

    check-cast p1, Lcom/unisoc/phone/TimeConsumingPreferenceActivity;

    invoke-virtual {p1}, Lcom/unisoc/phone/TimeConsumingPreferenceActivity;->suppServiceStart()V

    iget-object p1, p0, Lcom/unisoc/phone/CallBarringEditPreference;->mTcpListener:Lcom/unisoc/phone/TimeConsumingPreferenceListener;

    invoke-interface {p1, p0, v1}, Lcom/unisoc/phone/TimeConsumingPreferenceListener;->onStarted(Landroid/preference/Preference;Z)V

    :cond_4
    return-void
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-boolean v0, p0, Lcom/unisoc/phone/CallBarringEditPreference;->mIsActivated:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unisoc/phone/CallBarringEditPreference;->mDisableText:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/unisoc/phone/CallBarringEditPreference;->mEnableText:Ljava/lang/CharSequence;

    :goto_0
    invoke-virtual {p1, v0, p0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    return-void
.end method

.method setInputMethodNeeded(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/unisoc/phone/CallBarringEditPreference;->mShowPassword:Z

    return-void
.end method

.method public setServiceClass(I)V
    .locals 0

    iput p1, p0, Lcom/unisoc/phone/CallBarringEditPreference;->mServiceClass:I

    return-void
.end method

.method public setToggled(Z)Lcom/unisoc/phone/CallBarringEditPreference;
    .locals 0

    iput-boolean p1, p0, Lcom/unisoc/phone/CallBarringEditPreference;->mIsActivated:Z

    invoke-virtual {p0}, Lcom/unisoc/phone/CallBarringEditPreference;->updateSummaryText()V

    return-object p0
.end method

.method public setVideoCallBattingSupport(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/unisoc/phone/CallBarringEditPreference;->mSupportVtCB:Z

    return-void
.end method

.method public shouldDisableDependents()Z
    .locals 0

    iget-boolean p0, p0, Lcom/unisoc/phone/CallBarringEditPreference;->mIsActivated:Z

    return p0
.end method

.method protected showDialog(Landroid/os/Bundle;)V
    .locals 2

    invoke-direct {p0}, Lcom/unisoc/phone/CallBarringEditPreference;->setShowPassword()V

    iget-boolean v0, p0, Lcom/unisoc/phone/CallBarringEditPreference;->mShowPassword:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/preference/EditTextPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1103b7

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/preference/EditTextPreference;->setDialogMessage(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_0
    iget-boolean v0, p0, Lcom/unisoc/phone/CallBarringEditPreference;->mIsActivated:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/unisoc/phone/CallBarringEditPreference;->mDialogMessageEnabled:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/unisoc/phone/CallBarringEditPreference;->mDialogMessageDisabled:Ljava/lang/CharSequence;

    :goto_0
    invoke-virtual {p0, v0}, Landroid/preference/EditTextPreference;->setDialogMessage(Ljava/lang/CharSequence;)V

    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showDialog: mShowPassword: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/unisoc/phone/CallBarringEditPreference;->mShowPassword:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mIsActivated: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/unisoc/phone/CallBarringEditPreference;->mIsActivated:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UniCallBarringEditPreference"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Landroid/preference/EditTextPreference;->showDialog(Landroid/os/Bundle;)V

    return-void
.end method

.method updateSummaryText()V
    .locals 1

    invoke-virtual {p0}, Landroid/preference/EditTextPreference;->notifyChanged()V

    invoke-virtual {p0}, Lcom/unisoc/phone/CallBarringEditPreference;->shouldDisableDependents()Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/preference/EditTextPreference;->notifyDependencyChange(Z)V

    return-void
.end method
