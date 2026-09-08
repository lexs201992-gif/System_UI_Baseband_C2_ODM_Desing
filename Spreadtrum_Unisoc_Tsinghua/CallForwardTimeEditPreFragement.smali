.class public Lcom/unisoc/phone/callforward/CallForwardTimeEditPreFragement;
.super Landroid/preference/PreferenceFragment;
.source "CallForwardTimeEditPreFragement.java"

# interfaces
.implements Landroid/app/TimePickerDialog$OnTimeSetListener;
.implements Lcom/android/phone/EditPhoneNumberPreference$OnDialogClosedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unisoc/phone/callforward/CallForwardTimeEditPreFragement$MyHandler;,
        Lcom/unisoc/phone/callforward/CallForwardTimeEditPreFragement$Listener;
    }
.end annotation


# static fields
.field private static final ACTION_CALLFORWARD_TIME_START:Ljava/lang/String; = "com.android.phone.ACTION_CALLFORWARD_TIME_START"

.field private static final ACTION_CALLFORWARD_TIME_STOP:Ljava/lang/String; = "com.android.phone.ACTION_CALLFORWARD_TIME_STOP"

.field private static final CURRENT_TIME_HOUR:Ljava/lang/String; = "current_time_hour"

.field private static final CURRENT_TIME_MINUTE:Ljava/lang/String; = "current_time_minute"

.field private static final DBG:Z = true

.field private static final IS_STOP_TIME_SETTING:Ljava/lang/String; = "is_stop_time_ssetting"

.field private static final IS_TIME_EDIT_DIALOG_SHOWING:Ljava/lang/String; = "is_time_edit_dialog_showing"

.field private static final IS_TIME_PICKER_DIALOG_SHOWING:Ljava/lang/String; = "is_time_picker_dialog_showing"

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final NUMBER_SET:I = 0x4

.field private static final PHONE_ID:Ljava/lang/String; = "phone_id"

.field static final PREF_PREFIX_TIME:Ljava/lang/String; = "phonecalltimeforward_"

