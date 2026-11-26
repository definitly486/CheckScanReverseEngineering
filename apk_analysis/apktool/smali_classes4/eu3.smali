.class public final synthetic Leu3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, Leu3;->b:I

    iput-object p2, p0, Leu3;->c:Ljava/lang/Object;

    iput-object p3, p0, Leu3;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Leu3;->b:I

    iget-object v1, p0, Leu3;->d:Ljava/lang/Object;

    iget-object p0, p0, Leu3;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/my/tracker/obfuscated/r0;

    check-cast v1, Ljava/util/List;

    invoke-static {p0, v1}, Lcom/my/tracker/obfuscated/r0;->b(Lcom/my/tracker/obfuscated/r0;Ljava/util/List;)V

    return-void

    :pswitch_0
    check-cast p0, Landroidx/window/area/WindowAreaControllerImpl$RearDisplaySessionConsumer;

    check-cast v1, Landroidx/window/area/RearDisplaySessionImpl;

    invoke-static {p0, v1}, Landroidx/window/area/WindowAreaControllerImpl$RearDisplaySessionConsumer;->a(Landroidx/window/area/WindowAreaControllerImpl$RearDisplaySessionConsumer;Landroidx/window/area/RearDisplaySessionImpl;)V

    return-void

    :pswitch_1
    check-cast p0, Lcom/tapjoy/TJCorePlacement;

    check-cast v1, Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/tapjoy/TJCorePlacement;->a(Landroid/content/Intent;)V

    return-void

    :pswitch_2
    check-cast p0, Lcom/google/firebase/perf/session/gauges/MemoryGaugeCollector;

    check-cast v1, Lcom/google/firebase/perf/util/Timer;

    invoke-static {p0, v1}, Lcom/google/firebase/perf/session/gauges/MemoryGaugeCollector;->a(Lcom/google/firebase/perf/session/gauges/MemoryGaugeCollector;Lcom/google/firebase/perf/util/Timer;)V

    return-void

    :pswitch_3
    check-cast p0, Lc31;

    check-cast v1, Lgu3;

    sget-object v0, Lj59;->a:Lj59;

    invoke-virtual {p0, v1, v0}, Lc31;->D(Lr22;Ljava/lang/Object;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
