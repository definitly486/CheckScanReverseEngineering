.class public final synthetic Lrz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lrz;->b:I

    iput-object p1, p0, Lrz;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Lrz;->b:I

    iget-object p0, p0, Lrz;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/my/target/wf;

    sget v0, Lcom/my/target/wf;->z:I

    iget-object v0, p0, Lcom/my/target/wf;->g:Lcom/my/target/ef;

    iget-object p0, p0, Lcom/my/target/wf;->k:Lcom/my/target/f6;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/view/View;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    invoke-virtual {v0, v2, v1}, Lcom/my/target/ef;->a(I[Landroid/view/View;)V

    :cond_0
    return-void

    :pswitch_0
    check-cast p0, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;

    invoke-static {p0}, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;->c(Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;)V

    return-void

    :pswitch_1
    check-cast p0, Lcom/google/android/material/motion/MaterialBackOrchestrator;

    invoke-virtual {p0}, Lcom/google/android/material/motion/MaterialBackOrchestrator;->startListeningForBackCallbacksWithPriorityOverlay()V

    return-void

    :pswitch_2
    check-cast p0, Landroidx/camera/video/internal/encoder/EncoderImpl;

    invoke-static {p0}, Landroidx/camera/video/internal/encoder/EncoderImpl;->b(Landroidx/camera/video/internal/encoder/EncoderImpl;)V

    return-void

    :pswitch_3
    check-cast p0, Lio/appmetrica/analytics/impl/B0;

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/B0;->o()V

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
