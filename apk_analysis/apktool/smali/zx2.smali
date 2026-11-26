.class public final synthetic Lzx2;
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

    iput p1, p0, Lzx2;->b:I

    iput-object p2, p0, Lzx2;->c:Ljava/lang/Object;

    iput-object p3, p0, Lzx2;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lzx2;->b:I

    iget-object v1, p0, Lzx2;->d:Ljava/lang/Object;

    iget-object p0, p0, Lzx2;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lyads/nf4;

    check-cast v1, Lyads/me4;

    invoke-static {p0, v1}, Lyads/nf4;->a(Lyads/nf4;Lyads/me4;)V

    return-void

    :pswitch_0
    check-cast p0, Landroidx/camera/core/Preview$SurfaceProvider;

    check-cast v1, Landroidx/camera/core/SurfaceRequest;

    invoke-static {p0, v1}, Landroidx/camera/core/Preview;->c(Landroidx/camera/core/Preview$SurfaceProvider;Landroidx/camera/core/SurfaceRequest;)V

    return-void

    :pswitch_1
    check-cast p0, Landroidx/camera/video/internal/encoder/EncoderImpl;

    check-cast v1, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    invoke-static {p0, v1}, Landroidx/camera/video/internal/encoder/EncoderImpl;->m(Landroidx/camera/video/internal/encoder/EncoderImpl;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
