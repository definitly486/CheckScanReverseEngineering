.class public final Lyads/mo2;
.super Lyads/uo2;
.source "SourceFile"


# instance fields
.field public final e:Ljava/lang/String;

.field public final f:Ljava/util/ArrayList;

.field public g:Lyads/uo2;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lyads/uo2;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lyads/mo2;->e:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lyads/uz5;->a([C)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lyads/mo2;->f:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final a(Lyads/bp2;)Ljava/lang/Object;
    .locals 4

    invoke-virtual {p0}, Lyads/mo2;->e()V

    iget-object v0, p0, Lyads/mo2;->g:Lyads/uo2;

    const/4 v1, 0x0

    const-string v2, "expression"

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lyads/uo2;->a(Lyads/bp2;)Ljava/lang/Object;

    move-result-object p1

    const/4 v3, 0x1

    iput-boolean v3, v0, Lyads/uo2;->c:Z

    iget-object v0, p0, Lyads/mo2;->g:Lyads/uo2;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lyads/uo2;->b:Z

    invoke-virtual {p0, v0}, Lyads/uo2;->a(Z)V

    return-object p1

    :cond_0
    invoke-static {v2}, Laa4;->j(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-static {v2}, Laa4;->j(Ljava/lang/String;)V

    throw v1
.end method

.method public final b()Ljava/util/List;
    .locals 1

    invoke-virtual {p0}, Lyads/mo2;->e()V

    sget-object v0, Lj59;->a:Lj59;

    iget-object p0, p0, Lyads/mo2;->g:Lyads/uo2;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lyads/uo2;->b()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "expression"

    invoke-static {p0}, Laa4;->j(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final d()Ljava/util/List;
    .locals 3

    iget-object v0, p0, Lyads/mo2;->g:Lyads/uo2;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lyads/uo2;->d()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lyads/mo2;->f:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lyads/hy5;

    if-eqz v2, :cond_1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {p0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyads/hy5;

    iget-object v1, v1, Lyads/hy5;->a:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    return-object p0
.end method

.method public final e()V
    .locals 4

    iget-object v0, p0, Lyads/mo2;->g:Lyads/uo2;

    if-nez v0, :cond_2

    iget-object v0, p0, Lyads/mo2;->f:Ljava/util/ArrayList;

    iget-object v1, p0, Lyads/uo2;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    const-string v3, "Expression expected"

    if-nez v2, :cond_1

    new-instance v2, Lyads/vs4;

    invoke-direct {v2, v1, v0}, Lyads/vs4;-><init>(Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-static {v2}, Lyads/ws4;->b(Lyads/vs4;)Lyads/uo2;

    move-result-object v0

    invoke-virtual {v2}, Lyads/vs4;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lyads/mo2;->g:Lyads/uo2;

    return-void

    :cond_0
    invoke-static {v3}, Lqg;->h(Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-static {v3}, Lqg;->h(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lyads/mo2;->e:Ljava/lang/String;

    return-object p0
.end method
