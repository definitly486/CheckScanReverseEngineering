.class public final Lyads/rh;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Lyads/do6;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lyads/do6;Le02;)V
    .locals 0

    iput-object p1, p0, Lyads/rh;->b:Landroid/content/Context;

    iput-object p2, p0, Lyads/rh;->c:Lyads/do6;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lpg8;-><init>(ILe02;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Le02;)Le02;
    .locals 1

    new-instance p1, Lyads/rh;

    iget-object v0, p0, Lyads/rh;->b:Landroid/content/Context;

    iget-object p0, p0, Lyads/rh;->c:Lyads/do6;

    invoke-direct {p1, v0, p0, p2}, Lyads/rh;-><init>(Landroid/content/Context;Lyads/do6;Le02;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ly22;

    check-cast p2, Le02;

    new-instance p1, Lyads/rh;

    iget-object v0, p0, Lyads/rh;->b:Landroid/content/Context;

    iget-object p0, p0, Lyads/rh;->c:Lyads/do6;

    invoke-direct {p1, v0, p0, p2}, Lyads/rh;-><init>(Landroid/content/Context;Lyads/do6;Le02;)V

    sget-object p0, Lj59;->a:Lj59;

    invoke-virtual {p1, p0}, Lyads/rh;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lyads/rh;->b:Landroid/content/Context;

    iget-object v0, p0, Lyads/rh;->c:Lyads/do6;

    invoke-virtual {v0}, Lyads/do6;->a()Lyads/q84;

    move-result-object v0

    invoke-static {p1, v0}, Lyads/g46;->a(Landroid/content/Context;Lyads/q84;)V

    iget-object p1, p0, Lyads/rh;->b:Landroid/content/Context;

    iget-object v0, p0, Lyads/rh;->c:Lyads/do6;

    invoke-virtual {v0}, Lyads/do6;->a()Lyads/q84;

    move-result-object v0

    invoke-static {p1, v0}, Lyads/nf;->a(Landroid/content/Context;Lyads/q84;)V

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1e

    if-lt p1, v0, :cond_0

    sget-object p1, Lyads/zh;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object p1, p0, Lyads/rh;->b:Landroid/content/Context;

    iget-object v0, p0, Lyads/rh;->c:Lyads/do6;

    invoke-virtual {v0}, Lyads/do6;->a()Lyads/q84;

    move-result-object v0

    invoke-static {p1, v0}, Lyads/zh;->a(Landroid/content/Context;Lyads/q84;)V

    :cond_0
    new-instance p1, Lyads/gw3;

    invoke-direct {p1}, Lyads/gw3;-><init>()V

    iget-object v0, p0, Lyads/rh;->b:Landroid/content/Context;

    invoke-static {v0}, Lyads/gw3;->a(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Lyads/ha4;->b(Z)V

    :cond_1
    iget-object v0, p0, Lyads/rh;->b:Landroid/content/Context;

    invoke-static {v0}, Lyads/gw3;->b(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Lyads/ha4;->a(Z)V

    :cond_2
    iget-object v0, p0, Lyads/rh;->b:Landroid/content/Context;

    invoke-static {v0}, Lyads/za;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lyads/rh;->b:Landroid/content/Context;

    invoke-static {v0}, Lyads/q94;->a(Landroid/content/Context;)Lyads/p94;

    move-result-object v0

    instance-of v1, v0, Lyads/o94;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    new-instance v1, Lyads/kn3;

    invoke-direct {v1}, Lyads/kn3;-><init>()V

    check-cast v0, Lyads/o94;

    invoke-virtual {v1, v0}, Lyads/kn3;->a(Lyads/o94;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lyads/jn3;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    instance-of v0, v0, Lyads/n94;

    if-eqz v0, :cond_4

    const-string v0, "Yandex Mobile Ads 8.2.0 integrated successfully"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lyads/jn3;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    :goto_0
    new-instance v0, Lyads/n64;

    invoke-direct {v0}, Lyads/n64;-><init>()V

    invoke-static {}, Lyads/u54;->a()Ljava/util/List;

    move-result-object v1

    new-instance v2, Lyads/z64;

    invoke-direct {v2}, Lyads/z64;-><init>()V

    invoke-virtual {v2, v1}, Lyads/z64;->a(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v1

    new-instance v2, Lyads/e74;

    invoke-direct {v2, v0}, Lyads/e74;-><init>(Lyads/n64;)V

    invoke-virtual {v2, v1}, Lyads/e74;->a(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lyads/b74;->a(Ljava/util/ArrayList;)V

    :cond_5
    new-instance v0, Lyads/ah5;

    iget-object v1, p0, Lyads/rh;->c:Lyads/do6;

    invoke-direct {v0, p1, v1}, Lyads/ah5;-><init>(Lyads/gw3;Lyads/do6;)V

    iget-object p1, p0, Lyads/rh;->b:Landroid/content/Context;

    invoke-static {p1}, Lyads/s1;->a(Landroid/content/Context;)V

    iget-object p0, p0, Lyads/rh;->b:Landroid/content/Context;

    invoke-virtual {v0, p0}, Lyads/ah5;->a(Landroid/content/Context;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
