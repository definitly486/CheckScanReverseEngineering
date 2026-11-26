.class public final synthetic Lo21;
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

    iput p4, p0, Lo21;->b:I

    iput-object p1, p0, Lo21;->d:Ljava/lang/Object;

    iput-object p2, p0, Lo21;->c:Ljava/lang/Object;

    iput-object p3, p0, Lo21;->e:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Lo21;->b:I

    iget-object v1, p0, Lo21;->e:Ljava/lang/Object;

    iget-object v2, p0, Lo21;->c:Ljava/lang/Object;

    iget-object p0, p0, Lo21;->d:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Landroidx/work/impl/Processor;

    check-cast v2, Lcom/google/common/util/concurrent/ListenableFuture;

    check-cast v1, Landroidx/work/impl/WorkerWrapper;

    invoke-static {p0, v2, v1}, Landroidx/work/impl/Processor;->c(Landroidx/work/impl/Processor;Lcom/google/common/util/concurrent/ListenableFuture;Landroidx/work/impl/WorkerWrapper;)V

    return-void

    :pswitch_0
    check-cast p0, Lcom/google/firebase/perf/session/gauges/GaugeManager;

    check-cast v2, Ljava/lang/String;

    check-cast v1, Lcom/google/firebase/perf/v1/ApplicationProcessState;

    invoke-static {p0, v2, v1}, Lcom/google/firebase/perf/session/gauges/GaugeManager;->d(Lcom/google/firebase/perf/session/gauges/GaugeManager;Ljava/lang/String;Lcom/google/firebase/perf/v1/ApplicationProcessState;)V

    return-void

    :pswitch_1
    check-cast p0, Lcom/my/tracker/campaign/CampaignService;

    check-cast v2, Ljava/lang/String;

    check-cast v1, Led0;

    invoke-static {p0, v2, v1}, Lcom/my/tracker/campaign/CampaignService;->a(Lcom/my/tracker/campaign/CampaignService;Ljava/lang/String;Led0;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
