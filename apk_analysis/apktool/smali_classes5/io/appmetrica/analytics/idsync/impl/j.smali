.class public final Lio/appmetrica/analytics/idsync/impl/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/coreapi/internal/servicecomponents/ActivationBarrierCallback;


# instance fields
.field public final synthetic a:Lio/appmetrica/analytics/idsync/impl/k;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/idsync/impl/k;)V
    .locals 0

    iput-object p1, p0, Lio/appmetrica/analytics/idsync/impl/j;->a:Lio/appmetrica/analytics/idsync/impl/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onWaitFinished()V
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/idsync/impl/j;->a:Lio/appmetrica/analytics/idsync/impl/k;

    iget-object p0, p0, Lio/appmetrica/analytics/idsync/impl/k;->g:Lio/appmetrica/analytics/idsync/impl/i;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lio/appmetrica/analytics/coreutils/internal/executors/SafeRunnable;->run()V

    return-void

    :cond_0
    const-string p0, "syncRunnable"

    invoke-static {p0}, Laa4;->j(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method
