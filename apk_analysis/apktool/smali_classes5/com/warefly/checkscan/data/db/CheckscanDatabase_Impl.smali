.class public final Lcom/warefly/checkscan/data/db/CheckscanDatabase_Impl;
.super Lcom/warefly/checkscan/data/db/CheckscanDatabase;
.source "SourceFile"


# static fields
.field public static final synthetic l:I


# instance fields
.field public volatile h:Lx71;

.field public volatile i:Ljg1;

.field public volatile j:Lkp5;

.field public volatile k:Lku6;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/warefly/checkscan/data/db/CheckscanDatabase;-><init>()V

    return-void
.end method


# virtual methods
.method public final clearAllTables()V
    .locals 8

    const-string v6, "purchases_bank_info_table"

    const-string v7, "purchases_shop_info_table"

    const-string v0, "product_categories"

    const-string v1, "cheque_requests"

    const-string v2, "geofence_zones"

    const-string v3, "notifications"

    const-string v4, "purchases_table"

    const-string v5, "purchases_submit_table"

    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Landroidx/room/RoomDatabase;->performClear(Z[Ljava/lang/String;)V

    return-void
.end method

.method public final createInvalidationTracker()Landroidx/room/InvalidationTracker;
    .locals 11

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, v1}, Ljava/util/HashMap;-><init>(I)V

    new-instance v1, Landroidx/room/InvalidationTracker;

    const-string v9, "purchases_bank_info_table"

    const-string v10, "purchases_shop_info_table"

    const-string v3, "product_categories"

    const-string v4, "cheque_requests"

    const-string v5, "geofence_zones"

    const-string v6, "notifications"

    const-string v7, "purchases_table"

    const-string v8, "purchases_submit_table"

    filled-new-array/range {v3 .. v10}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p0, v0, v2, v3}, Landroidx/room/InvalidationTracker;-><init>(Landroidx/room/RoomDatabase;Ljava/util/Map;Ljava/util/Map;[Ljava/lang/String;)V

    return-object v1
.end method

.method public final createOpenDelegate()Landroidx/room/RoomOpenDelegateMarker;
    .locals 1

    new-instance v0, Ltc1;

    invoke-direct {v0, p0}, Ltc1;-><init>(Lcom/warefly/checkscan/data/db/CheckscanDatabase_Impl;)V

    return-object v0
.end method

.method public final e()Lr71;
    .locals 1

    iget-object v0, p0, Lcom/warefly/checkscan/data/db/CheckscanDatabase_Impl;->h:Lx71;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/warefly/checkscan/data/db/CheckscanDatabase_Impl;->h:Lx71;

    return-object p0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/warefly/checkscan/data/db/CheckscanDatabase_Impl;->h:Lx71;

    if-nez v0, :cond_1

    new-instance v0, Lx71;

    invoke-direct {v0, p0}, Lx71;-><init>(Lcom/warefly/checkscan/data/db/CheckscanDatabase_Impl;)V

    iput-object v0, p0, Lcom/warefly/checkscan/data/db/CheckscanDatabase_Impl;->h:Lx71;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/warefly/checkscan/data/db/CheckscanDatabase_Impl;->h:Lx71;

    monitor-exit p0

    return-object v0

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final f()Lwf1;
    .locals 1

    iget-object v0, p0, Lcom/warefly/checkscan/data/db/CheckscanDatabase_Impl;->i:Ljg1;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/warefly/checkscan/data/db/CheckscanDatabase_Impl;->i:Ljg1;

    return-object p0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/warefly/checkscan/data/db/CheckscanDatabase_Impl;->i:Ljg1;

    if-nez v0, :cond_1

    new-instance v0, Ljg1;

    invoke-direct {v0, p0}, Ljg1;-><init>(Lcom/warefly/checkscan/data/db/CheckscanDatabase_Impl;)V

    iput-object v0, p0, Lcom/warefly/checkscan/data/db/CheckscanDatabase_Impl;->i:Ljg1;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/warefly/checkscan/data/db/CheckscanDatabase_Impl;->i:Ljg1;

    monitor-exit p0

    return-object v0

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final g()Lip5;
    .locals 2

    iget-object v0, p0, Lcom/warefly/checkscan/data/db/CheckscanDatabase_Impl;->j:Lkp5;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/warefly/checkscan/data/db/CheckscanDatabase_Impl;->j:Lkp5;

    return-object p0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/warefly/checkscan/data/db/CheckscanDatabase_Impl;->j:Lkp5;

    if-nez v0, :cond_1

    new-instance v0, Lkp5;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljp5;

    invoke-direct {v1}, Landroidx/room/EntityInsertAdapter;-><init>()V

    iput-object v0, p0, Lcom/warefly/checkscan/data/db/CheckscanDatabase_Impl;->j:Lkp5;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/warefly/checkscan/data/db/CheckscanDatabase_Impl;->j:Lkp5;

    monitor-exit p0

    return-object v0

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final getAutoMigrations(Ljava/util/Map;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/room/migration/AutoMigrationSpec;",
            ">;",
            "Landroidx/room/migration/AutoMigrationSpec;",
            ">;)",
            "Ljava/util/List<",
            "Landroidx/room/migration/Migration;",
            ">;"
        }
    .end annotation

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    new-instance p1, Lsc1;

    invoke-direct {p1}, Lsc1;-><init>()V

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Lrc1;

    invoke-direct {p1}, Lrc1;-><init>()V

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final getRequiredAutoMigrationSpecs()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/room/migration/AutoMigrationSpec;",
            ">;>;"
        }
    .end annotation

    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    return-object p0
.end method

.method public final getRequiredTypeConverters()Ljava/util/Map;
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

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    const-class v1, Lr71;

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, Lwf1;

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, Llp3;

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, Lip5;

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, Lzt6;

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final h()Lzt6;
    .locals 1

    iget-object v0, p0, Lcom/warefly/checkscan/data/db/CheckscanDatabase_Impl;->k:Lku6;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/warefly/checkscan/data/db/CheckscanDatabase_Impl;->k:Lku6;

    return-object p0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/warefly/checkscan/data/db/CheckscanDatabase_Impl;->k:Lku6;

    if-nez v0, :cond_1

    new-instance v0, Lku6;

    invoke-direct {v0, p0}, Lku6;-><init>(Lcom/warefly/checkscan/data/db/CheckscanDatabase_Impl;)V

    iput-object v0, p0, Lcom/warefly/checkscan/data/db/CheckscanDatabase_Impl;->k:Lku6;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/warefly/checkscan/data/db/CheckscanDatabase_Impl;->k:Lku6;

    monitor-exit p0

    return-object v0

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
