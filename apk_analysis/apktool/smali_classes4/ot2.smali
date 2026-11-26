.class public final synthetic Lot2;
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

    iput p1, p0, Lot2;->b:I

    iput-object p2, p0, Lot2;->c:Ljava/lang/Object;

    iput-object p3, p0, Lot2;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lot2;->b:I

    iget-object v1, p0, Lot2;->d:Ljava/lang/Object;

    iget-object p0, p0, Lot2;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lyads/ne6;

    check-cast v1, Ljava/lang/Exception;

    invoke-virtual {p0, v1}, Lyads/ne6;->a(Ljava/lang/Exception;)V

    return-void

    :pswitch_0
    check-cast p0, Lcom/my/tracker/obfuscated/e1;

    check-cast v1, Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/my/tracker/obfuscated/e1;->a(Lcom/my/tracker/obfuscated/e1;Ljava/lang/String;)V

    return-void

    :pswitch_1
    check-cast p0, Lcom/google/firebase/perf/session/gauges/MemoryGaugeCollector;

    check-cast v1, Lcom/google/firebase/perf/util/Timer;

    invoke-static {p0, v1}, Lcom/google/firebase/perf/session/gauges/MemoryGaugeCollector;->b(Lcom/google/firebase/perf/session/gauges/MemoryGaugeCollector;Lcom/google/firebase/perf/util/Timer;)V

    return-void

    :pswitch_2
    check-cast p0, Landroidx/camera/core/processing/concurrent/DualSurfaceProcessor;

    check-cast v1, Landroidx/camera/core/SurfaceOutput;

    invoke-static {p0, v1}, Landroidx/camera/core/processing/concurrent/DualSurfaceProcessor;->f(Landroidx/camera/core/processing/concurrent/DualSurfaceProcessor;Landroidx/camera/core/SurfaceOutput;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
