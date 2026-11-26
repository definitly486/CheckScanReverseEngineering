.class public final Lq79;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lk5;

.field public final b:Ljf6;

.field public final c:Lqe;


# direct methods
.method public constructor <init>(Lk5;Ljf6;Lqe;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq79;->a:Lk5;

    iput-object p2, p0, Lq79;->b:Ljf6;

    iput-object p3, p0, Lq79;->c:Lqe;

    return-void
.end method


# virtual methods
.method public final a(Lf02;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p1, Lp79;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lp79;

    iget v1, v0, Lp79;->n:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lp79;->n:I

    goto :goto_0

    :cond_0
    new-instance v0, Lp79;

    invoke-direct {v0, p0, p1}, Lp79;-><init>(Lq79;Lf02;)V

    :goto_0
    iget-object p1, v0, Lp79;->l:Ljava/lang/Object;

    sget-object v1, La32;->COROUTINE_SUSPENDED:La32;

    iget v2, v0, Lp79;->n:I

    iget-object v3, p0, Lq79;->a:Lk5;

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iput v4, v0, Lp79;->n:I

    invoke-interface {v3, v0}, Lk5;->d(Lf02;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p1, Lba9;

    invoke-virtual {p1}, Lba9;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    if-nez v0, :cond_4

    move-object v0, v1

    :cond_4
    invoke-interface {v3, v0}, Lk5;->setAvatar(Ljava/lang/String;)V

    invoke-virtual {p1}, Lba9;->o()J

    move-result-wide v2

    iget-object v0, p0, Lq79;->b:Ljf6;

    invoke-interface {v0, v2, v3}, Ljf6;->N0(J)V

    invoke-virtual {p1}, Lba9;->c()J

    move-result-wide v2

    invoke-interface {v0, v2, v3}, Ljf6;->w(J)V

    invoke-virtual {p1}, Lba9;->i()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljf6;->D0(Ljava/lang/String;)V

    invoke-virtual {p1}, Lba9;->m()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_5

    move-object v2, v1

    :cond_5
    invoke-interface {v0, v2}, Ljf6;->E0(Ljava/lang/String;)V

    invoke-virtual {p1}, Lba9;->a()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_6

    move-object v2, v1

    :cond_6
    invoke-interface {v0, v2}, Ljf6;->w0(Ljava/lang/String;)V

    invoke-virtual {p1}, Lba9;->b()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_7

    move-object v2, v1

    :cond_7
    invoke-interface {v0, v2}, Ljf6;->H(Ljava/lang/String;)V

    invoke-virtual {p1}, Lba9;->h()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_8

    move-object v2, v1

    :cond_8
    invoke-interface {v0, v2}, Ljf6;->a1(Ljava/lang/String;)V

    invoke-virtual {p1}, Lba9;->n()Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    goto :goto_2

    :cond_9
    const/4 v2, 0x0

    :goto_2
    invoke-interface {v0, v2}, Ljf6;->C(Z)V

    invoke-virtual {p1}, Lba9;->f()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_a

    move-object v2, v1

    :cond_a
    invoke-interface {v0, v2}, Ljf6;->y(Ljava/lang/String;)V

    invoke-virtual {p1}, Lba9;->d()Lba9$a;

    move-result-object v2

    invoke-virtual {v2}, Lba9$a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljf6;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lba9;->p()Z

    move-result v2

    invoke-interface {v0, v2}, Ljf6;->j0(Z)V

    invoke-virtual {p1}, Lba9;->j()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_b

    goto :goto_3

    :cond_b
    move-object v1, v2

    :goto_3
    invoke-interface {v0, v1}, Ljf6;->n(Ljava/lang/String;)V

    iget-object p0, p0, Lq79;->c:Lqe;

    invoke-virtual {p1}, Lba9;->o()J

    move-result-wide v1

    invoke-interface {p0, v1, v2}, Lqe;->g(J)V

    invoke-virtual {p1}, Lba9;->e()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_c

    invoke-interface {v0, p0}, Ljf6;->I(Ljava/lang/String;)V

    :cond_c
    invoke-virtual {p1}, Lba9;->g()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_d

    invoke-interface {v0, p0}, Ljf6;->z0(Ljava/lang/String;)V

    :cond_d
    invoke-virtual {p1}, Lba9;->k()Lba9$c;

    move-result-object p0

    if-eqz p0, :cond_e

    invoke-static {}, Lht3;->c()Lcom/google/gson/Gson;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/google/gson/Gson;->j(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_4

    :cond_e
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/String;-><init>()V

    :goto_4
    invoke-interface {v0, p0}, Ljf6;->e(Ljava/lang/String;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
