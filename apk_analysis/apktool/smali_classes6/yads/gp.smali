.class public final Lyads/gp;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Lyads/l70;

.field public final synthetic c:Lyads/pp;


# direct methods
.method public constructor <init>(Lyads/l70;Lyads/pp;Le02;)V
    .locals 0

    iput-object p1, p0, Lyads/gp;->b:Lyads/l70;

    iput-object p2, p0, Lyads/gp;->c:Lyads/pp;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lpg8;-><init>(ILe02;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Le02;)Le02;
    .locals 1

    new-instance p1, Lyads/gp;

    iget-object v0, p0, Lyads/gp;->b:Lyads/l70;

    iget-object p0, p0, Lyads/gp;->c:Lyads/pp;

    invoke-direct {p1, v0, p0, p2}, Lyads/gp;-><init>(Lyads/l70;Lyads/pp;Le02;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ly22;

    check-cast p2, Le02;

    new-instance p1, Lyads/gp;

    iget-object v0, p0, Lyads/gp;->b:Lyads/l70;

    iget-object p0, p0, Lyads/gp;->c:Lyads/pp;

    invoke-direct {p1, v0, p0, p2}, Lyads/gp;-><init>(Lyads/l70;Lyads/pp;Le02;)V

    sget-object p0, Lj59;->a:Lj59;

    invoke-virtual {p1, p0}, Lyads/gp;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lyads/gp;->b:Lyads/l70;

    iget-object p0, p0, Lyads/gp;->c:Lyads/pp;

    instance-of v0, p1, Lyads/k70;

    if-eqz v0, :cond_0

    check-cast p1, Lyads/k70;

    iget-object p1, p1, Lyads/k70;->a:Ljava/lang/Object;

    check-cast p1, Lyads/d9;

    invoke-virtual {p0, p1}, Lyads/pp;->a(Lyads/d9;)V

    goto :goto_1

    :cond_0
    instance-of v0, p1, Lyads/j70;

    if-eqz v0, :cond_2

    check-cast p1, Lyads/j70;

    iget-object p1, p1, Lyads/j70;->a:Ljava/lang/Object;

    check-cast p1, Lyads/hi6;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p1, Lyads/i4;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lyads/pp;->c:Lyads/e4;

    check-cast p1, Lyads/i4;

    iget-object p1, p1, Lyads/i4;->c:Lyads/o4;

    invoke-static {v0, p1}, Lyads/p4;->a(Lyads/e4;Lyads/o4;)Lyads/m4;

    move-result-object p1

    goto :goto_0

    :cond_1
    sget-object p1, Lyads/o8;->q:Lyads/m4;

    :goto_0
    invoke-virtual {p0, p1}, Lyads/pp;->b(Lyads/m4;)V

    :goto_1
    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :cond_2
    invoke-static {}, Lme0;->e()V

    const/4 p0, 0x0

    return-object p0
.end method
