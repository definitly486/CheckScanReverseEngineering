.class public final Lio/appmetrica/analytics/push/impl/x;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lio/appmetrica/analytics/push/impl/L1;

.field public final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/push/impl/L1;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/push/impl/x;->a:Lio/appmetrica/analytics/push/impl/L1;

    iput-object p2, p0, Lio/appmetrica/analytics/push/impl/x;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final declared-synchronized a()J
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/push/impl/x;->a:Lio/appmetrica/analytics/push/impl/L1;

    iget-object v1, p0, Lio/appmetrica/analytics/push/impl/x;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "appmetrica_tracker_event_id_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lio/appmetrica/analytics/push/impl/L1;->a:Landroid/content/Context;

    iget-object v0, v0, Lio/appmetrica/analytics/push/impl/L1;->b:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-wide/16 v2, -0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iget-object v2, p0, Lio/appmetrica/analytics/push/impl/x;->a:Lio/appmetrica/analytics/push/impl/L1;

    iget-object v3, p0, Lio/appmetrica/analytics/push/impl/x;->b:Ljava/lang/String;

    invoke-virtual {v2, v3, v0, v1}, Lio/appmetrica/analytics/push/impl/L1;->a(Ljava/lang/String;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
