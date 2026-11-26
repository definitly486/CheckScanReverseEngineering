.class public final Lio/appmetrica/analytics/impl/od;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/concurrent/Executor;

.field public final b:Lio/appmetrica/analytics/impl/Nl;

.field public final c:Ljava/lang/String;

.field public final d:Lio/appmetrica/analytics/coreutils/internal/time/SystemTimeProvider;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;Lio/appmetrica/analytics/impl/Kd;Ljava/lang/String;Lio/appmetrica/analytics/coreutils/internal/time/SystemTimeProvider;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/od;->a:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lio/appmetrica/analytics/impl/od;->b:Lio/appmetrica/analytics/impl/Nl;

    iput-object p3, p0, Lio/appmetrica/analytics/impl/od;->c:Ljava/lang/String;

    iput-object p4, p0, Lio/appmetrica/analytics/impl/od;->d:Lio/appmetrica/analytics/coreutils/internal/time/SystemTimeProvider;

    return-void
.end method

.method public static final a(Lio/appmetrica/analytics/impl/od;Ljava/util/List;)V
    .locals 4

    sget-object v0, Lio/appmetrica/analytics/impl/Bj;->a:Lio/appmetrica/analytics/impl/ek;

    new-instance v1, Lio/appmetrica/analytics/impl/qd;

    iget-object v2, p0, Lio/appmetrica/analytics/impl/od;->b:Lio/appmetrica/analytics/impl/Nl;

    iget-object v3, p0, Lio/appmetrica/analytics/impl/od;->c:Ljava/lang/String;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/od;->d:Lio/appmetrica/analytics/coreutils/internal/time/SystemTimeProvider;

    invoke-direct {v1, v2, v3, p0, p1}, Lio/appmetrica/analytics/impl/qd;-><init>(Lio/appmetrica/analytics/impl/Nl;Ljava/lang/String;Lio/appmetrica/analytics/coreutils/internal/time/SystemTimeProvider;Ljava/util/List;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lio/appmetrica/analytics/impl/Rj;

    invoke-direct {p0, v1}, Lio/appmetrica/analytics/impl/Rj;-><init>(Lio/appmetrica/analytics/impl/hk;)V

    invoke-virtual {v0, p0}, Lio/appmetrica/analytics/impl/ek;->a(Lio/appmetrica/analytics/impl/ab;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 3

    .line 25
    iget-object v0, p0, Lio/appmetrica/analytics/impl/od;->a:Ljava/util/concurrent/Executor;

    new-instance v1, Lvt8;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p0, p1}, Lvt8;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
