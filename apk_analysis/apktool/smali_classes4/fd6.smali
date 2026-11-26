.class public final synthetic Lfd6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    iput p4, p0, Lfd6;->b:I

    iput-object p1, p0, Lfd6;->c:Ljava/lang/Object;

    iput-object p2, p0, Lfd6;->d:Ljava/lang/Object;

    iput-object p3, p0, Lfd6;->e:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Lfd6;->b:I

    iget-object v1, p0, Lfd6;->e:Ljava/lang/Object;

    iget-object v2, p0, Lfd6;->d:Ljava/lang/Object;

    iget-object p0, p0, Lfd6;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/google/firebase/perf/transport/TransportManager;

    check-cast v2, Lcom/google/firebase/perf/v1/TraceMetric;

    check-cast v1, Lcom/google/firebase/perf/v1/ApplicationProcessState;

    invoke-static {p0, v2, v1}, Lcom/google/firebase/perf/transport/TransportManager;->c(Lcom/google/firebase/perf/transport/TransportManager;Lcom/google/firebase/perf/v1/TraceMetric;Lcom/google/firebase/perf/v1/ApplicationProcessState;)V

    return-void

    :pswitch_0
    check-cast p0, Landroid/view/View;

    check-cast v2, Lxe9;

    check-cast v1, Lod6;

    invoke-static {p0}, Ltl;->b(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p0

    if-eqz p0, :cond_0

    iget-object v0, v2, Lxe9;->a:Lpn5;

    invoke-virtual {p0, v0}, Landroid/view/ViewTreeObserver;->removeOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    iget-object v0, v1, Lod6;->c:Lta6;

    iget-object v0, v0, Lnb6;->v:Lic6;

    const-string v1, "Removing the viewTreeObserver failed: "

    const/16 v2, 0x2e

    invoke-static {v1, p0, v2, v0}, Lsg;->f(Ljava/lang/String;Ljava/lang/Throwable;CLic6;)V

    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
