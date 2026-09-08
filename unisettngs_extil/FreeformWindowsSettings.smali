.class public Lcom/unisoc/settings/applications/freeformwindows/FreeformWindowsSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "FreeformWindowsSettings.java"

# interfaces
.implements Lcom/android/settingslib/widget/OnMainSwitchChangeListener;
.implements Lcom/android/settings/development/RebootConfirmationDialogHost;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# instance fields
.field final KEY_FOOTER:Ljava/lang/String;

.field final KEY_INTRO:Ljava/lang/String;

.field final KEY_VIDEO:Ljava/lang/String;

.field private mFooterPreference:Lcom/android/settingslib/widget/FooterPreference;

.field private mFreeformWindowsTopIntroPreferenceController:Lcom/unisoc/settings/applications/freeformwindows/FreeformWindowsTopIntroPreferenceController;

.field private mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

.field private mVideoPreferenceController:Lcom/android/settings/widget/VideoPreferenceController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/unisoc/settings/applications/freeformwindows/FreeformWindowsSettings$1;

    invoke-direct {v0}, Lcom/unisoc/settings/applications/freeformwindows/FreeformWindowsSettings$1;-><init>()V

    sput-object v0, Lcom/unisoc/settings/applications/freeformwindows/FreeformWindowsSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const-string v0, "freeform_windows_footer"

    iput-object v0, p0, Lcom/unisoc/settings/applications/freeformwindows/FreeformWindowsSettings;->KEY_FOOTER:Ljava/lang/String;

    const-string v0, "freeform_windows_intro"

    iput-object v0, p0, Lcom/unisoc/settings/applications/freeformwindows/FreeformWindowsSettings;->KEY_INTRO:Ljava/lang/String;

    const-string v0, "freeform_windows_video"

    iput-object v0, p0, Lcom/unisoc/settings/applications/freeformwindows/FreeformWindowsSettings;->KEY_VIDEO:Ljava/lang/String;

    return-void
.end method

