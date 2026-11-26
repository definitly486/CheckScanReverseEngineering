.class public final Lyads/r25;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/t03;


# instance fields
.field public final a:Lyads/ka5;

.field public final b:Landroid/os/Handler;

.field public final c:Lyads/v5;

.field public d:Ljava/lang/String;

.field public e:Lyads/w80;

.field public f:Lyads/da5;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lyads/e4;Lyads/bf5;Lyads/t5;Lyads/ka5;)V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lyads/v5;

    invoke-direct {v1, p1, p2, p4, p3}, Lyads/v5;-><init>(Landroid/content/Context;Lyads/e4;Lyads/t5;Lyads/bf5;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p5, p0, Lyads/r25;->a:Lyads/ka5;

    iput-object v0, p0, Lyads/r25;->b:Landroid/os/Handler;

    iput-object v1, p0, Lyads/r25;->c:Lyads/v5;

    return-void
.end method

.method public static final a(Lyads/m4;Lyads/r25;)V
    .locals 4

    .line 46
    new-instance v0, Lyads/m4;

    .line 47
    iget v1, p0, Lyads/m4;->a:I

    .line 48
    iget-object v2, p0, Lyads/m4;->b:Ljava/lang/String;

    .line 49
    iget-object p0, p0, Lyads/m4;->c:Ljava/lang/String;

    .line 50
    iget-object v3, p1, Lyads/r25;->d:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p0, v3}, Lyads/m4;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    iget-object p0, p1, Lyads/r25;->e:Lyads/w80;

    if-eqz p0, :cond_0

    invoke-interface {p0, v0}, Lyads/w80;->onAdFailedToLoad(Lyads/m4;)V

    .line 52
    :cond_0
    iget-object p0, p1, Lyads/r25;->f:Lyads/da5;

    if-eqz p0, :cond_1

    .line 53
    iget-object p1, p0, Lyads/da5;->a:Lyads/p5;

    iget-object p0, p0, Lyads/da5;->b:Lyads/ea5;

    invoke-interface {p1, p0}, Lyads/p5;->a(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public static final a(Lyads/r25;Lyads/ja5;)V
    .locals 1

    .line 43
    iget-object v0, p0, Lyads/r25;->e:Lyads/w80;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lyads/w80;->a(Lyads/ja5;)V

    .line 44
    :cond_0
    iget-object p0, p0, Lyads/r25;->f:Lyads/da5;

    if-eqz p0, :cond_1

    .line 45
    iget-object p1, p0, Lyads/da5;->a:Lyads/p5;

    iget-object p0, p0, Lyads/da5;->b:Lyads/ea5;

    invoke-interface {p1, p0}, Lyads/p5;->a(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 42
    check-cast p1, Lyads/ba5;

    invoke-virtual {p0, p1}, Lyads/r25;->a(Lyads/ba5;)V

    return-void
.end method

.method public final a(Lyads/ba5;)V
    .locals 4

    iget-object v0, p0, Lyads/r25;->c:Lyads/v5;

    invoke-virtual {v0}, Lyads/v5;->a()V

    iget-object v0, p0, Lyads/r25;->a:Lyads/ka5;

    new-instance v1, Lyads/ja5;

    iget-object v2, v0, Lyads/ka5;->b:Landroid/content/Context;

    iget-object v0, v0, Lyads/ka5;->a:Lyads/s25;

    new-instance v3, Lyads/fw3;

    invoke-direct {v3, v2}, Lyads/fw3;-><init>(Landroid/content/Context;)V

    sget-object v2, Lyads/ee5;->a:Lyads/ng3;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lyads/ng3;->a()Lyads/aw3;

    move-result-object v2

    invoke-direct {v1, p1, v0, v3, v2}, Lyads/ja5;-><init>(Lyads/ba5;Lyads/s25;Lyads/fw3;Lyads/aw3;)V

    iget-object p1, p0, Lyads/r25;->b:Landroid/os/Handler;

    new-instance v0, Lh00;

    const/4 v2, 0x3

    invoke-direct {v0, v2, p0, v1}, Lh00;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onAdFailedToLoad(Lyads/m4;)V
    .locals 3

    iget-object v0, p1, Lyads/m4;->b:Ljava/lang/String;

    iget-object v1, p0, Lyads/r25;->c:Lyads/v5;

    iget-object v2, p1, Lyads/m4;->c:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lyads/v5;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lyads/r25;->b:Landroid/os/Handler;

    new-instance v1, Ldu;

    const/4 v2, 0x4

    invoke-direct {v1, v2, p1, p0}, Ldu;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
