.class public Lcom/unisoc/settings/display/LuminousProtectingEyePreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "LuminousProtectingEyePreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStart;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStop;


# static fields
.field private static final BACKLIGHT_SAVING_POWER:Ljava/lang/String; = "backlight_saving_power"

.field private static final LUMINOUS_PROTECTING_EYE:Ljava/lang/String; = "luminous_protecting_eye"

.field private static final SWITCH_OFF:I = 0x0

.field private static final SWITCH_ON:I = 0x1


# instance fields
.field private mBacklightSavingPowerObserver:Landroid/database/ContentObserver;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mIsSupportBacklightSavingPower:Z

.field private final mIsSupportCABC:Z

.field private mIsSupportLuminousProtectingEye:Z

.field private mPreference:Landroidx/preference/SwitchPreference;


# direct methods
.method static bridge synthetic -$$Nest$fgetmPreference(Lcom/unisoc/settings/display/LuminousProtectingEyePreferenceController;)Landroidx/preference/SwitchPreference;
    .locals 0

    iget-object p0, p0, Lcom/unisoc/settings/display/LuminousProtectingEyePreferenceController;->mPreference:Landroidx/preference/SwitchPreference;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string p1, "persist.sys.pq.cabc.enabled"

    const/4 p2, 0x0

    invoke-static {p1, p2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p1

    const/4 v0, 0x1

    if-ne v0, p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    move p1, p2

    :goto_0
    iput-boolean p1, p0, Lcom/unisoc/settings/display/LuminousProtectingEyePreferenceController;->mIsSupportBacklightSavingPower:Z

    const-string p1, "persist.sys.pq.lld.enabled"

    invoke-static {p1, p2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p1

    if-ne v0, p1, :cond_1

    move p1, v0

    goto :goto_1

    :cond_1
    move p1, p2

    :goto_1
    iput-boolean p1, p0, Lcom/unisoc/settings/display/LuminousProtectingEyePreferenceController;->mIsSupportLuminousProtectingEye:Z

    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/unisoc/settings/display/LuminousProtectingEyePreferenceController;->mContentResolver:Landroid/content/ContentResolver;

    new-instance p1, Lcom/unisoc/settings/display/LuminousProtectingEyePreferenceController$1;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p1, p0, v1}, Lcom/unisoc/settings/display/LuminousProtectingEyePreferenceController$1;-><init>(Lcom/unisoc/settings/display/LuminousProtectingEyePreferenceController;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/unisoc/settings/display/LuminousProtectingEyePreferenceController;->mBacklightSavingPowerObserver:Landroid/database/ContentObserver;

    iget-boolean p1, p0, Lcom/unisoc/settings/display/LuminousProtectingEyePreferenceController;->mIsSupportBacklightSavingPower:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/android/settings/R$bool;->config_backlight_saving_power_setting_available:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    if-eqz p1, :cond_2

    move p2, v0

    :cond_2
    iput-boolean p2, p0, Lcom/unisoc/settings/display/LuminousProtectingEyePreferenceController;->mIsSupportCABC:Z

    if-eqz p3, :cond_3

    invoke-virtual {p3, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_3
    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 2

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$bool;->config_luminous_protecting_eye_available:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/unisoc/settings/display/LuminousProtectingEyePreferenceController;->mIsSupportLuminousProtectingEye:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x3

    :goto_0
    return p0
.end method

.method public bridge synthetic getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getBackgroundWorkerClass()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getSliceHighlightMenuRes()I
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getSliceHighlightMenuRes()I

    move-result p0

    return p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->hasAsyncUpdate()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isPublicSlice()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isPublicSlice()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isSliceable()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isSliceable()Z

    move-result p0

    return p0
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget-object p2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string v0, "luminous_protecting_eye"

    invoke-static {p2, v0, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/unisoc/settings/display/LuminousProtectingEyePreferenceController;->mIsSupportCABC:Z

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/settings/R$string;->lld_enabled_cabc_disabled:I

    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-static {p0}, Lcom/unisoc/settings/utils/ToastManager;->setToast(Landroid/widget/Toast;)V

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public onStart()V
    .locals 3

    iget-object v0, p0, Lcom/unisoc/settings/display/LuminousProtectingEyePreferenceController;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "backlight_saving_power"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object p0, p0, Lcom/unisoc/settings/display/LuminousProtectingEyePreferenceController;->mBacklightSavingPowerObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public onStop()V
    .locals 1

    iget-object v0, p0, Lcom/unisoc/settings/display/LuminousProtectingEyePreferenceController;->mContentResolver:Landroid/content/ContentResolver;

    iget-object p0, p0, Lcom/unisoc/settings/display/LuminousProtectingEyePreferenceController;->mBacklightSavingPowerObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 6

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "luminous_protecting_eye"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v3, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "backlight_saving_power"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz p1, :cond_3

    instance-of v4, p1, Landroidx/preference/SwitchPreference;

    if-eqz v4, :cond_3

    move-object v4, p1

    check-cast v4, Landroidx/preference/SwitchPreference;

    iput-object v4, p0, Lcom/unisoc/settings/display/LuminousProtectingEyePreferenceController;->mPreference:Landroidx/preference/SwitchPreference;

    iget-object v4, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/settings/R$string;->luminous_protecting_eye_title:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/settings/R$string;->luminous_protecting_eye_summary:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    const/4 p1, 0x1

    if-ne v3, p1, :cond_0

    iget-object v3, p0, Lcom/unisoc/settings/display/LuminousProtectingEyePreferenceController;->mPreference:Landroidx/preference/SwitchPreference;

    invoke-virtual {v3, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    if-ne v0, p1, :cond_1

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move v0, v2

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/unisoc/settings/display/LuminousProtectingEyePreferenceController;->mPreference:Landroidx/preference/SwitchPreference;

    invoke-virtual {v1, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/unisoc/settings/display/LuminousProtectingEyePreferenceController;->mPreference:Landroidx/preference/SwitchPreference;

    if-ne v0, p1, :cond_2

    move v2, p1

    :cond_2
    invoke-virtual {p0, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_3
    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
