.class public final Lyads/np;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public b:Lyads/e4;

.field public c:I

.field public synthetic d:Ljava/lang/Object;

.field public final synthetic e:Lyads/pp;

.field public final synthetic f:Lyads/dt;


# direct methods
.method public constructor <init>(Lyads/pp;Lyads/dt;Le02;)V
    .locals 0

    iput-object p1, p0, Lyads/np;->e:Lyads/pp;

    iput-object p2, p0, Lyads/np;->f:Lyads/dt;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lpg8;-><init>(ILe02;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Le02;)Le02;
    .locals 2

    new-instance v0, Lyads/np;

    iget-object v1, p0, Lyads/np;->e:Lyads/pp;

    iget-object p0, p0, Lyads/np;->f:Lyads/dt;

    invoke-direct {v0, v1, p0, p2}, Lyads/np;-><init>(Lyads/pp;Lyads/dt;Le02;)V

    iput-object p1, v0, Lyads/np;->d:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ly22;

    check-cast p2, Le02;

    invoke-virtual {p0, p1, p2}, Lyads/np;->create(Ljava/lang/Object;Le02;)Le02;

    move-result-object p0

    check-cast p0, Lyads/np;

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Lyads/np;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    iget v1, p0, Lyads/np;->c:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    iget-object p0, p0, Lyads/np;->d:Ljava/lang/Object;

    check-cast p0, Lyads/e4;

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_2

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v4

    :cond_1
    iget-object v1, p0, Lyads/np;->b:Lyads/e4;

    iget-object v3, p0, Lyads/np;->d:Ljava/lang/Object;

    check-cast v3, Lmk2;

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lyads/np;->d:Ljava/lang/Object;

    check-cast p1, Ly22;

    new-instance v1, Lyads/mp;

    iget-object v5, p0, Lyads/np;->e:Lyads/pp;

    iget-object v6, p0, Lyads/np;->f:Lyads/dt;

    invoke-direct {v1, v5, v6, v4}, Lyads/mp;-><init>(Lyads/pp;Lyads/dt;Le02;)V

    const/4 v5, 0x3

    invoke-static {p1, v4, v4, v1, v5}, Lav0;->a(Ly22;Lo22;Lc32;Lbm3;I)Lnk2;

    move-result-object v1

    new-instance v6, Lyads/lp;

    iget-object v7, p0, Lyads/np;->e:Lyads/pp;

    iget-object v8, p0, Lyads/np;->f:Lyads/dt;

    invoke-direct {v6, v7, v8, v4}, Lyads/lp;-><init>(Lyads/pp;Lyads/dt;Le02;)V

    invoke-static {p1, v4, v4, v6, v5}, Lav0;->a(Ly22;Lo22;Lc32;Lbm3;I)Lnk2;

    move-result-object p1

    iget-object v5, p0, Lyads/np;->e:Lyads/pp;

    iget-object v5, v5, Lyads/pp;->c:Lyads/e4;

    iput-object v1, p0, Lyads/np;->d:Ljava/lang/Object;

    iput-object v5, p0, Lyads/np;->b:Lyads/e4;

    iput v3, p0, Lyads/np;->c:I

    invoke-virtual {p1, p0}, Lsb4;->u(Le02;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    goto :goto_1

    :cond_3
    move-object v3, v1

    move-object v1, v5

    :goto_0
    check-cast p1, Ljava/lang/String;

    iput-object p1, v1, Lyads/e4;->h:Ljava/lang/String;

    iget-object p1, p0, Lyads/np;->e:Lyads/pp;

    iget-object p1, p1, Lyads/pp;->c:Lyads/e4;

    iput-object p1, p0, Lyads/np;->d:Ljava/lang/Object;

    iput-object v4, p0, Lyads/np;->b:Lyads/e4;

    iput v2, p0, Lyads/np;->c:I

    invoke-interface {v3, p0}, Lmk2;->Z(Le02;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_4

    :goto_1
    return-object v0

    :cond_4
    move-object v9, p1

    move-object p1, p0

    move-object p0, v9

    :goto_2
    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lyads/e4;->i:Ljava/lang/String;

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
