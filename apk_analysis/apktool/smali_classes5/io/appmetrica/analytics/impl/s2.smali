.class public final Lio/appmetrica/analytics/impl/s2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/vc;

.field public final b:Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;

.field public final c:J

.field public d:Z

.field public final e:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/vc;Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/s2;->a:Lio/appmetrica/analytics/impl/vc;

    iput-object p2, p0, Lio/appmetrica/analytics/impl/s2;->b:Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;

    iput-wide p3, p0, Lio/appmetrica/analytics/impl/s2;->c:J

    const/4 p1, 0x1

    iput-boolean p1, p0, Lio/appmetrica/analytics/impl/s2;->d:Z

    new-instance p1, Lb8a;

    invoke-direct {p1, p0}, Lb8a;-><init>(Lio/appmetrica/analytics/impl/s2;)V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/s2;->e:Ljava/lang/Runnable;

    return-void
.end method

.method public static final a(Lio/appmetrica/analytics/impl/s2;)V
    .locals 1

    iget-object p0, p0, Lio/appmetrica/analytics/impl/s2;->a:Lio/appmetrica/analytics/impl/vc;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/vc;->a:Lio/appmetrica/analytics/impl/wc;

    iget-object v0, p0, Lio/appmetrica/analytics/impl/W2;->h:Lio/appmetrica/analytics/impl/Ei;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/W2;->b:Lio/appmetrica/analytics/impl/Mh;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/V3;->a:Lio/appmetrica/analytics/impl/Pf;

    iget-object v0, v0, Lio/appmetrica/analytics/impl/Ei;->c:Lio/appmetrica/analytics/impl/Gi;

    invoke-virtual {v0, p0}, Lio/appmetrica/analytics/impl/Gi;->a(Lio/appmetrica/analytics/impl/Pf;)V

    return-void
.end method
