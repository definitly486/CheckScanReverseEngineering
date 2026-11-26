.class public final synthetic Ldy2;
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

    iput p2, p0, Ldy2;->b:I

    iput-object p1, p0, Ldy2;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Ldy2;->b:I

    iget-object p0, p0, Ldy2;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/my/target/z2;

    invoke-static {}, Landroid/os/Looper;->prepare()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/my/target/z2;->e:Landroid/os/Handler;

    new-instance v1, Ld9a;

    const v2, 0x493e0

    invoke-direct {v1, v2, v0}, Ld9a;-><init>(ILandroid/os/Handler;)V

    new-instance v0, Lzg2;

    const/4 v2, 0x3

    invoke-direct {v0, p0, v2}, Lzg2;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v1, v0}, Ld9a;->b(Ljava/lang/Runnable;)V

    new-instance v0, Lzg2;

    invoke-direct {v0, p0, v2}, Lzg2;-><init>(Ljava/lang/Object;I)V

    iget-object p0, p0, Lcom/my/target/z2;->e:Landroid/os/Handler;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void

    :pswitch_0
    check-cast p0, Lcom/my/tracker/obfuscated/t0;

    invoke-static {p0}, Lcom/my/tracker/obfuscated/t0;->d(Lcom/my/tracker/obfuscated/t0;)V

    return-void

    :pswitch_1
    check-cast p0, Landroidx/camera/video/internal/encoder/EncoderImpl;

    invoke-static {p0}, Landroidx/camera/video/internal/encoder/EncoderImpl;->i(Landroidx/camera/video/internal/encoder/EncoderImpl;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
