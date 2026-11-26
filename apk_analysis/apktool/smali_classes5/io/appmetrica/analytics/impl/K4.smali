.class public final Lio/appmetrica/analytics/impl/K4;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/Ub;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-static {}, Lio/appmetrica/analytics/impl/Fa;->k()Lio/appmetrica/analytics/impl/Fa;

    move-result-object v0

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/Fa;->l()Lio/appmetrica/analytics/impl/Ub;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/appmetrica/analytics/impl/K4;-><init>(Lio/appmetrica/analytics/impl/Ub;)V

    return-void
.end method

.method public constructor <init>(Lio/appmetrica/analytics/impl/Ub;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lio/appmetrica/analytics/impl/K4;->a:Lio/appmetrica/analytics/impl/Ub;

    return-void
.end method

.method public static a(Lio/appmetrica/analytics/impl/I4;)Lio/appmetrica/analytics/impl/P4;
    .locals 2

    .line 23
    new-instance v0, Lio/appmetrica/analytics/impl/P4;

    new-instance v1, Lio/appmetrica/analytics/impl/N4;

    invoke-direct {v1, p0}, Lio/appmetrica/analytics/impl/N4;-><init>(Lio/appmetrica/analytics/impl/I4;)V

    invoke-direct {v0, v1, p0}, Lio/appmetrica/analytics/impl/P4;-><init>(Lio/appmetrica/analytics/impl/Tf;Lio/appmetrica/analytics/impl/I4;)V

    return-object v0
.end method


# virtual methods
.method public final a(Lio/appmetrica/analytics/impl/I4;Lio/appmetrica/analytics/impl/Qm;)Lio/appmetrica/analytics/impl/xn;
    .locals 2

    new-instance v0, Lio/appmetrica/analytics/impl/xn;

    new-instance v1, Lio/appmetrica/analytics/impl/Lg;

    invoke-direct {v1, p2}, Lio/appmetrica/analytics/impl/Lg;-><init>(Lio/appmetrica/analytics/impl/Qm;)V

    invoke-direct {v0, p1, v1}, Lio/appmetrica/analytics/impl/xn;-><init>(Lio/appmetrica/analytics/impl/Sa;Lio/appmetrica/analytics/impl/am;)V

    iget-object p0, p0, Lio/appmetrica/analytics/impl/K4;->a:Lio/appmetrica/analytics/impl/Ub;

    monitor-enter p0

    :try_start_0
    iget-object p1, p0, Lio/appmetrica/analytics/impl/Ub;->c:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
