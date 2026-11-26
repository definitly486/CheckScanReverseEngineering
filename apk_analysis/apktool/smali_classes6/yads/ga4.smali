.class public final Lyads/ga4;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Lyads/bf5;

.field public final synthetic c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lyads/bf5;Landroid/content/Context;Le02;)V
    .locals 0

    iput-object p1, p0, Lyads/ga4;->b:Lyads/bf5;

    iput-object p2, p0, Lyads/ga4;->c:Landroid/content/Context;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lpg8;-><init>(ILe02;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Le02;)Le02;
    .locals 1

    new-instance p1, Lyads/ga4;

    iget-object v0, p0, Lyads/ga4;->b:Lyads/bf5;

    iget-object p0, p0, Lyads/ga4;->c:Landroid/content/Context;

    invoke-direct {p1, v0, p0, p2}, Lyads/ga4;-><init>(Lyads/bf5;Landroid/content/Context;Le02;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ly22;

    check-cast p2, Le02;

    new-instance p1, Lyads/ga4;

    iget-object v0, p0, Lyads/ga4;->b:Lyads/bf5;

    iget-object p0, p0, Lyads/ga4;->c:Landroid/content/Context;

    invoke-direct {p1, v0, p0, p2}, Lyads/ga4;-><init>(Lyads/bf5;Landroid/content/Context;Le02;)V

    sget-object p0, Lj59;->a:Lj59;

    invoke-virtual {p1, p0}, Lyads/ga4;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lyads/ga4;->b:Lyads/bf5;

    check-cast p1, Lyads/do6;

    iget-object p1, p1, Lyads/do6;->a:Landroid/content/Context;

    invoke-static {p1, p1}, Lyads/mw;->a(Landroid/content/Context;Landroid/content/Context;)Lyads/q84;

    move-result-object p1

    iget-object v0, p0, Lyads/ga4;->c:Landroid/content/Context;

    invoke-static {v0, p1}, Lyads/g46;->a(Landroid/content/Context;Lyads/q84;)V

    iget-object v0, p0, Lyads/ga4;->c:Landroid/content/Context;

    invoke-static {v0, p1}, Lyads/nf;->a(Landroid/content/Context;Lyads/q84;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    sget-object v0, Lyads/zh;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object p0, p0, Lyads/ga4;->c:Landroid/content/Context;

    invoke-static {p0, p1}, Lyads/zh;->a(Landroid/content/Context;Lyads/q84;)V

    :cond_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
