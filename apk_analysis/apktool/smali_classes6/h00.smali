.class public final synthetic Lh00;
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

    iput p1, p0, Lh00;->b:I

    iput-object p2, p0, Lh00;->c:Ljava/lang/Object;

    iput-object p3, p0, Lh00;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    iget v0, p0, Lh00;->b:I

    iget-object v1, p0, Lh00;->d:Ljava/lang/Object;

    iget-object p0, p0, Lh00;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/my/target/z2;

    check-cast v1, Lgga;

    iget-object v0, v1, Lgga;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/my/target/z2;->c:Lln9;

    invoke-static {v0, v2}, Lcom/my/target/d1;->b(Ljava/lang/String;Lln9;)Lcom/my/target/d1$a;

    move-result-object v6

    iget-boolean v0, v1, Lgga;->e:Z

    if-eqz v0, :cond_0

    iget-object v3, v1, Lgga;->b:Ljava/lang/String;

    iget-object v4, v1, Lgga;->c:Ljava/lang/String;

    iget-object v5, v1, Lgga;->d:Li7a;

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lcom/my/target/a3;->b(Ljava/lang/String;Ljava/lang/String;Li7a;Lcom/my/target/d1$a;ZI)V

    :cond_0
    new-instance v0, Ll0a;

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v6, v2}, Ll0a;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    iget-object p0, p0, Lcom/my/target/z2;->e:Landroid/os/Handler;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :pswitch_0
    check-cast p0, Lyads/r25;

    check-cast v1, Lyads/ja5;

    invoke-static {p0, v1}, Lyads/r25;->a(Lyads/r25;Lyads/ja5;)V

    return-void

    :pswitch_1
    check-cast p0, Landroidx/camera/core/impl/LiveDataObservable;

    check-cast v1, Landroidx/camera/core/impl/Observable$Observer;

    invoke-static {p0, v1}, Landroidx/camera/core/impl/LiveDataObservable;->f(Landroidx/camera/core/impl/LiveDataObservable;Landroidx/camera/core/impl/Observable$Observer;)V

    return-void

    :pswitch_2
    check-cast p0, Landroidx/camera/core/SafeCloseImageReaderProxy;

    check-cast v1, Landroidx/camera/core/SafeCloseImageReaderProxy;

    invoke-static {p0, v1}, Landroidx/camera/core/ImageAnalysis;->a(Landroidx/camera/core/SafeCloseImageReaderProxy;Landroidx/camera/core/SafeCloseImageReaderProxy;)V

    return-void

    :pswitch_3
    check-cast p0, Landroidx/media3/common/util/BackgroundThreadStateHandler;

    invoke-static {p0, v1}, Landroidx/media3/common/util/BackgroundThreadStateHandler;->b(Landroidx/media3/common/util/BackgroundThreadStateHandler;Ljava/lang/Object;)V

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
