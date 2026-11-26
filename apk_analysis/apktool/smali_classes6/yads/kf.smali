.class public final Lyads/kf;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public b:I

.field public final synthetic c:Lyads/lf;


# direct methods
.method public constructor <init>(Lyads/lf;Le02;)V
    .locals 0

    iput-object p1, p0, Lyads/kf;->c:Lyads/lf;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lpg8;-><init>(ILe02;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Le02;)Le02;
    .locals 0

    new-instance p1, Lyads/kf;

    iget-object p0, p0, Lyads/kf;->c:Lyads/lf;

    invoke-direct {p1, p0, p2}, Lyads/kf;-><init>(Lyads/lf;Le02;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ly22;

    check-cast p2, Le02;

    new-instance p1, Lyads/kf;

    iget-object p0, p0, Lyads/kf;->c:Lyads/lf;

    invoke-direct {p1, p0, p2}, Lyads/kf;-><init>(Lyads/lf;Le02;)V

    sget-object p0, Lj59;->a:Lj59;

    invoke-virtual {p1, p0}, Lyads/kf;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    iget v1, p0, Lyads/kf;->b:I

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v4, :cond_1

    if-ne v1, v3, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v2

    :cond_1
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    :goto_0
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    :cond_3
    iget-object p1, p0, Lyads/kf;->c:Lyads/lf;

    iget-object v1, p1, Lyads/lf;->e:Lyads/df;

    iget-wide v5, p1, Lyads/lf;->b:J

    iput v4, p0, Lyads/kf;->b:I

    iget-object p1, v1, Lyads/df;->a:Lr22;

    new-instance v7, Lyads/cf;

    invoke-direct {v7, v1, v5, v6, v2}, Lyads/cf;-><init>(Lyads/df;JLe02;)V

    invoke-static {p1, v7, p0}, Lav0;->d(Lo22;Lbm3;Le02;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    goto :goto_2

    :cond_4
    :goto_1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget-object v1, p0, Lyads/kf;->c:Lyads/lf;

    if-eqz p1, :cond_5

    iget-wide v5, v1, Lyads/lf;->a:J

    iput v3, p0, Lyads/kf;->b:I

    invoke-static {v5, v6, p0}, Lyk2;->b(JLe02;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    :goto_2
    return-object v0

    :cond_5
    invoke-static {v1}, Lyads/lf;->a(Lyads/lf;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
