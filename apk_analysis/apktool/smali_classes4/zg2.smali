.class public final synthetic Lzg2;
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

    iput p2, p0, Lzg2;->b:I

    iput-object p1, p0, Lzg2;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Lzg2;->b:I

    iget-object p0, p0, Lzg2;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/my/target/z2;

    iget-object v0, p0, Lcom/my/target/z2;->b:Lcom/my/target/b2;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lcom/my/target/b2;->a(J)V

    invoke-virtual {p0}, Lcom/my/target/z2;->c()V

    invoke-virtual {p0}, Lcom/my/target/z2;->b()V

    return-void

    :pswitch_0
    check-cast p0, Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->collapseActionView()V

    return-void

    :pswitch_1
    check-cast p0, Landroidx/camera/core/impl/LiveDataObservable;

    invoke-static {p0}, Landroidx/camera/core/impl/LiveDataObservable;->d(Landroidx/camera/core/impl/LiveDataObservable;)V

    return-void

    :pswitch_2
    check-cast p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;

    invoke-static {p0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->b(Landroidx/media3/exoplayer/audio/DefaultAudioSink;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
