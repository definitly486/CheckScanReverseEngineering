.class public final Lt4;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lnl3<",
        "La57<",
        "Lba9;",
        ">;",
        "Lqq1;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lc4;


# direct methods
.method public constructor <init>(Lc4;)V
    .locals 0

    iput-object p1, p0, Lt4;->f:Lc4;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    check-cast p1, La57;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p1, La57;->b:Ljava/lang/Object;

    check-cast v0, Lba9;

    iget-object p1, p1, La57;->a:Lz47;

    invoke-virtual {p1}, Lz47;->o()Z

    move-result p1

    if-eqz p1, :cond_c

    if-eqz v0, :cond_c

    iget-object p0, p0, Lt4;->f:Lc4;

    iget-object p1, p0, Lc4;->n:Lk5;

    iget-object v1, p0, Lc4;->a:Ljf6;

    invoke-virtual {v0}, Lba9;->a()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    if-nez v2, :cond_0

    move-object v2, v3

    :cond_0
    invoke-interface {p1, v2}, Lk5;->setAvatar(Ljava/lang/String;)V

    invoke-virtual {v0}, Lba9;->o()J

    move-result-wide v4

    invoke-interface {v1, v4, v5}, Ljf6;->N0(J)V

    invoke-virtual {v0}, Lba9;->c()J

    move-result-wide v4

    invoke-interface {v1, v4, v5}, Ljf6;->w(J)V

    invoke-virtual {v0}, Lba9;->i()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Ljf6;->D0(Ljava/lang/String;)V

    invoke-virtual {v0}, Lba9;->m()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    move-object p1, v3

    :cond_1
    invoke-interface {v1, p1}, Ljf6;->E0(Ljava/lang/String;)V

    invoke-virtual {v0}, Lba9;->a()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2

    move-object p1, v3

    :cond_2
    invoke-interface {v1, p1}, Ljf6;->w0(Ljava/lang/String;)V

    invoke-virtual {v0}, Lba9;->b()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_3

    move-object p1, v3

    :cond_3
    invoke-interface {v1, p1}, Ljf6;->H(Ljava/lang/String;)V

    invoke-virtual {v0}, Lba9;->h()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_4

    move-object p1, v3

    :cond_4
    invoke-interface {v1, p1}, Ljf6;->a1(Ljava/lang/String;)V

    invoke-virtual {v0}, Lba9;->n()Ljava/lang/Boolean;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    goto :goto_0

    :cond_5
    const/4 p1, 0x0

    :goto_0
    invoke-interface {v1, p1}, Ljf6;->C(Z)V

    iget-object p1, p0, Lc4;->m:Ld82;

    invoke-interface {v1}, Ljf6;->l1()Z

    move-result v2

    iget-object p1, p1, Ld82;->f:Lz68;

    :cond_6
    invoke-virtual {p1}, Lz68;->getValue()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Lz68;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {v0}, Lba9;->f()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_7

    move-object p1, v3

    :cond_7
    invoke-interface {v1, p1}, Ljf6;->y(Ljava/lang/String;)V

    invoke-virtual {v0}, Lba9;->d()Lba9$a;

    move-result-object p1

    invoke-virtual {p1}, Lba9$a;->a()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Ljf6;->a(Ljava/lang/String;)V

    invoke-virtual {v0}, Lba9;->p()Z

    move-result p1

    invoke-interface {v1, p1}, Ljf6;->j0(Z)V

    invoke-virtual {v0}, Lba9;->j()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_8

    goto :goto_1

    :cond_8
    move-object v3, p1

    :goto_1
    invoke-interface {v1, v3}, Ljf6;->n(Ljava/lang/String;)V

    iget-object p0, p0, Lc4;->e:Lqe;

    invoke-virtual {v0}, Lba9;->o()J

    move-result-wide v2

    invoke-interface {p0, v2, v3}, Lqe;->g(J)V

    invoke-virtual {v0}, Lba9;->e()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_9

    invoke-interface {v1, p0}, Ljf6;->I(Ljava/lang/String;)V

    :cond_9
    invoke-virtual {v0}, Lba9;->g()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_a

    invoke-interface {v1, p0}, Ljf6;->z0(Ljava/lang/String;)V

    :cond_a
    invoke-virtual {v0}, Lba9;->k()Lba9$c;

    move-result-object p0

    if-eqz p0, :cond_b

    invoke-static {}, Lht3;->c()Lcom/google/gson/Gson;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/google/gson/Gson;->j(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_b
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/String;-><init>()V

    :goto_2
    invoke-interface {v1, p0}, Ljf6;->e(Ljava/lang/String;)V

    :cond_c
    sget-object p0, Laq1;->b:Laq1;

    return-object p0
.end method
