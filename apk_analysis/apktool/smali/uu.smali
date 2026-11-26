.class public final synthetic Luu;
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

    iput p1, p0, Luu;->b:I

    iput-object p2, p0, Luu;->c:Ljava/lang/Object;

    iput-object p3, p0, Luu;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Luu;->b:I

    iget-object v1, p0, Luu;->d:Ljava/lang/Object;

    iget-object p0, p0, Luu;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lyads/q25;

    check-cast v1, Lyads/j5;

    invoke-static {p0, v1}, Lyads/q25;->a(Lyads/q25;Lyads/j5;)V

    return-void

    :pswitch_0
    check-cast p0, Lyads/nm;

    check-cast v1, Ljava/lang/Exception;

    invoke-virtual {p0, v1}, Lyads/nm;->d(Ljava/lang/Exception;)V

    return-void

    :pswitch_1
    check-cast p0, Lto1;

    check-cast v1, [Lso1;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lto1;->a:Lzl5;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0, v1}, Lzl5;->a([Lso1;)V

    sget-object v0, Lj59;->a:Lj59;

    :goto_0
    if-nez v0, :cond_1

    iget-object p0, p0, Lto1;->b:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void

    :pswitch_2
    check-cast p0, Landroidx/camera/video/internal/audio/AudioSource;

    check-cast v1, Landroidx/camera/video/internal/audio/AudioSource$AudioSourceCallback;

    invoke-static {p0, v1}, Landroidx/camera/video/internal/audio/AudioSource;->i(Landroidx/camera/video/internal/audio/AudioSource;Landroidx/camera/video/internal/audio/AudioSource$AudioSourceCallback;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