.field private static final SRC_TAGS:[Ljava/lang/String;

.field private static final STARTTIME_SET:I = 0x1

.field private static final START_TIME_FLAG:Ljava/lang/String; = "start_time_flag"

.field private static final STOPTIME_SET:I = 0x2

.field private static final STOP_TIME_FLAG:Ljava/lang/String; = "stop_time_flag"

.field private static final TIME_EDIT_PHONE_NUMBER:Ljava/lang/String; = "time_edit_phone_number"

.field private static final TIME_ZERO:I

.field private static final mListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/unisoc/phone/callforward/CallForwardTimeEditPreFragement$Listener;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mContext:Landroid/content/Context;

.field private mCurrentHour:I

.field private mCurrentMinute:I

.field private mGsmCdmaPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

.field private mHandler:Lcom/unisoc/phone/callforward/CallForwardTimeEditPreFragement$MyHandler;

.field mIccId:Ljava/lang/String;

.field private mIsStopTimeSetting:Z

.field private mNumberEditPref:Lcom/android/phone/EditPhoneNumberPreference;

.field mPhone:Lcom/android/internal/telephony/Phone;

.field private mPhoneId:I

.field private mPreferenceScreen:Landroid/preference/PreferenceScreen;

.field mPrefs:Landroid/content/SharedPreferences;

.field private mSetNumber:I

.field mStartTime:Ljava/lang/String;

.field private mStartTimePref:Landroid/preference/Preference;

.field private mStatus:I

.field mStopTime:Ljava/lang/String;

.field private mStopTimePref:Landroid/preference/Preference;

.field private mSubId:I

.field private mTimePicker:Landroid/widget/TimePicker;

.field private mTimePickerDialog:Landroid/app/TimePickerDialog;

.field timeRule:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$fgetmGsmCdmaPhone(Lcom/unisoc/phone/callforward/CallForwardTimeEditPreFragement;)Lcom/android/internal/telephony/GsmCdmaPhone;
    .locals 0

    iget-object p0, p0, Lcom/unisoc/phone/callforward/CallForwardTimeEditPreFragement;->mGsmCdmaPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/unisoc/phone/callforward/CallForwardTimeEditPreFragement;)Lcom/unisoc/phone/callforward/CallForwardTimeEditPreFragement$MyHandler;
    .locals 0

    iget-object p0, p0, Lcom/unisoc/phone/callforward/CallForwardTimeEditPreFragement;->mHandler:Lcom/unisoc/phone/callforward/CallForwardTimeEditPreFragement$MyHandler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mhandleCallForwardResult(Lcom/unisoc/phone/callforward/CallForwardTimeEditPreFragement;Lcom/android/ims/internal/ImsCallForwardInfoEx;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/unisoc/phone/callforward/CallForwardTimeEditPreFragement;->handleCallForwardResult(Lcom/android/ims/internal/ImsCallForwardInfoEx;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetLOG_TAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/unisoc/phone/callforward/CallForwardTimeEditPreFragement;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/unisoc/phone/callforward/CallForwardTimeEditPreFragement;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/unisoc/phone/callforward/CallForwardTimeEditPreFragement;->LOG_TAG:Ljava/lang/String;

    const-string v0, "{0}"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/unisoc/phone/callforward/CallForwardTimeEditPreFragement;->SRC_TAGS:[Ljava/lang/String;

    invoke-static {}, Lcom/google/android/collect/Sets;->newArraySet()Landroid/util/ArraySet;

    move-result-object v0

    sput-object v0, Lcom/unisoc/phone/callforward/CallForwardTimeEditPreFragement;->mListeners:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/unisoc/phone/callforward/CallForwardTimeEditPreFragement;->mSetNumber:I

    iput v0, p0, Lcom/unisoc/phone/callforward/CallForwardTimeEditPreFragement;->mSubId:I

    iput v0, p0, Lcom/unisoc/phone/callforward/CallForwardTimeEditPreFragement;->mStatus:I

    iput v0, p0, Lcom/unisoc/phone/callforward/CallForwardTimeEditPreFragement;->mPhoneId:I

    new-instance v0, Lcom/unisoc/phone/callforward/CallForwardTimeEditPreFragement$MyHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/unisoc/phone/callforward/CallForwardTimeEditPreFragement$MyHandler;-><init>(Lcom/unisoc/phone/callforward/CallForwardTimeEditPreFragement;Lcom/unisoc/phone/callforward/CallForwardTimeEditPreFragement$MyHandler-IA;)V

    iput-object v0, p0, Lcom/unisoc/phone/callforward/CallForwardTimeEditPreFragement;->mHandler:Lcom/unisoc/phone/callforward/CallForwardTimeEditPreFragement$MyHandler;

    iput-object v1, p0, Lcom/unisoc/phone/callforward/CallForwardTimeEditPreFragement;->mTimePickerDialog:Landroid/app/TimePickerDialog;

    return-void
.end method

.method public static addListener(Lcom/unisoc/phone/callforward/CallForwardTimeEditPreFragement$Listener;)V
    .locals 1

    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/unisoc/phone/callforward/CallForwardTimeEditPreFragement;->mListeners:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private getIccId(I)Ljava/lang/String;
    .locals 0

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSlotIndex(I)I

    move-result p0

    invoke-static {p0}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/IccCard;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/IccCard;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccRecords;->getIccId()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method private handleCallForwardResult(Lcom/android/ims/internal/ImsCallForwardInfoEx;)V
    .locals 5

    iget-object v0, p1, Lcom/android/ims/internal/ImsCallForwardInfoEx;->mNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "phonecalltimeforward_status_"

    const-string v3, "phonecalltimeforward_ruleset_"

    const-string v4, "phonecalltimeforward_num_"

    if-nez v1, :cond_0

    iget-object v1, p1, Lcom/android/ims/internal/ImsCallForwardInfoEx;->mRuleset:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, v0}, Lcom/unisoc/phone/callforward/CallForwardTimeEditPreFragement;->handleNum(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/unisoc/phone/callforward/CallForwardTimeEditPreFragement;->mSubId:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/unisoc/phone/callforward/CallForwardTimeEditPreFragement;->savePrefData(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/unisoc/phone/callforward/CallForwardTimeEditPreFragement;->mSubId:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p1, Lcom/android/ims/internal/ImsCallForwardInfoEx;->mRuleset:Ljava/lang/String;

    invoke-virtual {p0, v1, v3}, Lcom/unisoc/phone/callforward/CallForwardTimeEditPreFragement;->savePrefData(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/unisoc/phone/callforward/CallForwardTimeEditPreFragement;->mSubId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p1, Lcom/android/ims/internal/ImsCallForwardInfoEx;->mStatus:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/unisoc/phone/callforward/CallForwardTimeEditPreFragement;->savePrefData(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/unisoc/phone/callforward/CallForwardTimeEditPreFragement;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/unisoc/phone/callforward/CallForwardTimeUtils;->getInstance(Landroid/content/Context;)Lcom/unisoc/phone/callforward/CallForwardTimeUtils;

    move-result-object v1

    iget-object p0, p0, Lcom/unisoc/phone/callforward/CallForwardTimeEditPreFragement;->mIccId:Ljava/lang/String;

    iget p1, p1, Lcom/android/ims/internal/ImsCallForwardInfoEx;->mStatus:I

    invoke-virtual {v1, p0, p1}, Lcom/unisoc/phone/callforward/CallForwardTimeUtils;->writeStatus(Ljava/lang/String;I)V

    goto :goto_1

    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const-string v1, ""

    if-nez p1, :cond_1

    invoke-direct {p0, v0}, Lcom/unisoc/phone/callforward/CallForwardTimeEditPreFragement;->handleNum(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/unisoc/phone/callforward/CallForwardTimeEditPreFragement;->mSubId:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/unisoc/phone/callforward/CallForwardTimeEditPreFragement;->savePrefData(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/unisoc/phone/callforward/CallForwardTimeEditPreFragement;->mSubId:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Lcom/unisoc/phone/callforward/CallForwardTimeEditPreFragement;->savePrefData(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    :goto_0
    move-object v0, p1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/unisoc/phone/callforward/CallForwardTimeEditPreFragement;->mSubId:I

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Lcom/unisoc/phone/callforward/CallForwardTimeEditPreFragement;->savePrefData(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/unisoc/phone/callforward/CallForwardTimeEditPreFragement;->mSubId:I

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Lcom/unisoc/phone/callforward/CallForwardTimeEditPreFragement;->savePrefData(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/unisoc/phone/callforward/CallForwardTimeEditPreFragement;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/unisoc/phone/callforward/CallForwardTimeUtils;->getInstance(Landroid/content/Context;)Lcom/unisoc/phone/callforward/CallForwardTimeUtils;

    move-result-object p1

    iget-object p0, p0, Lcom/unisoc/phone/callforward/CallForwardTimeEditPreFragement;->mIccId:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, p0, v1}, Lcom/unisoc/phone/callforward/CallForwardTimeUtils;->writeStatus(Ljava/lang/String;I)V

    :goto_1
    sget-object p0, Lcom/unisoc/phone/callforward/CallForwardTimeEditPreFragement;->mListeners:Ljava/util/Set;

    if-eqz p0, :cond_2

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/unisoc/phone/callforward/CallForwardTimeEditPreFragement$Listener;

    invoke-interface {p1, v0}, Lcom/unisoc/phone/callforward/CallForwardTimeEditPreFragement$Listener;->onCallForawrdTimeStateChanged(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    return-void
.end method

.method private handleNum(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-object p1

    :cond_0
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static removeListener(Lcom/unisoc/phone/callforward/CallForwardTimeEditPreFragement$Listener;)V
    .locals 1

    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/unisoc/phone/callforward/CallForwardTimeEditPreFragement;->mListeners:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method private restoreFromBundle(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "is_time_edit_dialog_showing"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "time_edit_phone_number"

    if-eqz v0, :cond_0

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/unisoc/phone/callforward/CallForwardTimeEditPreFragement;->mNumberEditPref:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v1, v0}, Lcom/android/phone/EditPhoneNumberPreference;->setPhoneNumber(Ljava/lang/String;)Lcom/android/phone/EditPhoneNumberPreference;

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0, v0}, Lcom/unisoc/phone/callforward/CallForwardTimeEditPreFragement;->updateNumberSummary(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/unisoc/phone/callforward/CallForwardTimeEditPreFragement;->mNumberEditPref:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v1, v0}, Lcom/android/phone/EditPhoneNumberPreference;->setPhoneNumber(Ljava/lang/String;)Lcom/android/phone/EditPhoneNumberPreference;

    :cond_1
    :goto_0
    const-string v0, "start_time_flag"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iput-object v0, p0, Lcom/unisoc/phone/callforward/CallForwardTimeEditPreFragement;->mStartTime:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/unisoc/phone/callforward/CallForwardTimeEditPreFragement;->updateTimeSummary(Ljava/lang/String;Z)V

    :cond_2
    const-string v0, "stop_time_flag"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    iput-object v0, p0, Lcom/unisoc/phone/callforward/CallForwardTimeEditPreFragement;->mStopTime:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/unisoc/phone/callforward/CallForwardTimeEditPreFragement;->updateTimeSummary(Ljava/lang/String;Z)V

    :cond_3
    const-string v0, "is_time_picker_dialog_showing"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "is_stop_time_ssetting"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/unisoc/phone/callforward/CallForwardTimeEditPreFragement;->mIsStopTimeSetting:Z

    const-string v0, "current_time_minute"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/unisoc/phone/callforward/CallForwardTimeEditPreFragement;->mCurrentMinute:I

    const-string v0, "current_time_hour"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/unisoc/phone/callforward/CallForwardTimeEditPreFragement;->mCurrentHour:I

    invoke-direct {p0}, Lcom/unisoc/phone/callforward/CallForwardTimeEditPreFragement;->showCurrentTimePicker()V

    :cond_4
    return-void
.end method

.method private showCurrentTimePicker()V
    .locals 7

    new-instance v6, Landroid/app/TimePickerDialog;

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget v3, p0, Lcom/unisoc/phone/callforward/CallForwardTimeEditPreFragement;->mCurrentHour:I

    iget v4, p0, Lcom/unisoc/phone/callforward/CallForwardTimeEditPreFragement;->mCurrentMinute:I

    const/4 v5, 0x1

    move-object v0, v6

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    iput-object v6, p0, Lcom/unisoc/phone/callforward/CallForwardTimeEditPreFragement;->mTimePickerDialog:Landroid/app/TimePickerDialog;

    invoke-virtual {v6}, Landroid/app/TimePickerDialog;->show()V

    return-void
.end method

.method private updateNumberSummary(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget v0, p0, Lcom/unisoc/phone/callforward/CallForwardTimeEditPreFragement;->mSetNumber:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/unisoc/phone/callforward/CallForwardTimeEditPreFragement;->mSetNumber:I

    move-object v0, p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f1105de

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/unisoc/phone/callforward/CallForwardTimeEditPreFragement;->mSetNumber:I

    and-int/lit8 v1, v1, 0x3

    iput v1, p0, Lcom/unisoc/phone/callforward/CallForwardTimeEditPreFragement;->mSetNumber:I

    :goto_0
    iget-object v1, p0, Lcom/unisoc/phone/callforward/CallForwardTimeEditPreFragement;->mNumberEditPref:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v1, v0}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/unisoc/phone/callforward/CallForwardTimeEditPreFragement;->mNumberEditPref:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {p0, p1}, Lcom/android/phone/EditPhoneNumberPreference;->setPhoneNumber(Ljava/lang/String;)Lcom/android/phone/EditPhoneNumberPreference;

    :cond_1
    return-void
.end method

.method private updateTimeSummary(Ljava/lang/String;Z)V
    .locals 2

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    iget v0, p0, Lcom/unisoc/phone/callforward/CallForwardTimeEditPreFragement;->mSetNumber:I

    if-eqz p2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    :goto_0
    or-int/2addr v0, v1

    iput v0, p0, Lcom/unisoc/phone/callforward/CallForwardTimeEditPreFragement;->mSetNumber:I

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    const v0, 0x7f1105de

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_1
    if-eqz p2, :cond_2

    iget-object p0, p0, Lcom/unisoc/phone/callforward/CallForwardTimeEditPreFragement;->mStartTimePref:Landroid/preference/Preference;

    invoke-virtual {p0, p1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_2
    iget-object p0, p0, Lcom/unisoc/phone/callforward/CallForwardTimeEditPreFragement;->mStopTimePref:Landroid/preference/Preference;

    invoke-virtual {p0, p1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_2
    return-void
.end method


# virtual methods
.method protected getSetNumber()I
    .locals 0

    iget p0, p0, Lcom/unisoc/phone/callforward/CallForwardTimeEditPreFragement;->mSetNumber:I

    return p0
.end method

.method protected getStatus()I
    .locals 0

    iget p0, p0, Lcom/unisoc/phone/callforward/CallForwardTimeEditPreFragement;->mStatus:I

    return p0
.end method

.method protected notifyFinish()V
    .locals 1

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    check-cast p0, Lcom/unisoc/phone/callforward/CallForwardTimeEditPreference;

    invoke-virtual {p0}, Lcom/unisoc/phone/callforward/CallForwardTimeEditPreference;->dismissDialogAndFinish()V

    :cond_0
    return-void
.end method

.method protected notifySetNumberChange()V
    .locals 1

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    check-cast p0, Lcom/unisoc/phone/callforward/CallForwardTimeEditPreference;

    invoke-virtual {p0}, Lcom/unisoc/phone/callforward/CallForwardTimeEditPreference;->notifySetNumberChange()V

    :cond_0
    return-void
.end method

.method protected notifyShowDialog()V
    .locals 1

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    check-cast p0, Lcom/unisoc/phone/callforward/CallForwardTimeEditPreference;

    invoke-virtual {p0}, Lcom/unisoc/phone/callforward/CallForwardTimeEditPreference;->showDialog()V

    :cond_0
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Lcom/unisoc/phone/callforward/CallForwardTimeEditPreFragement;->restoreFromBundle(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    iget-object v0, p0, Lcom/unisoc/phone/callforward/CallForwardTimeEditPreFragement;->mTimePickerDialog:Landroid/app/TimePickerDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/TimePickerDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unisoc/phone/callforward/CallForwardTimeEditPreFragement;->mTimePickerDialog:Landroid/app/TimePickerDialog;

    invoke-virtual {v0}, Landroid/app/TimePickerDialog;->getTimePicker()Landroid/widget/TimePicker;

    move-result-object v0

    iput-object v0, p0, Lcom/unisoc/phone/callforward/CallForwardTimeEditPreFragement;->mTimePicker:Landroid/widget/TimePicker;

    invoke-virtual {v0}, Landroid/widget/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/unisoc/phone/callforward/CallForwardTimeEditPreFragement;->mCurrentHour:I

    iget-object v0, p0, Lcom/unisoc/phone/callforward/CallForwardTimeEditPreFragement;->mTimePicker:Landroid/widget/TimePicker;

    invoke-virtual {v0}, Landroid/widget/TimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/unisoc/phone/callforward/CallForwardTimeEditPreFragement;->mCurrentMinute:I

    iget-object v0, p0, Lcom/unisoc/phone/callforward/CallForwardTimeEditPreFragement;->mTimePickerDialog:Landroid/app/TimePickerDialog;

    invoke-virtual {v0}, Landroid/app/TimePickerDialog;->dismiss()V

    invoke-direct {p0}, Lcom/unisoc/phone/callforward/CallForwardTimeEditPreFragement;->showCurrentTimePicker()V

    :cond_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/unisoc/phone/callforward/CallForwardTimeEditPreFragement;->mContext:Landroid/content/Context;

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v0, "phone_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/unisoc/phone/callforward/CallForwardTimeEditPreFragement;->mPhoneId:I

    :cond_1
    iget p1, p0, Lcom/unisoc/phone/callforward/CallForwardTimeEditPreFragement;->mPhoneId:I

    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object p1

    iput-object p1, p0, Lcom/unisoc/phone/callforward/CallForwardTimeEditPreFragement;->mPhone:Lcom/android/internal/telephony/Phone;

    sget-object p1, Lcom/unisoc/phone/callforward/CallForwardTimeEditPreFragement;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCreate :mPhone "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/unisoc/phone/callforward/CallForwardTimeEditPreFragement;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/unisoc/phone/callforward/CallForwardTimeEditPreFragement;->mPhone:Lcom/android/internal/telephony/Phone;

    instance-of v0, p1, Lcom/android/internal/telephony/GsmCdmaPhone;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/GsmCdmaPhone;

    iput-object v0, p0, Lcom/unisoc/phone/callforward/CallForwardTimeEditPreFragement;->mGsmCdmaPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    :cond_2
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result p1

    iput p1, p0, Lcom/unisoc/phone/callforward/CallForwardTimeEditPreFragement;->mSubId:I

    invoke-direct {p0, p1}, Lcom/unisoc/phone/callforward/CallForwardTimeEditPreFragement;->getIccId(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/unisoc/phone/callforward/CallForwardTimeEditPreFragement;->mIccId:Ljava/lang/String;

    iget-object p1, p0, Lcom/unisoc/phone/callforward/CallForwardTimeEditPreFragement;->mContext:Landroid/content/Context;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "phonecalltimeforward_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/unisoc/phone/callforward/CallForwardTimeEditPreFragement;->mSubId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/unisoc/phone/callforward/CallForwardTimeEditPreFragement;->mPrefs:Landroid/content/SharedPreferences;

    const p1, 0x7f140006

    invoke-virtual {p0, p1}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object p1

    iput-object p1, p0, Lcom/unisoc/phone/callforward/CallForwardTimeEditPreFragement;->mPreferenceScreen:Landroid/preference/PreferenceScreen;

    const-string p1, "start_time"

    invoke-virtual {p0, p1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/unisoc/phone/callforward/CallForwardTimeEditPreFragement;->mStartTimePref:Landroid/preference/Preference;

    const-string p1, "stop_time"

    invoke-virtual {p0, p1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/unisoc/phone/callforward/CallForwardTimeEditPreFragement;->mStopTimePref:Landroid/preference/Preference;

    const-string p1, "cft_number_key"

    invoke-virtual {p0, p1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/phone/EditPhoneNumberPreference;

    iput-object p1, p0, Lcom/unisoc/phone/callforward/CallForwardTimeEditPreFragement;->mNumberEditPref:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {p1, p0}, Lcom/android/phone/EditPhoneNumberPreference;->setDialogOnClosedListener(Lcom/android/phone/EditPhoneNumberPreference$OnDialogClosedListener;)V

    iget-object p1, p0, Lcom/unisoc/phone/callforward/CallForwardTimeEditPreFragement;->mPrefs:Landroid/content/SharedPreferences;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "phonecalltimeforward_ruleset_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/unisoc/phone/callforward/CallForwardTimeEditPreFragement;->mSubId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x4

    const/16 v3, 0x9

    :try_start_0
    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unisoc/phone/callforward/CallForwardTimeEditPreFragement;->mStartTime:Ljava/lang/String;

    const/16 v0, 0xa

    const/16 v3, 0xf

    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/unisoc/phone/callforward/CallForwardTimeEditPreFragement;->mStopTime:Ljava/lang/String;

    iget-object p1, p0, Lcom/unisoc/phone/callforward/CallForwardTimeEditPreFragement;->mStartTime:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/unisoc/phone/callforward/CallForwardTimeEditPreFragement;->updateTimeSummary(Ljava/lang/String;Z)V

    iget-object p1, p0, Lcom/unisoc/phone/callforward/CallForwardTimeEditPreFragement;->mStopTime:Ljava/lang/String;

    invoke-direct {p0, p1, v1}, Lcom/unisoc/phone/callforward/CallForwardTimeEditPreFragement;->updateTimeSummary(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V

    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/unisoc/phone/callforward/CallForwardTimeEditPreFragement;->mPrefs:Landroid/content/SharedPreferences;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "phonecalltimeforward_num_"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/unisoc/phone/callforward/CallForwardTimeEditPreFragement;->mSubId:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/unisoc/phone/callforward/CallForwardTimeEditPreFragement;->updateNumberSummary(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/unisoc/phone/callforward/CallForwardTimeEditPreFragement;->mPrefs:Landroid/content/SharedPreferences;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "phonecalltimeforward_status_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/unisoc/phone/callforward/CallForwardTimeEditPreFragement;->mSubId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "0"

    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    :goto_1
    iput v1, p0, Lcom/unisoc/phone/callforward/CallForwardTimeEditPreFragement;->mStatus:I

    return-void
.end method

.method public onDialogClosed(Lcom/android/phone/EditPhoneNumberPreference;I)V
    .locals 3

    sget-object v0, Lcom/unisoc/phone/callforward/CallForwardTimeEditPreFragement;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDialogClosed buttonClicked "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x2

    if-ne p2, v0, :cond_1

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    const p2, 0x7f1105de

    invoke-virtual {p1, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/unisoc/phone/callforward/CallForwardTimeEditPreFragement;->mNumberEditPref:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {p2}, Landroid/preference/EditTextPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/unisoc/phone/callforward/CallForwardTimeEditPreFragement;->mNumberEditPref:Lcom/android/phone/EditPhoneNumberPreference;

    const-string p1, ""

    invoke-virtual {p0, p1}, Lcom/android/phone/EditPhoneNumberPreference;->setPhoneNumber(Ljava/lang/String;)Lcom/android/phone/EditPhoneNumberPreference;

    :cond_0
    return-void

    :cond_1
    iget-object p2, p0, Lcom/unisoc/phone/callforward/CallForwardTimeEditPreFragement;->mNumberEditPref:Lcom/android/phone/EditPhoneNumberPreference;

    if-ne p1, p2, :cond_2

    invoke-virtual {p2}, Lcom/android/phone/EditPhoneNumberPreference;->getPhoneNumber()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/unisoc/phone/callforward/CallForwardTimeEditPreFragement;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/unisoc/phone/callforward/CallForwardTimeUtils;->getInstance(Landroid/content/Context;)Lcom/unisoc/phone/callforward/CallForwardTimeUtils;

    move-result-object p2

    iget-object v0, p0, Lcom/unisoc/phone/callforward/CallForwardTimeEditPreFragement;->mIccId:Ljava/lang/String;

    invoke-virtual {p2, v0, p1}, Lcom/unisoc/phone/callforward/CallForwardTimeUtils;->writeNumber(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/unisoc/phone/callforward/CallForwardTimeEditPreFragement;->updateNumberSummary(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/unisoc/phone/callforward/CallForwardTimeEditPreFragement;->notifySetNumberChange()V

    :cond_2
    return-void
.end method

.method protected onMenuOKClicked(Ljava/lang/String;)V
    .locals 11

    iget-object v0, p0, Lcom/unisoc/phone/callforward/CallForwardTimeEditPreFragement;->mPreferenceScreen:Landroid/preference/PreferenceScreen;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/unisoc/phone/callforward/CallForwardTimeEditPreFragement;->notifyShowDialog()V

    const-string v0, "MENU_OK"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x3

    move v4, p1

    goto :goto_0

    :cond_1
    move v4, v1

    :goto_0
    iget-object p1, p0, Lcom/unisoc/phone/callforward/CallForwardTimeEditPreFragement;->mNumberEditPref:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {p1}, Lcom/android/phone/EditPhoneNumberPreference;->getPhoneNumber()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "time"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/unisoc/phone/callforward/CallForwardTimeEditPreFragement;->mStartTime:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/unisoc/phone/callforward/CallForwardTimeEditPreFragement;->mStopTime:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unisoc/phone/callforward/CallForwardTimeEditPreFragement;->timeRule:Ljava/lang/String;

    iget-object v0, p0, Lcom/unisoc/phone/callforward/CallForwardTimeEditPreFragement;->mStartTime:Ljava/lang/String;

    const-string v2, ""

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/unisoc/phone/callforward/CallForwardTimeEditPreFragement;->mStopTime:Ljava/lang/String;

    if-nez v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/unisoc/phone/callforward/CallForwardTimeEditPreFragement;->mPrefs:Landroid/content/SharedPreferences;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "phonecalltimeforward_ruleset_"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/unisoc/phone/callforward/CallForwardTimeEditPreFragement;->mSubId:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unisoc/phone/callforward/CallForwardTimeEditPreFragement;->timeRule:Ljava/lang/String;

    :cond_3
    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/unisoc/phone/callforward/CallForwardTimeEditPreFragement;->mPrefs:Landroid/content/SharedPreferences;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "phonecalltimeforward_num_"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/unisoc/phone/callforward/CallForwardTimeEditPreFragement;->mSubId:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_4
    move-object v7, p1

    const/4 v6, 0x1

    sget-object p1, Lcom/unisoc/phone/callforward/CallForwardTimeEditPreFragement;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reason = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "  action = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " number = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, v7}, Lcom/android/telephony/Rlog;->pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  timeRule = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/unisoc/phone/callforward/CallForwardTimeEditPreFragement;->timeRule:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/unisoc/phone/callforward/CallForwardTimeEditPreFragement;->mGsmCdmaPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    if-eqz p1, :cond_5

    invoke-static {}, Lcom/android/internal/telephony/UnisocSsManager;->getInstance()Lcom/android/internal/telephony/UnisocSsManager;

    move-result-object v2

    iget-object p1, p0, Lcom/unisoc/phone/callforward/CallForwardTimeEditPreFragement;->mGsmCdmaPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v3

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/unisoc/phone/callforward/CallForwardTimeEditPreFragement;->timeRule:Ljava/lang/String;

    iget-object p0, p0, Lcom/unisoc/phone/callforward/CallForwardTimeEditPreFragement;->mHandler:Lcom/unisoc/phone/callforward/CallForwardTimeEditPreFragement$MyHandler;

    const/4 p1, 0x1

    invoke-virtual {p0, p1, v4, p1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v10

    const/4 v5, 0x0

    invoke-virtual/range {v2 .. v10}, Lcom/android/internal/telephony/UnisocSsManager;->setCallForwardingOption(IIIILjava/lang/String;ILjava/lang/String;Landroid/os/Message;)V

    :cond_5
    return-void
.end method

.method protected onPickActivityResult(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/unisoc/phone/callforward/CallForwardTimeEditPreFragement;->mNumberEditPref:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {p0, p1}, Lcom/android/phone/EditPhoneNumberPreference;->onPickActivityResult(Ljava/lang/String;)V

    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 8

    iget-object v0, p0, Lcom/unisoc/phone/callforward/CallForwardTimeEditPreFragement;->mStartTimePref:Landroid/preference/Preference;

    if-eq p2, v0, :cond_0

    iget-object v0, p0, Lcom/unisoc/phone/callforward/CallForwardTimeEditPreFragement;->mStopTimePref:Landroid/preference/Preference;

    if-ne p2, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unisoc/phone/callforward/CallForwardTimeEditPreFragement;->mIsStopTimeSetting:Z

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    new-instance v7, Landroid/app/TimePickerDialog;

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/4 v6, 0x1

    move-object v1, v7

    move-object v3, p0

    invoke-direct/range {v1 .. v6}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    iput-object v7, p0, Lcom/unisoc/phone/callforward/CallForwardTimeEditPreFragement;->mTimePickerDialog:Landroid/app/TimePickerDialog;

    invoke-virtual {v7}, Landroid/app/TimePickerDialog;->show()V

    iget-object v0, p0, Lcom/unisoc/phone/callforward/CallForwardTimeEditPreFragement;->mStopTimePref:Landroid/preference/Preference;

    if-ne p2, v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unisoc/phone/callforward/CallForwardTimeEditPreFragement;->mIsStopTimeSetting:Z

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    invoke-virtual {p0}, Lcom/unisoc/phone/callforward/CallForwardTimeEditPreFragement;->notifySetNumberChange()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/unisoc/phone/callforward/CallForwardTimeEditPreFragement;->mContext:Landroid/content/Context;

    const v1, 0x7f1105de

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/unisoc/phone/callforward/CallForwardTimeEditPreFragement;->mNumberEditPref:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v1}, Landroid/preference/EditTextPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    const-string v2, "time_edit_phone_number"

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/unisoc/phone/callforward/CallForwardTimeEditPreFragement;->mNumberEditPref:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v1}, Landroid/preference/EditTextPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    const-string v3, "is_time_edit_dialog_showing"

    invoke-virtual {p1, v3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/unisoc/phone/callforward/CallForwardTimeEditPreFragement;->mNumberEditPref:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v1}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/unisoc/phone/callforward/CallForwardTimeEditPreFragement;->mNumberEditPref:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v1}, Landroid/preference/EditTextPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/unisoc/phone/callforward/CallForwardTimeEditPreFragement;->mStartTimePref:Landroid/preference/Preference;

    invoke-virtual {v1}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "start_time_flag"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object v1, p0, Lcom/unisoc/phone/callforward/CallForwardTimeEditPreFragement;->mStopTimePref:Landroid/preference/Preference;

    invoke-virtual {v1}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "stop_time_flag"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    iget-object v0, p0, Lcom/unisoc/phone/callforward/CallForwardTimeEditPreFragement;->mTimePickerDialog:Landroid/app/TimePickerDialog;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/app/TimePickerDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/unisoc/phone/callforward/CallForwardTimeEditPreFragement;->mTimePickerDialog:Landroid/app/TimePickerDialog;

    invoke-virtual {v0}, Landroid/app/TimePickerDialog;->getTimePicker()Landroid/widget/TimePicker;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/unisoc/phone/callforward/CallForwardTimeEditPreFragement;->mTimePickerDialog:Landroid/app/TimePickerDialog;

    invoke-virtual {v0}, Landroid/app/TimePickerDialog;->getTimePicker()Landroid/widget/TimePicker;

    move-result-object v0

    const-string v1, "is_time_picker_dialog_showing"

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v0}, Landroid/widget/TimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v2, "current_time_minute"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0}, Landroid/widget/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v1, "current_time_hour"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "is_stop_time_ssetting"

    iget-boolean p0, p0, Lcom/unisoc/phone/callforward/CallForwardTimeEditPreFragement;->mIsStopTimeSetting:Z

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_4
    return-void
.end method

.method public onTimeSet(Landroid/widget/TimePicker;II)V
    .locals 2

    sget-object p1, Lcom/unisoc/phone/callforward/CallForwardTimeEditPreFragement;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTimeSet hourOfDay = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "  minute = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    const/16 v0, 0xb

    invoke-virtual {p1, v0, p2}, Ljava/util/Calendar;->set(II)V

    const/16 p2, 0xc

    invoke-virtual {p1, p2, p3}, Ljava/util/Calendar;->set(II)V

    new-instance p2, Ljava/text/SimpleDateFormat;

    const-string p3, "HH:mm"

    invoke-direct {p2, p3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance p3, Ljava/util/Date;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-direct {p3, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p2, p3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    iget-boolean p2, p0, Lcom/unisoc/phone/callforward/CallForwardTimeEditPreFragement;->mIsStopTimeSetting:Z

    if-eqz p2, :cond_0

    iput-object p1, p0, Lcom/unisoc/phone/callforward/CallForwardTimeEditPreFragement;->mStopTime:Ljava/lang/String;

    iget-object p2, p0, Lcom/unisoc/phone/callforward/CallForwardTimeEditPreFragement;->mStopTimePref:Landroid/preference/Preference;

    invoke-virtual {p2, p1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/unisoc/phone/callforward/CallForwardTimeEditPreFragement;->mStopTime:Ljava/lang/String;

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/unisoc/phone/callforward/CallForwardTimeEditPreFragement;->updateTimeSummary(Ljava/lang/String;Z)V

    iput-boolean p2, p0, Lcom/unisoc/phone/callforward/CallForwardTimeEditPreFragement;->mIsStopTimeSetting:Z

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/unisoc/phone/callforward/CallForwardTimeEditPreFragement;->mStartTime:Ljava/lang/String;

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lcom/unisoc/phone/callforward/CallForwardTimeEditPreFragement;->updateTimeSummary(Ljava/lang/String;Z)V

    iget-object p1, p0, Lcom/unisoc/phone/callforward/CallForwardTimeEditPreFragement;->mStartTimePref:Landroid/preference/Preference;

    iget-object p2, p0, Lcom/unisoc/phone/callforward/CallForwardTimeEditPreFragement;->mStartTime:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_0
    invoke-virtual {p0}, Lcom/unisoc/phone/callforward/CallForwardTimeEditPreFragement;->notifySetNumberChange()V

    return-void
.end method

.method public savePrefData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/unisoc/phone/callforward/CallForwardTimeEditPreFragement;->mPrefs:Landroid/content/SharedPreferences;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method protected setParentActivity(I)V
    .locals 1

    iget-object v0, p0, Lcom/unisoc/phone/callforward/CallForwardTimeEditPreFragement;->mNumberEditPref:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lcom/android/phone/EditPhoneNumberPreference;->setParentActivity(Landroid/app/Activity;I)V

    return-void
.end method
