.class public final synthetic Lz1;
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

    iput p1, p0, Lz1;->b:I

    iput-object p2, p0, Lz1;->c:Ljava/lang/Object;

    iput-object p3, p0, Lz1;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lz1;->b:I

    iget-object v1, p0, Lz1;->d:Ljava/lang/Object;

    iget-object p0, p0, Lz1;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Leha;

    check-cast v1, Landroid/content/Context;

    invoke-virtual {p0, v1}, Leha;->V(Landroid/content/Context;)V

    return-void

    :pswitch_0
    check-cast p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;

    check-cast v1, Landroid/media/metrics/NetworkEvent;

    invoke-static {p0, v1}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->c(Landroidx/media3/exoplayer/analytics/MediaMetricsListener;Landroid/media/metrics/NetworkEvent;)V

    return-void

    :pswitch_1
    check-cast p0, Lcom/google/firebase/inappmessaging/internal/AbtIntegrationHelper;

    check-cast v1, Ljava/util/ArrayList;

    invoke-static {p0, v1}, Lcom/google/firebase/inappmessaging/internal/AbtIntegrationHelper;->a(Lcom/google/firebase/inappmessaging/internal/AbtIntegrationHelper;Ljava/util/ArrayList;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
