.class public final Lyads/tf4;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public b:I

.field public final synthetic c:Lyads/uf4;

.field public final synthetic d:Landroid/view/View;


# direct methods
.method public constructor <init>(Lyads/uf4;Landroid/view/View;Le02;)V
    .locals 0

    iput-object p1, p0, Lyads/tf4;->c:Lyads/uf4;

    iput-object p2, p0, Lyads/tf4;->d:Landroid/view/View;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lpg8;-><init>(ILe02;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Le02;)Le02;
    .locals 1

    new-instance p1, Lyads/tf4;

    iget-object v0, p0, Lyads/tf4;->c:Lyads/uf4;

    iget-object p0, p0, Lyads/tf4;->d:Landroid/view/View;

    invoke-direct {p1, v0, p0, p2}, Lyads/tf4;-><init>(Lyads/uf4;Landroid/view/View;Le02;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ly22;

    check-cast p2, Le02;

    new-instance p1, Lyads/tf4;

    iget-object v0, p0, Lyads/tf4;->c:Lyads/uf4;

    iget-object p0, p0, Lyads/tf4;->d:Landroid/view/View;

    invoke-direct {p1, v0, p0, p2}, Lyads/tf4;-><init>(Lyads/uf4;Landroid/view/View;Le02;)V

    sget-object p0, Lj59;->a:Lj59;

    invoke-virtual {p1, p0}, Lyads/tf4;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    iget v1, p0, Lyads/tf4;->b:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iput v2, p0, Lyads/tf4;->b:I

    const-wide/16 v1, 0x64

    invoke-static {v1, v2, p0}, Lyk2;->b(JLe02;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    iget-object p1, p0, Lyads/tf4;->c:Lyads/uf4;

    iget-object p0, p0, Lyads/tf4;->d:Landroid/view/View;

    invoke-static {p1, p0}, Lyads/uf4;->a(Lyads/uf4;Landroid/view/View;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
