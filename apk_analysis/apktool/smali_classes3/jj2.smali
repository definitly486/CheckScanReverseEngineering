.class public final synthetic Ljj2;
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

    iput p2, p0, Ljj2;->b:I

    iput-object p1, p0, Ljj2;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget v0, p0, Ljj2;->b:I

    iget-object p0, p0, Ljj2;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/my/target/b0;

    iget-wide v0, p0, Lcom/my/target/b0;->d:J

    const-wide/16 v2, 0xc8

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/my/target/b0;->d:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    invoke-virtual {p0}, Lcom/my/target/b0;->a()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/my/target/b0;->c()V

    :goto_0
    return-void

    :pswitch_0
    check-cast p0, Lcom/my/tracker/obfuscated/a;

    invoke-static {p0}, Lcom/my/tracker/obfuscated/a;->c(Lcom/my/tracker/obfuscated/a;)V

    return-void

    :pswitch_1
    check-cast p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;

    invoke-static {p0}, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->b(Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;)V

    return-void

    :pswitch_2
    check-cast p0, Ljava/io/InputStream;

    invoke-static {p0}, Lib9;->b(Ljava/io/Closeable;)V

    return-void

    :pswitch_3
    check-cast p0, Lf18$a;

    invoke-virtual {p0}, Lf18$a;->invoke()Ljava/lang/Object;

    return-void

    :pswitch_4
    check-cast p0, Landroidx/camera/core/SurfaceOutput;

    invoke-interface {p0}, Landroidx/camera/core/SurfaceOutput;->close()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
