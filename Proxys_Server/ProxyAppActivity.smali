.class public Lcom/spreadtrum/proxy/nfwlocation/ProxyAppActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "ProxyAppActivity.java"


# direct methods
.method static bridge synthetic -$$Nest$misFirstTimeAskingLocationPermission(Lcom/spreadtrum/proxy/nfwlocation/ProxyAppActivity;)Z
    .locals 0

    invoke-direct {p0}, Lcom/spreadtrum/proxy/nfwlocation/ProxyAppActivity;->isFirstTimeAskingLocationPermission()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misLocationPermissionGranted(Lcom/spreadtrum/proxy/nfwlocation/ProxyAppActivity;Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/spreadtrum/proxy/nfwlocation/ProxyAppActivity;->isLocationPermissionGranted(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$msetFirstTimeAskingLocationPermission(Lcom/spreadtrum/proxy/nfwlocation/ProxyAppActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/spreadtrum/proxy/nfwlocation/ProxyAppActivity;->setFirstTimeAskingLocationPermission(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowLocationPermissionSettingsDashboard(Lcom/spreadtrum/proxy/nfwlocation/ProxyAppActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/spreadtrum/proxy/nfwlocation/ProxyAppActivity;->showLocationPermissionSettingsDashboard()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowRequestBackgroundLocationPermissionDialog(Lcom/spreadtrum/proxy/nfwlocation/ProxyAppActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/spreadtrum/proxy/nfwlocation/ProxyAppActivity;->showRequestBackgroundLocationPermissionDialog()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowRequestLocationPermissionDialog(Lcom/spreadtrum/proxy/nfwlocation/ProxyAppActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/spreadtrum/proxy/nfwlocation/ProxyAppActivity;->showRequestLocationPermissionDialog()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private createModifyLocationSettingsButtonClickListener()Landroid/view/View$OnClickListener;
    .locals 1

    new-instance v0, Lcom/spreadtrum/proxy/nfwlocation/ProxyAppActivity$1;

    invoke-direct {v0, p0}, Lcom/spreadtrum/proxy/nfwlocation/ProxyAppActivity$1;-><init>(Lcom/spreadtrum/proxy/nfwlocation/ProxyAppActivity;)V

    return-object v0
.end method

.method private isFirstTimeAskingLocationPermission()Z
    .locals 2

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "LocationAttributionPrefs"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    const/4 v1, 0x1

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method private isLocationPermissionGranted(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0, p1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private setFirstTimeAskingLocationPermission(Z)V
    .locals 2

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "LocationAttributionPrefs"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private setTextViewAppInfoContent()V
    .locals 5

    const v0, 0x7f0900a1

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const/high16 v2, 0x7f030000

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p0

    array-length v2, p0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, p0, v3

    invoke-virtual {v1, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    return-void
.end method

.method private showLocationPermissionSettingsDashboard()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "package:com.spreadtrum.proxy.nfwlocation"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private showRequestBackgroundLocationPermissionDialog()V
    .locals 2

    const-string v0, "android.permission.ACCESS_BACKGROUND_LOCATION"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x64

    invoke-static {p0, v0, v1}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    return-void
.end method

.method private showRequestLocationPermissionDialog()V
    .locals 2

    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x64

    invoke-static {p0, v0, v1}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c001c

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    invoke-direct {p0}, Lcom/spreadtrum/proxy/nfwlocation/ProxyAppActivity;->setTextViewAppInfoContent()V

    const p1, 0x7f090041

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    invoke-direct {p0}, Lcom/spreadtrum/proxy/nfwlocation/ProxyAppActivity;->createModifyLocationSettingsButtonClickListener()Landroid/view/View$OnClickListener;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
