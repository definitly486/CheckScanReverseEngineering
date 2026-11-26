.class public final synthetic Ljda;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lio/appmetrica/analytics/idsync/impl/u;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;

.field public final synthetic f:J


# direct methods
.method public synthetic constructor <init>(Lio/appmetrica/analytics/idsync/impl/u;Ljava/lang/String;Ljava/lang/String;Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljda;->b:Lio/appmetrica/analytics/idsync/impl/u;

    iput-object p2, p0, Ljda;->c:Ljava/lang/String;

    iput-object p3, p0, Ljda;->d:Ljava/lang/String;

    iput-object p4, p0, Ljda;->e:Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;

    iput-wide p5, p0, Ljda;->f:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v3, p0, Ljda;->e:Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;

    iget-wide v4, p0, Ljda;->f:J

    iget-object v0, p0, Ljda;->b:Lio/appmetrica/analytics/idsync/impl/u;

    iget-object v1, p0, Ljda;->c:Ljava/lang/String;

    iget-object v2, p0, Ljda;->d:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lio/appmetrica/analytics/idsync/impl/u;->a(Lio/appmetrica/analytics/idsync/impl/u;Ljava/lang/String;Ljava/lang/String;Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;J)V

    return-void
.end method
