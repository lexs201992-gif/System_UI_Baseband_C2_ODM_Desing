.class public Lcom/google/android/apps/auto/components/app/fzero/GhBackupAgent;
.super Laxc;
.source "SourceFile"


# static fields
.field private static final a:Lbnz;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "GH.GhBackupAgent"

    invoke-static {v0}, Lbnz;->k(Ljava/lang/String;)Lbnz;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/auto/components/app/fzero/GhBackupAgent;->a:Lbnz;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    nop

    invoke-direct {p0}, Laxc;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a()Ljava/util/Map;
    .locals 2

    new-instance v0, Lsv;

    invoke-direct {v0}, Lsv;-><init>()V

    const-string v1, "fzero"

    invoke-static {v1, v0}, Lblo;->f(Ljava/lang/Object;Ljava/lang/Object;)Lblo;

    move-result-object v0

    return-object v0
.end method

.method protected final b()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/apps/auto/components/app/fzero/GhBackupAgent;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f05001a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.apps.auto.components.app.fzero.ACTION_RESTORE_COMPLETE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.google.android.projection.gearhead"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/google/android/apps/auto/components/app/fzero/GhBackupAgent;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public final onBackup(Landroid/os/ParcelFileDescriptor;Landroid/app/backup/BackupDataOutput;Landroid/os/ParcelFileDescriptor;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/google/android/apps/auto/components/app/fzero/GhBackupAgent;->a:Lbnz;

    invoke-virtual {v0}, Lbny;->h()Lbnj;

    move-result-object v0

    const-string v1, "onBackup"

    const/16 v2, 0x2d

    const-string v3, "com/google/android/apps/auto/components/app/fzero/GhBackupAgent"

    const-string v4, "GhBackupAgent.java"

    invoke-interface {v0, v3, v1, v2, v4}, Lbnx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lbnj;

    move-result-object v0

    check-cast v0, Lbnx;

    const-string v1, "Backup starting"

    invoke-interface {v0, v1}, Lbnx;->n(Ljava/lang/String;)V

    invoke-super {p0, p1, p2, p3}, Laxc;->onBackup(Landroid/os/ParcelFileDescriptor;Landroid/app/backup/BackupDataOutput;Landroid/os/ParcelFileDescriptor;)V

    return-void
.end method

.method public final onRestore(Landroid/app/backup/BackupDataInput;ILandroid/os/ParcelFileDescriptor;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/google/android/apps/auto/components/app/fzero/GhBackupAgent;->a:Lbnz;

    invoke-virtual {v0}, Lbny;->h()Lbnj;

    move-result-object v0

    const-string v1, "onRestore"

    const/16 v2, 0x34

    const-string v3, "com/google/android/apps/auto/components/app/fzero/GhBackupAgent"

    const-string v4, "GhBackupAgent.java"

    invoke-interface {v0, v3, v1, v2, v4}, Lbnx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lbnj;

    move-result-object v0

    check-cast v0, Lbnx;

    const-string v1, "Restore starting"

    invoke-interface {v0, v1}, Lbnx;->n(Ljava/lang/String;)V

    invoke-super {p0, p1, p2, p3}, Laxc;->onRestore(Landroid/app/backup/BackupDataInput;ILandroid/os/ParcelFileDescriptor;)V

    return-void
.end method
