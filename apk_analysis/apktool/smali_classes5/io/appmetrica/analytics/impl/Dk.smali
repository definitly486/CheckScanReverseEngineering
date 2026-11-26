.class public final Lio/appmetrica/analytics/impl/Dk;
.super Lio/appmetrica/analytics/impl/Wc;
.source "SourceFile"


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/Fo;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-static {}, Lio/appmetrica/analytics/impl/Fa;->k()Lio/appmetrica/analytics/impl/Fa;

    move-result-object v0

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/Fa;->D()Lio/appmetrica/analytics/impl/Jo;

    move-result-object v0

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/Jo;->b()Lio/appmetrica/analytics/impl/Fo;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/appmetrica/analytics/impl/Dk;-><init>(Lio/appmetrica/analytics/impl/Fo;)V

    return-void
.end method

.method public constructor <init>(Lio/appmetrica/analytics/impl/Fo;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Lio/appmetrica/analytics/impl/Wc;-><init>()V

    .line 17
    iput-object p1, p0, Lio/appmetrica/analytics/impl/Dk;->a:Lio/appmetrica/analytics/impl/Fo;

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 3

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Dk;->a:Lio/appmetrica/analytics/impl/Fo;

    monitor-enter p0

    :try_start_0
    const-string v0, "last_migration_api_level"

    iget-object v1, p0, Lio/appmetrica/analytics/impl/Fo;->a:Lio/appmetrica/analytics/impl/Ho;

    invoke-virtual {v1}, Lio/appmetrica/analytics/impl/Ho;->a()Lorg/json/JSONObject;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lio/appmetrica/analytics/impl/Fo;->a:Lio/appmetrica/analytics/impl/Ho;

    invoke-virtual {v1, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v2, p1}, Lio/appmetrica/analytics/impl/Ho;->a(Lorg/json/JSONObject;)V

    :goto_0
    iget-object p1, p0, Lio/appmetrica/analytics/impl/Fo;->a:Lio/appmetrica/analytics/impl/Ho;

    iget-object v0, p1, Lio/appmetrica/analytics/impl/Ho;->a:Lio/appmetrica/analytics/impl/Ko;

    invoke-static {v0}, Lio/appmetrica/analytics/impl/Ho;->a(Lio/appmetrica/analytics/impl/Ko;)V

    iget-object p1, p1, Lio/appmetrica/analytics/impl/Ho;->b:Lio/appmetrica/analytics/impl/Ko;

    invoke-static {p1}, Lio/appmetrica/analytics/impl/Ho;->a(Lio/appmetrica/analytics/impl/Ko;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final b()I
    .locals 3

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Dk;->a:Lio/appmetrica/analytics/impl/Fo;

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Fo;->a:Lio/appmetrica/analytics/impl/Ho;

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/Ho;->a()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "last_migration_api_level"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final c()Landroid/util/SparseArray;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lio/appmetrica/analytics/impl/Vc;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    new-instance v1, Lio/appmetrica/analytics/impl/Ek;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Dk;->a:Lio/appmetrica/analytics/impl/Fo;

    invoke-direct {v1, p0}, Lio/appmetrica/analytics/impl/Ek;-><init>(Lio/appmetrica/analytics/impl/Fo;)V

    const/16 p0, 0x70

    invoke-virtual {v0, p0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance p0, Lio/appmetrica/analytics/impl/Fk;

    invoke-direct {p0}, Lio/appmetrica/analytics/impl/Fk;-><init>()V

    const/16 v1, 0x73

    invoke-virtual {v0, v1, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance p0, Lio/appmetrica/analytics/impl/Ik;

    invoke-direct {p0}, Lio/appmetrica/analytics/impl/Ik;-><init>()V

    const/16 v1, 0x74

    invoke-virtual {v0, v1, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object v0
.end method
