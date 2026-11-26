.class public final synthetic Lmu;
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

    iput p1, p0, Lmu;->b:I

    iput-object p2, p0, Lmu;->c:Ljava/lang/Object;

    iput-object p3, p0, Lmu;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lmu;->b:I

    iget-object v1, p0, Lmu;->d:Ljava/lang/Object;

    iget-object p0, p0, Lmu;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lyads/wn;

    check-cast v1, Lyads/m4;

    invoke-static {p0, v1}, Lyads/wn;->a(Lyads/wn;Lyads/m4;)V

    return-void

    :pswitch_0
    check-cast p0, Landroidx/camera/core/imagecapture/ProcessingRequest;

    check-cast v1, Landroidx/camera/core/ImageProxy;

    invoke-static {p0, v1}, Landroidx/camera/core/imagecapture/ProcessingNode;->d(Landroidx/camera/core/imagecapture/ProcessingRequest;Landroidx/camera/core/ImageProxy;)V

    return-void

    :pswitch_1
    check-cast p0, Landroidx/camera/camera2/pipe/Request$Listener;

    check-cast v1, Landroidx/camera/camera2/pipe/RequestMetadata;

    invoke-static {p0, v1}, Landroidx/camera/camera2/impl/ComboRequestListener;->k(Landroidx/camera/camera2/pipe/Request$Listener;Landroidx/camera/camera2/pipe/RequestMetadata;)V

    return-void

    :pswitch_2
    check-cast p0, Landroidx/camera/video/internal/audio/AudioSource;

    check-cast v1, Landroidx/camera/video/internal/BufferProvider;

    invoke-static {p0, v1}, Landroidx/camera/video/internal/audio/AudioSource;->d(Landroidx/camera/video/internal/audio/AudioSource;Landroidx/camera/video/internal/BufferProvider;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
