.class public final Lcom/motorola/moto_features_library/app/database/AppsDatabase_Impl;
.super Lcom/motorola/moto_features_library/app/database/AppsDatabase;
.source "SourceFile"


# instance fields
.field public volatile x:Lqa/q;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/motorola/moto_features_library/app/database/AppsDatabase;-><init>()V

    return-void
.end method


# virtual methods
.method public final d()V
    .locals 4

    const-string v0, "VACUUM"

    const-string v1, "PRAGMA wal_checkpoint(FULL)"

    invoke-virtual {p0}, Ly1/s;->a()V

    invoke-virtual {p0}, Ly1/s;->i()Lc2/d;

    move-result-object v2

    invoke-interface {v2}, Lc2/d;->P()Lc2/b;

    move-result-object v2

    :try_start_0
    invoke-virtual {p0}, Ly1/s;->c()V

    const-string v3, "DELETE FROM `app_table`"

    invoke-interface {v2, v3}, Lc2/b;->j(Ljava/lang/String;)V

    const-string v3, "DELETE FROM `mode_table`"

    invoke-interface {v2, v3}, Lc2/b;->j(Ljava/lang/String;)V

    const-string v3, "DELETE FROM `image_table`"

    invoke-interface {v2, v3}, Lc2/b;->j(Ljava/lang/String;)V

    const-string v3, "DELETE FROM `game_mode_table`"

    invoke-interface {v2, v3}, Lc2/b;->j(Ljava/lang/String;)V

    invoke-virtual {p0}, Ly1/s;->r()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Ly1/s;->m()V

    invoke-interface {v2, v1}, Lc2/b;->R(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    invoke-interface {v2}, Lc2/b;->v()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-interface {v2, v0}, Lc2/b;->j(Ljava/lang/String;)V

    :cond_0
    return-void

    :catchall_0
    move-exception v3

    invoke-virtual {p0}, Ly1/s;->m()V

    invoke-interface {v2, v1}, Lc2/b;->R(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    invoke-interface {v2}, Lc2/b;->v()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-interface {v2, v0}, Lc2/b;->j(Ljava/lang/String;)V

    :cond_1
    throw v3
.end method

.method public final f()Landroidx/room/d;
    .locals 7

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, v1}, Ljava/util/HashMap;-><init>(I)V

    new-instance v1, Landroidx/room/d;

    const-string v3, "app_table"

    const-string v4, "mode_table"

    const-string v5, "image_table"

    const-string v6, "game_mode_table"

    filled-new-array {v3, v4, v5, v6}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p0, v0, v2, v3}, Landroidx/room/d;-><init>(Ly1/s;Ljava/util/HashMap;Ljava/util/HashMap;[Ljava/lang/String;)V

    return-object v1
.end method

.method public final g(Ly1/g;)Lc2/d;
    .locals 6

    new-instance v3, Ly1/u;

    new-instance v0, Lcom/motorola/moto_features_library/app/database/AppsDatabase_Impl$a;

    invoke-direct {v0, p0}, Lcom/motorola/moto_features_library/app/database/AppsDatabase_Impl$a;-><init>(Lcom/motorola/moto_features_library/app/database/AppsDatabase_Impl;)V

    const-string p0, "9acd21094fdcdc8bf76fbd3dd0335dc4"

    const-string v1, "b2ec6a83955e2b2fcf782f85cb9d42fa"

    invoke-direct {v3, p1, v0, p0, v1}, Ly1/u;-><init>(Ly1/g;Ly1/u$a;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p1, Ly1/g;->a:Landroid/content/Context;

    const-string p0, "context"

    invoke-static {v1, p0}, Lbc/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p1, Ly1/g;->b:Ljava/lang/String;

    new-instance p0, Lc2/d$b;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lc2/d$b;-><init>(Landroid/content/Context;Ljava/lang/String;Lc2/d$a;ZZ)V

    iget-object p1, p1, Ly1/g;->c:Lc2/d$c;

    invoke-interface {p1, p0}, Lc2/d$c;->a(Lc2/d$b;)Lc2/d;

    move-result-object p0

    return-object p0
.end method

.method public final h(Ljava/util/LinkedHashMap;)Ljava/util/List;
    .locals 0

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public final j()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    return-object p0
.end method

.method public final k()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;>;"
        }
    .end annotation

    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    const-class v1, Lqa/c;

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final t()Lqa/c;
    .locals 1

    iget-object v0, p0, Lcom/motorola/moto_features_library/app/database/AppsDatabase_Impl;->x:Lqa/q;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/motorola/moto_features_library/app/database/AppsDatabase_Impl;->x:Lqa/q;

    return-object p0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/moto_features_library/app/database/AppsDatabase_Impl;->x:Lqa/q;

    if-nez v0, :cond_1

    new-instance v0, Lqa/q;

    invoke-direct {v0, p0}, Lqa/q;-><init>(Lcom/motorola/moto_features_library/app/database/AppsDatabase;)V

    iput-object v0, p0, Lcom/motorola/moto_features_library/app/database/AppsDatabase_Impl;->x:Lqa/q;

    :cond_1
    iget-object v0, p0, Lcom/motorola/moto_features_library/app/database/AppsDatabase_Impl;->x:Lqa/q;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
