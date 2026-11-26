.class public final Lio/appmetrica/analytics/impl/zd;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/C0;

.field public final b:Lio/appmetrica/analytics/impl/rd;

.field public final c:Lio/appmetrica/analytics/impl/Gd;

.field public final d:Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lio/appmetrica/analytics/impl/p4;->l()Lio/appmetrica/analytics/impl/p4;

    move-result-object v0

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/p4;->d()Lio/appmetrica/analytics/impl/C0;

    move-result-object v0

    iput-object v0, p0, Lio/appmetrica/analytics/impl/zd;->a:Lio/appmetrica/analytics/impl/C0;

    new-instance v1, Lio/appmetrica/analytics/impl/rd;

    invoke-direct {v1, v0}, Lio/appmetrica/analytics/impl/rd;-><init>(Lio/appmetrica/analytics/impl/C0;)V

    iput-object v1, p0, Lio/appmetrica/analytics/impl/zd;->b:Lio/appmetrica/analytics/impl/rd;

    new-instance v0, Lio/appmetrica/analytics/impl/Gd;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/Gd;-><init>()V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/zd;->c:Lio/appmetrica/analytics/impl/Gd;

    invoke-static {}, Lio/appmetrica/analytics/impl/p4;->l()Lio/appmetrica/analytics/impl/p4;

    move-result-object v0

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/p4;->g()Lio/appmetrica/analytics/impl/f4;

    move-result-object v0

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/f4;->a()Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;

    move-result-object v0

    iput-object v0, p0, Lio/appmetrica/analytics/impl/zd;->d:Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;

    return-void
.end method

.method public static final a(Lio/appmetrica/analytics/impl/zd;)Lio/appmetrica/analytics/impl/Wa;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/zd;->a:Lio/appmetrica/analytics/impl/C0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lio/appmetrica/analytics/impl/B0;->e:Lio/appmetrica/analytics/impl/B0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/B0;->f()Lio/appmetrica/analytics/impl/Qa;

    move-result-object p0

    invoke-interface {p0}, Lio/appmetrica/analytics/impl/Qa;->i()Lio/appmetrica/analytics/impl/yc;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/yc;->a:Lio/appmetrica/analytics/impl/Wa;

    return-object p0
.end method
