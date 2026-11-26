.class public final synthetic Lnu;
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

    iput p1, p0, Lnu;->b:I

    iput-object p2, p0, Lnu;->c:Ljava/lang/Object;

    iput-object p3, p0, Lnu;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lnu;->b:I

    iget-object v1, p0, Lnu;->d:Ljava/lang/Object;

    iget-object p0, p0, Lnu;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lyads/wn;

    check-cast v1, Lyads/j5;

    invoke-static {p0, v1}, Lyads/wn;->a(Lyads/wn;Lyads/j5;)V

    return-void

    :pswitch_0
    check-cast p0, Lyads/v15;

    check-cast v1, Lyads/sh5;

    invoke-virtual {p0, v1}, Lyads/v15;->b(Lyads/sh5;)V

    return-void

    :pswitch_1
    check-cast p0, Lll3;

    check-cast v1, Lnl3;

    invoke-static {p0, v1}, Lcom/tapjoy/internal/o;->a(Lll3;Lnl3;)V

    return-void

    :pswitch_2
    check-cast p0, Landroidx/camera/core/imagecapture/ProcessingRequest;

    check-cast v1, Landroidx/camera/core/ImageCapture$OutputFileResults;

    invoke-static {p0, v1}, Landroidx/camera/core/imagecapture/ProcessingNode;->a(Landroidx/camera/core/imagecapture/ProcessingRequest;Landroidx/camera/core/ImageCapture$OutputFileResults;)V

    return-void

    :pswitch_3
    check-cast p0, Landroidx/camera/camera2/pipe/Request$Listener;

    check-cast v1, Landroidx/camera/camera2/pipe/Request;

    invoke-static {p0, v1}, Landroidx/camera/camera2/impl/ComboRequestListener;->d(Landroidx/camera/camera2/pipe/Request$Listener;Landroidx/camera/camera2/pipe/Request;)V

    return-void

    :pswitch_4
    check-cast p0, Landroidx/camera/video/internal/audio/AudioSource$AudioSourceCallback;

    check-cast v1, Ljava/lang/Throwable;

    invoke-static {p0, v1}, Landroidx/camera/video/internal/audio/AudioSource;->c(Landroidx/camera/video/internal/audio/AudioSource$AudioSourceCallback;Ljava/lang/Throwable;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
