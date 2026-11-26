.class public final Lyads/p25;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/t03;


# instance fields
.field public final a:Lyads/op3;

.field public final b:Landroid/os/Handler;

.field public final c:Lyads/v5;

.field public d:Lyads/d80;

.field public e:Lyads/hp3;

.field public f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lyads/e4;Lyads/bf5;Lyads/t5;Lyads/op3;)V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lyads/v5;

    invoke-direct {v1, p1, p2, p4, p3}, Lyads/v5;-><init>(Landroid/content/Context;Lyads/e4;Lyads/t5;Lyads/bf5;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p5, p0, Lyads/p25;->a:Lyads/op3;

    iput-object v0, p0, Lyads/p25;->b:Landroid/os/Handler;

    iput-object v1, p0, Lyads/p25;->c:Lyads/v5;

    return-void
.end method

.method public static final a(Lyads/p25;Lyads/m4;)V
    .locals 1

    .line 45
    iget-object v0, p0, Lyads/p25;->d:Lyads/d80;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lyads/d80;->onAdFailedToLoad(Lyads/m4;)V

    .line 46
    :cond_0
    iget-object p0, p0, Lyads/p25;->e:Lyads/hp3;

    if-eqz p0, :cond_1

    .line 47
    iget-object p1, p0, Lyads/hp3;->a:Lyads/p5;

    iget-object p0, p0, Lyads/hp3;->b:Lyads/ip3;

    invoke-interface {p1, p0}, Lyads/p5;->a(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public static final a(Lyads/p25;Lyads/np3;)V
    .locals 1

    .line 42
    iget-object v0, p0, Lyads/p25;->d:Lyads/d80;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lyads/d80;->a(Lyads/np3;)V

    .line 43
    :cond_0
    iget-object p0, p0, Lyads/p25;->e:Lyads/hp3;

    if-eqz p0, :cond_1

    .line 44
    iget-object p1, p0, Lyads/hp3;->a:Lyads/p5;

    iget-object p0, p0, Lyads/hp3;->b:Lyads/ip3;

    invoke-interface {p1, p0}, Lyads/p5;->a(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 41
    check-cast p1, Lyads/fp3;

    invoke-virtual {p0, p1}, Lyads/p25;->a(Lyads/fp3;)V

    return-void
.end method

.method public final a(Lyads/fp3;)V
    .locals 4

    iget-object v0, p0, Lyads/p25;->c:Lyads/v5;

    invoke-virtual {v0}, Lyads/v5;->a()V

    iget-object v0, p0, Lyads/p25;->a:Lyads/op3;

    new-instance v1, Lyads/np3;

    iget-object v2, v0, Lyads/op3;->b:Landroid/content/Context;

    iget-object v0, v0, Lyads/op3;->a:Lyads/q25;

    new-instance v3, Lyads/fw3;

    invoke-direct {v3, v2}, Lyads/fw3;-><init>(Landroid/content/Context;)V

    sget-object v2, Lyads/ee5;->a:Lyads/ng3;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lyads/ng3;->a()Lyads/aw3;

    move-result-object v2

    invoke-direct {v1, p1, v0, v3, v2}, Lyads/np3;-><init>(Lyads/fp3;Lyads/q25;Lyads/fw3;Lyads/aw3;)V

    iget-object p1, p0, Lyads/p25;->b:Landroid/os/Handler;

    new-instance v0, Ld5a;

    invoke-direct {v0, p0, v1}, Ld5a;-><init>(Lyads/p25;Lyads/np3;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onAdFailedToLoad(Lyads/m4;)V
    .locals 4

    iget-object v0, p1, Lyads/m4;->b:Ljava/lang/String;

    iget-object v1, p0, Lyads/p25;->c:Lyads/v5;

    iget-object v2, p1, Lyads/m4;->c:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lyads/v5;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lyads/m4;

    iget v1, p1, Lyads/m4;->a:I

    iget-object v2, p1, Lyads/m4;->b:Ljava/lang/String;

    iget-object p1, p1, Lyads/m4;->c:Ljava/lang/String;

    iget-object v3, p0, Lyads/p25;->f:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p1, v3}, Lyads/m4;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lyads/p25;->b:Landroid/os/Handler;

    new-instance v1, Ldy9;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p0, v0}, Ldy9;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
