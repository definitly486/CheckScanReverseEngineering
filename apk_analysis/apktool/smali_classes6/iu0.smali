.class public final synthetic Liu0;
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

    iput p2, p0, Liu0;->b:I

    iput-object p1, p0, Liu0;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Liu0;->b:I

    iget-object p0, p0, Liu0;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lyads/vq0;

    invoke-static {p0}, Lyads/vq0;->a(Lyads/vq0;)V

    return-void

    :pswitch_0
    check-cast p0, Lyads/s25;

    invoke-static {p0}, Lyads/s25;->b(Lyads/s25;)V

    return-void

    :pswitch_1
    check-cast p0, Lyads/mg3;

    invoke-static {p0}, Lyads/mg3;->a(Lyads/mg3;)V

    return-void

    :pswitch_2
    check-cast p0, Lod6;

    invoke-virtual {p0}, Lod6;->stop()V

    return-void

    :pswitch_3
    check-cast p0, Landroidx/camera/video/internal/audio/BufferedAudioStream;

    invoke-static {p0}, Landroidx/camera/video/internal/audio/BufferedAudioStream;->c(Landroidx/camera/video/internal/audio/BufferedAudioStream;)V

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
