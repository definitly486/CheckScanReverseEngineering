.class public final synthetic Lida;
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

.field public final synthetic g:I

.field public final synthetic h:J


# direct methods
.method public synthetic constructor <init>(Lio/appmetrica/analytics/idsync/impl/u;Ljava/lang/String;Ljava/lang/String;Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;JIJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lida;->b:Lio/appmetrica/analytics/idsync/impl/u;

    iput-object p2, p0, Lida;->c:Ljava/lang/String;

    iput-object p3, p0, Lida;->d:Ljava/lang/String;

    iput-object p4, p0, Lida;->e:Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;

    iput-wide p5, p0, Lida;->f:J

    iput p7, p0, Lida;->g:I

    iput-wide p8, p0, Lida;->h:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    iget v6, p0, Lida;->g:I

    iget-wide v7, p0, Lida;->h:J

    iget-object v0, p0, Lida;->b:Lio/appmetrica/analytics/idsync/impl/u;

    iget-object v1, p0, Lida;->c:Ljava/lang/String;

    iget-object v2, p0, Lida;->d:Ljava/lang/String;

    iget-object v3, p0, Lida;->e:Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;

    iget-wide v4, p0, Lida;->f:J

    invoke-static/range {v0 .. v8}, Lio/appmetrica/analytics/idsync/impl/u;->a(Lio/appmetrica/analytics/idsync/impl/u;Ljava/lang/String;Ljava/lang/String;Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;JIJ)V

    return-void
.end method
