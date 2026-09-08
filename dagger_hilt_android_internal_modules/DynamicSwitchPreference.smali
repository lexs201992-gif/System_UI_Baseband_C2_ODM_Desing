.class public Lcom/motorola/gamemode/dynamicpreference/DynamicSwitchPreference;
.super Landroidx/preference/SwitchPreferenceCompat;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/gamemode/dynamicpreference/e$b;
.implements Landroidx/preference/Preference$d;
.implements Landroidx/preference/Preference$e;
.implements Lcom/motorola/gamemode/dynamicpreference/j$a;


# instance fields
.field public g0:Lcom/motorola/gamemode/dynamicpreference/j;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/preference/SwitchPreferenceCompat;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/motorola/gamemode/dynamicpreference/DynamicSwitchPreference;->g0:Lcom/motorola/gamemode/dynamicpreference/j;

    invoke-virtual {p0}, Lcom/motorola/gamemode/dynamicpreference/DynamicSwitchPreference;->T()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Landroidx/preference/SwitchPreferenceCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/motorola/gamemode/dynamicpreference/DynamicSwitchPreference;->g0:Lcom/motorola/gamemode/dynamicpreference/j;

    invoke-virtual {p0}, Lcom/motorola/gamemode/dynamicpreference/DynamicSwitchPreference;->T()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/preference/SwitchPreferenceCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/motorola/gamemode/dynamicpreference/DynamicSwitchPreference;->g0:Lcom/motorola/gamemode/dynamicpreference/j;

    invoke-virtual {p0}, Lcom/motorola/gamemode/dynamicpreference/DynamicSwitchPreference;->T()V

    return-void
.end method


# virtual methods
.method public final F(Landroid/content/Intent;)V
    .locals 0

    iget-object p0, p0, Lcom/motorola/gamemode/dynamicpreference/DynamicSwitchPreference;->g0:Lcom/motorola/gamemode/dynamicpreference/j;

    iput-object p1, p0, Lcom/motorola/gamemode/dynamicpreference/j;->q:Landroid/content/Intent;

    return-void
.end method

.method public final T()V
    .locals 2

    iput-object p0, p0, Landroidx/preference/Preference;->o:Landroidx/preference/Preference$d;

    iput-object p0, p0, Landroidx/preference/Preference;->p:Landroidx/preference/Preference$e;

    new-instance v0, Lcom/motorola/gamemode/dynamicpreference/j;

    iget-object v1, p0, Landroidx/preference/Preference;->k:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/motorola/gamemode/dynamicpreference/j;-><init>(Landroid/content/Context;Landroidx/preference/TwoStatePreference;)V

    iput-object v0, p0, Lcom/motorola/gamemode/dynamicpreference/DynamicSwitchPreference;->g0:Lcom/motorola/gamemode/dynamicpreference/j;

    const v0, 0x7f0d00f4

    iput v0, p0, Landroidx/preference/Preference;->Q:I

    return-void
.end method

.method public final a()Lcom/motorola/gamemode/dynamicpreference/j;
    .locals 0

    iget-object p0, p0, Lcom/motorola/gamemode/dynamicpreference/DynamicSwitchPreference;->g0:Lcom/motorola/gamemode/dynamicpreference/j;

    return-object p0
.end method

.method public final b(Landroidx/preference/Preference;)V
    .locals 0

    return-void
.end method

.method public final c(ZLandroid/net/Uri;)V
    .locals 0

    iget-object p0, p0, Lcom/motorola/gamemode/dynamicpreference/DynamicSwitchPreference;->g0:Lcom/motorola/gamemode/dynamicpreference/j;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/gamemode/dynamicpreference/j;->c(ZLandroid/net/Uri;)V

    return-void
.end method

.method public final d(Landroidx/preference/Preference;Ljava/io/Serializable;)Z
    .locals 0

    iget-object p0, p0, Lcom/motorola/gamemode/dynamicpreference/DynamicSwitchPreference;->g0:Lcom/motorola/gamemode/dynamicpreference/j;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/gamemode/dynamicpreference/j;->d(Landroidx/preference/Preference;Ljava/io/Serializable;)Z

    move-result p0

    return p0
.end method

.method public final e()V
    .locals 0

    iget-object p0, p0, Lcom/motorola/gamemode/dynamicpreference/DynamicSwitchPreference;->g0:Lcom/motorola/gamemode/dynamicpreference/j;

    invoke-virtual {p0}, Lcom/motorola/gamemode/dynamicpreference/j;->e()V

    return-void
.end method

.method public final r(Landroidx/preference/e;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/preference/Preference;->r(Landroidx/preference/e;)V

    iget-object p0, p0, Lcom/motorola/gamemode/dynamicpreference/DynamicSwitchPreference;->g0:Lcom/motorola/gamemode/dynamicpreference/j;

    invoke-virtual {p0}, Lcom/motorola/gamemode/dynamicpreference/j;->a()V

    return-void
.end method

.method public final s(Lv1/g;)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/preference/SwitchPreferenceCompat;->s(Lv1/g;)V

    iget-object p0, p0, Lcom/motorola/gamemode/dynamicpreference/DynamicSwitchPreference;->g0:Lcom/motorola/gamemode/dynamicpreference/j;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v0, 0x1020016

    invoke-virtual {p1, v0}, Lv1/g;->s(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iget v0, p0, Lcom/motorola/gamemode/dynamicpreference/j;->s:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget p0, p0, Lcom/motorola/gamemode/dynamicpreference/j;->s:I

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setMaxLines(I)V

    :cond_0
    return-void
.end method

.method public final v()V
    .locals 1

    invoke-virtual {p0}, Landroidx/preference/Preference;->N()V

    iget-object p0, p0, Lcom/motorola/gamemode/dynamicpreference/DynamicSwitchPreference;->g0:Lcom/motorola/gamemode/dynamicpreference/j;

    iget-object v0, p0, Lcom/motorola/gamemode/dynamicpreference/j;->p:Lcom/motorola/gamemode/dynamicpreference/e;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/motorola/gamemode/dynamicpreference/e;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/gamemode/dynamicpreference/j;->p:Lcom/motorola/gamemode/dynamicpreference/e;

    :cond_0
    return-void
.end method
