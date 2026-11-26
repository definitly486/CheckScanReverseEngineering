.class public final Lox1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw18;
.implements Landroidx/compose/ui/layout/LayoutModifier;


# instance fields
.field public b:J

.field public c:Ljava/util/ArrayList;


# virtual methods
.method public final a(Le02;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le02<",
            "-",
            "Lt18;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lox1$a;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lox1$a;

    iget v1, v0, Lox1$a;->o:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lox1$a;->o:I

    goto :goto_0

    :cond_0
    new-instance v0, Lox1$a;

    check-cast p1, Lf02;

    invoke-direct {v0, p0, p1}, Lox1$a;-><init>(Lox1;Lf02;)V

    :goto_0
    iget-object p1, v0, Lox1$a;->m:Ljava/lang/Object;

    sget-object v1, La32;->COROUTINE_SUSPENDED:La32;

    iget v2, v0, Lox1$a;->o:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object v0, v0, Lox1$a;->l:Lr07;

    :try_start_0
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-wide v4, p0, Lox1;->b:J

    invoke-static {v4, v5}, Landroidx/compose/ui/unit/Constraints;->isZero-impl(J)Z

    move-result p1

    if-eqz p1, :cond_4

    new-instance p1, Lr07;

    invoke-direct {p1}, Lr07;-><init>()V

    :try_start_1
    iput-object p1, v0, Lox1$a;->l:Lr07;

    iput v3, v0, Lox1$a;->o:I

    new-instance v2, Lc31;

    invoke-static {v0}, Lzya;->b(Le02;)Le02;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lc31;-><init>(ILe02;)V

    invoke-virtual {v2}, Lc31;->u()V

    iput-object v2, p1, Lr07;->b:Ljava/lang/Object;

    iget-object v0, p0, Lox1;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Lc31;->s()Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne v0, v1, :cond_3

    return-object v1

    :cond_3
    move-object v0, p1

    :goto_1
    iget-object p1, p0, Lox1;->c:Ljava/util/ArrayList;

    iget-object v0, v0, Lr07;->b:Ljava/lang/Object;

    invoke-static {p1}, Lv39;->a(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object v6, v0

    move-object v0, p1

    move-object p1, v6

    :goto_2
    iget-object p0, p0, Lox1;->c:Ljava/util/ArrayList;

    iget-object v0, v0, Lr07;->b:Ljava/lang/Object;

    invoke-static {p0}, Lv39;->a(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0, v0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    throw p1

    :cond_4
    :goto_3
    iget-wide p0, p0, Lox1;->b:J

    sget v0, Lnb9;->b:I

    new-instance v0, Lt18;

    invoke-static {p0, p1}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result v1

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_5

    invoke-static {v1}, Lhn2$a;->a(I)V

    new-instance v3, Lhn2$a;

    invoke-direct {v3, v1}, Lhn2$a;-><init>(I)V

    goto :goto_4

    :cond_5
    sget-object v3, Lhn2$b;->a:Lhn2$b;

    :goto_4
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    move-result p0

    if-eq p0, v2, :cond_6

    invoke-static {p0}, Lhn2$a;->a(I)V

    new-instance p1, Lhn2$a;

    invoke-direct {p1, p0}, Lhn2$a;-><init>(I)V

    goto :goto_5

    :cond_6
    sget-object p1, Lhn2$b;->a:Lhn2$b;

    :goto_5
    invoke-direct {v0, v3, p1}, Lt18;-><init>(Lhn2;Lhn2;)V

    return-object v0
.end method

.method public final f(J)V
    .locals 0

    iput-wide p1, p0, Lox1;->b:J

    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Constraints;->isZero-impl(J)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lox1;->c:Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_0

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lox1;->c:Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le02;

    sget-object p2, Lj59;->a:Lj59;

    invoke-interface {p1, p2}, Le02;->resumeWith(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final measure-3p2s80s(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Measurable;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 7

    invoke-virtual {p0, p3, p4}, Lox1;->f(J)V

    invoke-interface {p2, p3, p4}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v2

    new-instance v4, Lnx1;

    const/4 p2, 0x0

    invoke-direct {v4, p0, p2}, Lnx1;-><init>(Ljava/lang/Object;I)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Landroidx/compose/ui/layout/MeasureScope;->layout$default(Landroidx/compose/ui/layout/MeasureScope;IILjava/util/Map;Lnl3;ILjava/lang/Object;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object p0

    return-object p0
.end method
