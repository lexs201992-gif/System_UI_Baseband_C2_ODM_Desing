.class public Lcom/unisoc/phone/settings/fdn/EditFdnContactScreen;
.super Lcom/unisoc/phone/settings/fdn/BaseFdnContactScreen;
.source "EditFdnContactScreen.java"


# static fields
.field private static final FDN_FULL:Ljava/lang/String; = "fdn_full"

.field private static final MENU_DELETE:I = 0x2

.field private static final NUM_PROJECTION:[Ljava/lang/String;

.field private static final OVER_FDN_NAME_MAX_LENGTH:Ljava/lang/String; = "over_fdn_name_max_length"

.field private static final REEOR_OVER_NAME_MAX_LENGTH:I = -0x4


# instance fields
.field private mAddContact:Z

.field private mButton:Landroid/widget/Button;

.field private final mClicked:Landroid/view/View$OnClickListener;

.field private mDataBusy:Z

.field private mFdnNumberLimitLength:I

.field private mNameField:Landroid/widget/EditText;

.field private mNumberField:Landroid/widget/EditText;

.field private final mOnFocusChangeHandler:Landroid/view/View$OnFocusChangeListener;

.field private mPinFieldContainer:Landroid/widget/LinearLayout;

.field private final mTextWatcher:Landroid/text/TextWatcher;


# direct methods
.method public static synthetic $r8$lambda$RaOJwqLLkEqZL_YM57FVzHShuS0(Lcom/unisoc/phone/settings/fdn/EditFdnContactScreen;)V
    .locals 0

    invoke-direct {p0}, Lcom/unisoc/phone/settings/fdn/EditFdnContactScreen;->lambda$handleResult$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$Y1KcHApt-xgF0q5ncPQ6lovA0YU(Lcom/unisoc/phone/settings/fdn/EditFdnContactScreen;)V
    .locals 0

    invoke-direct {p0}, Lcom/unisoc/phone/settings/fdn/EditFdnContactScreen;->lambda$handleResult$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$_OgNkkhfityFo0dBi-IpGBmqbWQ(Lcom/unisoc/phone/settings/fdn/EditFdnContactScreen;)V
    .locals 0

    invoke-direct {p0}, Lcom/unisoc/phone/settings/fdn/EditFdnContactScreen;->lambda$handleResult$2()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmButton(Lcom/unisoc/phone/settings/fdn/EditFdnContactScreen;)Landroid/widget/Button;
    .locals 0

    iget-object p0, p0, Lcom/unisoc/phone/settings/fdn/EditFdnContactScreen;->mButton:Landroid/widget/Button;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDataBusy(Lcom/unisoc/phone/settings/fdn/EditFdnContactScreen;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/unisoc/phone/settings/fdn/EditFdnContactScreen;->mDataBusy:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmNameField(Lcom/unisoc/phone/settings/fdn/EditFdnContactScreen;)Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Lcom/unisoc/phone/settings/fdn/EditFdnContactScreen;->mNameField:Landroid/widget/EditText;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmNumberField(Lcom/unisoc/phone/settings/fdn/EditFdnContactScreen;)Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Lcom/unisoc/phone/settings/fdn/EditFdnContactScreen;->mNumberField:Landroid/widget/EditText;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPinFieldContainer(Lcom/unisoc/phone/settings/fdn/EditFdnContactScreen;)Landroid/widget/LinearLayout;
    .locals 0

    iget-object p0, p0, Lcom/unisoc/phone/settings/fdn/EditFdnContactScreen;->mPinFieldContainer:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetNumberFromTextField(Lcom/unisoc/phone/settings/fdn/EditFdnContactScreen;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/unisoc/phone/settings/fdn/EditFdnContactScreen;->getNumberFromTextField()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$misValidNumber(Lcom/unisoc/phone/settings/fdn/EditFdnContactScreen;Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/unisoc/phone/settings/fdn/EditFdnContactScreen;->isValidNumber(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$msetButtonEnabled(Lcom/unisoc/phone/settings/fdn/EditFdnContactScreen;)V
    .locals 0

    invoke-direct {p0}, Lcom/unisoc/phone/settings/fdn/EditFdnContactScreen;->setButtonEnabled()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    const-string v0, "display_name"

    const-string v1, "data1"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/unisoc/phone/settings/fdn/EditFdnContactScreen;->NUM_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/unisoc/phone/settings/fdn/BaseFdnContactScreen;-><init>()V

    const/16 v0, 0x14

    iput v0, p0, Lcom/unisoc/phone/settings/fdn/EditFdnContactScreen;->mFdnNumberLimitLength:I

    new-instance v0, Lcom/unisoc/phone/settings/fdn/EditFdnContactScreen$1;

    invoke-direct {v0, p0}, Lcom/unisoc/phone/settings/fdn/EditFdnContactScreen$1;-><init>(Lcom/unisoc/phone/settings/fdn/EditFdnContactScreen;)V

    iput-object v0, p0, Lcom/unisoc/phone/settings/fdn/EditFdnContactScreen;->mClicked:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/unisoc/phone/settings/fdn/EditFdnContactScreen$2;

    invoke-direct {v0, p0}, Lcom/unisoc/phone/settings/fdn/EditFdnContactScreen$2;-><init>(Lcom/unisoc/phone/settings/fdn/EditFdnContactScreen;)V

    iput-object v0, p0, Lcom/unisoc/phone/settings/fdn/EditFdnContactScreen;->mOnFocusChangeHandler:Landroid/view/View$OnFocusChangeListener;

    new-instance v0, Lcom/unisoc/phone/settings/fdn/EditFdnContactScreen$3;

    invoke-direct {v0, p0}, Lcom/unisoc/phone/settings/fdn/EditFdnContactScreen$3;-><init>(Lcom/unisoc/phone/settings/fdn/EditFdnContactScreen;)V

    iput-object v0, p0, Lcom/unisoc/phone/settings/fdn/EditFdnContactScreen;->mTextWatcher:Landroid/text/TextWatcher;

    return-void
.end method

.method private addContact()V
    .locals 7

    const-string v0, "addContact"

    invoke-virtual {p0, v0}, Lcom/unisoc/phone/settings/fdn/BaseFdnContactScreen;->log(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/unisoc/phone/settings/fdn/EditFdnContactScreen;->getNumberFromTextField()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->convertAndStrip(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/unisoc/phone/settings/fdn/EditFdnContactScreen;->isValidNumber(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    invoke-virtual {p0, v3, v2}, Lcom/unisoc/phone/settings/fdn/EditFdnContactScreen;->handleResult(ZZ)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/unisoc/phone/settings/fdn/BaseFdnContactScreen;->mSubscriptionInfoHelper:Lcom/unisoc/phone/SubscriptionInfoHelper;

    invoke-virtual {v1}, Lcom/unisoc/phone/SubscriptionInfoHelper;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/unisoc/phone/settings/fdn/BaseFdnContactScreen;->mSubscriptionInfoHelper:Lcom/unisoc/phone/SubscriptionInfoHelper;

    invoke-virtual {v1}, Lcom/unisoc/phone/SubscriptionInfoHelper;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v1

    if-gez v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/unisoc/phone/settings/fdn/BaseFdnContactScreen;->mSubscriptionInfoHelper:Lcom/unisoc/phone/SubscriptionInfoHelper;

    invoke-static {v1}, Lcom/unisoc/phone/settings/fdn/FdnList;->getContentUri(Lcom/unisoc/phone/SubscriptionInfoHelper;)Landroid/net/Uri;

    move-result-object v1

    new-instance v4, Landroid/content/ContentValues;

    const/4 v5, 0x3

    invoke-direct {v4, v5}, Landroid/content/ContentValues;-><init>(I)V

    const-string v5, "tag"

    invoke-direct {p0}, Lcom/unisoc/phone/settings/fdn/EditFdnContactScreen;->getNameFromTextField()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "number"

    invoke-virtual {v4, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "pin2"

    iget-object v5, p0, Lcom/unisoc/phone/settings/fdn/BaseFdnContactScreen;->mPin2:Ljava/lang/String;

    invoke-virtual {v4, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/unisoc/phone/settings/fdn/BaseFdnContactScreen$QueryHandler;

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-direct {v0, p0, v5}, Lcom/unisoc/phone/settings/fdn/BaseFdnContactScreen$QueryHandler;-><init>(Lcom/unisoc/phone/settings/fdn/BaseFdnContactScreen;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/unisoc/phone/settings/fdn/BaseFdnContactScreen;->mQueryHandler:Lcom/unisoc/phone/settings/fdn/BaseFdnContactScreen$QueryHandler;

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v5, v1, v4}, Landroid/content/AsyncQueryHandler;->startInsert(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;)V

    invoke-virtual {p0, v2}, Lcom/unisoc/phone/settings/fdn/EditFdnContactScreen;->displayProgress(Z)V

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f11005e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/unisoc/phone/settings/fdn/BaseFdnContactScreen;->showStatus(Ljava/lang/CharSequence;)V

    return-void

    :cond_2
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addContact, Ignore add action for invliad subId("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/unisoc/phone/settings/fdn/BaseFdnContactScreen;->mSubscriptionInfoHelper:Lcom/unisoc/phone/SubscriptionInfoHelper;

    invoke-virtual {v1}, Lcom/unisoc/phone/SubscriptionInfoHelper;->getSubId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/unisoc/phone/settings/fdn/BaseFdnContactScreen;->log(Ljava/lang/String;)V

    return-void
.end method

.method private deleteSelected()V
    .locals 3

    iget-boolean v0, p0, Lcom/unisoc/phone/settings/fdn/EditFdnContactScreen;->mAddContact:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/unisoc/phone/settings/fdn/BaseFdnContactScreen;->mSubscriptionInfoHelper:Lcom/unisoc/phone/SubscriptionInfoHelper;

    const-class v1, Lcom/android/phone/settings/fdn/DeleteFdnContactScreen;

    invoke-virtual {v0, v1}, Lcom/unisoc/phone/SubscriptionInfoHelper;->getIntent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "name"

    iget-object v2, p0, Lcom/unisoc/phone/settings/fdn/BaseFdnContactScreen;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "number"

    iget-object v2, p0, Lcom/unisoc/phone/settings/fdn/BaseFdnContactScreen;->mNumber:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private getNameFromTextField()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/unisoc/phone/settings/fdn/EditFdnContactScreen;->mNameField:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getNumberFromTextField()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/unisoc/phone/settings/fdn/EditFdnContactScreen;->mNumberField:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private isValidNumber(Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iget p0, p0, Lcom/unisoc/phone/settings/fdn/EditFdnContactScreen;->mFdnNumberLimitLength:I

    if-gt v0, p0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$handleResult$0()V
    .locals 0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private synthetic lambda$handleResult$1()V
    .locals 0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private synthetic lambda$handleResult$2()V
    .locals 0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private setButtonEnabled()V
    .locals 3

    iget-object v0, p0, Lcom/unisoc/phone/settings/fdn/EditFdnContactScreen;->mButton:Landroid/widget/Button;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/unisoc/phone/settings/fdn/EditFdnContactScreen;->mNameField:Landroid/widget/EditText;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/unisoc/phone/settings/fdn/EditFdnContactScreen;->mNumberField:Landroid/widget/EditText;

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v1

    if-lez v1, :cond_0

    iget-object p0, p0, Lcom/unisoc/phone/settings/fdn/EditFdnContactScreen;->mNumberField:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->length()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_1
    return-void
.end method

.method private setupView()V
    .locals 2

    const v0, 0x7f0a0154

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/unisoc/phone/settings/fdn/EditFdnContactScreen;->mNameField:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/unisoc/phone/settings/fdn/EditFdnContactScreen;->mOnFocusChangeHandler:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p0, Lcom/unisoc/phone/settings/fdn/EditFdnContactScreen;->mNameField:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/unisoc/phone/settings/fdn/EditFdnContactScreen;->mClicked:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/unisoc/phone/settings/fdn/EditFdnContactScreen;->mNameField:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/unisoc/phone/settings/fdn/EditFdnContactScreen;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/unisoc/phone/settings/fdn/EditFdnContactScreen;->mNameField:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusable(Z)V

    iget-object v0, p0, Lcom/unisoc/phone/settings/fdn/EditFdnContactScreen;->mNameField:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    iget-object v0, p0, Lcom/unisoc/phone/settings/fdn/EditFdnContactScreen;->mNameField:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    :cond_0
    const v0, 0x7f0a0155

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/unisoc/phone/settings/fdn/EditFdnContactScreen;->mNumberField:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextDirection(I)V

    iget-object v0, p0, Lcom/unisoc/phone/settings/fdn/EditFdnContactScreen;->mNumberField:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/DialerKeyListener;->getInstance()Landroid/text/method/DialerKeyListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    iget-object v0, p0, Lcom/unisoc/phone/settings/fdn/EditFdnContactScreen;->mNumberField:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/unisoc/phone/settings/fdn/EditFdnContactScreen;->mOnFocusChangeHandler:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p0, Lcom/unisoc/phone/settings/fdn/EditFdnContactScreen;->mNumberField:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/unisoc/phone/settings/fdn/EditFdnContactScreen;->mClicked:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/unisoc/phone/settings/fdn/EditFdnContactScreen;->mNumberField:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/unisoc/phone/settings/fdn/EditFdnContactScreen;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_1
    iget-boolean v0, p0, Lcom/unisoc/phone/settings/fdn/EditFdnContactScreen;->mAddContact:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/unisoc/phone/settings/fdn/EditFdnContactScreen;->mNameField:Landroid/widget/EditText;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/unisoc/phone/settings/fdn/BaseFdnContactScreen;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/unisoc/phone/settings/fdn/EditFdnContactScreen;->mNameField:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    :cond_2
    iget-object v0, p0, Lcom/unisoc/phone/settings/fdn/EditFdnContactScreen;->mNumberField:Landroid/widget/EditText;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/unisoc/phone/settings/fdn/BaseFdnContactScreen;->mNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    const v0, 0x7f0a0094

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/unisoc/phone/settings/fdn/EditFdnContactScreen;->mButton:Landroid/widget/Button;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/unisoc/phone/settings/fdn/EditFdnContactScreen;->mClicked:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/unisoc/phone/settings/fdn/EditFdnContactScreen;->setButtonEnabled()V

    :cond_4
    const v0, 0x7f0a0256

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/unisoc/phone/settings/fdn/EditFdnContactScreen;->mPinFieldContainer:Landroid/widget/LinearLayout;

    return-void
.end method

.method private updateContact()V
    .locals 11

    const-string v0, "updateContact"

    invoke-virtual {p0, v0}, Lcom/unisoc/phone/settings/fdn/BaseFdnContactScreen;->log(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/unisoc/phone/settings/fdn/EditFdnContactScreen;->getNameFromTextField()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/unisoc/phone/settings/fdn/EditFdnContactScreen;->getNumberFromTextField()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->convertAndStrip(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/unisoc/phone/settings/fdn/EditFdnContactScreen;->isValidNumber(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v3}, Lcom/unisoc/phone/settings/fdn/EditFdnContactScreen;->handleResult(ZZ)V

    return-void

    :cond_0
    iget-object v2, p0, Lcom/unisoc/phone/settings/fdn/BaseFdnContactScreen;->mSubscriptionInfoHelper:Lcom/unisoc/phone/SubscriptionInfoHelper;

    invoke-static {v2}, Lcom/unisoc/phone/settings/fdn/FdnList;->getContentUri(Lcom/unisoc/phone/SubscriptionInfoHelper;)Landroid/net/Uri;

    move-result-object v7

    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "tag"

    iget-object v4, p0, Lcom/unisoc/phone/settings/fdn/BaseFdnContactScreen;->mName:Ljava/lang/String;

    invoke-virtual {v8, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "number"

    iget-object v4, p0, Lcom/unisoc/phone/settings/fdn/BaseFdnContactScreen;->mNumber:Ljava/lang/String;

    invoke-virtual {v8, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "newTag"

    invoke-virtual {v8, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "newNumber"

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "pin2"

    iget-object v1, p0, Lcom/unisoc/phone/settings/fdn/BaseFdnContactScreen;->mPin2:Ljava/lang/String;

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Lcom/unisoc/phone/settings/fdn/BaseFdnContactScreen$QueryHandler;

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {v4, p0, v0}, Lcom/unisoc/phone/settings/fdn/BaseFdnContactScreen$QueryHandler;-><init>(Lcom/unisoc/phone/settings/fdn/BaseFdnContactScreen;Landroid/content/ContentResolver;)V

    iput-object v4, p0, Lcom/unisoc/phone/settings/fdn/BaseFdnContactScreen;->mQueryHandler:Lcom/unisoc/phone/settings/fdn/BaseFdnContactScreen$QueryHandler;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v4 .. v10}, Landroid/content/AsyncQueryHandler;->startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lcom/unisoc/phone/settings/fdn/EditFdnContactScreen;->displayProgress(Z)V

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f110658

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/unisoc/phone/settings/fdn/BaseFdnContactScreen;->showStatus(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method protected displayProgress(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/unisoc/phone/settings/fdn/BaseFdnContactScreen;->displayProgress(Z)V

    iput-boolean p1, p0, Lcom/unisoc/phone/settings/fdn/EditFdnContactScreen;->mDataBusy:Z

    iget-object p0, p0, Lcom/unisoc/phone/settings/fdn/EditFdnContactScreen;->mButton:Landroid/widget/Button;

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setClickable(Z)V

    return-void
.end method

.method protected handleResult(I)V
    .locals 3

    if-lez p1, :cond_1

    const-string p1, "handleResult[1]: success!"

    invoke-virtual {p0, p1}, Lcom/unisoc/phone/settings/fdn/BaseFdnContactScreen;->log(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget-boolean v0, p0, Lcom/unisoc/phone/settings/fdn/EditFdnContactScreen;->mAddContact:Z

    if-eqz v0, :cond_0

    const v0, 0x7f1102d6

    goto :goto_0

    :cond_0
    const v0, 0x7f1102d8

    :goto_0
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/unisoc/phone/settings/fdn/BaseFdnContactScreen;->showStatus(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleResult[1]: failed, result = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/unisoc/phone/settings/fdn/BaseFdnContactScreen;->log(Ljava/lang/String;)V

    const/4 v0, -0x4

    if-ne p1, v0, :cond_2

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f1102dd

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/unisoc/phone/settings/fdn/BaseFdnContactScreen;->showStatus(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/unisoc/phone/settings/fdn/BaseFdnContactScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/IccCard;->getIccPin2Blocked()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f1102da

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/unisoc/phone/settings/fdn/BaseFdnContactScreen;->showStatus(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/unisoc/phone/settings/fdn/BaseFdnContactScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/IccCard;->getIccPuk2Blocked()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f1104f2

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/unisoc/phone/settings/fdn/BaseFdnContactScreen;->showStatus(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f110492

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/unisoc/phone/settings/fdn/BaseFdnContactScreen;->showStatus(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object p1, p0, Lcom/unisoc/phone/settings/fdn/BaseFdnContactScreen;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/unisoc/phone/settings/fdn/EditFdnContactScreen$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/unisoc/phone/settings/fdn/EditFdnContactScreen$$ExternalSyntheticLambda2;-><init>(Lcom/unisoc/phone/settings/fdn/EditFdnContactScreen;)V

    const-wide/16 v1, 0x7d0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method protected handleResult(Landroid/net/Uri;Z)V
    .locals 2

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "over_fdn_name_max_length"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p1, "handleResult: over fdn name max length!"

    invoke-virtual {p0, p1}, Lcom/unisoc/phone/settings/fdn/BaseFdnContactScreen;->log(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f1102dd

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/unisoc/phone/settings/fdn/BaseFdnContactScreen;->showStatus(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "fdn_full"

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "handleResult: fdn is full!"

    invoke-virtual {p0, p1}, Lcom/unisoc/phone/settings/fdn/BaseFdnContactScreen;->log(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f110064

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/unisoc/phone/settings/fdn/BaseFdnContactScreen;->showStatus(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_1
    const-string p1, "handleResult: success!"

    invoke-virtual {p0, p1}, Lcom/unisoc/phone/settings/fdn/BaseFdnContactScreen;->log(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget-boolean p2, p0, Lcom/unisoc/phone/settings/fdn/EditFdnContactScreen;->mAddContact:Z

    if-eqz p2, :cond_2

    const p2, 0x7f1102d6

    goto :goto_0

    :cond_2
    const p2, 0x7f1102d8

    :goto_0
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/unisoc/phone/settings/fdn/BaseFdnContactScreen;->showStatus(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_3
    if-eqz p2, :cond_4

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget p2, p0, Lcom/unisoc/phone/settings/fdn/EditFdnContactScreen;->mFdnNumberLimitLength:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const v0, 0x7f1102de

    invoke-virtual {p1, v0, p2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/unisoc/phone/settings/fdn/BaseFdnContactScreen;->showStatus(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lcom/unisoc/phone/settings/fdn/BaseFdnContactScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/unisoc/phone/settings/fdn/BaseFdnContactScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/IccCard;->getIccPin2Blocked()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f1102da

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/unisoc/phone/settings/fdn/BaseFdnContactScreen;->showStatus(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_5
    iget-object p1, p0, Lcom/unisoc/phone/settings/fdn/BaseFdnContactScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/unisoc/phone/settings/fdn/BaseFdnContactScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/IccCard;->getIccPuk2Blocked()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f1104f2

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/unisoc/phone/settings/fdn/BaseFdnContactScreen;->showStatus(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_6
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f110492

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/unisoc/phone/settings/fdn/BaseFdnContactScreen;->showStatus(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object p1, p0, Lcom/unisoc/phone/settings/fdn/BaseFdnContactScreen;->mHandler:Landroid/os/Handler;

    new-instance p2, Lcom/unisoc/phone/settings/fdn/EditFdnContactScreen$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lcom/unisoc/phone/settings/fdn/EditFdnContactScreen$$ExternalSyntheticLambda1;-><init>(Lcom/unisoc/phone/settings/fdn/EditFdnContactScreen;)V

    const-wide/16 v0, 0x7d0

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method protected handleResult(ZZ)V
    .locals 2

    if-eqz p1, :cond_1

    const-string p1, "handleResult[2]: success!"

    invoke-virtual {p0, p1}, Lcom/unisoc/phone/settings/fdn/BaseFdnContactScreen;->log(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget-boolean p2, p0, Lcom/unisoc/phone/settings/fdn/EditFdnContactScreen;->mAddContact:Z

    if-eqz p2, :cond_0

    const p2, 0x7f1102d6

    goto :goto_0

    :cond_0
    const p2, 0x7f1102d8

    :goto_0
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/unisoc/phone/settings/fdn/BaseFdnContactScreen;->showStatus(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    const-string p1, "handleResult[2]: failed!"

    invoke-virtual {p0, p1}, Lcom/unisoc/phone/settings/fdn/BaseFdnContactScreen;->log(Ljava/lang/String;)V

    if-eqz p2, :cond_2

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget p2, p0, Lcom/unisoc/phone/settings/fdn/EditFdnContactScreen;->mFdnNumberLimitLength:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const v0, 0x7f1102de

    invoke-virtual {p1, v0, p2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/unisoc/phone/settings/fdn/BaseFdnContactScreen;->showStatus(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/unisoc/phone/settings/fdn/BaseFdnContactScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/IccCard;->getIccPin2Blocked()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f1102da

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/unisoc/phone/settings/fdn/BaseFdnContactScreen;->showStatus(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/unisoc/phone/settings/fdn/BaseFdnContactScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/IccCard;->getIccPuk2Blocked()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f1104f2

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/unisoc/phone/settings/fdn/BaseFdnContactScreen;->showStatus(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f110492

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/unisoc/phone/settings/fdn/BaseFdnContactScreen;->showStatus(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object p1, p0, Lcom/unisoc/phone/settings/fdn/BaseFdnContactScreen;->mHandler:Landroid/os/Handler;

    new-instance p2, Lcom/unisoc/phone/settings/fdn/EditFdnContactScreen$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/unisoc/phone/settings/fdn/EditFdnContactScreen$$ExternalSyntheticLambda0;-><init>(Lcom/unisoc/phone/settings/fdn/EditFdnContactScreen;)V

    const-wide/16 v0, 0x7d0

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onActivityResult request:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " result:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/unisoc/phone/settings/fdn/BaseFdnContactScreen;->log(Ljava/lang/String;)V

    const/16 v0, 0x64

    if-eq p1, v0, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    const-string p2, "pin2"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/unisoc/phone/settings/fdn/BaseFdnContactScreen;->mPin2:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/unisoc/phone/settings/fdn/BaseFdnContactScreen;->processPin2(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const/4 p1, -0x1

    if-eq p2, p1, :cond_3

    const-string p1, "onActivityResult: cancelled."

    invoke-virtual {p0, p1}, Lcom/unisoc/phone/settings/fdn/BaseFdnContactScreen;->log(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_3
    :goto_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/unisoc/phone/settings/fdn/BaseFdnContactScreen;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d0045

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    invoke-direct {p0}, Lcom/unisoc/phone/settings/fdn/EditFdnContactScreen;->setupView()V

    iget-boolean p1, p0, Lcom/unisoc/phone/settings/fdn/EditFdnContactScreen;->mAddContact:Z

    if-eqz p1, :cond_0

    const p1, 0x7f11005a

    goto :goto_0

    :cond_0
    const p1, 0x7f110278

    :goto_0
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTitle(I)V

    iget-object p1, p0, Lcom/unisoc/phone/settings/fdn/BaseFdnContactScreen;->mSubscriptionInfoHelper:Lcom/unisoc/phone/SubscriptionInfoHelper;

    invoke-virtual {p1}, Lcom/unisoc/phone/SubscriptionInfoHelper;->hasSubId()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object p1

    iget-object v0, p0, Lcom/unisoc/phone/settings/fdn/BaseFdnContactScreen;->mSubscriptionInfoHelper:Lcom/unisoc/phone/SubscriptionInfoHelper;

    invoke-virtual {v0}, Lcom/unisoc/phone/SubscriptionInfoHelper;->getSubId()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/phone/PhoneGlobals;->getCarrierConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object p1

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/phone/PhoneGlobals;->getCarrierConfig()Landroid/os/PersistableBundle;

    move-result-object p1

    :goto_1
    if-eqz p1, :cond_2

    const-string v0, "fdn_number_length_limit_int"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/unisoc/phone/settings/fdn/EditFdnContactScreen;->mFdnNumberLimitLength:I

    :cond_2
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/unisoc/phone/settings/fdn/EditFdnContactScreen;->displayProgress(Z)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f1103af

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-interface {p1, v0, v1, v0, p0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p0

    const p1, 0x108003c

    invoke-interface {p0, p1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    const/4 p0, 0x1

    return p0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->onBackPressed()V

    return v2

    :cond_1
    invoke-direct {p0}, Lcom/unisoc/phone/settings/fdn/EditFdnContactScreen;->deleteSelected()V

    return v2
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    iget-boolean p0, p0, Lcom/unisoc/phone/settings/fdn/EditFdnContactScreen;->mDataBusy:Z

    if-eqz p0, :cond_0

    const/4 p1, 0x0

    :cond_0
    return p1
.end method

.method protected pin2AuthenticationSucceed()V
    .locals 1

    iget-boolean v0, p0, Lcom/unisoc/phone/settings/fdn/EditFdnContactScreen;->mAddContact:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/unisoc/phone/settings/fdn/EditFdnContactScreen;->addContact()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/unisoc/phone/settings/fdn/EditFdnContactScreen;->updateContact()V

    :goto_0
    return-void
.end method

.method protected resolveIntent()V
    .locals 1

    invoke-super {p0}, Lcom/unisoc/phone/settings/fdn/BaseFdnContactScreen;->resolveIntent()V

    iget-object v0, p0, Lcom/unisoc/phone/settings/fdn/BaseFdnContactScreen;->mNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unisoc/phone/settings/fdn/BaseFdnContactScreen;->mName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/unisoc/phone/settings/fdn/EditFdnContactScreen;->mAddContact:Z

    return-void
.end method

.method public showToast(I)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method
