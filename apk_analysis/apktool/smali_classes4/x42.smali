.class public final synthetic Lx42;
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

    iput p1, p0, Lx42;->b:I

    iput-object p2, p0, Lx42;->c:Ljava/lang/Object;

    iput-object p3, p0, Lx42;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Lx42;->b:I

    iget-object v1, p0, Lx42;->d:Ljava/lang/Object;

    iget-object p0, p0, Lx42;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lqd6;

    check-cast v1, Lod6;

    :try_start_0
    invoke-virtual {p0}, Lqd6;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    iget-object v0, v1, Lod6;->c:Lta6;

    iget-object v0, v0, Lnb6;->v:Lic6;

    const-string v1, "Session Replay migrateBufferToQueue failed: "

    const/16 v2, 0x2e

    invoke-static {v1, p0, v2, v0}, Lsg;->f(Ljava/lang/String;Ljava/lang/Throwable;CLic6;)V

    :goto_0
    return-void

    :pswitch_0
    check-cast p0, Lcom/google/android/material/button/MaterialButton;

    check-cast v1, Landroid/graphics/drawable/Drawable;

    invoke-static {p0, v1}, Lcom/google/android/material/button/MaterialButton;->c(Lcom/google/android/material/button/MaterialButton;Landroid/graphics/drawable/Drawable;)V

    return-void

    :pswitch_1
    check-cast p0, Lcom/google/firebase/perf/config/DeviceCacheManager;

    check-cast v1, Landroid/content/Context;

    invoke-static {p0, v1}, Lcom/google/firebase/perf/config/DeviceCacheManager;->a(Lcom/google/firebase/perf/config/DeviceCacheManager;Landroid/content/Context;)V

    return-void

    :pswitch_2
    check-cast p0, Lcom/google/firebase/perf/session/gauges/CpuGaugeCollector;

    check-cast v1, Lcom/google/firebase/perf/util/Timer;

    invoke-static {p0, v1}, Lcom/google/firebase/perf/session/gauges/CpuGaugeCollector;->a(Lcom/google/firebase/perf/session/gauges/CpuGaugeCollector;Lcom/google/firebase/perf/util/Timer;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
