.class public Lcom/unisoc/settings/biometrics/face/UniSettingsFaceFactory;
.super Ljava/lang/Object;
.source "UniSettingsFaceFactory.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "UniSettingsFaceFactory"

.field private static sFaceInstance:Lcom/unisoc/settings/biometrics/face/UniSettingsFaceFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFaceInstance(Landroid/content/Context;)Lcom/unisoc/settings/biometrics/face/UniSettingsFaceFactory;
    .locals 1

    const-class p0, Lcom/unisoc/settings/biometrics/face/UniSettingsFaceFactory;

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/unisoc/settings/biometrics/face/UniSettingsFaceFactory;->sFaceInstance:Lcom/unisoc/settings/biometrics/face/UniSettingsFaceFactory;

    if-nez v0, :cond_0

    new-instance v0, Lcom/unisoc/settings/biometrics/face/UniSettingsFaceFactory;

    invoke-direct {v0}, Lcom/unisoc/settings/biometrics/face/UniSettingsFaceFactory;-><init>()V

    sput-object v0, Lcom/unisoc/settings/biometrics/face/UniSettingsFaceFactory;->sFaceInstance:Lcom/unisoc/settings/biometrics/face/UniSettingsFaceFactory;

    :cond_0
    sget-object v0, Lcom/unisoc/settings/biometrics/face/UniSettingsFaceFactory;->sFaceInstance:Lcom/unisoc/settings/biometrics/face/UniSettingsFaceFactory;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/unisoc/settings/biometrics/face/UniSettingsFaceFactory;
    .locals 1

    invoke-static {p0}, Lcom/unisoc/settings/UniSettingsComponentFactory;->getInstance(Landroid/content/Context;)Lcom/unisoc/settings/UniSettingsComponentFactory;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/unisoc/settings/UniSettingsComponentFactory;->getFaceInstance(Landroid/content/Context;)Lcom/unisoc/settings/biometrics/face/UniSettingsFaceFactory;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public onBiometricEnrollBaseCheckReenrollToken(Lcom/android/settings/biometrics/BiometricEnrollBase;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onFaceAnimationDrawableEnrolled(Lcom/android/settings/biometrics/face/ParticleCollection$Listener;)V
    .locals 0

    invoke-interface {p1}, Lcom/android/settings/biometrics/face/ParticleCollection$Listener;->onEnrolled()V

    return-void
.end method

.method public onFaceAnimationDrawableGetBounds(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 3

    new-instance p0, Landroid/graphics/Rect;

    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, v0, v1, v2, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p0
.end method

.method public onFaceAnimationDrawableGetColor()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public onFaceAnimationDrawableGetExactCenterY(Landroid/graphics/Rect;)F
    .locals 0

    invoke-virtual {p1}, Landroid/graphics/Rect;->exactCenterY()F

    move-result p0

    return p0
.end method

.method public onFaceAnimationDrawableGetRadius(Landroid/graphics/Rect;)F
    .locals 0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    int-to-float p0, p0

    return p0
.end method

.method public onFaceEducationAccessibilityButtonClickListene(Lcom/google/android/setupcompat/template/FooterButton;)V
    .locals 0

    return-void
.end method

.method public onFaceEducationGetLayoutResId()I
    .locals 0

    sget p0, Lcom/android/settings/R$layout;->face_enroll_education:I

    return p0
.end method

.method public onFaceEducationGetSecondaryButtonType()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method public onFaceEducationResume(Landroid/widget/CompoundButton$OnCheckedChangeListener;Lcom/android/settings/biometrics/face/FaceEnrollAccessibilityToggle;)V
    .locals 0

    invoke-virtual {p2}, Lcom/android/settings/biometrics/face/FaceEnrollAccessibilityToggle;->getSwitch()Landroid/widget/Switch;

    move-result-object p0

    invoke-virtual {p2}, Lcom/android/settings/biometrics/face/FaceEnrollAccessibilityToggle;->isChecked()Z

    move-result p2

    invoke-interface {p1, p0, p2}, Landroid/widget/CompoundButton$OnCheckedChangeListener;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method public onFaceEnrollingGetLayoutResId()I
    .locals 0

    sget p0, Lcom/android/settings/R$layout;->face_enroll_enrolling:I

    return p0
.end method

.method public onFaceEnrollingGetSecondaryButtonResId()I
    .locals 0

    sget p0, Lcom/android/settings/R$string;->security_settings_face_enroll_enrolling_skip:I

    return p0
.end method

.method public onFaceEnrollingHandleError(Lcom/android/settings/biometrics/face/FaceEnrollEnrolling;ILjava/lang/CharSequence;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onFaceEnrollingProgressChange(Lcom/android/settings/biometrics/face/FaceEnrollEnrolling;II)Ljava/lang/CharSequence;
    .locals 0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Steps: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " Remaining: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public onFaceEnrollingShowHelp(Lcom/android/settings/biometrics/face/FaceEnrollEnrolling;ILjava/lang/CharSequence;Landroid/view/animation/Interpolator;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onFaceEnrollingStartEnrollment(Lcom/android/settings/biometrics/face/FaceEnrollEnrolling;)V
    .locals 0

    invoke-virtual {p1}, Lcom/android/settings/biometrics/face/FaceEnrollEnrolling;->startEnrollment()V

    return-void
.end method

.method public onFaceFeatureProviderIsAttentionSupported()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onFaceIntroductionGetLayoutResId()I
    .locals 0

    sget p0, Lcom/android/settings/R$layout;->face_enroll_introduction:I

    return p0
.end method

.method public onFaceSettingsAddedToTogglePreference(Lcom/android/settings/biometrics/face/FaceSettings;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/settings/biometrics/face/FaceSettings;",
            "Ljava/util/List<",
            "Landroidx/preference/Preference;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onFaceSettingsBuildPreferenceControllers(Ljava/util/List;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public onFaceSettingsGetScreenResId()I
    .locals 0

    sget p0, Lcom/android/settings/R$xml;->security_settings_face:I

    return p0
.end method

.method public onFaceSettingsIsPageSearchEnabled(Landroid/content/Context;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onFaceSettingsResumePreference(Lcom/android/settings/biometrics/face/FaceSettings;)V
    .locals 0

    return-void
.end method

.method public onFaceSidecarStartEnrollment(Lcom/android/settings/biometrics/face/FaceEnrollSidecar;Lcom/android/settings/biometrics/face/FaceUpdater;I[BLandroid/os/CancellationSignal;Landroid/hardware/face/FaceManager$EnrollmentCallback;[I)V
    .locals 0

    invoke-virtual/range {p2 .. p7}, Lcom/android/settings/biometrics/face/FaceUpdater;->enroll(I[BLandroid/os/CancellationSignal;Landroid/hardware/face/FaceManager$EnrollmentCallback;[I)V

    return-void
.end method

.method public onPreviewCreateNpeCheck(Landroid/app/Activity;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onPreviewResumeNpeCheck(Landroid/app/Activity;Lcom/android/settings/biometrics/face/FaceSquareTextureView;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onPreviewResumeTextureAvailable(Lcom/android/settings/biometrics/face/FaceSquareTextureView;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onPreviewSurfaceTextureAvailable(Lcom/android/settings/biometrics/face/FaceSquareTextureView;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onPreviewSurfaceTextureDestroyed()V
    .locals 0

    return-void
.end method