.method private static isFreeformWindowsEnabled(Landroid/content/Context;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "enable_freeform_support"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private updateUI()V
    .locals 2

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/unisoc/settings/applications/freeformwindows/FreeformWindowsSettings;->mFreeformWindowsTopIntroPreferenceController:Lcom/unisoc/settings/applications/freeformwindows/FreeformWindowsTopIntroPreferenceController;

    invoke-virtual {v1}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iget-object v1, p0, Lcom/unisoc/settings/applications/freeformwindows/FreeformWindowsSettings;->mFreeformWindowsTopIntroPreferenceController:Lcom/unisoc/settings/applications/freeformwindows/FreeformWindowsTopIntroPreferenceController;

    invoke-virtual {v1, v0}, Lcom/unisoc/settings/applications/freeformwindows/FreeformWindowsTopIntroPreferenceController;->updateState(Landroidx/preference/Preference;)V

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/unisoc/settings/applications/freeformwindows/FreeformWindowsSettings;->mVideoPreferenceController:Lcom/android/settings/widget/VideoPreferenceController;

    invoke-virtual {v1}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/VideoPreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/unisoc/settings/applications/freeformwindows/FreeformWindowsSettings;->isFreeformWindowsEnabled(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object v0, p0, Lcom/unisoc/settings/applications/freeformwindows/FreeformWindowsSettings;->mFooterPreference:Lcom/android/settingslib/widget/FooterPreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-static {p0}, Lcom/unisoc/settings/applications/freeformwindows/FreeformWindowsSettings;->isFreeformWindowsEnabled(Landroid/content/Context;)Z

    move-result p0

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void
.end method


# virtual methods
.method public bridge synthetic getHelpResource()I
    .locals 0

    invoke-super {p0}, Lcom/android/settings/support/actionbar/HelpResourceProvider;->getHelpResource()I

    move-result p0

    return p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x738

    return p0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/android/settings/SettingsActivity;

    sget v0, Lcom/android/settings/R$string;->freeform_windows_title:I

    invoke-virtual {p1, v0}, Lcom/android/settings/core/SettingsBaseActivity;->setTitle(I)V

    sget v0, Lcom/android/settings/R$xml;->freeform_windows_settings:I

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    new-instance v0, Lcom/unisoc/settings/applications/freeformwindows/FreeformWindowsTopIntroPreferenceController;

    const-string v1, "freeform_windows_intro"

    invoke-direct {v0, p1, v1}, Lcom/unisoc/settings/applications/freeformwindows/FreeformWindowsTopIntroPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/unisoc/settings/applications/freeformwindows/FreeformWindowsSettings;->mFreeformWindowsTopIntroPreferenceController:Lcom/unisoc/settings/applications/freeformwindows/FreeformWindowsTopIntroPreferenceController;

    new-instance v0, Lcom/android/settings/widget/VideoPreferenceController;

    const-string v1, "freeform_windows_video"

    invoke-direct {v0, p1, v1}, Lcom/android/settings/widget/VideoPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/unisoc/settings/applications/freeformwindows/FreeformWindowsSettings;->mVideoPreferenceController:Lcom/android/settings/widget/VideoPreferenceController;

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "freeform_windows_footer"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/widget/FooterPreference;

    iput-object v1, p0, Lcom/unisoc/settings/applications/freeformwindows/FreeformWindowsSettings;->mFooterPreference:Lcom/android/settingslib/widget/FooterPreference;

    iget-object v1, p0, Lcom/unisoc/settings/applications/freeformwindows/FreeformWindowsSettings;->mFreeformWindowsTopIntroPreferenceController:Lcom/unisoc/settings/applications/freeformwindows/FreeformWindowsTopIntroPreferenceController;

    invoke-virtual {v1, v0}, Lcom/android/settings/core/TogglePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    iget-object v1, p0, Lcom/unisoc/settings/applications/freeformwindows/FreeformWindowsSettings;->mVideoPreferenceController:Lcom/android/settings/widget/VideoPreferenceController;

    invoke-virtual {v1, v0}, Lcom/android/settings/widget/VideoPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    invoke-virtual {p1}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SettingsMainSwitchBar;

    move-result-object p1

    iput-object p1, p0, Lcom/unisoc/settings/applications/freeformwindows/FreeformWindowsSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->freeform_windows_main_switch_title:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settingslib/widget/MainSwitchBar;->setTitle(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/unisoc/settings/applications/freeformwindows/FreeformWindowsSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {p1}, Lcom/android/settingslib/widget/MainSwitchBar;->show()V

    iget-object p1, p0, Lcom/unisoc/settings/applications/freeformwindows/FreeformWindowsSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/unisoc/settings/applications/freeformwindows/FreeformWindowsSettings;->isFreeformWindowsEnabled(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setChecked(Z)V

    iget-object p1, p0, Lcom/unisoc/settings/applications/freeformwindows/FreeformWindowsSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {p1, p0}, Lcom/android/settingslib/widget/MainSwitchBar;->addOnSwitchChangeListener(Lcom/android/settingslib/widget/OnMainSwitchChangeListener;)V

    invoke-direct {p0}, Lcom/unisoc/settings/applications/freeformwindows/FreeformWindowsSettings;->updateUI()V

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    invoke-super {p0}, Landroidx/preference/PreferenceFragmentCompat;->onDestroyView()V

    iget-object v0, p0, Lcom/unisoc/settings/applications/freeformwindows/FreeformWindowsSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settingslib/widget/MainSwitchBar;->removeOnSwitchChangeListener(Lcom/android/settingslib/widget/OnMainSwitchChangeListener;)V

    iget-object p0, p0, Lcom/unisoc/settings/applications/freeformwindows/FreeformWindowsSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {p0}, Lcom/android/settingslib/widget/MainSwitchBar;->hide()V

    return-void
.end method

.method public bridge synthetic onRebootCancelled()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/development/RebootConfirmationDialogHost;->onRebootCancelled()V

    return-void
.end method

.method public onRebootConfirmed(Landroid/content/Context;)V
    .locals 1

    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.REBOOT"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public bridge synthetic onRebootDialogDismissed()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/development/RebootConfirmationDialogHost;->onRebootDialogDismissed()V

    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "enable_freeform_support"

    invoke-static {p1, v0, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-direct {p0}, Lcom/unisoc/settings/applications/freeformwindows/FreeformWindowsSettings;->updateUI()V

    if-eqz p2, :cond_0

    sget p1, Lcom/android/settings/R$string;->reboot_dialog_enable_freeform_support:I

    invoke-static {p0, p1, p0}, Lcom/android/settings/development/RebootConfirmationDialogFragment;->show(Landroidx/fragment/app/Fragment;ILcom/android/settings/development/RebootConfirmationDialogHost;)V

    :cond_0
    return-void
.end method
