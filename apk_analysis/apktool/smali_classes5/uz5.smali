.class public final Luz5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfo5;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Luz5$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lfo5<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lwu1;

.field public final c:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lwu1;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luz5;->a:Ljava/lang/String;

    iput-object p2, p0, Luz5;->b:Lwu1;

    invoke-static {}, Lu96;->e()Lar4;

    move-result-object p1

    invoke-static {p1, p2}, Ltc0;->g(Lar4;Lti3;)V

    invoke-static {p1}, Lu96;->d(Lar4;)Lar4;

    move-result-object p1

    new-instance p2, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-static {p1, v0}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {p2, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lar4;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p1

    :goto_0
    move-object v1, p1

    check-cast v1, Lar4$b;

    invoke-virtual {v1}, Lar4$b;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lar4$b;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lx83;

    invoke-interface {v1}, Lx83;->c()Ld93;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {p2}, Lqn1;->x0(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    invoke-static {p1}, Lqn1;->t0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    new-instance p2, Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ld93;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0}, Ld93;->getDefaultValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v2, Luz5$a;

    invoke-interface {v0}, Ld93;->a()Ld3;

    move-result-object v0

    invoke-direct {v2, v0, v1}, Luz5$a;-><init>(Ld3;Ljava/lang/Object;)V

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Ld93;->getName()Ljava/lang/String;

    move-result-object p0

    const-string p1, "\' does not define a default value"

    const-string p2, "The field \'"

    invoke-static {p0, p2, p1}, Lh8;->f(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0

    :cond_2
    iput-object p2, p0, Luz5;->c:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final a()Lvi3;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lvi3<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Luz5;->b:Lwu1;

    invoke-virtual {v0}, Lwu1;->a()Lvi3;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    iget-object p0, p0, Luz5;->c:Ljava/util/ArrayList;

    invoke-static {p0, v2}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Luz5$a;

    new-instance v3, Lnp1;

    iget-object v4, v2, Luz5$a;->b:Ljava/lang/Object;

    new-instance v5, Ltz5;

    iget-object v7, v2, Luz5$a;->a:Ld3;

    const-string v10, "getter(Ljava/lang/Object;)Ljava/lang/Object;"

    const/4 v11, 0x0

    const/4 v6, 0x1

    const-class v8, Ld3;

    const-string v9, "getter"

    invoke-direct/range {v5 .. v11}, Lqm3;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {v3, v4, v5}, Lnp1;-><init>(Ljava/lang/Object;Ltz5;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lo39;->a:Lo39;

    :goto_1
    move-object v4, p0

    goto :goto_2

    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/4 v2, 0x1

    if-ne p0, v2, :cond_2

    invoke-static {v1}, Lqn1;->k0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Laf6;

    goto :goto_1

    :cond_2
    new-instance p0, Lhw1;

    invoke-direct {p0, v1}, Lhw1;-><init>(Ljava/util/ArrayList;)V

    goto :goto_1

    :goto_2
    instance-of p0, v4, Lo39;

    if-eqz p0, :cond_3

    new-instance p0, Lkx1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-object p0

    :cond_3
    new-instance p0, Lfv1;

    new-instance v2, Luz5$b;

    const-string v7, "test(Ljava/lang/Object;)Z"

    const/4 v8, 0x0

    const/4 v3, 0x1

    const-class v5, Laf6;

    const-string v6, "test"

    invoke-direct/range {v2 .. v8}, Lqm3;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v1, Lkx1;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    new-instance v3, Lb36;

    invoke-direct {v3, v2, v1}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v4, Luz5$c;

    sget-object v6, Lo39;->a:Lo39;

    const-string v9, "test(Ljava/lang/Object;)Z"

    const/4 v10, 0x0

    const/4 v5, 0x1

    const-class v7, Lo39;

    const-string v8, "test"

    invoke-direct/range {v4 .. v10}, Lqm3;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v1, Lb36;

    invoke-direct {v1, v4, v0}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {v3, v1}, [Lb36;

    move-result-object v0

    invoke-static {v0}, Lu96;->i([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lfv1;-><init>(Ljava/util/List;)V

    return-object p0
.end method

.method public final b()La46;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "La46<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, La46;

    iget-object v1, p0, Luz5;->b:Lwu1;

    invoke-virtual {v1}, Lwu1;->b()La46;

    move-result-object v1

    new-instance v2, Lhx1;

    iget-object v3, p0, Luz5;->a:Ljava/lang/String;

    invoke-direct {v2, v3}, Lhx1;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lhx1;->b()La46;

    move-result-object v2

    new-instance v3, La46;

    iget-object v4, p0, Luz5;->c:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    sget-object v5, Lkx2;->b:Lkx2;

    if-eqz v4, :cond_0

    move-object p0, v5

    goto :goto_0

    :cond_0
    new-instance v4, Lc59;

    new-instance v6, Luz5$d;

    invoke-direct {v6, p0}, Luz5$d;-><init>(Luz5;)V

    invoke-direct {v4, v6}, Lc59;-><init>(Luz5$d;)V

    invoke-static {v4}, Lu96;->h(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    :goto_0
    invoke-direct {v3, p0, v5}, La46;-><init>(Ljava/util/List;Ljava/util/List;)V

    filled-new-array {v2, v3}, [La46;

    move-result-object p0

    invoke-static {p0}, Lu96;->i([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lxs7;->a(Ljava/util/List;)La46;

    move-result-object p0

    filled-new-array {v1, p0}, [La46;

    move-result-object p0

    invoke-static {p0}, Lu96;->i([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, v5, p0}, La46;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Luz5;

    if-eqz v0, :cond_0

    check-cast p1, Luz5;

    iget-object v0, p1, Luz5;->a:Ljava/lang/String;

    iget-object v1, p0, Luz5;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Luz5;->b:Lwu1;

    iget-object p1, p1, Luz5;->b:Lwu1;

    invoke-virtual {p0, p1}, Lwu1;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Luz5;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Luz5;->b:Lwu1;

    invoke-virtual {p0}, Lwu1;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Optional("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Luz5;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Luz5;->b:Lwu1;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
