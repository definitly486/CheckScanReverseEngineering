.class public final Lyads/nf4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/p1;


# instance fields
.field public final a:Landroid/os/Handler;

.field public b:Lyads/h80;


# direct methods
.method public constructor <init>()V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lyads/nf4;->a:Landroid/os/Handler;

    return-void
.end method

.method public static final a(Lyads/nf4;)V
    .locals 0

    .line 18
    iget-object p0, p0, Lyads/nf4;->b:Lyads/h80;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lyads/h80;->a()V

    :cond_0
    return-void
.end method

.method public static final a(Lyads/nf4;Lyads/j5;)V
    .locals 0

    .line 16
    iget-object p0, p0, Lyads/nf4;->b:Lyads/h80;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lyads/h80;->onImpression(Lyads/j5;)V

    :cond_0
    return-void
.end method

.method public static final a(Lyads/nf4;Lyads/me4;)V
    .locals 1

    iget-object p0, p0, Lyads/nf4;->b:Lyads/h80;

    instance-of v0, p0, Lyads/g80;

    if-eqz v0, :cond_0

    check-cast p0, Lyads/g80;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    invoke-interface {p0, p1}, Lyads/g80;->a(Lyads/me4;)V

    :cond_1
    return-void
.end method

.method public static final b(Lyads/nf4;)V
    .locals 1

    iget-object v0, p0, Lyads/nf4;->b:Lyads/h80;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lyads/h80;->onAdClicked()V

    :cond_0
    iget-object p0, p0, Lyads/nf4;->b:Lyads/h80;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lyads/h80;->onLeftApplication()V

    :cond_1
    return-void
.end method

.method public static final c(Lyads/nf4;)V
    .locals 0

    iget-object p0, p0, Lyads/nf4;->b:Lyads/h80;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lyads/h80;->onReturnedToApplication()V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 17
    iget-object v0, p0, Lyads/nf4;->a:Landroid/os/Handler;

    new-instance v1, Lsr4;

    const/4 v2, 0x5

    invoke-direct {v1, p0, v2}, Lsr4;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final a(Lyads/j5;)V
    .locals 3

    .line 20
    iget-object v0, p0, Lyads/nf4;->a:Landroid/os/Handler;

    new-instance v1, Lnb3;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p0, p1}, Lnb3;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final a(Lyads/me4;)V
    .locals 3

    .line 19
    iget-object v0, p0, Lyads/nf4;->a:Landroid/os/Handler;

    new-instance v1, Lzx2;

    const/4 v2, 0x2

    invoke-direct {v1, v2, p0, p1}, Lzx2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final b()V
    .locals 3

    .line 15
    iget-object v0, p0, Lyads/nf4;->a:Landroid/os/Handler;

    new-instance v1, Lsk7;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lsk7;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onReturnedToApplication()V
    .locals 3

    iget-object v0, p0, Lyads/nf4;->a:Landroid/os/Handler;

    new-instance v1, Lut2;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lut2;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
