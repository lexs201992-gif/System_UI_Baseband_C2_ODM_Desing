.class public Lcom/android/phone/settings/RadioInfo;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "RadioInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/settings/RadioInfo$RadioInfoTelephonyCallback;
    }
.end annotation


# static fields
.field private static final CELL_INFO_REFRESH_RATES:[I

.field private static final CELL_INFO_REFRESH_RATE_LABELS:[Ljava/lang/String;

.field private static final IS_USER_BUILD:Z

.field private static final PREFERRED_NETWORK_LABELS:[Ljava/lang/String;

.field private static sPhoneIndexLabels:[Ljava/lang/String;


# instance fields
.field private mCallState:Landroid/widget/TextView;

.field private mCarrierProvisioningButton:Landroid/widget/Button;

.field mCarrierProvisioningButtonHandler:Landroid/view/View$OnClickListener;

.field private mCbrsDataSwitch:Landroid/widget/Switch;

.field mCbrsDataSwitchChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mCellInfo:Landroid/widget/TextView;

.field mCellInfoRefreshRateHandler:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mCellInfoRefreshRateIndex:I

.field private mCellInfoRefreshRateSpinner:Landroid/widget/Spinner;

.field private mCellInfoResult:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/CellInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mCfi:Landroid/widget/TextView;

.field private mCfiValue:Z

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mDBm:Landroid/widget/TextView;

.field private mDataNetwork:Landroid/widget/TextView;

.field private mDataRawReg:Landroid/widget/TextView;

.field private mDcnrRestricted:Landroid/widget/TextView;

.field private mDds:Landroid/widget/TextView;

.field private final mDefaultNetworkRequest:Landroid/net/NetworkRequest;

.field private mDeviceId:Landroid/widget/TextView;

.field mDnsCheckButtonHandler:Landroid/view/View$OnClickListener;

.field private mDnsCheckState:Landroid/widget/TextView;

.field private mDnsCheckToggleButton:Landroid/widget/Button;

.field private mDownlinkKbps:Landroid/widget/TextView;

.field private mDsdsSwitch:Landroid/widget/Switch;

.field mEabCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mEabProvisionedSwitch:Landroid/widget/Switch;

.field private mEndcAvailable:Landroid/widget/TextView;

.field private mGetImsStatus:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private mGprsState:Landroid/widget/TextView;

.field private mGsmState:Landroid/widget/TextView;

.field private mHandler:Landroid/os/Handler;

.field private mHttpClientTest:Landroid/widget/TextView;

.field private mHttpClientTestResult:Ljava/lang/String;

.field private mImsManager:Landroid/telephony/ims/ImsManager;

.field mImsVolteCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mImsVolteProvisionedSwitch:Landroid/widget/Switch;

.field mImsVtCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mImsVtProvisionedSwitch:Landroid/widget/Switch;

.field mImsWfcCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mImsWfcProvisionedSwitch:Landroid/widget/Switch;

.field private mLine1Number:Landroid/widget/TextView;

.field private mMwi:Landroid/widget/TextView;

.field private mMwiValue:Z

.field private final mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private mNetworkSlicingConfig:Landroid/widget/TextView;

.field private mNrAvailable:Landroid/widget/TextView;

.field private mNrFrequency:Landroid/widget/TextView;

.field private mNrState:Landroid/widget/TextView;

.field private mOemInfoButton:Landroid/widget/Button;

.field mOemInfoButtonHandler:Landroid/view/View$OnClickListener;

.field mOnDsdsDialogConfirmedListener:Landroid/content/DialogInterface$OnClickListener;

.field private mOperatorName:Landroid/widget/TextView;

.field private mOverrideNetwork:Landroid/widget/TextView;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPhyChanConfig:Landroid/widget/TextView;

.field mPingButtonHandler:Landroid/view/View$OnClickListener;

.field private mPingHostnameResultV4:Ljava/lang/String;

.field private mPingHostnameResultV6:Ljava/lang/String;

.field private mPingHostnameV4:Landroid/widget/TextView;

.field private mPingHostnameV6:Landroid/widget/TextView;

.field private mPingTestButton:Landroid/widget/Button;

.field mPreferredNetworkHandler:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mPreferredNetworkType:Landroid/widget/Spinner;

.field private mPreferredNetworkTypeResult:I

.field private mProvisioningManager:Landroid/telephony/ims/ProvisioningManager;

.field private mQueuedWork:Ljava/util/concurrent/ThreadPoolExecutor;

.field mRadioPowerOnChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mRadioPowerOnSwitch:Landroid/widget/Switch;

.field private mReceived:Landroid/widget/TextView;

.field private mRefreshSmscButton:Landroid/widget/Button;

.field mRefreshSmscButtonHandler:Landroid/view/View$OnClickListener;

.field mRemovableEsimChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mRemovableEsimSwitch:Landroid/widget/Switch;

.field private mRoamingState:Landroid/widget/TextView;

.field private mSelectPhoneIndex:Landroid/widget/Spinner;

.field mSelectPhoneIndexHandler:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mSelectedPhoneIndex:I

.field private mSent:Landroid/widget/TextView;

.field private final mSimulateOos:[Z

.field private final mSimulateOosOnChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mSimulateOutOfServiceSwitch:Landroid/widget/Switch;

.field private mSmsc:Landroid/widget/EditText;

.field private mSubscriberId:Landroid/widget/TextView;

.field private mSubscriptionId:Landroid/widget/TextView;

.field private mTelephonyCallback:Landroid/telephony/TelephonyCallback;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mToggleData:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private mTriggerCarrierProvisioningButton:Landroid/widget/Button;

.field mTriggerCarrierProvisioningButtonHandler:Landroid/view/View$OnClickListener;

.field private mUpdateSmscButton:Landroid/widget/Button;

.field mUpdateSmscButtonHandler:Landroid/view/View$OnClickListener;

.field private mUplinkKbps:Landroid/widget/TextView;

.field private mViewADNCallback:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private mViewFDNCallback:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private mViewSDNCallback:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private mVoiceNetwork:Landroid/widget/TextView;

.field private mVoiceRawReg:Landroid/widget/TextView;

.field private mWlanDataRawReg:Landroid/widget/TextView;


# direct methods
.method public static synthetic $r8$lambda$6xmQ0y2oLUqQQvl5hgEEeqnvBT0(Lcom/android/phone/settings/RadioInfo;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/settings/RadioInfo;->lambda$updateServiceEnabledByPlatform$9(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$8W2BeOSlAuZIPUKo-n-GP9Xkllo(Lcom/android/phone/settings/RadioInfo;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/settings/RadioInfo;->lambda$updateAllFields$4()V

    return-void
.end method

.method public static synthetic $r8$lambda$95xdUwK_Jencp-7fyM8ZNKeSiWs(Lcom/android/phone/settings/RadioInfo;Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/phone/settings/RadioInfo;->lambda$new$5(Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$DHPS6q5z2JWwtuVMQCubZox0ugU(Lcom/android/phone/settings/RadioInfo;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/settings/RadioInfo;->lambda$new$6(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Km7sl8DIkt3H0Z9LpZh6Nj_xztI(Lcom/android/phone/settings/RadioInfo;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/settings/RadioInfo;->lambda$new$7(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$RVzLN22jsc-VMcFn_JmXuiSy2Z4(Lcom/android/phone/settings/RadioInfo;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/settings/RadioInfo;->lambda$updateServiceEnabledByPlatform$8(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$VZbV93Zik2lhyGwRxKpRWjn_-nc(Lcom/android/phone/settings/RadioInfo;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/settings/RadioInfo;->lambda$onCreate$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$W0olvska-Iho6eyFiLvtvSIRv_c(Lcom/android/phone/settings/RadioInfo;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/settings/RadioInfo;->lambda$onCreate$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Xt-0wuse1ua5pRkWpGvfUEhGQ6Y(Lcom/android/phone/settings/RadioInfo;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/settings/RadioInfo;->lambda$updateAllFields$3(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$qPAOE_t-q23Bg7tUFolzRSUQ8zA(Lcom/android/phone/settings/RadioInfo;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/settings/RadioInfo;->lambda$updateServiceEnabledByPlatform$10(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$sBylUs0LBxZrPBvR8Kb5KJMxGFI(Lcom/android/phone/settings/RadioInfo;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/settings/RadioInfo;->lambda$onCreate$1(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmCbrsDataSwitch(Lcom/android/phone/settings/RadioInfo;)Landroid/widget/Switch;
    .locals 0

    iget-object p0, p0, Lcom/android/phone/settings/RadioInfo;->mCbrsDataSwitch:Landroid/widget/Switch;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCellInfoResult(Lcom/android/phone/settings/RadioInfo;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/android/phone/settings/RadioInfo;->mCellInfoResult:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDsdsSwitch(Lcom/android/phone/settings/RadioInfo;)Landroid/widget/Switch;
    .locals 0

    iget-object p0, p0, Lcom/android/phone/settings/RadioInfo;->mDsdsSwitch:Landroid/widget/Switch;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/phone/settings/RadioInfo;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/android/phone/settings/RadioInfo;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHttpClientTest(Lcom/android/phone/settings/RadioInfo;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/android/phone/settings/RadioInfo;->mHttpClientTest:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHttpClientTestResult(Lcom/android/phone/settings/RadioInfo;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/phone/settings/RadioInfo;->mHttpClientTestResult:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPhone(Lcom/android/phone/settings/RadioInfo;)Lcom/android/internal/telephony/Phone;
    .locals 0

    iget-object p0, p0, Lcom/android/phone/settings/RadioInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPhyChanConfig(Lcom/android/phone/settings/RadioInfo;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/android/phone/settings/RadioInfo;->mPhyChanConfig:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPingHostnameResultV4(Lcom/android/phone/settings/RadioInfo;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/phone/settings/RadioInfo;->mPingHostnameResultV4:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPingHostnameResultV6(Lcom/android/phone/settings/RadioInfo;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/phone/settings/RadioInfo;->mPingHostnameResultV6:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPingHostnameV4(Lcom/android/phone/settings/RadioInfo;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/android/phone/settings/RadioInfo;->mPingHostnameV4:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPingHostnameV6(Lcom/android/phone/settings/RadioInfo;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/android/phone/settings/RadioInfo;->mPingHostnameV6:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPreferredNetworkTypeResult(Lcom/android/phone/settings/RadioInfo;)I
    .locals 0

    iget p0, p0, Lcom/android/phone/settings/RadioInfo;->mPreferredNetworkTypeResult:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmProvisioningManager(Lcom/android/phone/settings/RadioInfo;)Landroid/telephony/ims/ProvisioningManager;
    .locals 0

    iget-object p0, p0, Lcom/android/phone/settings/RadioInfo;->mProvisioningManager:Landroid/telephony/ims/ProvisioningManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmQueuedWork(Lcom/android/phone/settings/RadioInfo;)Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 0

    iget-object p0, p0, Lcom/android/phone/settings/RadioInfo;->mQueuedWork:Ljava/util/concurrent/ThreadPoolExecutor;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSmsc(Lcom/android/phone/settings/RadioInfo;)Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Lcom/android/phone/settings/RadioInfo;->mSmsc:Landroid/widget/EditText;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTelephonyManager(Lcom/android/phone/settings/RadioInfo;)Landroid/telephony/TelephonyManager;
    .locals 0

    iget-object p0, p0, Lcom/android/phone/settings/RadioInfo;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUpdateSmscButton(Lcom/android/phone/settings/RadioInfo;)Landroid/widget/Button;
    .locals 0

    iget-object p0, p0, Lcom/android/phone/settings/RadioInfo;->mUpdateSmscButton:Landroid/widget/Button;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmCellInfoRefreshRateIndex(Lcom/android/phone/settings/RadioInfo;I)V
    .locals 0

    iput p1, p0, Lcom/android/phone/settings/RadioInfo;->mCellInfoRefreshRateIndex:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmCellInfoResult(Lcom/android/phone/settings/RadioInfo;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/settings/RadioInfo;->mCellInfoResult:Ljava/util/List;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmCfiValue(Lcom/android/phone/settings/RadioInfo;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/phone/settings/RadioInfo;->mCfiValue:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmMwiValue(Lcom/android/phone/settings/RadioInfo;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/phone/settings/RadioInfo;->mMwiValue:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmPreferredNetworkTypeResult(Lcom/android/phone/settings/RadioInfo;I)V
    .locals 0

    iput p1, p0, Lcom/android/phone/settings/RadioInfo;->mPreferredNetworkTypeResult:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSelectedPhoneIndex(Lcom/android/phone/settings/RadioInfo;I)V
    .locals 0

    iput p1, p0, Lcom/android/phone/settings/RadioInfo;->mSelectedPhoneIndex:I

    return-void
.end method

.method static bridge synthetic -$$Nest$mhttpClientTest(Lcom/android/phone/settings/RadioInfo;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/settings/RadioInfo;->httpClientTest()V

    return-void
.end method

.method static bridge synthetic -$$Nest$misRadioOn(Lcom/android/phone/settings/RadioInfo;)Z
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/settings/RadioInfo;->isRadioOn()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mperformDsdsSwitch(Lcom/android/phone/settings/RadioInfo;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/settings/RadioInfo;->performDsdsSwitch()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mpingHostname(Lcom/android/phone/settings/RadioInfo;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/settings/RadioInfo;->pingHostname()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mrefreshSmsc(Lcom/android/phone/settings/RadioInfo;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/settings/RadioInfo;->refreshSmsc()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetEabProvisionedState(Lcom/android/phone/settings/RadioInfo;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/settings/RadioInfo;->setEabProvisionedState(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetImsVolteProvisionedState(Lcom/android/phone/settings/RadioInfo;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/settings/RadioInfo;->setImsVolteProvisionedState(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetImsVtProvisionedState(Lcom/android/phone/settings/RadioInfo;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/settings/RadioInfo;->setImsVtProvisionedState(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetImsWfcProvisionedState(Lcom/android/phone/settings/RadioInfo;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/settings/RadioInfo;->setImsWfcProvisionedState(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetRemovableEsimAsDefaultEuicc(Lcom/android/phone/settings/RadioInfo;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/settings/RadioInfo;->setRemovableEsimAsDefaultEuicc(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateAllCellInfo(Lcom/android/phone/settings/RadioInfo;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/settings/RadioInfo;->updateAllCellInfo()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateBandwidths(Lcom/android/phone/settings/RadioInfo;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/phone/settings/RadioInfo;->updateBandwidths(II)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateCallRedirect(Lcom/android/phone/settings/RadioInfo;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/settings/RadioInfo;->updateCallRedirect()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateCellInfo(Lcom/android/phone/settings/RadioInfo;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/settings/RadioInfo;->updateCellInfo(Ljava/util/List;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateDataState(Lcom/android/phone/settings/RadioInfo;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/settings/RadioInfo;->updateDataState()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateDataStats2(Lcom/android/phone/settings/RadioInfo;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/settings/RadioInfo;->updateDataStats2()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateDnsCheckState(Lcom/android/phone/settings/RadioInfo;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/settings/RadioInfo;->updateDnsCheckState()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateImsProvisionedState(Lcom/android/phone/settings/RadioInfo;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/settings/RadioInfo;->updateImsProvisionedState()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateMessageWaiting(Lcom/android/phone/settings/RadioInfo;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/settings/RadioInfo;->updateMessageWaiting()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateNetworkType(Lcom/android/phone/settings/RadioInfo;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/settings/RadioInfo;->updateNetworkType()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateNrStats(Lcom/android/phone/settings/RadioInfo;Landroid/telephony/ServiceState;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/settings/RadioInfo;->updateNrStats(Landroid/telephony/ServiceState;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdatePhoneIndex(Lcom/android/phone/settings/RadioInfo;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/phone/settings/RadioInfo;->updatePhoneIndex(II)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdatePhoneState(Lcom/android/phone/settings/RadioInfo;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/settings/RadioInfo;->updatePhoneState(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdatePhysicalChannelConfiguration(Lcom/android/phone/settings/RadioInfo;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/settings/RadioInfo;->updatePhysicalChannelConfiguration(Ljava/util/List;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdatePingState(Lcom/android/phone/settings/RadioInfo;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/settings/RadioInfo;->updatePingState()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateRadioPowerState(Lcom/android/phone/settings/RadioInfo;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/settings/RadioInfo;->updateRadioPowerState()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateRawRegistrationState(Lcom/android/phone/settings/RadioInfo;Landroid/telephony/ServiceState;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/settings/RadioInfo;->updateRawRegistrationState(Landroid/telephony/ServiceState;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateServiceState(Lcom/android/phone/settings/RadioInfo;Landroid/telephony/ServiceState;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/settings/RadioInfo;->updateServiceState(Landroid/telephony/ServiceState;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateSignalStrength(Lcom/android/phone/settings/RadioInfo;Landroid/telephony/SignalStrength;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/settings/RadioInfo;->updateSignalStrength(Landroid/telephony/SignalStrength;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetCELL_INFO_REFRESH_RATES()[I
    .locals 1

    sget-object v0, Lcom/android/phone/settings/RadioInfo;->CELL_INFO_REFRESH_RATES:[I

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetPREFERRED_NETWORK_LABELS()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/phone/settings/RadioInfo;->PREFERRED_NETWORK_LABELS:[Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetsPhoneIndexLabels()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/phone/settings/RadioInfo;->sPhoneIndexLabels:[Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$smlog(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/android/phone/settings/RadioInfo;->log(Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 36

    const-string v0, "user"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/phone/settings/RadioInfo;->IS_USER_BUILD:Z

    const-string v1, "GSM/WCDMA preferred"

    const-string v2, "GSM only"

    const-string v3, "WCDMA only"

    const-string v4, "GSM/WCDMA auto (PRL)"

    const-string v5, "CDMA/EvDo auto (PRL)"

    const-string v6, "CDMA only"

    const-string v7, "EvDo only"

    const-string v8, "CDMA/EvDo/GSM/WCDMA (PRL)"

    const-string v9, "CDMA + LTE/EvDo (PRL)"

    const-string v10, "GSM/WCDMA/LTE (PRL)"

    const-string v11, "LTE/CDMA/EvDo/GSM/WCDMA (PRL)"

    const-string v12, "LTE only"

    const-string v13, "LTE/WCDMA"

    const-string v14, "TDSCDMA only"

    const-string v15, "TDSCDMA/WCDMA"

    const-string v16, "LTE/TDSCDMA"

    const-string v17, "TDSCDMA/GSM"

    const-string v18, "LTE/TDSCDMA/GSM"

    const-string v19, "TDSCDMA/GSM/WCDMA"

    const-string v20, "LTE/TDSCDMA/WCDMA"

    const-string v21, "LTE/TDSCDMA/GSM/WCDMA"

    const-string v22, "TDSCDMA/CDMA/EvDo/GSM/WCDMA "

    const-string v23, "LTE/TDSCDMA/CDMA/EvDo/GSM/WCDMA"

    const-string v24, "NR only"

    const-string v25, "NR/LTE"

    const-string v26, "NR/LTE/CDMA/EvDo"

    const-string v27, "NR/LTE/GSM/WCDMA"

    const-string v28, "NR/LTE/CDMA/EvDo/GSM/WCDMA"

    const-string v29, "NR/LTE/WCDMA"

    const-string v30, "NR/LTE/TDSCDMA"

    const-string v31, "NR/LTE/TDSCDMA/GSM"

    const-string v32, "NR/LTE/TDSCDMA/WCDMA"

    const-string v33, "NR/LTE/TDSCDMA/GSM/WCDMA"

    const-string v34, "NR/LTE/TDSCDMA/CDMA/EvDo/GSM/WCDMA"

    const-string v35, "Unknown"

    filled-new-array/range {v1 .. v35}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/phone/settings/RadioInfo;->PREFERRED_NETWORK_LABELS:[Ljava/lang/String;

    const-string v0, "Min 10s"

    const-string v1, "Min 60s"

    const-string v2, "Disabled"

    const-string v3, "Immediate"

    const-string v4, "Min 5s"

    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/phone/settings/RadioInfo;->CELL_INFO_REFRESH_RATE_LABELS:[Ljava/lang/String;

    const/16 v0, 0x2710

    const v1, 0xea60

    const v2, 0x7fffffff

    const/4 v3, 0x0

    const/16 v4, 0x1388

    filled-new-array {v2, v3, v4, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/android/phone/settings/RadioInfo;->CELL_INFO_REFRESH_RATES:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/settings/RadioInfo;->mImsManager:Landroid/telephony/ims/ImsManager;

    iput-object v0, p0, Lcom/android/phone/settings/RadioInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    iput-object v0, p0, Lcom/android/phone/settings/RadioInfo;->mProvisioningManager:Landroid/telephony/ims/ProvisioningManager;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/phone/settings/RadioInfo;->mMwiValue:Z

    iput-boolean v1, p0, Lcom/android/phone/settings/RadioInfo;->mCfiValue:Z

    iput-object v0, p0, Lcom/android/phone/settings/RadioInfo;->mCellInfoResult:Ljava/util/List;

    const/4 v2, 0x2

    new-array v2, v2, [Z

    iput-object v2, p0, Lcom/android/phone/settings/RadioInfo;->mSimulateOos:[Z

    new-instance v2, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v2}, Landroid/net/NetworkRequest$Builder;-><init>()V

    invoke-virtual {v2, v1}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v1

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/settings/RadioInfo;->mDefaultNetworkRequest:Landroid/net/NetworkRequest;

    new-instance v1, Lcom/android/phone/settings/RadioInfo$1;

    invoke-direct {v1, p0}, Lcom/android/phone/settings/RadioInfo$1;-><init>(Lcom/android/phone/settings/RadioInfo;)V

    iput-object v1, p0, Lcom/android/phone/settings/RadioInfo;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    new-instance v1, Lcom/android/phone/settings/RadioInfo$RadioInfoTelephonyCallback;

    invoke-direct {v1, p0, v0}, Lcom/android/phone/settings/RadioInfo$RadioInfoTelephonyCallback;-><init>(Lcom/android/phone/settings/RadioInfo;Lcom/android/phone/settings/RadioInfo$RadioInfoTelephonyCallback-IA;)V

    iput-object v1, p0, Lcom/android/phone/settings/RadioInfo;->mTelephonyCallback:Landroid/telephony/TelephonyCallback;

    new-instance v0, Lcom/android/phone/settings/RadioInfo$2;

    invoke-direct {v0, p0}, Lcom/android/phone/settings/RadioInfo$2;-><init>(Lcom/android/phone/settings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/phone/settings/RadioInfo;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/phone/settings/RadioInfo$9;

    invoke-direct {v0, p0}, Lcom/android/phone/settings/RadioInfo$9;-><init>(Lcom/android/phone/settings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/phone/settings/RadioInfo;->mViewADNCallback:Landroid/view/MenuItem$OnMenuItemClickListener;

    new-instance v0, Lcom/android/phone/settings/RadioInfo$10;

    invoke-direct {v0, p0}, Lcom/android/phone/settings/RadioInfo$10;-><init>(Lcom/android/phone/settings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/phone/settings/RadioInfo;->mViewFDNCallback:Landroid/view/MenuItem$OnMenuItemClickListener;

    new-instance v0, Lcom/android/phone/settings/RadioInfo$11;

    invoke-direct {v0, p0}, Lcom/android/phone/settings/RadioInfo$11;-><init>(Lcom/android/phone/settings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/phone/settings/RadioInfo;->mViewSDNCallback:Landroid/view/MenuItem$OnMenuItemClickListener;

    new-instance v0, Lcom/android/phone/settings/RadioInfo$12;

    invoke-direct {v0, p0}, Lcom/android/phone/settings/RadioInfo$12;-><init>(Lcom/android/phone/settings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/phone/settings/RadioInfo;->mGetImsStatus:Landroid/view/MenuItem$OnMenuItemClickListener;

    new-instance v0, Lcom/android/phone/settings/RadioInfo$13;

    invoke-direct {v0, p0}, Lcom/android/phone/settings/RadioInfo$13;-><init>(Lcom/android/phone/settings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/phone/settings/RadioInfo;->mToggleData:Landroid/view/MenuItem$OnMenuItemClickListener;

    new-instance v0, Lcom/android/phone/settings/RadioInfo$16;

    invoke-direct {v0, p0}, Lcom/android/phone/settings/RadioInfo$16;-><init>(Lcom/android/phone/settings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/phone/settings/RadioInfo;->mRadioPowerOnChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    new-instance v0, Lcom/android/phone/settings/RadioInfo$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/android/phone/settings/RadioInfo$$ExternalSyntheticLambda3;-><init>(Lcom/android/phone/settings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/phone/settings/RadioInfo;->mSimulateOosOnChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    new-instance v0, Lcom/android/phone/settings/RadioInfo$17;

    invoke-direct {v0, p0}, Lcom/android/phone/settings/RadioInfo$17;-><init>(Lcom/android/phone/settings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/phone/settings/RadioInfo;->mImsVolteCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    new-instance v0, Lcom/android/phone/settings/RadioInfo$18;

    invoke-direct {v0, p0}, Lcom/android/phone/settings/RadioInfo$18;-><init>(Lcom/android/phone/settings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/phone/settings/RadioInfo;->mImsVtCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    new-instance v0, Lcom/android/phone/settings/RadioInfo$19;

    invoke-direct {v0, p0}, Lcom/android/phone/settings/RadioInfo$19;-><init>(Lcom/android/phone/settings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/phone/settings/RadioInfo;->mImsWfcCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    new-instance v0, Lcom/android/phone/settings/RadioInfo$20;

    invoke-direct {v0, p0}, Lcom/android/phone/settings/RadioInfo$20;-><init>(Lcom/android/phone/settings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/phone/settings/RadioInfo;->mEabCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    new-instance v0, Lcom/android/phone/settings/RadioInfo$21;

    invoke-direct {v0, p0}, Lcom/android/phone/settings/RadioInfo$21;-><init>(Lcom/android/phone/settings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/phone/settings/RadioInfo;->mDnsCheckButtonHandler:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/phone/settings/RadioInfo$22;

    invoke-direct {v0, p0}, Lcom/android/phone/settings/RadioInfo$22;-><init>(Lcom/android/phone/settings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/phone/settings/RadioInfo;->mOemInfoButtonHandler:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/phone/settings/RadioInfo$23;

    invoke-direct {v0, p0}, Lcom/android/phone/settings/RadioInfo$23;-><init>(Lcom/android/phone/settings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/phone/settings/RadioInfo;->mPingButtonHandler:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/phone/settings/RadioInfo$24;

    invoke-direct {v0, p0}, Lcom/android/phone/settings/RadioInfo$24;-><init>(Lcom/android/phone/settings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/phone/settings/RadioInfo;->mUpdateSmscButtonHandler:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/phone/settings/RadioInfo$25;

    invoke-direct {v0, p0}, Lcom/android/phone/settings/RadioInfo$25;-><init>(Lcom/android/phone/settings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/phone/settings/RadioInfo;->mRefreshSmscButtonHandler:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/phone/settings/RadioInfo$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/android/phone/settings/RadioInfo$$ExternalSyntheticLambda4;-><init>(Lcom/android/phone/settings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/phone/settings/RadioInfo;->mCarrierProvisioningButtonHandler:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/phone/settings/RadioInfo$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lcom/android/phone/settings/RadioInfo$$ExternalSyntheticLambda5;-><init>(Lcom/android/phone/settings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/phone/settings/RadioInfo;->mTriggerCarrierProvisioningButtonHandler:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/phone/settings/RadioInfo$26;

    invoke-direct {v0, p0}, Lcom/android/phone/settings/RadioInfo$26;-><init>(Lcom/android/phone/settings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/phone/settings/RadioInfo;->mPreferredNetworkHandler:Landroid/widget/AdapterView$OnItemSelectedListener;

    new-instance v0, Lcom/android/phone/settings/RadioInfo$27;

    invoke-direct {v0, p0}, Lcom/android/phone/settings/RadioInfo$27;-><init>(Lcom/android/phone/settings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/phone/settings/RadioInfo;->mSelectPhoneIndexHandler:Landroid/widget/AdapterView$OnItemSelectedListener;

    new-instance v0, Lcom/android/phone/settings/RadioInfo$28;

    invoke-direct {v0, p0}, Lcom/android/phone/settings/RadioInfo$28;-><init>(Lcom/android/phone/settings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/phone/settings/RadioInfo;->mCellInfoRefreshRateHandler:Landroid/widget/AdapterView$OnItemSelectedListener;

    new-instance v0, Lcom/android/phone/settings/RadioInfo$30;

    invoke-direct {v0, p0}, Lcom/android/phone/settings/RadioInfo$30;-><init>(Lcom/android/phone/settings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/phone/settings/RadioInfo;->mCbrsDataSwitchChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    new-instance v0, Lcom/android/phone/settings/RadioInfo$31;

    invoke-direct {v0, p0}, Lcom/android/phone/settings/RadioInfo$31;-><init>(Lcom/android/phone/settings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/phone/settings/RadioInfo;->mOnDsdsDialogConfirmedListener:Landroid/content/DialogInterface$OnClickListener;

    new-instance v0, Lcom/android/phone/settings/RadioInfo$32;

    invoke-direct {v0, p0}, Lcom/android/phone/settings/RadioInfo$32;-><init>(Lcom/android/phone/settings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/phone/settings/RadioInfo;->mRemovableEsimChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    return-void
.end method

.method private buildCdmaInfoString(Landroid/telephony/CellInfoCdma;)Ljava/lang/String;
    .locals 11

    invoke-virtual {p1}, Landroid/telephony/CellInfoCdma;->getCellIdentity()Landroid/telephony/CellIdentityCdma;

    move-result-object v0

    invoke-virtual {p1}, Landroid/telephony/CellInfoCdma;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthCdma;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/android/phone/settings/RadioInfo;->getConnectionStatusString(Landroid/telephony/CellInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroid/telephony/CellIdentityCdma;->getSystemId()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/phone/settings/RadioInfo;->getCellInfoDisplayString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Landroid/telephony/CellIdentityCdma;->getNetworkId()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/phone/settings/RadioInfo;->getCellInfoDisplayString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Landroid/telephony/CellIdentityCdma;->getBasestationId()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/phone/settings/RadioInfo;->getCellInfoDisplayString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Landroid/telephony/CellSignalStrengthCdma;->getCdmaDbm()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/phone/settings/RadioInfo;->getCellInfoDisplayString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Landroid/telephony/CellSignalStrengthCdma;->getCdmaEcio()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/phone/settings/RadioInfo;->getCellInfoDisplayString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1}, Landroid/telephony/CellSignalStrengthCdma;->getEvdoDbm()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/phone/settings/RadioInfo;->getCellInfoDisplayString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1}, Landroid/telephony/CellSignalStrengthCdma;->getEvdoEcio()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/phone/settings/RadioInfo;->getCellInfoDisplayString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1}, Landroid/telephony/CellSignalStrengthCdma;->getEvdoSnr()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/phone/settings/RadioInfo;->getCellInfoDisplayString(I)Ljava/lang/String;

    move-result-object v10

    filled-new-array/range {v2 .. v10}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "%-3.3s %-5.5s %-5.5s %-5.5s %-6.6s %-6.6s %-6.6s %-6.6s %-5.5s"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private buildCellInfoString(Ljava/util/List;)Ljava/lang/String;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/CellInfo;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    move-object/from16 v0, p0

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_a

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/telephony/CellInfo;

    instance-of v9, v8, Landroid/telephony/CellInfoLte;

    if-eqz v9, :cond_1

    check-cast v8, Landroid/telephony/CellInfoLte;

    invoke-direct {v0, v8}, Lcom/android/phone/settings/RadioInfo;->buildLteInfoString(Landroid/telephony/CellInfoLte;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    instance-of v9, v8, Landroid/telephony/CellInfoWcdma;

    if-eqz v9, :cond_2

    check-cast v8, Landroid/telephony/CellInfoWcdma;

    invoke-direct {v0, v8}, Lcom/android/phone/settings/RadioInfo;->buildWcdmaInfoString(Landroid/telephony/CellInfoWcdma;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    instance-of v9, v8, Landroid/telephony/CellInfoGsm;

    if-eqz v9, :cond_3

    check-cast v8, Landroid/telephony/CellInfoGsm;

    invoke-direct {v0, v8}, Lcom/android/phone/settings/RadioInfo;->buildGsmInfoString(Landroid/telephony/CellInfoGsm;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    instance-of v9, v8, Landroid/telephony/CellInfoCdma;

    if-eqz v9, :cond_4

    check-cast v8, Landroid/telephony/CellInfoCdma;

    invoke-direct {v0, v8}, Lcom/android/phone/settings/RadioInfo;->buildCdmaInfoString(Landroid/telephony/CellInfoCdma;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_4
    instance-of v9, v8, Landroid/telephony/CellInfoNr;

    if-eqz v9, :cond_0

    check-cast v8, Landroid/telephony/CellInfoNr;

    invoke-direct {v0, v8}, Lcom/android/phone/settings/RadioInfo;->buildNrInfoString(Landroid/telephony/CellInfoNr;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_5
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "SRV"

    const-string v8, "MCC"

    const-string v9, "MNC"

    const-string v10, "TAC"

    const-string v11, "NCI"

    const-string v12, "PCI"

    const-string v13, "NRARFCN"

    const-string v14, "SS-RSRP"

    const-string v15, "SS-RSRQ"

    filled-new-array/range {v7 .. v15}, [Ljava/lang/Object;

    move-result-object v1

    const-string v7, "NR\n%-3.3s %-3.3s %-3.3s %-5.5s %-5.5s %-3.3s %-6.6s %-4.4s %-4.4s\n"

    invoke-static {v7, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_6
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-eqz v0, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "SRV"

    const-string v7, "MCC"

    const-string v8, "MNC"

    const-string v9, "TAC"

    const-string v10, "CID"

    const-string v11, "PCI"

    const-string v12, "EARFCN"

    const-string v13, "BW"

    const-string v14, "RSRP"

    const-string v15, "RSRQ"

    const-string v16, "TA"

    filled-new-array/range {v6 .. v16}, [Ljava/lang/Object;

    move-result-object v1

    const-string v6, "LTE\n%-3.3s %-3.3s %-3.3s %-5.5s %-5.5s %-3.3s %-6.6s %-2.2s %-4.4s %-4.4s %-2.2s\n"

    invoke-static {v6, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_7
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-eqz v0, :cond_8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "SRV"

    const-string v7, "MCC"

    const-string v8, "MNC"

    const-string v9, "LAC"

    const-string v10, "CID"

    const-string v11, "UARFCN"

    const-string v12, "PSC"

    const-string v13, "RSCP"

    filled-new-array/range {v6 .. v13}, [Ljava/lang/Object;

    move-result-object v1

    const-string v4, "WCDMA\n%-3.3s %-3.3s %-3.3s %-5.5s %-5.5s %-6.6s %-3.3s %-4.4s\n"

    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_8
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-eqz v0, :cond_9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "SRV"

    const-string v5, "MCC"

    const-string v6, "MNC"

    const-string v7, "LAC"

    const-string v8, "CID"

    const-string v9, "ARFCN"

    const-string v10, "BSIC"

    const-string v11, "RSSI"

    filled-new-array/range {v4 .. v11}, [Ljava/lang/Object;

    move-result-object v1

    const-string v4, "GSM\n%-3.3s %-3.3s %-3.3s %-5.5s %-5.5s %-6.6s %-4.4s %-4.4s\n"

    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_9
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-eqz v0, :cond_b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "SRV"

    const-string v4, "SID"

    const-string v5, "NID"

    const-string v6, "BSID"

    const-string v7, "C-RSSI"

    const-string v8, "C-ECIO"

    const-string v9, "E-RSSI"

    const-string v10, "E-ECIO"

    const-string v11, "E-SNR"

    filled-new-array/range {v3 .. v11}, [Ljava/lang/Object;

    move-result-object v1

    const-string v3, "CDMA/EVDO\n%-3.3s %-5.5s %-5.5s %-5.5s %-6.6s %-6.6s %-6.6s %-6.6s %-5.5s\n"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_a
    const-string v1, "unknown"

    :cond_b
    :goto_1
    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private buildGsmInfoString(Landroid/telephony/CellInfoGsm;)Ljava/lang/String;
    .locals 10

    invoke-virtual {p1}, Landroid/telephony/CellInfoGsm;->getCellIdentity()Landroid/telephony/CellIdentityGsm;

    move-result-object v0

    invoke-virtual {p1}, Landroid/telephony/CellInfoGsm;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthGsm;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/android/phone/settings/RadioInfo;->getConnectionStatusString(Landroid/telephony/CellInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroid/telephony/CellIdentityGsm;->getMcc()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/phone/settings/RadioInfo;->getCellInfoDisplayString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Landroid/telephony/CellIdentityGsm;->getMnc()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/phone/settings/RadioInfo;->getCellInfoDisplayString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Landroid/telephony/CellIdentityGsm;->getLac()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/phone/settings/RadioInfo;->getCellInfoDisplayString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Landroid/telephony/CellIdentityGsm;->getCid()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/phone/settings/RadioInfo;->getCellInfoDisplayString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Landroid/telephony/CellIdentityGsm;->getArfcn()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/phone/settings/RadioInfo;->getCellInfoDisplayString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Landroid/telephony/CellIdentityGsm;->getBsic()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/phone/settings/RadioInfo;->getCellInfoDisplayString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1}, Landroid/telephony/CellSignalStrengthGsm;->getDbm()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/phone/settings/RadioInfo;->getCellInfoDisplayString(I)Ljava/lang/String;

    move-result-object v9

    filled-new-array/range {v2 .. v9}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "%-3.3s %-3.3s %-3.3s %-5.5s %-5.5s %-6.6s %-4.4s %-4.4s\n"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private buildLteInfoString(Landroid/telephony/CellInfoLte;)Ljava/lang/String;
    .locals 13

    invoke-virtual {p1}, Landroid/telephony/CellInfoLte;->getCellIdentity()Landroid/telephony/CellIdentityLte;

    move-result-object v0

    invoke-virtual {p1}, Landroid/telephony/CellInfoLte;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthLte;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/android/phone/settings/RadioInfo;->getConnectionStatusString(Landroid/telephony/CellInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroid/telephony/CellIdentityLte;->getMcc()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/phone/settings/RadioInfo;->getCellInfoDisplayString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Landroid/telephony/CellIdentityLte;->getMnc()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/phone/settings/RadioInfo;->getCellInfoDisplayString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Landroid/telephony/CellIdentityLte;->getTac()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/phone/settings/RadioInfo;->getCellInfoDisplayString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Landroid/telephony/CellIdentityLte;->getCi()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/phone/settings/RadioInfo;->getCellInfoDisplayString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Landroid/telephony/CellIdentityLte;->getPci()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/phone/settings/RadioInfo;->getCellInfoDisplayString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Landroid/telephony/CellIdentityLte;->getEarfcn()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/phone/settings/RadioInfo;->getCellInfoDisplayString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0}, Landroid/telephony/CellIdentityLte;->getBandwidth()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/phone/settings/RadioInfo;->getCellInfoDisplayString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1}, Landroid/telephony/CellSignalStrengthLte;->getDbm()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/phone/settings/RadioInfo;->getCellInfoDisplayString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1}, Landroid/telephony/CellSignalStrengthLte;->getRsrq()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/phone/settings/RadioInfo;->getCellInfoDisplayString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1}, Landroid/telephony/CellSignalStrengthLte;->getTimingAdvance()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/phone/settings/RadioInfo;->getCellInfoDisplayString(I)Ljava/lang/String;

    move-result-object v12

    filled-new-array/range {v2 .. v12}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "%-3.3s %-3.3s %-3.3s %-5.5s %-5.5s %-3.3s %-6.6s %-2.2s %-4.4s %-4.4s %-2.2s\n"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private buildNrInfoString(Landroid/telephony/CellInfoNr;)Ljava/lang/String;
    .locals 11

    invoke-virtual {p1}, Landroid/telephony/CellInfoNr;->getCellIdentity()Landroid/telephony/CellIdentity;

    move-result-object v0

    check-cast v0, Landroid/telephony/CellIdentityNr;

    invoke-virtual {p1}, Landroid/telephony/CellInfoNr;->getCellSignalStrength()Landroid/telephony/CellSignalStrength;

    move-result-object v1

    check-cast v1, Landroid/telephony/CellSignalStrengthNr;

    invoke-direct {p0, p1}, Lcom/android/phone/settings/RadioInfo;->getConnectionStatusString(Landroid/telephony/CellInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroid/telephony/CellIdentityNr;->getMccString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Landroid/telephony/CellIdentityNr;->getMncString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Landroid/telephony/CellIdentityNr;->getTac()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/phone/settings/RadioInfo;->getCellInfoDisplayString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Landroid/telephony/CellIdentityNr;->getNci()J

    move-result-wide v6

    invoke-direct {p0, v6, v7}, Lcom/android/phone/settings/RadioInfo;->getCellInfoDisplayString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Landroid/telephony/CellIdentityNr;->getPci()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/phone/settings/RadioInfo;->getCellInfoDisplayString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Landroid/telephony/CellIdentityNr;->getNrarfcn()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/phone/settings/RadioInfo;->getCellInfoDisplayString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1}, Landroid/telephony/CellSignalStrengthNr;->getSsRsrp()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/phone/settings/RadioInfo;->getCellInfoDisplayString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1}, Landroid/telephony/CellSignalStrengthNr;->getSsRsrq()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/phone/settings/RadioInfo;->getCellInfoDisplayString(I)Ljava/lang/String;

    move-result-object v10

    filled-new-array/range {v2 .. v10}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "%-3.3s %-3.3s %-3.3s %-5.5s %-5.5s %-3.3s %-6.6s %-4.4s %-4.4s\n"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private buildWcdmaInfoString(Landroid/telephony/CellInfoWcdma;)Ljava/lang/String;
    .locals 10

    invoke-virtual {p1}, Landroid/telephony/CellInfoWcdma;->getCellIdentity()Landroid/telephony/CellIdentityWcdma;

    move-result-object v0

    invoke-virtual {p1}, Landroid/telephony/CellInfoWcdma;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthWcdma;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/android/phone/settings/RadioInfo;->getConnectionStatusString(Landroid/telephony/CellInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroid/telephony/CellIdentityWcdma;->getMcc()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/phone/settings/RadioInfo;->getCellInfoDisplayString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Landroid/telephony/CellIdentityWcdma;->getMnc()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/phone/settings/RadioInfo;->getCellInfoDisplayString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Landroid/telephony/CellIdentityWcdma;->getLac()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/phone/settings/RadioInfo;->getCellInfoDisplayString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Landroid/telephony/CellIdentityWcdma;->getCid()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/phone/settings/RadioInfo;->getCellInfoDisplayString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Landroid/telephony/CellIdentityWcdma;->getUarfcn()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/phone/settings/RadioInfo;->getCellInfoDisplayString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Landroid/telephony/CellIdentityWcdma;->getPsc()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/phone/settings/RadioInfo;->getCellInfoDisplayString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1}, Landroid/telephony/CellSignalStrengthWcdma;->getDbm()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/phone/settings/RadioInfo;->getCellInfoDisplayString(I)Ljava/lang/String;

    move-result-object v9

    filled-new-array/range {v2 .. v9}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "%-3.3s %-3.3s %-3.3s %-5.5s %-5.5s %-6.6s %-3.3s %-4.4s\n"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private dsdsModeOnly()Z
    .locals 1

    const-string p0, "ro.boot.hardware.dsds"

    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private getBooleanCarrierConfig(Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/phone/settings/RadioInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "carrier_config"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    iget-object p0, p0, Lcom/android/phone/settings/RadioInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0

    :cond_0
    return v1
.end method

.method private getCarrierProvisioningAppString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/android/phone/settings/RadioInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    const-string v1, ""

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v2, Landroid/telephony/CarrierConfigManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    iget-object p0, p0, Lcom/android/phone/settings/RadioInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v0, "carrier_provisioning_app_string"

    invoke-virtual {p0, v0, v1}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v1
.end method

.method private getCellInfoDisplayString(I)Ljava/lang/String;
    .locals 0

    const p0, 0x7fffffff

    if-eq p1, p0, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method private getCellInfoDisplayString(J)Ljava/lang/String;
    .locals 2

    const-wide v0, 0x7fffffffffffffffL

    cmp-long p0, p1, v0

    if-eqz p0, :cond_0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method private getConnectionStatusString(Landroid/telephony/CellInfo;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p1}, Landroid/telephony/CellInfo;->isRegistered()Z

    move-result p0

    const-string v0, ""

    if-eqz p0, :cond_0

    const-string p0, "R"

    goto :goto_0

    :cond_0
    move-object p0, v0

    :goto_0
    invoke-virtual {p1}, Landroid/telephony/CellInfo;->getCellConnectionStatus()I

    move-result p1

    if-eqz p1, :cond_3

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    move-object p1, v0

    goto :goto_1

    :cond_1
    const-string p1, "S"

    goto :goto_1

    :cond_2
    const-string p1, "P"

    goto :goto_1

    :cond_3
    const-string p1, "N"

    :goto_1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v0, "+"

    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getImsConfigProvisionedState(II)Z
    .locals 0

    iget-object p0, p0, Lcom/android/phone/settings/RadioInfo;->mProvisioningManager:Landroid/telephony/ims/ProvisioningManager;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0, p1, p2}, Landroid/telephony/ims/ProvisioningManager;->getProvisioningStatusForCapability(II)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string p1, "RadioInfo"

    const-string p2, "getImsConfigProvisionedState() exception:"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private getPhone(I)Lcom/android/internal/telephony/Phone;
    .locals 1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getPhone subId = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/phone/settings/RadioInfo;->log(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result p0

    invoke-static {p0}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "return the default phone"

    invoke-static {p0}, Lcom/android/phone/settings/RadioInfo;->log(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method private static getPhoneIndexLabels(Landroid/telephony/TelephonyManager;)[Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result p0

    new-array v0, p0, [Ljava/lang/String;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Phone "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private getRawRegistrationStateText(Landroid/telephony/ServiceState;II)Ljava/lang/String;
    .locals 0

    const-string p0, ""

    if-eqz p1, :cond_1

    invoke-virtual {p1, p2, p3}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/telephony/NetworkRegistrationInfo;->getNetworkRegistrationState()I

    move-result p3

    invoke-static {p3}, Landroid/telephony/NetworkRegistrationInfo;->registrationStateToString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/telephony/NetworkRegistrationInfo;->isEmergencyEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p0, "_EM"

    :cond_0
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method private getRcsConfigProvisionedState(II)Z
    .locals 0

    iget-object p0, p0, Lcom/android/phone/settings/RadioInfo;->mProvisioningManager:Landroid/telephony/ims/ProvisioningManager;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0, p1, p2}, Landroid/telephony/ims/ProvisioningManager;->getRcsProvisioningStatusForCapability(II)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string p1, "RadioInfo"

    const-string p2, "getRcsConfigProvisionedState() exception:"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private httpClientTest()V
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/net/URL;

    const-string v2, "https://www.google.com"

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    const/16 v2, 0xc8

    if-ne v0, v2, :cond_0

    const-string v0, "Pass"

    iput-object v0, p0, Lcom/android/phone/settings/RadioInfo;->mHttpClientTestResult:Ljava/lang/String;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fail: Code: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/settings/RadioInfo;->mHttpClientTestResult:Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_2

    :catchall_0
    move-exception p0

    move-object v0, v1

    goto :goto_3

    :catch_0
    move-object v0, v1

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_3

    :catch_1
    :goto_1
    :try_start_2
    const-string v1, "Fail: IOException"

    iput-object v1, p0, Lcom/android/phone/settings/RadioInfo;->mHttpClientTestResult:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_1
    :goto_2
    return-void

    :goto_3
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_2
    throw p0
.end method

.method private static isDsdsEnabled()Z
    .locals 2

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private static isDsdsSupported()Z
    .locals 1

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isMultiSimSupported()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isEabEnabledByPlatform()Z
    .locals 3

    iget-object v0, p0, Lcom/android/phone/settings/RadioInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "carrier_config"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    iget-object p0, p0, Lcom/android/phone/settings/RadioInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object p0

    if-eqz p0, :cond_1

    const-string v0, "use_rcs_presence_bool"

    invoke-virtual {p0, v0, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ims.enable_presence_capability_exchange_bool"

    invoke-virtual {p0, v0, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private isEabProvisioned()Z
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/phone/settings/RadioInfo;->getRcsConfigProvisionedState(II)Z

    move-result p0

    return p0
.end method

.method private isEabProvisioningRequired()Z
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/phone/settings/RadioInfo;->isRcsConfigProvisioningRequired(II)Z

    move-result p0

    return p0
.end method

.method private isImsConfigProvisioningRequired(II)Z
    .locals 0

    iget-object p0, p0, Lcom/android/phone/settings/RadioInfo;->mProvisioningManager:Landroid/telephony/ims/ProvisioningManager;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0, p1, p2}, Landroid/telephony/ims/ProvisioningManager;->isProvisioningRequiredForCapability(II)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string p1, "RadioInfo"

    const-string p2, "isImsConfigProvisioningRequired() exception:"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private isImsSupportedOnDevice(Landroid/content/Context;)Z
    .locals 0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string p1, "android.hardware.telephony.ims"

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private isImsVolteProvisioned()Z
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/phone/settings/RadioInfo;->getImsConfigProvisionedState(II)Z

    move-result p0

    return p0
.end method

.method private isImsVolteProvisioningRequired()Z
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/phone/settings/RadioInfo;->isImsConfigProvisioningRequired(II)Z

    move-result p0

    return p0
.end method

.method private isImsVtProvisioned()Z
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/phone/settings/RadioInfo;->getImsConfigProvisionedState(II)Z

    move-result p0

    return p0
.end method

.method private isImsVtProvisioningRequired()Z
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/phone/settings/RadioInfo;->isImsConfigProvisioningRequired(II)Z

    move-result p0

    return p0
.end method

.method private isImsWfcProvisioned()Z
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, v0}, Lcom/android/phone/settings/RadioInfo;->getImsConfigProvisionedState(II)Z

    move-result p0

    return p0
.end method

.method private isImsWfcProvisioningRequired()Z
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, v0}, Lcom/android/phone/settings/RadioInfo;->isImsConfigProvisioningRequired(II)Z

    move-result p0

    return p0
.end method

.method private isRadioOn()Z
    .locals 1

    iget-object p0, p0, Lcom/android/phone/settings/RadioInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getState()I

    move-result p0

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isRcsConfigProvisioningRequired(II)Z
    .locals 0

    iget-object p0, p0, Lcom/android/phone/settings/RadioInfo;->mProvisioningManager:Landroid/telephony/ims/ProvisioningManager;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0, p1, p2}, Landroid/telephony/ims/ProvisioningManager;->isRcsProvisioningRequiredForCapability(II)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string p1, "RadioInfo"

    const-string p2, "isRcsConfigProvisioningRequired() exception:"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$new$5(Landroid/widget/CompoundButton;Z)V
    .locals 2

    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.android.internal.telephony.TestServiceState"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    const-string p2, "Send OOS override broadcast intent."

    invoke-static {p2}, Lcom/android/phone/settings/RadioInfo;->log(Ljava/lang/String;)V

    const-string p2, "data_reg_state"

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object p2, p0, Lcom/android/phone/settings/RadioInfo;->mSimulateOos:[Z

    iget-object v1, p0, Lcom/android/phone/settings/RadioInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    aput-boolean v0, p2, v1

    goto :goto_0

    :cond_0
    const-string p2, "Remove OOS override."

    invoke-static {p2}, Lcom/android/phone/settings/RadioInfo;->log(Ljava/lang/String;)V

    const-string p2, "action"

    const-string v0, "reset"

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p2, p0, Lcom/android/phone/settings/RadioInfo;->mSimulateOos:[Z

    iget-object v0, p0, Lcom/android/phone/settings/RadioInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    const/4 v1, 0x0

    aput-boolean v1, p2, v0

    :goto_0
    iget-object p0, p0, Lcom/android/phone/settings/RadioInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getTelephonyTester()Lcom/android/internal/telephony/TelephonyTester;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/TelephonyTester;->setServiceStateTestIntent(Landroid/content/Intent;)V

    return-void
.end method

.method private synthetic lambda$new$6(Landroid/view/View;)V
    .locals 2

    invoke-direct {p0}, Lcom/android/phone/settings/RadioInfo;->getCarrierProvisioningAppString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.phone.settings.CARRIER_PROVISIONING"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$7(Landroid/view/View;)V
    .locals 2

    invoke-direct {p0}, Lcom/android/phone/settings/RadioInfo;->getCarrierProvisioningAppString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.phone.settings.TRIGGER_CARRIER_PROVISIONING"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onCreate$0(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/android/phone/settings/RadioInfo;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->doesSwitchMultiSimConfigTriggerReboot()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/phone/settings/RadioInfo;->mDsdsSwitch:Landroid/widget/Switch;

    invoke-virtual {p1}, Landroid/widget/Switch;->toggle()V

    invoke-direct {p0}, Lcom/android/phone/settings/RadioInfo;->showDsdsChangeDialog()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/phone/settings/RadioInfo;->performDsdsSwitch()V

    :goto_0
    return-void
.end method

.method private synthetic lambda$onCreate$1(I)V
    .locals 0

    invoke-static {p1}, Landroid/telephony/RadioAccessFamily;->getNetworkTypeFromRaf(I)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/phone/settings/RadioInfo;->updatePreferredNetworkType(I)V

    return-void
.end method

.method private synthetic lambda$onCreate$2()V
    .locals 2

    iget-object v0, p0, Lcom/android/phone/settings/RadioInfo;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPreferredNetworkTypeBitmask()J

    move-result-wide v0

    long-to-int v0, v0

    new-instance v1, Lcom/android/phone/settings/RadioInfo$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0, v0}, Lcom/android/phone/settings/RadioInfo$$ExternalSyntheticLambda11;-><init>(Lcom/android/phone/settings/RadioInfo;I)V

    invoke-virtual {p0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$updateAllFields$3(I)V
    .locals 0

    invoke-static {p1}, Landroid/telephony/RadioAccessFamily;->getNetworkTypeFromRaf(I)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/phone/settings/RadioInfo;->updatePreferredNetworkType(I)V

    return-void
.end method

.method private synthetic lambda$updateAllFields$4()V
    .locals 2

    iget-object v0, p0, Lcom/android/phone/settings/RadioInfo;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPreferredNetworkTypeBitmask()J

    move-result-wide v0

    long-to-int v0, v0

    new-instance v1, Lcom/android/phone/settings/RadioInfo$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0, v0}, Lcom/android/phone/settings/RadioInfo$$ExternalSyntheticLambda7;-><init>(Lcom/android/phone/settings/RadioInfo;I)V

    invoke-virtual {p0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$updateServiceEnabledByPlatform$10(Ljava/lang/Boolean;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/phone/settings/RadioInfo;->updateWfcProvisionedSwitch(Z)V

    return-void
.end method

.method private synthetic lambda$updateServiceEnabledByPlatform$8(Ljava/lang/Boolean;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/phone/settings/RadioInfo;->updateVolteProvisionedSwitch(Z)V

    return-void
.end method

.method private synthetic lambda$updateServiceEnabledByPlatform$9(Ljava/lang/Boolean;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/phone/settings/RadioInfo;->updateVtProvisionedSwitch(Z)V

    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1

    const-string v0, "RadioInfo"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private performDsdsSwitch()V
    .locals 1

    iget-object v0, p0, Lcom/android/phone/settings/RadioInfo;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object p0, p0, Lcom/android/phone/settings/RadioInfo;->mDsdsSwitch:Landroid/widget/Switch;

    invoke-virtual {p0}, Landroid/widget/Switch;->isChecked()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x2

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    invoke-virtual {v0, p0}, Landroid/telephony/TelephonyManager;->switchMultiSimConfig(I)V

    return-void
.end method

.method private pingHostname()V
    .locals 7

    const-string v0, "Pass"

    const-string v1, "Fail(%d)"

    const-string v2, "Fail: IOException"

    const/4 v3, 0x0

    const/4 v4, 0x1

    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    const-string v6, "ping -c 1 www.google.com"

    invoke-virtual {v5, v6}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Process;->waitFor()I

    move-result v5

    if-nez v5, :cond_0

    iput-object v0, p0, Lcom/android/phone/settings/RadioInfo;->mPingHostnameResultV4:Ljava/lang/String;

    goto :goto_0

    :cond_0
    new-array v6, v4, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v6, v3

    invoke-static {v1, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/phone/settings/RadioInfo;->mPingHostnameResultV4:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    :catch_0
    :try_start_1
    iput-object v2, p0, Lcom/android/phone/settings/RadioInfo;->mPingHostnameResultV4:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2

    :goto_0
    :try_start_2
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    const-string v6, "ping6 -c 1 www.google.com"

    invoke-virtual {v5, v6}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Process;->waitFor()I

    move-result v5

    if-nez v5, :cond_1

    iput-object v0, p0, Lcom/android/phone/settings/RadioInfo;->mPingHostnameResultV6:Ljava/lang/String;

    goto :goto_1

    :cond_1
    new-array v0, v4, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v3

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/settings/RadioInfo;->mPingHostnameResultV6:Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_1
    :try_start_3
    iput-object v2, p0, Lcom/android/phone/settings/RadioInfo;->mPingHostnameResultV6:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    :catch_2
    const-string v0, "Fail: InterruptedException"

    iput-object v0, p0, Lcom/android/phone/settings/RadioInfo;->mPingHostnameResultV6:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/phone/settings/RadioInfo;->mPingHostnameResultV4:Ljava/lang/String;

    :goto_1
    return-void
.end method

.method private refreshSmsc()V
    .locals 2

    iget-object v0, p0, Lcom/android/phone/settings/RadioInfo;->mQueuedWork:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/android/phone/settings/RadioInfo$3;

    invoke-direct {v1, p0}, Lcom/android/phone/settings/RadioInfo$3;-><init>(Lcom/android/phone/settings/RadioInfo;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private registerPhoneStateListener()V
    .locals 3

    new-instance v0, Lcom/android/phone/settings/RadioInfo$RadioInfoTelephonyCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/phone/settings/RadioInfo$RadioInfoTelephonyCallback;-><init>(Lcom/android/phone/settings/RadioInfo;Lcom/android/phone/settings/RadioInfo$RadioInfoTelephonyCallback-IA;)V

    iput-object v0, p0, Lcom/android/phone/settings/RadioInfo;->mTelephonyCallback:Landroid/telephony/TelephonyCallback;

    iget-object v0, p0, Lcom/android/phone/settings/RadioInfo;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    new-instance v1, Landroid/os/HandlerExecutor;

    iget-object v2, p0, Lcom/android/phone/settings/RadioInfo;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, v2}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    iget-object p0, p0, Lcom/android/phone/settings/RadioInfo;->mTelephonyCallback:Landroid/telephony/TelephonyCallback;

    invoke-virtual {v0, v1, p0}, Landroid/telephony/TelephonyManager;->registerTelephonyCallback(Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyCallback;)V

    return-void
.end method

.method private restoreFromBundle(Landroid/os/Bundle;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "mPingHostnameResultV4"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/settings/RadioInfo;->mPingHostnameResultV4:Ljava/lang/String;

    const-string v0, "mPingHostnameResultV6"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/settings/RadioInfo;->mPingHostnameResultV6:Ljava/lang/String;

    const-string v0, "mHttpClientTestResult"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/settings/RadioInfo;->mHttpClientTestResult:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/phone/settings/RadioInfo;->mPingHostnameV4:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/phone/settings/RadioInfo;->mPingHostnameResultV4:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/phone/settings/RadioInfo;->mPingHostnameV6:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/phone/settings/RadioInfo;->mPingHostnameResultV6:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/phone/settings/RadioInfo;->mHttpClientTest:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/phone/settings/RadioInfo;->mHttpClientTestResult:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/android/phone/settings/RadioInfo;->PREFERRED_NETWORK_LABELS:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    const-string v1, "mPreferredNetworkTypeResult"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/phone/settings/RadioInfo;->mPreferredNetworkTypeResult:I

    const-string v0, "mSelectedPhoneIndex"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/phone/settings/RadioInfo;->mSelectedPhoneIndex:I

    const-string v0, "mCellInfoRefreshRateIndex"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/phone/settings/RadioInfo;->mCellInfoRefreshRateIndex:I

    return-void
.end method

.method private setEabProvisionedState(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setEabProvisioned() state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    const-string v1, "on"

    goto :goto_0

    :cond_0
    const-string v1, "off"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RadioInfo"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/android/phone/settings/RadioInfo;->setRcsConfigProvisionedState(IIZ)V

    return-void
.end method

.method private setImsConfigProvisionedState(IIZ)V
    .locals 2

    iget-object v0, p0, Lcom/android/phone/settings/RadioInfo;->mProvisioningManager:Landroid/telephony/ims/ProvisioningManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/settings/RadioInfo;->mQueuedWork:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/android/phone/settings/RadioInfo$14;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/phone/settings/RadioInfo$14;-><init>(Lcom/android/phone/settings/RadioInfo;IIZ)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private setImsVolteProvisionedState(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setImsVolteProvisioned state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    const-string v1, "on"

    goto :goto_0

    :cond_0
    const-string v1, "off"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RadioInfo"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/android/phone/settings/RadioInfo;->setImsConfigProvisionedState(IIZ)V

    return-void
.end method

.method private setImsVtProvisionedState(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setImsVtProvisioned() state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    const-string v1, "on"

    goto :goto_0

    :cond_0
    const-string v1, "off"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RadioInfo"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/android/phone/settings/RadioInfo;->setImsConfigProvisionedState(IIZ)V

    return-void
.end method

.method private setImsWfcProvisionedState(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setImsWfcProvisioned() state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    const-string v1, "on"

    goto :goto_0

    :cond_0
    const-string v1, "off"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RadioInfo"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    invoke-direct {p0, v0, v0, p1}, Lcom/android/phone/settings/RadioInfo;->setImsConfigProvisionedState(IIZ)V

    return-void
.end method

.method private setNrStatsVisibility(I)V
    .locals 1

    const v0, 0x7f0a0142

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/phone/settings/RadioInfo;->mEndcAvailable:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    const v0, 0x7f0a00e2

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/phone/settings/RadioInfo;->mDcnrRestricted:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    const v0, 0x7f0a021b

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/phone/settings/RadioInfo;->mNrAvailable:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    const v0, 0x7f0a021f

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/phone/settings/RadioInfo;->mNrState:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    const v0, 0x7f0a021d

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/phone/settings/RadioInfo;->mNrFrequency:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    const v0, 0x7f0a0205

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p0, p0, Lcom/android/phone/settings/RadioInfo;->mNetworkSlicingConfig:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method private setRcsConfigProvisionedState(IIZ)V
    .locals 2

    iget-object v0, p0, Lcom/android/phone/settings/RadioInfo;->mProvisioningManager:Landroid/telephony/ims/ProvisioningManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/settings/RadioInfo;->mQueuedWork:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/android/phone/settings/RadioInfo$15;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/phone/settings/RadioInfo$15;-><init>(Lcom/android/phone/settings/RadioInfo;IIZ)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private setRemovableEsimAsDefaultEuicc(Z)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setRemovableEsimAsDefaultEuicc isChecked: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RadioInfo"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/settings/RadioInfo;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->setRemovableEsimAsDefaultEuicc(Z)V

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/euicc/EuiccConnector;->findBestComponent(Landroid/content/pm/PackageManager;)Landroid/content/pm/ComponentInfo;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p0, "setRemovableEsimAsDefaultEuicc: unable to find suitable component info"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.telephony.euicc.action.REMOVABLE_ESIM_AS_DEFAULT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "isDefault"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private showDsdsChangeDialog()V
    .locals 3

    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f110271

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f110270

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f11026f

    iget-object v2, p0, Lcom/android/phone/settings/RadioInfo;->mOnDsdsDialogConfirmedListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f11026e

    iget-object p0, p0, Lcom/android/phone/settings/RadioInfo;->mOnDsdsDialogConfirmedListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private unregisterPhoneStateListener()V
    .locals 3

    iget-object v0, p0, Lcom/android/phone/settings/RadioInfo;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/phone/settings/RadioInfo;->mTelephonyCallback:Landroid/telephony/TelephonyCallback;

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->unregisterTelephonyCallback(Landroid/telephony/TelephonyCallback;)V

    iget-object v0, p0, Lcom/android/phone/settings/RadioInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/settings/RadioInfo;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/Phone;->unregisterForPhysicalChannelConfig(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/phone/settings/RadioInfo;->mOperatorName:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/phone/settings/RadioInfo;->mGprsState:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/phone/settings/RadioInfo;->mDataNetwork:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/phone/settings/RadioInfo;->mDataRawReg:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/phone/settings/RadioInfo;->mOverrideNetwork:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/phone/settings/RadioInfo;->mVoiceNetwork:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/phone/settings/RadioInfo;->mVoiceRawReg:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/phone/settings/RadioInfo;->mWlanDataRawReg:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/phone/settings/RadioInfo;->mSent:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/phone/settings/RadioInfo;->mReceived:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/phone/settings/RadioInfo;->mCallState:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/settings/RadioInfo;->mMwiValue:Z

    iget-object v2, p0, Lcom/android/phone/settings/RadioInfo;->mMwi:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iput-boolean v0, p0, Lcom/android/phone/settings/RadioInfo;->mCfiValue:Z

    iget-object v0, p0, Lcom/android/phone/settings/RadioInfo;->mCfi:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/phone/settings/RadioInfo;->mCellInfo:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/phone/settings/RadioInfo;->mDBm:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/phone/settings/RadioInfo;->mGsmState:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/phone/settings/RadioInfo;->mRoamingState:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/android/phone/settings/RadioInfo;->mPhyChanConfig:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateAllCellInfo()V
    .locals 3

    iget-object v0, p0, Lcom/android/phone/settings/RadioInfo;->mCellInfo:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Lcom/android/phone/settings/RadioInfo$4;

    invoke-direct {v0, p0}, Lcom/android/phone/settings/RadioInfo$4;-><init>(Lcom/android/phone/settings/RadioInfo;)V

    iget-object v1, p0, Lcom/android/phone/settings/RadioInfo;->mQueuedWork:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v2, Lcom/android/phone/settings/RadioInfo$5;

    invoke-direct {v2, p0, v0}, Lcom/android/phone/settings/RadioInfo$5;-><init>(Lcom/android/phone/settings/RadioInfo;Ljava/lang/Runnable;)V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private updateAllFields()V
    .locals 4

    invoke-direct {p0}, Lcom/android/phone/settings/RadioInfo;->updateMessageWaiting()V

    invoke-direct {p0}, Lcom/android/phone/settings/RadioInfo;->updateCallRedirect()V

    invoke-direct {p0}, Lcom/android/phone/settings/RadioInfo;->updateDataState()V

    invoke-direct {p0}, Lcom/android/phone/settings/RadioInfo;->updateDataStats2()V

    invoke-direct {p0}, Lcom/android/phone/settings/RadioInfo;->updateRadioPowerState()V

    invoke-direct {p0}, Lcom/android/phone/settings/RadioInfo;->updateImsProvisionedState()V

    invoke-direct {p0}, Lcom/android/phone/settings/RadioInfo;->updateProperties()V

    invoke-direct {p0}, Lcom/android/phone/settings/RadioInfo;->updateDnsCheckState()V

    invoke-direct {p0}, Lcom/android/phone/settings/RadioInfo;->updateNetworkType()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/phone/settings/RadioInfo;->updateNrStats(Landroid/telephony/ServiceState;)V

    iget-object v1, p0, Lcom/android/phone/settings/RadioInfo;->mCellInfoResult:Ljava/util/List;

    invoke-direct {p0, v1}, Lcom/android/phone/settings/RadioInfo;->updateCellInfo(Ljava/util/List;)V

    invoke-direct {p0}, Lcom/android/phone/settings/RadioInfo;->updateSubscriptionIds()V

    iget-object v1, p0, Lcom/android/phone/settings/RadioInfo;->mPingHostnameV4:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/phone/settings/RadioInfo;->mPingHostnameResultV4:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/phone/settings/RadioInfo;->mPingHostnameV6:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/phone/settings/RadioInfo;->mPingHostnameResultV6:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/phone/settings/RadioInfo;->mHttpClientTest:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/phone/settings/RadioInfo;->mHttpClientTestResult:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/phone/settings/RadioInfo;->mCellInfoRefreshRateSpinner:Landroid/widget/Spinner;

    iget-object v2, p0, Lcom/android/phone/settings/RadioInfo;->mCellInfoRefreshRateHandler:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    iget-object v1, p0, Lcom/android/phone/settings/RadioInfo;->mCellInfoRefreshRateSpinner:Landroid/widget/Spinner;

    iget v2, p0, Lcom/android/phone/settings/RadioInfo;->mCellInfoRefreshRateIndex:I

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setSelection(I)V

    iget-object v1, p0, Lcom/android/phone/settings/RadioInfo;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    sget-object v2, Lcom/android/phone/settings/RadioInfo;->CELL_INFO_REFRESH_RATES:[I

    iget v3, p0, Lcom/android/phone/settings/RadioInfo;->mCellInfoRefreshRateIndex:I

    aget v2, v2, v3

    iget-object v3, p0, Lcom/android/phone/settings/RadioInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->setCellInfoListRate(II)V

    iget-object v1, p0, Lcom/android/phone/settings/RadioInfo;->mPreferredNetworkType:Landroid/widget/Spinner;

    iget v2, p0, Lcom/android/phone/settings/RadioInfo;->mPreferredNetworkTypeResult:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/widget/Spinner;->setSelection(IZ)V

    iget-object v1, p0, Lcom/android/phone/settings/RadioInfo;->mPreferredNetworkType:Landroid/widget/Spinner;

    iget-object v2, p0, Lcom/android/phone/settings/RadioInfo;->mPreferredNetworkHandler:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/android/phone/settings/RadioInfo$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lcom/android/phone/settings/RadioInfo$$ExternalSyntheticLambda2;-><init>(Lcom/android/phone/settings/RadioInfo;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    iget-object v1, p0, Lcom/android/phone/settings/RadioInfo;->mSelectPhoneIndex:Landroid/widget/Spinner;

    iget v2, p0, Lcom/android/phone/settings/RadioInfo;->mSelectedPhoneIndex:I

    invoke-virtual {v1, v2, v3}, Landroid/widget/Spinner;->setSelection(IZ)V

    iget-object v1, p0, Lcom/android/phone/settings/RadioInfo;->mSelectPhoneIndex:Landroid/widget/Spinner;

    iget-object v2, p0, Lcom/android/phone/settings/RadioInfo;->mSelectPhoneIndexHandler:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    iget-object v1, p0, Lcom/android/phone/settings/RadioInfo;->mRadioPowerOnSwitch:Landroid/widget/Switch;

    iget-object v2, p0, Lcom/android/phone/settings/RadioInfo;->mRadioPowerOnChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v1, p0, Lcom/android/phone/settings/RadioInfo;->mSimulateOutOfServiceSwitch:Landroid/widget/Switch;

    iget-object v2, p0, Lcom/android/phone/settings/RadioInfo;->mSimulateOosOnChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v1, p0, Lcom/android/phone/settings/RadioInfo;->mSimulateOutOfServiceSwitch:Landroid/widget/Switch;

    iget-object v2, p0, Lcom/android/phone/settings/RadioInfo;->mSimulateOos:[Z

    iget-object v3, p0, Lcom/android/phone/settings/RadioInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v3

    aget-boolean v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v1, p0, Lcom/android/phone/settings/RadioInfo;->mImsVolteProvisionedSwitch:Landroid/widget/Switch;

    iget-object v2, p0, Lcom/android/phone/settings/RadioInfo;->mImsVolteCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v1, p0, Lcom/android/phone/settings/RadioInfo;->mImsVtProvisionedSwitch:Landroid/widget/Switch;

    iget-object v2, p0, Lcom/android/phone/settings/RadioInfo;->mImsVtCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v1, p0, Lcom/android/phone/settings/RadioInfo;->mImsWfcProvisionedSwitch:Landroid/widget/Switch;

    iget-object v2, p0, Lcom/android/phone/settings/RadioInfo;->mImsWfcCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v1, p0, Lcom/android/phone/settings/RadioInfo;->mEabProvisionedSwitch:Landroid/widget/Switch;

    iget-object v2, p0, Lcom/android/phone/settings/RadioInfo;->mEabCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-virtual {p0}, Lcom/android/phone/settings/RadioInfo;->isCbrsSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/settings/RadioInfo;->mCbrsDataSwitch:Landroid/widget/Switch;

    invoke-virtual {p0}, Lcom/android/phone/settings/RadioInfo;->getCbrsDataState()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v1, p0, Lcom/android/phone/settings/RadioInfo;->mCbrsDataSwitch:Landroid/widget/Switch;

    iget-object v2, p0, Lcom/android/phone/settings/RadioInfo;->mCbrsDataSwitchChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_0
    invoke-direct {p0}, Lcom/android/phone/settings/RadioInfo;->unregisterPhoneStateListener()V

    invoke-direct {p0}, Lcom/android/phone/settings/RadioInfo;->registerPhoneStateListener()V

    iget-object v1, p0, Lcom/android/phone/settings/RadioInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v2, p0, Lcom/android/phone/settings/RadioInfo;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x3ef

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/internal/telephony/Phone;->registerForPhysicalChannelConfig(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/phone/settings/RadioInfo;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/android/phone/settings/RadioInfo;->mDefaultNetworkRequest:Landroid/net/NetworkRequest;

    iget-object v2, p0, Lcom/android/phone/settings/RadioInfo;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    iget-object v3, p0, Lcom/android/phone/settings/RadioInfo;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;Landroid/os/Handler;)V

    iget-object p0, p0, Lcom/android/phone/settings/RadioInfo;->mSmsc:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->clearFocus()V

    return-void
.end method

.method private updateBandwidths(II)V
    .locals 2

    const v0, 0x7fffffff

    const/4 v1, -0x1

    if-ltz p1, :cond_0

    if-ne p1, v0, :cond_1

    :cond_0
    move p1, v1

    :cond_1
    if-ltz p2, :cond_2

    if-ne p2, v0, :cond_3

    :cond_2
    move p2, v1

    :cond_3
    iget-object v0, p0, Lcom/android/phone/settings/RadioInfo;->mDownlinkKbps:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "%-5d"

    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/android/phone/settings/RadioInfo;->mUplinkKbps:Landroid/widget/TextView;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateCallRedirect()V
    .locals 1

    iget-object v0, p0, Lcom/android/phone/settings/RadioInfo;->mCfi:Landroid/widget/TextView;

    iget-boolean p0, p0, Lcom/android/phone/settings/RadioInfo;->mCfiValue:Z

    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateCellInfo(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/CellInfo;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/phone/settings/RadioInfo;->mCellInfo:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/android/phone/settings/RadioInfo;->buildCellInfoString(Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateDataState()V
    .locals 4

    iget-object v0, p0, Lcom/android/phone/settings/RadioInfo;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v0

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f110510

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_3

    const/4 v3, 0x1

    if-eq v0, v3, :cond_2

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    const/4 v3, 0x3

    if-eq v0, v3, :cond_0

    goto :goto_0

    :cond_0
    const v0, 0x7f1104fc

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    const v0, 0x7f1104f9

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_2
    const v0, 0x7f1104fa

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_3
    const v0, 0x7f1104fb

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_0
    iget-object p0, p0, Lcom/android/phone/settings/RadioInfo;->mGprsState:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateDataStats2()V
    .locals 12

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {}, Landroid/net/TrafficStats;->getMobileTxPackets()J

    move-result-wide v1

    invoke-static {}, Landroid/net/TrafficStats;->getMobileRxPackets()J

    move-result-wide v3

    invoke-static {}, Landroid/net/TrafficStats;->getMobileTxBytes()J

    move-result-wide v5

    invoke-static {}, Landroid/net/TrafficStats;->getMobileRxBytes()J

    move-result-wide v7

    const v9, 0x7f110500

    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    const v10, 0x7f1104fe

    invoke-virtual {v0, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v10, p0, Lcom/android/phone/settings/RadioInfo;->mSent:Landroid/widget/TextView;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/android/phone/settings/RadioInfo;->mReceived:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateDnsCheckState()V
    .locals 1

    iget-object v0, p0, Lcom/android/phone/settings/RadioInfo;->mDnsCheckState:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/android/phone/settings/RadioInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->isDnsCheckDisabled()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "0.0.0.0 allowed"

    goto :goto_0

    :cond_0
    const-string p0, "0.0.0.0 not allowed"

    :goto_0
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateEabProvisionedSwitch(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateEabProvisionedSwitch isEabWfcProvisioned()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/phone/settings/RadioInfo;->isEabProvisioned()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/settings/RadioInfo;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/settings/RadioInfo;->mEabProvisionedSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/android/phone/settings/RadioInfo;->mEabProvisionedSwitch:Landroid/widget/Switch;

    invoke-direct {p0}, Lcom/android/phone/settings/RadioInfo;->isEabProvisioned()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/phone/settings/RadioInfo;->mEabProvisionedSwitch:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/android/phone/settings/RadioInfo;->mEabCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/android/phone/settings/RadioInfo;->mEabProvisionedSwitch:Landroid/widget/Switch;

    sget-boolean v1, Lcom/android/phone/settings/RadioInfo;->IS_USER_BUILD:Z

    if-nez v1, :cond_0

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/phone/settings/RadioInfo;->isEabProvisioningRequired()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setEnabled(Z)V

    return-void
.end method

.method private updateImsProvisionedState()V
    .locals 1

    iget-object v0, p0, Lcom/android/phone/settings/RadioInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/settings/RadioInfo;->isImsSupportedOnDevice(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/phone/settings/RadioInfo;->updateServiceEnabledByPlatform()V

    invoke-direct {p0}, Lcom/android/phone/settings/RadioInfo;->isEabEnabledByPlatform()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/phone/settings/RadioInfo;->updateEabProvisionedSwitch(Z)V

    return-void
.end method

.method private updateMessageWaiting()V
    .locals 1

    iget-object v0, p0, Lcom/android/phone/settings/RadioInfo;->mMwi:Landroid/widget/TextView;

    iget-boolean p0, p0, Lcom/android/phone/settings/RadioInfo;->mMwiValue:Z

    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateNetworkType()V
    .locals 2

    iget-object v0, p0, Lcom/android/phone/settings/RadioInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/phone/settings/RadioInfo;->mDataNetwork:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/ServiceState;->rilRadioTechnologyToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/phone/settings/RadioInfo;->mVoiceNetwork:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/phone/settings/RadioInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v1

    invoke-static {v1}, Landroid/telephony/ServiceState;->rilRadioTechnologyToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/phone/settings/RadioInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getDisplayInfoController()Lcom/android/internal/telephony/DisplayInfoController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/DisplayInfoController;->getTelephonyDisplayInfo()Landroid/telephony/TelephonyDisplayInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyDisplayInfo;->getOverrideNetworkType()I

    move-result v0

    iget-object p0, p0, Lcom/android/phone/settings/RadioInfo;->mOverrideNetwork:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/telephony/TelephonyDisplayInfo;->overrideNetworkTypeToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private updateNrStats(Landroid/telephony/ServiceState;)V
    .locals 4

    iget-object v0, p0, Lcom/android/phone/settings/RadioInfo;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSupportedRadioAccessFamily()J

    move-result-wide v0

    const-wide/32 v2, 0x80000

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/android/phone/settings/RadioInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object p1

    :cond_1
    if-eqz p1, :cond_3

    const/4 v0, 0x2

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/telephony/NetworkRegistrationInfo;->getDataSpecificInfo()Landroid/telephony/DataSpecificRegistrationInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/phone/settings/RadioInfo;->mEndcAvailable:Landroid/widget/TextView;

    iget-boolean v2, v0, Landroid/telephony/DataSpecificRegistrationInfo;->isEnDcAvailable:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/phone/settings/RadioInfo;->mDcnrRestricted:Landroid/widget/TextView;

    iget-boolean v2, v0, Landroid/telephony/DataSpecificRegistrationInfo;->isDcNrRestricted:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/phone/settings/RadioInfo;->mNrAvailable:Landroid/widget/TextView;

    iget-boolean v0, v0, Landroid/telephony/DataSpecificRegistrationInfo;->isNrAvailable:Z

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    iget-object v0, p0, Lcom/android/phone/settings/RadioInfo;->mNrState:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getNrState()I

    move-result v1

    invoke-static {v1}, Landroid/telephony/NetworkRegistrationInfo;->nrStateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/phone/settings/RadioInfo;->mNrFrequency:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getNrFrequencyRange()I

    move-result p1

    invoke-static {p1}, Landroid/telephony/ServiceState;->frequencyRangeToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    new-instance p1, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {p1}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    iget-object v0, p0, Lcom/android/phone/settings/RadioInfo;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    new-instance v1, Landroidx/profileinstaller/ProfileInstallReceiver$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroidx/profileinstaller/ProfileInstallReceiver$$ExternalSyntheticLambda0;-><init>()V

    new-instance v2, Lcom/android/phone/settings/RadioInfo$$ExternalSyntheticLambda6;

    invoke-direct {v2, p1}, Lcom/android/phone/settings/RadioInfo$$ExternalSyntheticLambda6;-><init>(Ljava/util/concurrent/CompletableFuture;)V

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->getNetworkSlicingConfiguration(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    :try_start_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v1, v2, v0}, Ljava/util/concurrent/CompletableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/data/NetworkSlicingConfig;

    iget-object v0, p0, Lcom/android/phone/settings/RadioInfo;->mNetworkSlicingConfig:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/telephony/data/NetworkSlicingConfig;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to get slicing config: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "RadioInfo"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/phone/settings/RadioInfo;->mNetworkSlicingConfig:Landroid/widget/TextView;

    const-string p1, "Unable to get slicing config."

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method private updatePhoneIndex(II)V
    .locals 3

    invoke-direct {p0}, Lcom/android/phone/settings/RadioInfo;->unregisterPhoneStateListener()V

    iget-object v0, p0, Lcom/android/phone/settings/RadioInfo;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/phone/settings/RadioInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v1

    const v2, 0x7fffffff

    invoke-virtual {v0, v2, v1}, Landroid/telephony/TelephonyManager;->setCellInfoListRate(II)V

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid phone index "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", subscription ID "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/phone/settings/RadioInfo;->log(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/phone/settings/RadioInfo;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p2}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/settings/RadioInfo;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object p1

    iput-object p1, p0, Lcom/android/phone/settings/RadioInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    new-instance p1, Landroid/telephony/ims/ImsManager;

    iget-object v0, p0, Lcom/android/phone/settings/RadioInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/telephony/ims/ImsManager;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/phone/settings/RadioInfo;->mImsManager:Landroid/telephony/ims/ImsManager;

    :try_start_0
    invoke-static {p2}, Landroid/telephony/ims/ProvisioningManager;->createForSubscriptionId(I)Landroid/telephony/ims/ProvisioningManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/phone/settings/RadioInfo;->mProvisioningManager:Landroid/telephony/ims/ProvisioningManager;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "updatePhoneIndex : IllegalArgumentException "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/phone/settings/RadioInfo;->log(Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/phone/settings/RadioInfo;->mProvisioningManager:Landroid/telephony/ims/ProvisioningManager;

    :goto_0
    invoke-direct {p0}, Lcom/android/phone/settings/RadioInfo;->updateAllFields()V

    return-void
.end method

.method private updatePhoneState(I)V
    .locals 3

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f110510

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz p1, :cond_2

    const/4 v2, 0x1

    if-eq p1, v2, :cond_1

    const/4 v2, 0x2

    if-eq p1, v2, :cond_0

    goto :goto_0

    :cond_0
    const p1, 0x7f110508

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const p1, 0x7f110509

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    const p1, 0x7f110507

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    iget-object p0, p0, Lcom/android/phone/settings/RadioInfo;->mCallState:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updatePhysicalChannelConfiguration(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/PhysicalChannelConfig;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const-string v1, ""

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/PhysicalChannelConfig;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ","

    goto :goto_0

    :cond_0
    const-string p1, "}"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/phone/settings/RadioInfo;->mPhyChanConfig:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updatePingState()V
    .locals 2

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f110510

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/settings/RadioInfo;->mPingHostnameResultV4:Ljava/lang/String;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/settings/RadioInfo;->mPingHostnameResultV6:Ljava/lang/String;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/settings/RadioInfo;->mHttpClientTestResult:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/phone/settings/RadioInfo;->mPingHostnameV4:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/phone/settings/RadioInfo;->mPingHostnameResultV4:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/phone/settings/RadioInfo;->mPingHostnameV6:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/phone/settings/RadioInfo;->mPingHostnameResultV6:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/phone/settings/RadioInfo;->mHttpClientTest:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/phone/settings/RadioInfo;->mHttpClientTestResult:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Lcom/android/phone/settings/RadioInfo$6;

    invoke-direct {v0, p0}, Lcom/android/phone/settings/RadioInfo$6;-><init>(Lcom/android/phone/settings/RadioInfo;)V

    new-instance v1, Lcom/android/phone/settings/RadioInfo$7;

    invoke-direct {v1, p0, v0}, Lcom/android/phone/settings/RadioInfo$7;-><init>(Lcom/android/phone/settings/RadioInfo;Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    new-instance v1, Lcom/android/phone/settings/RadioInfo$8;

    invoke-direct {v1, p0, v0}, Lcom/android/phone/settings/RadioInfo$8;-><init>(Lcom/android/phone/settings/RadioInfo;Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private updatePreferredNetworkType(I)V
    .locals 4

    sget-object v0, Lcom/android/phone/settings/RadioInfo;->PREFERRED_NETWORK_LABELS:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x1

    if-ge p1, v1, :cond_0

    if-gez p1, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Network type: unknown type value="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/phone/settings/RadioInfo;->log(Ljava/lang/String;)V

    array-length p1, v0

    sub-int/2addr p1, v2

    :cond_1
    iput p1, p0, Lcom/android/phone/settings/RadioInfo;->mPreferredNetworkTypeResult:I

    iget-object p0, p0, Lcom/android/phone/settings/RadioInfo;->mPreferredNetworkType:Landroid/widget/Spinner;

    invoke-virtual {p0, p1, v2}, Landroid/widget/Spinner;->setSelection(IZ)V

    return-void
.end method

.method private updateProperties()V
    .locals 5

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/settings/RadioInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f110510

    const/4 v3, 0x1

    if-nez v1, :cond_0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/android/phone/settings/RadioInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getImeiType()I

    move-result v4

    if-ne v4, v3, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v1, 0x7f110501

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_1
    :goto_0
    iget-object v4, p0, Lcom/android/phone/settings/RadioInfo;->mDeviceId:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v1, :cond_2

    const-string v1, "allowEditingSmscAddress"

    invoke-direct {p0, v1}, Lcom/android/phone/settings/RadioInfo;->getBooleanCarrierConfig(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/phone/settings/RadioInfo;->mUpdateSmscButton:Landroid/widget/Button;

    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/android/phone/settings/RadioInfo;->mUpdateSmscButton:Landroid/widget/Button;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    :goto_1
    iget-object v1, p0, Lcom/android/phone/settings/RadioInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_3
    iget-object v0, p0, Lcom/android/phone/settings/RadioInfo;->mSubscriberId:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-class v0, Landroid/telephony/SubscriptionManager;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionManager;

    iget-object v1, p0, Lcom/android/phone/settings/RadioInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager;->getPhoneNumber(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " { CARRIER:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x2

    invoke-virtual {v0, v1, v4}, Landroid/telephony/SubscriptionManager;->getPhoneNumber(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", UICC:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1, v3}, Landroid/telephony/SubscriptionManager;->getPhoneNumber(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", IMS:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v3}, Landroid/telephony/SubscriptionManager;->getPhoneNumber(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " }"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/android/phone/settings/RadioInfo;->mLine1Number:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateRadioPowerState()V
    .locals 2

    iget-object v0, p0, Lcom/android/phone/settings/RadioInfo;->mRadioPowerOnSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/android/phone/settings/RadioInfo;->mRadioPowerOnSwitch:Landroid/widget/Switch;

    invoke-direct {p0}, Lcom/android/phone/settings/RadioInfo;->isRadioOn()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/phone/settings/RadioInfo;->mRadioPowerOnSwitch:Landroid/widget/Switch;

    iget-object p0, p0, Lcom/android/phone/settings/RadioInfo;->mRadioPowerOnChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method private updateRawRegistrationState(Landroid/telephony/ServiceState;)V
    .locals 3

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/phone/settings/RadioInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object p1

    :cond_0
    iget-object v0, p0, Lcom/android/phone/settings/RadioInfo;->mVoiceRawReg:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-direct {p0, p1, v1, v1}, Lcom/android/phone/settings/RadioInfo;->getRawRegistrationStateText(Landroid/telephony/ServiceState;II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/phone/settings/RadioInfo;->mDataRawReg:Landroid/widget/TextView;

    const/4 v2, 0x2

    invoke-direct {p0, p1, v2, v1}, Lcom/android/phone/settings/RadioInfo;->getRawRegistrationStateText(Landroid/telephony/ServiceState;II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/phone/settings/RadioInfo;->mWlanDataRawReg:Landroid/widget/TextView;

    invoke-direct {p0, p1, v2, v2}, Lcom/android/phone/settings/RadioInfo;->getRawRegistrationStateText(Landroid/telephony/ServiceState;II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateServiceEnabledByPlatform()V
    .locals 5

    iget-object v0, p0, Lcom/android/phone/settings/RadioInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const-string p0, "updateServiceEnabledByPlatform subscription ID is invalid"

    invoke-static {p0}, Lcom/android/phone/settings/RadioInfo;->log(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/phone/settings/RadioInfo;->mImsManager:Landroid/telephony/ims/ImsManager;

    invoke-virtual {v1, v0}, Landroid/telephony/ims/ImsManager;->getImsMmTelManager(I)Landroid/telephony/ims/ImsMmTelManager;

    move-result-object v0

    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lcom/android/phone/settings/RadioInfo$$ExternalSyntheticLambda8;

    invoke-direct {v2, p0}, Lcom/android/phone/settings/RadioInfo$$ExternalSyntheticLambda8;-><init>(Lcom/android/phone/settings/RadioInfo;)V

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/telephony/ims/ImsMmTelManager;->isSupported(IILjava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lcom/android/phone/settings/RadioInfo$$ExternalSyntheticLambda9;

    invoke-direct {v2, p0}, Lcom/android/phone/settings/RadioInfo$$ExternalSyntheticLambda9;-><init>(Lcom/android/phone/settings/RadioInfo;)V

    const/4 v4, 0x2

    invoke-virtual {v0, v4, v3, v1, v2}, Landroid/telephony/ims/ImsMmTelManager;->isSupported(IILjava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lcom/android/phone/settings/RadioInfo$$ExternalSyntheticLambda10;

    invoke-direct {v2, p0}, Lcom/android/phone/settings/RadioInfo$$ExternalSyntheticLambda10;-><init>(Lcom/android/phone/settings/RadioInfo;)V

    invoke-virtual {v0, v3, v4, v1, v2}, Landroid/telephony/ims/ImsMmTelManager;->isSupported(IILjava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    :try_end_0
    .catch Landroid/telephony/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/telephony/ims/ImsException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private updateServiceState(Landroid/telephony/ServiceState;)V
    .locals 4

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f110510

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_3

    const/4 v3, 0x1

    if-eq v0, v3, :cond_2

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    const/4 v3, 0x3

    if-eq v0, v3, :cond_0

    goto :goto_0

    :cond_0
    const v0, 0x7f11050e

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    const v0, 0x7f11050c

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_2
    const v0, 0x7f11050f

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_3
    const v0, 0x7f11050d

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_0
    iget-object v0, p0, Lcom/android/phone/settings/RadioInfo;->mGsmState:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/phone/settings/RadioInfo;->mRoamingState:Landroid/widget/TextView;

    const v1, 0x7f11050a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/android/phone/settings/RadioInfo;->mRoamingState:Landroid/widget/TextView;

    const v1, 0x7f11050b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :goto_1
    iget-object p0, p0, Lcom/android/phone/settings/RadioInfo;->mOperatorName:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateSignalStrength(Landroid/telephony/SignalStrength;)V
    .locals 4

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getDbm()I

    move-result v1

    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getAsuLevel()I

    move-result p1

    const/4 v2, -0x1

    if-ne v2, p1, :cond_0

    const/4 p1, 0x0

    :cond_0
    iget-object p0, p0, Lcom/android/phone/settings/RadioInfo;->mDBm:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v3, 0x7f1104ff

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "   "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const p1, 0x7f1104fd

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateSubscriptionIds()V
    .locals 2

    iget-object v0, p0, Lcom/android/phone/settings/RadioInfo;->mSubscriptionId:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/phone/settings/RadioInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/android/phone/settings/RadioInfo;->mDds:Landroid/widget/TextView;

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateVolteProvisionedSwitch(Z)V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/phone/settings/RadioInfo;->isImsVolteProvisioned()Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateVolteProvisionedSwitch isProvisioned"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/settings/RadioInfo;->log(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/phone/settings/RadioInfo;->mImsVolteProvisionedSwitch:Landroid/widget/Switch;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v3, p0, Lcom/android/phone/settings/RadioInfo;->mImsVolteProvisionedSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v2}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v2, p0, Lcom/android/phone/settings/RadioInfo;->mImsVolteProvisionedSwitch:Landroid/widget/Switch;

    iget-object v3, p0, Lcom/android/phone/settings/RadioInfo;->mImsVolteCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v2, v3}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v2, p0, Lcom/android/phone/settings/RadioInfo;->mImsVolteProvisionedSwitch:Landroid/widget/Switch;

    sget-boolean v3, Lcom/android/phone/settings/RadioInfo;->IS_USER_BUILD:Z

    if-nez v3, :cond_1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/android/phone/settings/RadioInfo;->isImsVolteProvisioningRequired()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    invoke-virtual {v2, v0}, Landroid/widget/Switch;->setEnabled(Z)V

    return-void
.end method

.method private updateVtProvisionedSwitch(Z)V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/phone/settings/RadioInfo;->isImsVtProvisioned()Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateVtProvisionedSwitch isProvisioned"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/settings/RadioInfo;->log(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/phone/settings/RadioInfo;->mImsVtProvisionedSwitch:Landroid/widget/Switch;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v3, p0, Lcom/android/phone/settings/RadioInfo;->mImsVtProvisionedSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v2}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v2, p0, Lcom/android/phone/settings/RadioInfo;->mImsVtProvisionedSwitch:Landroid/widget/Switch;

    iget-object v3, p0, Lcom/android/phone/settings/RadioInfo;->mImsVtCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v2, v3}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v2, p0, Lcom/android/phone/settings/RadioInfo;->mImsVtProvisionedSwitch:Landroid/widget/Switch;

    sget-boolean v3, Lcom/android/phone/settings/RadioInfo;->IS_USER_BUILD:Z

    if-nez v3, :cond_1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/android/phone/settings/RadioInfo;->isImsVtProvisioningRequired()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    invoke-virtual {v2, v0}, Landroid/widget/Switch;->setEnabled(Z)V

    return-void
.end method

.method private updateWfcProvisionedSwitch(Z)V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/phone/settings/RadioInfo;->isImsWfcProvisioned()Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateWfcProvisionedSwitch isProvisioned"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/settings/RadioInfo;->log(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/phone/settings/RadioInfo;->mImsWfcProvisionedSwitch:Landroid/widget/Switch;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v3, p0, Lcom/android/phone/settings/RadioInfo;->mImsWfcProvisionedSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v2}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v2, p0, Lcom/android/phone/settings/RadioInfo;->mImsWfcProvisionedSwitch:Landroid/widget/Switch;

    iget-object v3, p0, Lcom/android/phone/settings/RadioInfo;->mImsWfcCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v2, v3}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v2, p0, Lcom/android/phone/settings/RadioInfo;->mImsWfcProvisionedSwitch:Landroid/widget/Switch;

    sget-boolean v3, Lcom/android/phone/settings/RadioInfo;->IS_USER_BUILD:Z

    if-nez v3, :cond_1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/android/phone/settings/RadioInfo;->isImsWfcProvisioningRequired()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    invoke-virtual {v2, v0}, Landroid/widget/Switch;->setEnabled(Z)V

    return-void
.end method


# virtual methods
.method getCbrsDataState()Z
    .locals 2

    iget-object p0, p0, Lcom/android/phone/settings/RadioInfo;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->isOpportunisticNetworkEnabled()Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCbrsDataState() state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p0, :cond_1

    const-string v1, "on"

    goto :goto_1

    :cond_1
    const-string v1, "off"

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RadioInfo"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public getParentActivityIntent()Landroid/content/Intent;
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->getParentActivityIntent()Landroid/content/Intent;

    move-result-object p0

    if-nez p0, :cond_0

    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.android.settings"

    const-string v1, "com.android.settings.Settings$TestingSettingsActivity"

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method isCbrsSupported()Z
    .locals 1

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x1110055

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->isSystem()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "RadioInfo"

    const-string v0, "Not run from system user, don\'t do anything."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_0
    const v0, 0x7f0d00b0

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    const-string v0, "Started onCreate"

    invoke-static {v0}, Lcom/android/phone/settings/RadioInfo;->log(Ljava/lang/String;)V

    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x1

    const/4 v3, 0x1

    const-wide/32 v4, 0x493e0

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v0, p0, Lcom/android/phone/settings/RadioInfo;->mQueuedWork:Ljava/util/concurrent/ThreadPoolExecutor;

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/phone/settings/RadioInfo;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/phone/settings/RadioInfo;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/settings/RadioInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/phone/settings/RadioInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/settings/RadioInfo;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    new-instance v0, Landroid/telephony/ims/ImsManager;

    iget-object v1, p0, Lcom/android/phone/settings/RadioInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/telephony/ims/ImsManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/phone/settings/RadioInfo;->mImsManager:Landroid/telephony/ims/ImsManager;

    :try_start_0
    iget-object v0, p0, Lcom/android/phone/settings/RadioInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/ims/ProvisioningManager;->createForSubscriptionId(I)Landroid/telephony/ims/ProvisioningManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/settings/RadioInfo;->mProvisioningManager:Landroid/telephony/ims/ProvisioningManager;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreate : IllegalArgumentException "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/settings/RadioInfo;->log(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/settings/RadioInfo;->mProvisioningManager:Landroid/telephony/ims/ProvisioningManager;

    :goto_0
    iget-object v0, p0, Lcom/android/phone/settings/RadioInfo;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-static {v0}, Lcom/android/phone/settings/RadioInfo;->getPhoneIndexLabels(Landroid/telephony/TelephonyManager;)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/phone/settings/RadioInfo;->sPhoneIndexLabels:[Ljava/lang/String;

    const v0, 0x7f0a0198

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/settings/RadioInfo;->mDeviceId:Landroid/widget/TextView;

    const v0, 0x7f0a0220

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/settings/RadioInfo;->mLine1Number:Landroid/widget/TextView;

    const v0, 0x7f0a02d8

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/settings/RadioInfo;->mSubscriptionId:Landroid/widget/TextView;

    const v0, 0x7f0a00e3

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/settings/RadioInfo;->mDds:Landroid/widget/TextView;

    const v0, 0x7f0a019a

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/settings/RadioInfo;->mSubscriberId:Landroid/widget/TextView;

    const v0, 0x7f0a009f

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/settings/RadioInfo;->mCallState:Landroid/widget/TextView;

    const v0, 0x7f0a0229

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/settings/RadioInfo;->mOperatorName:Landroid/widget/TextView;

    const v0, 0x7f0a0282

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/settings/RadioInfo;->mRoamingState:Landroid/widget/TextView;

    const v0, 0x7f0a017b

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/settings/RadioInfo;->mGsmState:Landroid/widget/TextView;

    const v0, 0x7f0a0172

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/settings/RadioInfo;->mGprsState:Landroid/widget/TextView;

    const v0, 0x7f0a0362

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/settings/RadioInfo;->mVoiceNetwork:Landroid/widget/TextView;

    const v0, 0x7f0a00dd

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/settings/RadioInfo;->mDataNetwork:Landroid/widget/TextView;

    const v0, 0x7f0a0363

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/settings/RadioInfo;->mVoiceRawReg:Landroid/widget/TextView;

    const v0, 0x7f0a00de

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/settings/RadioInfo;->mDataRawReg:Landroid/widget/TextView;

    const v0, 0x7f0a036b

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/settings/RadioInfo;->mWlanDataRawReg:Landroid/widget/TextView;

    const v0, 0x7f0a023d

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/settings/RadioInfo;->mOverrideNetwork:Landroid/widget/TextView;

    const v0, 0x7f0a00e0

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/settings/RadioInfo;->mDBm:Landroid/widget/TextView;

    const v0, 0x7f0a01f8

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/settings/RadioInfo;->mMwi:Landroid/widget/TextView;

    const v0, 0x7f0a00b0

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/settings/RadioInfo;->mCfi:Landroid/widget/TextView;

    const v0, 0x7f0a00aa

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/settings/RadioInfo;->mCellInfo:Landroid/widget/TextView;

    sget-object v1, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v0, 0x7f0a02a3

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/settings/RadioInfo;->mSent:Landroid/widget/TextView;

    const v0, 0x7f0a0274

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/settings/RadioInfo;->mReceived:Landroid/widget/TextView;

    const v0, 0x7f0a02b7

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/phone/settings/RadioInfo;->mSmsc:Landroid/widget/EditText;

    const v0, 0x7f0a0113

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/settings/RadioInfo;->mDnsCheckState:Landroid/widget/TextView;

    const v0, 0x7f0a0257

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/settings/RadioInfo;->mPingHostnameV4:Landroid/widget/TextView;

    const v0, 0x7f0a0258

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/settings/RadioInfo;->mPingHostnameV6:Landroid/widget/TextView;

    const v0, 0x7f0a018a

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/settings/RadioInfo;->mHttpClientTest:Landroid/widget/TextView;

    const v0, 0x7f0a0141

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/settings/RadioInfo;->mEndcAvailable:Landroid/widget/TextView;

    const v0, 0x7f0a00e1

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/settings/RadioInfo;->mDcnrRestricted:Landroid/widget/TextView;

    const v0, 0x7f0a021a

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/settings/RadioInfo;->mNrAvailable:Landroid/widget/TextView;

    const v0, 0x7f0a021e

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/settings/RadioInfo;->mNrState:Landroid/widget/TextView;

    const v0, 0x7f0a021c

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/settings/RadioInfo;->mNrFrequency:Landroid/widget/TextView;

    const v0, 0x7f0a0253

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/settings/RadioInfo;->mPhyChanConfig:Landroid/widget/TextView;

    const v0, 0x7f0a0204

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/settings/RadioInfo;->mNetworkSlicingConfig:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/phone/settings/RadioInfo;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSupportedRadioAccessFamily()J

    move-result-wide v0

    const-wide/32 v2, 0x80000

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/16 v1, 0x8

    if-nez v0, :cond_1

    invoke-direct {p0, v1}, Lcom/android/phone/settings/RadioInfo;->setNrStatsVisibility(I)V

    :cond_1
    const v0, 0x7f0a0260

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/phone/settings/RadioInfo;->mPreferredNetworkType:Landroid/widget/Spinner;

    new-instance v0, Landroid/widget/ArrayAdapter;

    sget-object v2, Lcom/android/phone/settings/RadioInfo;->PREFERRED_NETWORK_LABELS:[Ljava/lang/String;

    const v3, 0x1090008

    invoke-direct {v0, p0, v3, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    const v4, 0x1090009

    invoke-virtual {v0, v4}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    iget-object v5, p0, Lcom/android/phone/settings/RadioInfo;->mPreferredNetworkType:Landroid/widget/Spinner;

    invoke-virtual {v5, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    const v0, 0x7f0a024d

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/phone/settings/RadioInfo;->mSelectPhoneIndex:Landroid/widget/Spinner;

    new-instance v0, Landroid/widget/ArrayAdapter;

    sget-object v5, Lcom/android/phone/settings/RadioInfo;->sPhoneIndexLabels:[Ljava/lang/String;

    invoke-direct {v0, p0, v3, v5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {v0, v4}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    iget-object v5, p0, Lcom/android/phone/settings/RadioInfo;->mSelectPhoneIndex:Landroid/widget/Spinner;

    invoke-virtual {v5, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    const v0, 0x7f0a00a9

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/phone/settings/RadioInfo;->mCellInfoRefreshRateSpinner:Landroid/widget/Spinner;

    new-instance v0, Landroid/widget/ArrayAdapter;

    sget-object v5, Lcom/android/phone/settings/RadioInfo;->CELL_INFO_REFRESH_RATE_LABELS:[Ljava/lang/String;

    invoke-direct {v0, p0, v3, v5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {v0, v4}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    iget-object v3, p0, Lcom/android/phone/settings/RadioInfo;->mCellInfoRefreshRateSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    const v0, 0x7f0a0364

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/android/phone/settings/RadioInfo;->mImsVolteProvisionedSwitch:Landroid/widget/Switch;

    const v0, 0x7f0a0365

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/android/phone/settings/RadioInfo;->mImsVtProvisionedSwitch:Landroid/widget/Switch;

    const v0, 0x7f0a0367

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/android/phone/settings/RadioInfo;->mImsWfcProvisionedSwitch:Landroid/widget/Switch;

    const v0, 0x7f0a0120

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/android/phone/settings/RadioInfo;->mEabProvisionedSwitch:Landroid/widget/Switch;

    iget-object v0, p0, Lcom/android/phone/settings/RadioInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/settings/RadioInfo;->isImsSupportedOnDevice(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/settings/RadioInfo;->mImsVolteProvisionedSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/phone/settings/RadioInfo;->mImsVtProvisionedSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/phone/settings/RadioInfo;->mImsWfcProvisionedSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/phone/settings/RadioInfo;->mEabProvisionedSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setVisibility(I)V

    :cond_2
    const v0, 0x7f0a00a8

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/android/phone/settings/RadioInfo;->mCbrsDataSwitch:Landroid/widget/Switch;

    invoke-virtual {p0}, Lcom/android/phone/settings/RadioInfo;->isCbrsSupported()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    move v3, v4

    goto :goto_1

    :cond_3
    move v3, v1

    :goto_1
    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setVisibility(I)V

    const v0, 0x7f0a011f

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/android/phone/settings/RadioInfo;->mDsdsSwitch:Landroid/widget/Switch;

    invoke-static {}, Lcom/android/phone/settings/RadioInfo;->isDsdsSupported()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/android/phone/settings/RadioInfo;->dsdsModeOnly()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/phone/settings/RadioInfo;->mDsdsSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v4}, Landroid/widget/Switch;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/phone/settings/RadioInfo;->mDsdsSwitch:Landroid/widget/Switch;

    new-instance v3, Lcom/android/phone/settings/RadioInfo$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/android/phone/settings/RadioInfo$$ExternalSyntheticLambda0;-><init>(Lcom/android/phone/settings/RadioInfo;)V

    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/phone/settings/RadioInfo;->mDsdsSwitch:Landroid/widget/Switch;

    invoke-static {}, Lcom/android/phone/settings/RadioInfo;->isDsdsEnabled()Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/android/phone/settings/RadioInfo;->mDsdsSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setVisibility(I)V

    :goto_2
    const v0, 0x7f0a0278

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/android/phone/settings/RadioInfo;->mRemovableEsimSwitch:Landroid/widget/Switch;

    sget-boolean v3, Lcom/android/phone/settings/RadioInfo;->IS_USER_BUILD:Z

    const/4 v5, 0x1

    if-nez v3, :cond_5

    invoke-virtual {v0, v5}, Landroid/widget/Switch;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/phone/settings/RadioInfo;->mRemovableEsimSwitch:Landroid/widget/Switch;

    iget-object v3, p0, Lcom/android/phone/settings/RadioInfo;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->isRemovableEsimDefaultEuicc()Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/phone/settings/RadioInfo;->mRemovableEsimSwitch:Landroid/widget/Switch;

    iget-object v3, p0, Lcom/android/phone/settings/RadioInfo;->mRemovableEsimChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_5
    const v0, 0x7f0a0271

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/android/phone/settings/RadioInfo;->mRadioPowerOnSwitch:Landroid/widget/Switch;

    const v0, 0x7f0a02b0

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/android/phone/settings/RadioInfo;->mSimulateOutOfServiceSwitch:Landroid/widget/Switch;

    sget-boolean v3, Lcom/android/internal/telephony/util/TelephonyUtils;->IS_DEBUGGABLE:Z

    if-nez v3, :cond_6

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setVisibility(I)V

    :cond_6
    const v0, 0x7f0a0112

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/settings/RadioInfo;->mDownlinkKbps:Landroid/widget/TextView;

    const v0, 0x7f0a0349

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/settings/RadioInfo;->mUplinkKbps:Landroid/widget/TextView;

    invoke-direct {p0, v4, v4}, Lcom/android/phone/settings/RadioInfo;->updateBandwidths(II)V

    const v0, 0x7f0a0259

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/settings/RadioInfo;->mPingTestButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/phone/settings/RadioInfo;->mPingButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a034f

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/settings/RadioInfo;->mUpdateSmscButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/phone/settings/RadioInfo;->mUpdateSmscButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0277

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/settings/RadioInfo;->mRefreshSmscButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/phone/settings/RadioInfo;->mRefreshSmscButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0114

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/settings/RadioInfo;->mDnsCheckToggleButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/phone/settings/RadioInfo;->mDnsCheckButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a00a6

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/settings/RadioInfo;->mCarrierProvisioningButton:Landroid/widget/Button;

    invoke-direct {p0}, Lcom/android/phone/settings/RadioInfo;->getCarrierProvisioningAppString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/android/phone/settings/RadioInfo;->mCarrierProvisioningButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/phone/settings/RadioInfo;->mCarrierProvisioningButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_3

    :cond_7
    iget-object v0, p0, Lcom/android/phone/settings/RadioInfo;->mCarrierProvisioningButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    :goto_3
    const v0, 0x7f0a0346

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/settings/RadioInfo;->mTriggerCarrierProvisioningButton:Landroid/widget/Button;

    invoke-direct {p0}, Lcom/android/phone/settings/RadioInfo;->getCarrierProvisioningAppString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/android/phone/settings/RadioInfo;->mTriggerCarrierProvisioningButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/phone/settings/RadioInfo;->mTriggerCarrierProvisioningButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_4

    :cond_8
    iget-object v0, p0, Lcom/android/phone/settings/RadioInfo;->mTriggerCarrierProvisioningButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    :goto_4
    const v0, 0x7f0a0222

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/settings/RadioInfo;->mOemInfoButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/phone/settings/RadioInfo;->mOemInfoButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.android.phone.settings.OEM_RADIO_INFO"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/android/phone/settings/RadioInfo;->mOemInfoButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_9
    iput v4, p0, Lcom/android/phone/settings/RadioInfo;->mCellInfoRefreshRateIndex:I

    array-length v0, v2

    sub-int/2addr v0, v5

    iput v0, p0, Lcom/android/phone/settings/RadioInfo;->mPreferredNetworkTypeResult:I

    iget-object v0, p0, Lcom/android/phone/settings/RadioInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    iput v0, p0, Lcom/android/phone/settings/RadioInfo;->mSelectedPhoneIndex:I

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/phone/settings/RadioInfo$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/phone/settings/RadioInfo$$ExternalSyntheticLambda1;-><init>(Lcom/android/phone/settings/RadioInfo;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    invoke-direct {p0, p1}, Lcom/android/phone/settings/RadioInfo;->restoreFromBundle(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4

    const v0, 0x7f110504

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {p1, v1, v1, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v3, p0, Lcom/android/phone/settings/RadioInfo;->mViewADNCallback:Landroid/view/MenuItem$OnMenuItemClickListener;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    const/4 v0, 0x2

    const v3, 0x7f110505

    invoke-interface {p1, v1, v0, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v3, p0, Lcom/android/phone/settings/RadioInfo;->mViewFDNCallback:Landroid/view/MenuItem$OnMenuItemClickListener;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    const/4 v0, 0x3

    const v3, 0x7f110506

    invoke-interface {p1, v1, v0, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v3, p0, Lcom/android/phone/settings/RadioInfo;->mViewSDNCallback:Landroid/view/MenuItem$OnMenuItemClickListener;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/android/phone/settings/RadioInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/settings/RadioInfo;->isImsSupportedOnDevice(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    const v3, 0x7f110503

    invoke-interface {p1, v1, v0, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v3, p0, Lcom/android/phone/settings/RadioInfo;->mGetImsStatus:Landroid/view/MenuItem$OnMenuItemClickListener;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    :cond_0
    const/4 v0, 0x5

    const v3, 0x7f110516

    invoke-interface {p1, v1, v0, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p1

    iget-object p0, p0, Lcom/android/phone/settings/RadioInfo;->mToggleData:Landroid/view/MenuItem$OnMenuItemClickListener;

    invoke-interface {p1, p0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    return v1
.end method

.method protected onDestroy()V
    .locals 0

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    iget-object p0, p0, Lcom/android/phone/settings/RadioInfo;->mQueuedWork:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    return-void
.end method

.method protected onPause()V
    .locals 3

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    const-string v0, "onPause: unregister phone & data intents"

    invoke-static {v0}, Lcom/android/phone/settings/RadioInfo;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/settings/RadioInfo;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/phone/settings/RadioInfo;->mTelephonyCallback:Landroid/telephony/TelephonyCallback;

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->unregisterTelephonyCallback(Landroid/telephony/TelephonyCallback;)V

    iget-object v0, p0, Lcom/android/phone/settings/RadioInfo;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/phone/settings/RadioInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v1

    const v2, 0x7fffffff

    invoke-virtual {v0, v2, v1}, Landroid/telephony/TelephonyManager;->setCellInfoListRate(II)V

    iget-object v0, p0, Lcom/android/phone/settings/RadioInfo;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object p0, p0, Lcom/android/phone/settings/RadioInfo;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, p0}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    const/4 v0, 0x5

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    iget-object p0, p0, Lcom/android/phone/settings/RadioInfo;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    const/4 v1, 0x3

    if-eq p0, v1, :cond_0

    const/4 p0, 0x0

    goto :goto_1

    :cond_0
    const p0, 0x7f110516

    invoke-interface {p1, p0}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_0

    :cond_1
    const p0, 0x7f110517

    invoke-interface {p1, p0}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    :goto_0
    move p0, v0

    :goto_1
    invoke-interface {p1, p0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    return v0
.end method

.method protected onResume()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    const-string v0, "Started onResume"

    invoke-static {v0}, Lcom/android/phone/settings/RadioInfo;->log(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/phone/settings/RadioInfo;->updateAllFields()V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "mPingHostnameResultV4"

    iget-object v1, p0, Lcom/android/phone/settings/RadioInfo;->mPingHostnameResultV4:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "mPingHostnameResultV6"

    iget-object v1, p0, Lcom/android/phone/settings/RadioInfo;->mPingHostnameResultV6:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "mHttpClientTestResult"

    iget-object v1, p0, Lcom/android/phone/settings/RadioInfo;->mHttpClientTestResult:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "mPreferredNetworkTypeResult"

    iget v1, p0, Lcom/android/phone/settings/RadioInfo;->mPreferredNetworkTypeResult:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "mSelectedPhoneIndex"

    iget v1, p0, Lcom/android/phone/settings/RadioInfo;->mSelectedPhoneIndex:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "mCellInfoRefreshRateIndex"

    iget p0, p0, Lcom/android/phone/settings/RadioInfo;->mCellInfoRefreshRateIndex:I

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method updateCbrsDataState(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCbrsDataSwitchState() state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    const-string v1, "on"

    goto :goto_0

    :cond_0
    const-string v1, "off"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RadioInfo"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/settings/RadioInfo;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/settings/RadioInfo;->mQueuedWork:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/android/phone/settings/RadioInfo$29;

    invoke-direct {v1, p0, p1}, Lcom/android/phone/settings/RadioInfo$29;-><init>(Lcom/android/phone/settings/RadioInfo;Z)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method
