.class public final Lyads/tr2;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public b:I

.field public synthetic c:Ljava/lang/Object;

.field public final synthetic d:Lyads/ur2;


# direct methods
.method public constructor <init>(Lyads/ur2;Le02;)V
    .locals 0

    iput-object p1, p0, Lyads/tr2;->d:Lyads/ur2;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lpg8;-><init>(ILe02;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Le02;)Le02;
    .locals 1

    new-instance v0, Lyads/tr2;

    iget-object p0, p0, Lyads/tr2;->d:Lyads/ur2;

    invoke-direct {v0, p0, p2}, Lyads/tr2;-><init>(Lyads/ur2;Le02;)V

    iput-object p1, v0, Lyads/tr2;->c:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ly22;

    check-cast p2, Le02;

    new-instance v0, Lyads/tr2;

    iget-object p0, p0, Lyads/tr2;->d:Lyads/ur2;

    invoke-direct {v0, p0, p2}, Lyads/tr2;-><init>(Lyads/ur2;Le02;)V

    iput-object p1, v0, Lyads/tr2;->c:Ljava/lang/Object;

    sget-object p0, Lj59;->a:Lj59;

    invoke-virtual {v0, p0}, Lyads/tr2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    iget v1, p0, Lyads/tr2;->b:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lyads/tr2;->c:Ljava/lang/Object;

    check-cast v1, Ly22;

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lyads/tr2;->c:Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, Ly22;

    :cond_2
    :goto_0
    invoke-static {v1}, Lz22;->e(Ly22;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lyads/tr2;->d:Lyads/ur2;

    iget-object p1, p1, Lyads/ur2;->c:Lyads/e55;

    sget-object v3, Lyads/ur2;->f:[Lze4;

    const/4 v4, 0x0

    aget-object v5, v3, v4

    iget-object p1, p1, Lyads/e55;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    iget-object v5, p0, Lyads/tr2;->d:Lyads/ur2;

    iget-object v5, v5, Lyads/ur2;->d:Lyads/e55;

    aget-object v3, v3, v2

    iget-object v3, v5, Lyads/e55;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lyads/nq4;

    if-eqz p1, :cond_4

    if-eqz v3, :cond_4

    iget-object v5, p0, Lyads/tr2;->d:Lyads/ur2;

    iget-object v5, v5, Lyads/ur2;->a:Lyads/rr2;

    invoke-virtual {v5, p1}, Lyads/rr2;->a(Landroid/view/View;)Lyads/qr2;

    move-result-object p1

    check-cast v3, Lyads/jb4;

    iget-object v5, v3, Lyads/jb4;->s:Lyads/qr2;

    invoke-static {p1, v5}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    iput-object p1, v3, Lyads/jb4;->s:Lyads/qr2;

    iget v5, p1, Lyads/qr2;->a:I

    iget-object p1, p1, Lyads/qr2;->b:Landroid/graphics/RectF;

    new-instance v6, Lyads/sr2;

    invoke-direct {v6, v5, p1}, Lyads/sr2;-><init>(ILandroid/graphics/RectF;)V

    iget-object p1, v3, Lyads/jb4;->b:Lyads/cb4;

    new-array v3, v2, [Lyads/lq3;

    aput-object v6, v3, v4

    invoke-virtual {p1, v3}, Lyads/cb4;->a([Lyads/lq3;)V

    :cond_3
    iput-object v1, p0, Lyads/tr2;->c:Ljava/lang/Object;

    iput v2, p0, Lyads/tr2;->b:I

    const-wide/16 v3, 0xc8

    invoke-static {v3, v4, p0}, Lyk2;->b(JLe02;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_4
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
