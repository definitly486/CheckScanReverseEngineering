.class public final Ldj4;
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
        "Lli4;",
        ">;",
        "Lur6;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:Laj4;


# direct methods
.method public constructor <init>(Laj4;)V
    .locals 0

    iput-object p1, p0, Ldj4;->f:Laj4;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    check-cast p1, La57;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p1, La57;->a:Lz47;

    iget v0, v0, Lz47;->e:I

    const/16 v1, 0xc8

    iget-object p0, p0, Ldj4;->f:Laj4;

    const-string v2, ""

    if-ne v0, v1, :cond_e

    iget-object p1, p1, La57;->b:Ljava/lang/Object;

    check-cast p1, Lli4;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lli4;->d()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lli4;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0}, Lta8;->M(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance p0, Lur6$c;

    invoke-virtual {p1}, Lli4;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lli4;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lli4;->a()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    move-object v2, v3

    :goto_0
    invoke-virtual {p1}, Lli4;->b()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, v1, v2, p1}, Lur6$c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    :cond_1
    iget-object p0, p0, Laj4;->e:Lhi0;

    invoke-virtual {p0}, Lhi0;->j()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_2

    sget-object v0, Lkx2;->b:Lkx2;

    :cond_2
    check-cast v0, Ljava/util/Collection;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v0, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v1, v3}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lwk4;

    instance-of v5, v3, Lhi4;

    const/16 v6, 0xf

    const/4 v7, 0x0

    if-eqz v5, :cond_3

    check-cast v3, Lhi4;

    invoke-static {v3, v7, v6}, Lhi4;->l(Lhi4;ZI)Lhi4;

    move-result-object v3

    goto :goto_2

    :cond_3
    instance-of v5, v3, Lti4;

    if-eqz v5, :cond_5

    check-cast v3, Lti4;

    iget-object v5, v3, Lti4;->a:Lwi4;

    invoke-static {v5, v7, v6}, Lwi4;->m(Lwi4;ZI)Lwi4;

    move-result-object v5

    iget-object v3, v3, Lti4;->b:Lwi4;

    if-eqz v3, :cond_4

    invoke-static {v3, v7, v6}, Lwi4;->m(Lwi4;ZI)Lwi4;

    move-result-object v4

    :cond_4
    new-instance v3, Lti4;

    invoke-direct {v3, v5, v4}, Lti4;-><init>(Lwi4;Lwi4;)V

    goto :goto_2

    :cond_5
    instance-of v5, v3, Lik4;

    if-eqz v5, :cond_6

    check-cast v3, Lik4;

    const/16 v5, 0x1bf

    invoke-static {v3, v4, v7, v5}, Lik4;->d(Lik4;Ljava/lang/String;ZI)Lik4;

    move-result-object v3

    goto :goto_2

    :cond_6
    instance-of v4, v3, Lmh4;

    if-eqz v4, :cond_7

    check-cast v3, Lmh4;

    invoke-static {v3, v7, v6}, Lmh4;->d(Lmh4;ZI)Lmh4;

    move-result-object v3

    goto :goto_2

    :cond_7
    instance-of v4, v3, Lqj4;

    if-eqz v4, :cond_8

    check-cast v3, Lqj4;

    invoke-static {v3, v7}, Lqj4;->l(Lqj4;Z)Lqj4;

    move-result-object v3

    :cond_8
    :goto_2
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_9
    invoke-virtual {p0, v0}, Lhi0;->onNext(Ljava/lang/Object;)V

    new-instance p0, Lur6$d;

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Lli4;->e()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_a
    move-object v0, v4

    :goto_3
    if-nez v0, :cond_b

    move-object v0, v2

    :cond_b
    if-eqz p1, :cond_c

    invoke-virtual {p1}, Lli4;->c()Ljava/lang/String;

    move-result-object v4

    :cond_c
    if-nez v4, :cond_d

    goto :goto_4

    :cond_d
    move-object v2, v4

    :goto_4
    invoke-direct {p0, v0, v2}, Lur6$d;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    :cond_e
    iget-object p1, p1, La57;->c:Lb57;

    if-nez p1, :cond_f

    sget-object p0, Lur6$b;->a:Lur6$b;

    return-object p0

    :cond_f
    invoke-virtual {p1}, Lb57;->v()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Laj4;->d:Lxb4;

    sget-object v0, Lo03;->Companion:Lo03$b;

    invoke-virtual {v0}, Lo03$b;->serializer()Ldf4;

    move-result-object v0

    check-cast v0, Lxl2;

    invoke-virtual {p0, v0, p1}, Lxb4;->a(Lxl2;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lo03;

    iget-object p1, p0, Lo03;->c:Ljava/lang/String;

    iget-object v0, p0, Lo03;->b:Ljava/lang/String;

    iget-object v1, p0, Lo03;->a:Ljava/lang/String;

    iget-object v3, p0, Lo03;->d:Ljava/lang/String;

    if-eqz p1, :cond_14

    invoke-static {p1}, Lta8;->M(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_10

    goto :goto_6

    :cond_10
    if-eqz v3, :cond_14

    invoke-static {v3}, Lta8;->M(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_11

    goto :goto_6

    :cond_11
    new-instance p1, Lur6$c;

    if-nez v1, :cond_12

    move-object v1, v2

    :cond_12
    if-nez v0, :cond_13

    goto :goto_5

    :cond_13
    move-object v2, v0

    :goto_5
    iget-object p0, p0, Lo03;->c:Ljava/lang/String;

    invoke-direct {p1, v1, v2, p0, v3}, Lur6$c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    :cond_14
    :goto_6
    new-instance p0, Lur6$a;

    if-nez v1, :cond_15

    move-object v1, v2

    :cond_15
    if-nez v0, :cond_16

    goto :goto_7

    :cond_16
    move-object v2, v0

    :goto_7
    invoke-direct {p0, v1, v2}, Lur6$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method
