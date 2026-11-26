.class public final Lyads/xn4;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public b:I

.field public final synthetic c:Lyads/ao4;

.field public final synthetic d:Landroid/content/Context;

.field public final synthetic e:Lyads/sl5;

.field public final synthetic f:Lyads/x54;


# direct methods
.method public constructor <init>(Lyads/ao4;Landroid/content/Context;Lyads/sl5;Lyads/x54;Le02;)V
    .locals 0

    iput-object p1, p0, Lyads/xn4;->c:Lyads/ao4;

    iput-object p2, p0, Lyads/xn4;->d:Landroid/content/Context;

    iput-object p3, p0, Lyads/xn4;->e:Lyads/sl5;

    iput-object p4, p0, Lyads/xn4;->f:Lyads/x54;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lpg8;-><init>(ILe02;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Le02;)Le02;
    .locals 6

    new-instance v0, Lyads/xn4;

    iget-object v1, p0, Lyads/xn4;->c:Lyads/ao4;

    iget-object v2, p0, Lyads/xn4;->d:Landroid/content/Context;

    iget-object v3, p0, Lyads/xn4;->e:Lyads/sl5;

    iget-object v4, p0, Lyads/xn4;->f:Lyads/x54;

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lyads/xn4;-><init>(Lyads/ao4;Landroid/content/Context;Lyads/sl5;Lyads/x54;Le02;)V

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ly22;

    check-cast p2, Le02;

    invoke-virtual {p0, p1, p2}, Lyads/xn4;->create(Ljava/lang/Object;Le02;)Le02;

    move-result-object p0

    check-cast p0, Lyads/xn4;

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Lyads/xn4;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    iget v1, p0, Lyads/xn4;->b:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    return-object p1

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lyads/xn4;->c:Lyads/ao4;

    iget-object v1, p0, Lyads/xn4;->d:Landroid/content/Context;

    iget-object v3, p0, Lyads/xn4;->e:Lyads/sl5;

    iget-object v4, p0, Lyads/xn4;->f:Lyads/x54;

    iput v2, p0, Lyads/xn4;->b:I

    invoke-static {p1, v1, v3, v4, p0}, Lyads/ao4;->a(Lyads/ao4;Landroid/content/Context;Lyads/sl5;Lyads/x54;Lf02;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    return-object p0
.end method
