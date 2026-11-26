.class public final synthetic Lut2;
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

    iput p2, p0, Lut2;->b:I

    iput-object p1, p0, Lut2;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lut2;->b:I

    iget-object p0, p0, Lut2;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lyads/nf4;

    invoke-static {p0}, Lyads/nf4;->c(Lyads/nf4;)V

    return-void

    :pswitch_0
    check-cast p0, Landroidx/camera/video/internal/encoder/EncoderImpl;

    invoke-static {p0}, Landroidx/camera/video/internal/encoder/EncoderImpl;->a(Landroidx/camera/video/internal/encoder/EncoderImpl;)V

    return-void

    :pswitch_1
    check-cast p0, Landroidx/camera/core/processing/concurrent/DualSurfaceProcessorNode;

    invoke-static {p0}, Landroidx/camera/core/processing/concurrent/DualSurfaceProcessorNode;->a(Landroidx/camera/core/processing/concurrent/DualSurfaceProcessorNode;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
