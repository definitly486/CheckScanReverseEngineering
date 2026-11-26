.class public final Lio/appmetrica/analytics/impl/c1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lio/appmetrica/analytics/DeferredDeeplinkParametersListener;

.field public final synthetic b:Lio/appmetrica/analytics/impl/x1;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/x1;Lio/appmetrica/analytics/DeferredDeeplinkParametersListener;)V
    .locals 0

    iput-object p1, p0, Lio/appmetrica/analytics/impl/c1;->b:Lio/appmetrica/analytics/impl/x1;

    iput-object p2, p0, Lio/appmetrica/analytics/impl/c1;->a:Lio/appmetrica/analytics/DeferredDeeplinkParametersListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lio/appmetrica/analytics/impl/c1;->b:Lio/appmetrica/analytics/impl/x1;

    iget-object v0, v0, Lio/appmetrica/analytics/impl/x1;->a:Lio/appmetrica/analytics/impl/C0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lio/appmetrica/analytics/impl/B0;->e:Lio/appmetrica/analytics/impl/B0;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/c1;->a:Lio/appmetrica/analytics/DeferredDeeplinkParametersListener;

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/B0;->f()Lio/appmetrica/analytics/impl/Qa;

    move-result-object v0

    invoke-interface {v0, p0}, Lio/appmetrica/analytics/impl/Qa;->a(Lio/appmetrica/analytics/DeferredDeeplinkParametersListener;)V

    return-void
.end method
