.class public final Lio/appmetrica/analytics/impl/Vg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/o6;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lio/appmetrica/analytics/impl/o4;

.field public final c:Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/o4;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/Vg;->a:Landroid/content/Context;

    iput-object p2, p0, Lio/appmetrica/analytics/impl/Vg;->b:Lio/appmetrica/analytics/impl/o4;

    invoke-static {}, Lio/appmetrica/analytics/impl/Fa;->k()Lio/appmetrica/analytics/impl/Fa;

    move-result-object p1

    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/Fa;->w()Lio/appmetrica/analytics/impl/Ak;

    move-result-object p1

    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/Ak;->f()Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;

    move-result-object p1

    iput-object p1, p0, Lio/appmetrica/analytics/impl/Vg;->c:Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;

    return-void
.end method


# virtual methods
.method public final a(Lio/appmetrica/analytics/impl/a6;Landroid/os/Bundle;)V
    .locals 3

    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/a6;->m()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/appmetrica/analytics/impl/Vg;->c:Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;

    new-instance v1, Lio/appmetrica/analytics/impl/sh;

    iget-object v2, p0, Lio/appmetrica/analytics/impl/Vg;->a:Landroid/content/Context;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Vg;->b:Lio/appmetrica/analytics/impl/o4;

    invoke-direct {v1, v2, p1, p2, p0}, Lio/appmetrica/analytics/impl/sh;-><init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/a6;Landroid/os/Bundle;Lio/appmetrica/analytics/impl/o4;)V

    invoke-interface {v0, v1}, Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public final a(Lio/appmetrica/analytics/impl/d4;Lio/appmetrica/analytics/impl/a6;Lio/appmetrica/analytics/impl/B4;)V
    .locals 1

    .line 21
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Vg;->b:Lio/appmetrica/analytics/impl/o4;

    invoke-virtual {v0, p1, p3}, Lio/appmetrica/analytics/impl/o4;->a(Lio/appmetrica/analytics/impl/d4;Lio/appmetrica/analytics/impl/B4;)Lio/appmetrica/analytics/impl/t4;

    move-result-object v0

    .line 22
    invoke-interface {v0, p2, p3}, Lio/appmetrica/analytics/impl/t4;->a(Lio/appmetrica/analytics/impl/a6;Lio/appmetrica/analytics/impl/B4;)V

    .line 23
    iget-object p0, p0, Lio/appmetrica/analytics/impl/Vg;->b:Lio/appmetrica/analytics/impl/o4;

    .line 24
    iget-object p2, p1, Lio/appmetrica/analytics/impl/d4;->b:Ljava/lang/String;

    .line 25
    iget-object p3, p1, Lio/appmetrica/analytics/impl/d4;->c:Ljava/lang/Integer;

    .line 26
    iget-object p1, p1, Lio/appmetrica/analytics/impl/d4;->d:Ljava/lang/String;

    .line 27
    invoke-virtual {p0, p2, p3, p1}, Lio/appmetrica/analytics/impl/o4;->a(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V

    return-void
.end method
