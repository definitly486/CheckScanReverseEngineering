.class public final Lyads/n25;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/t03;


# instance fields
.field public final a:Landroid/os/Handler;

.field public final b:Lyads/v5;

.field public final c:Lyads/lh;

.field public d:Lyads/p70;

.field public e:Lyads/ch;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lyads/e4;Lyads/bf5;Lyads/t5;Lyads/u03;)V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lyads/v5;

    invoke-direct {v1, p1, p2, p4, p3}, Lyads/v5;-><init>(Landroid/content/Context;Lyads/e4;Lyads/t5;Lyads/bf5;)V

    new-instance p2, Lyads/lh;

    invoke-direct {p2, p1, p5}, Lyads/lh;-><init>(Landroid/content/Context;Lyads/u03;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lyads/n25;->a:Landroid/os/Handler;

    iput-object v1, p0, Lyads/n25;->b:Lyads/v5;

    iput-object p2, p0, Lyads/n25;->c:Lyads/lh;

    return-void
.end method

.method public static final a(Lyads/n25;Lyads/kh;)V
    .locals 1

    .line 51
    iget-object v0, p0, Lyads/n25;->d:Lyads/p70;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lyads/p70;->a(Lyads/kh;)V

    .line 52
    :cond_0
    iget-object p0, p0, Lyads/n25;->e:Lyads/ch;

    if-eqz p0, :cond_1

    .line 53
    iget-object p1, p0, Lyads/ch;->a:Lyads/p5;

    iget-object p0, p0, Lyads/ch;->b:Lyads/dh;

    invoke-interface {p1, p0}, Lyads/p5;->a(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public static final a(Lyads/n25;Lyads/m4;)V
    .locals 1

    .line 47
    iget-object v0, p0, Lyads/n25;->d:Lyads/p70;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lyads/p70;->onAdFailedToLoad(Lyads/m4;)V

    .line 48
    :cond_0
    iget-object p0, p0, Lyads/n25;->e:Lyads/ch;

    if-eqz p0, :cond_1

    .line 49
    iget-object p1, p0, Lyads/ch;->a:Lyads/p5;

    iget-object p0, p0, Lyads/ch;->b:Lyads/dh;

    invoke-interface {p1, p0}, Lyads/p5;->a(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 50
    check-cast p1, Lyads/ah;

    invoke-virtual {p0, p1}, Lyads/n25;->a(Lyads/ah;)V

    return-void
.end method

.method public final a(Lyads/ah;)V
    .locals 4

    iget-object v0, p0, Lyads/n25;->b:Lyads/v5;

    invoke-virtual {v0}, Lyads/v5;->a()V

    iget-object v0, p0, Lyads/n25;->c:Lyads/lh;

    new-instance v1, Lyads/kh;

    iget-object v2, v0, Lyads/lh;->b:Landroid/content/Context;

    iget-object v0, v0, Lyads/lh;->a:Lyads/u03;

    new-instance v3, Lyads/o25;

    invoke-direct {v3, v0}, Lyads/o25;-><init>(Lyads/u03;)V

    new-instance v0, Lyads/fw3;

    invoke-direct {v0, v2}, Lyads/fw3;-><init>(Landroid/content/Context;)V

    sget-object v2, Lyads/ee5;->a:Lyads/ng3;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lyads/ng3;->a()Lyads/aw3;

    move-result-object v2

    invoke-direct {v1, p1, v3, v0, v2}, Lyads/kh;-><init>(Lyads/ah;Lyads/o25;Lyads/fw3;Lyads/aw3;)V

    iget-object p1, p0, Lyads/n25;->a:Landroid/os/Handler;

    new-instance v0, Ldo2;

    const/4 v2, 0x3

    invoke-direct {v0, v2, p0, v1}, Ldo2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onAdFailedToLoad(Lyads/m4;)V
    .locals 3

    iget-object v0, p1, Lyads/m4;->b:Ljava/lang/String;

    iget-object v1, p0, Lyads/n25;->b:Lyads/v5;

    iget-object v2, p1, Lyads/m4;->c:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lyads/v5;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lyads/n25;->a:Landroid/os/Handler;

    new-instance v1, La2;

    const/4 v2, 0x3

    invoke-direct {v1, v2, p0, p1}, La2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
