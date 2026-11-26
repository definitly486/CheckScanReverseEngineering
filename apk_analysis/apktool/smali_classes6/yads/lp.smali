.class public final Lyads/lp;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public b:I

.field public final synthetic c:Lyads/pp;

.field public final synthetic d:Lyads/dt;


# direct methods
.method public constructor <init>(Lyads/pp;Lyads/dt;Le02;)V
    .locals 0

    iput-object p1, p0, Lyads/lp;->c:Lyads/pp;

    iput-object p2, p0, Lyads/lp;->d:Lyads/dt;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lpg8;-><init>(ILe02;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Le02;)Le02;
    .locals 1

    new-instance p1, Lyads/lp;

    iget-object v0, p0, Lyads/lp;->c:Lyads/pp;

    iget-object p0, p0, Lyads/lp;->d:Lyads/dt;

    invoke-direct {p1, v0, p0, p2}, Lyads/lp;-><init>(Lyads/pp;Lyads/dt;Le02;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ly22;

    check-cast p2, Le02;

    new-instance p1, Lyads/lp;

    iget-object v0, p0, Lyads/lp;->c:Lyads/pp;

    iget-object p0, p0, Lyads/lp;->d:Lyads/dt;

    invoke-direct {p1, v0, p0, p2}, Lyads/lp;-><init>(Lyads/pp;Lyads/dt;Le02;)V

    sget-object p0, Lj59;->a:Lj59;

    invoke-virtual {p1, p0}, Lyads/lp;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    iget v1, p0, Lyads/lp;->b:I

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

    iget-object p1, p0, Lyads/lp;->c:Lyads/pp;

    iget-object v1, p1, Lyads/pp;->k:Lyads/s83;

    iget-object p1, p1, Lyads/pp;->a:Landroid/content/Context;

    iget-object v3, p0, Lyads/lp;->d:Lyads/dt;

    iput v2, p0, Lyads/lp;->b:I

    invoke-virtual {v1, p1, v3, p0}, Lyads/s83;->a(Landroid/content/Context;Lyads/dt;Lf02;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    return-object p0
.end method
