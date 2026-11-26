.class public final synthetic Lfu0;
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

    iput p2, p0, Lfu0;->b:I

    iput-object p1, p0, Lfu0;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lfu0;->b:I

    iget-object p0, p0, Lfu0;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lf18$a;

    invoke-virtual {p0}, Lf18$a;->invoke()Ljava/lang/Object;

    return-void

    :pswitch_0
    check-cast p0, Lcom/google/android/material/button/MaterialButton;

    invoke-static {p0}, Lcom/google/android/material/button/MaterialButton;->b(Lcom/google/android/material/button/MaterialButton;)V

    return-void

    :pswitch_1
    check-cast p0, Landroidx/camera/video/internal/audio/BufferedAudioStream;

    invoke-static {p0}, Landroidx/camera/video/internal/audio/BufferedAudioStream;->b(Landroidx/camera/video/internal/audio/BufferedAudioStream;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
