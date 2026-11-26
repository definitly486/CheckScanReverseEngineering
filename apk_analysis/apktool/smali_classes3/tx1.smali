.class public final Ltx1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lxs2;
.implements Ll46;
.implements Lld0$a;
.implements Lof4;


# instance fields
.field public final a:Lxu5$b;

.field public final b:Landroid/graphics/RectF;

.field public final c:Lxu5;

.field public final d:Landroid/graphics/Matrix;

.field public final e:Landroid/graphics/Path;

.field public final f:Landroid/graphics/RectF;

.field public final g:Ljava/lang/String;

.field public final h:Z

.field public final i:Ljava/util/ArrayList;

.field public final j:Lox4;

.field public k:Ljava/util/ArrayList;

.field public final l:Lo19;


# direct methods
.method public constructor <init>(Lox4;Lnd0;Ljava/lang/String;ZLjava/util/ArrayList;Lql;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lxu5$b;

    invoke-direct {v0}, Lxu5$b;-><init>()V

    iput-object v0, p0, Ltx1;->a:Lxu5$b;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Ltx1;->b:Landroid/graphics/RectF;

    new-instance v0, Lxu5;

    invoke-direct {v0}, Lxu5;-><init>()V

    iput-object v0, p0, Ltx1;->c:Lxu5;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Ltx1;->d:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Ltx1;->e:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Ltx1;->f:Landroid/graphics/RectF;

    iput-object p3, p0, Ltx1;->g:Ljava/lang/String;

    iput-object p1, p0, Ltx1;->j:Lox4;

    iput-boolean p4, p0, Ltx1;->h:Z

    iput-object p5, p0, Ltx1;->i:Ljava/util/ArrayList;

    if-eqz p6, :cond_0

    new-instance p1, Lo19;

    invoke-direct {p1, p6}, Lo19;-><init>(Lql;)V

    iput-object p1, p0, Ltx1;->l:Lo19;

    invoke-virtual {p1, p2}, Lo19;->a(Lnd0;)V

    invoke-virtual {p1, p0}, Lo19;->b(Lld0$a;)V

    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p5}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_0
    if-ltz p1, :cond_2

    invoke-virtual {p5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lsx1;

    instance-of p3, p2, Lwr3;

    if-eqz p3, :cond_1

    check-cast p2, Lwr3;

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_1
    if-ltz p1, :cond_3

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lwr3;

    invoke-virtual {p5}, Ljava/util/ArrayList;->size()I

    move-result p3

    invoke-virtual {p5, p3}, Ljava/util/ArrayList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p3

    invoke-interface {p2, p3}, Lwr3;->c(Ljava/util/ListIterator;)V

    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public constructor <init>(Lox4;Lnd0;Lwr7;Lnw4;)V
    .locals 7

    .line 128
    iget-object v3, p3, Lwr7;->a:Ljava/lang/String;

    .line 129
    iget-boolean v4, p3, Lwr7;->c:Z

    .line 130
    iget-object p3, p3, Lwr7;->b:Ljava/util/List;

    .line 131
    new-instance v5, Ljava/util/ArrayList;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v0, 0x0

    move v1, v0

    .line 132
    :goto_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 133
    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldy1;

    invoke-interface {v2, p1, p4, p2}, Ldy1;->a(Lox4;Lnw4;Lnd0;)Lsx1;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 134
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 135
    :cond_1
    :goto_1
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p4

    if-ge v0, p4, :cond_3

    .line 136
    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ldy1;

    .line 137
    instance-of v1, p4, Lql;

    if-eqz v1, :cond_2

    .line 138
    check-cast p4, Lql;

    :goto_2
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, p4

    goto :goto_3

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    const/4 p4, 0x0

    goto :goto_2

    .line 139
    :goto_3
    invoke-direct/range {v0 .. v6}, Ltx1;-><init>(Lox4;Lnd0;Ljava/lang/String;ZLjava/util/ArrayList;Lql;)V

    return-void
.end method


# virtual methods
.method public final a(Lnf4;ILjava/util/ArrayList;Lnf4;)V
    .locals 3

    iget-object v0, p0, Ltx1;->g:Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Lnf4;->c(ILjava/lang/String;)Z

    move-result v1

    const-string v2, "__container"

    if-nez v1, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Lnf4;

    invoke-direct {v1, p4}, Lnf4;-><init>(Lnf4;)V

    iget-object p4, v1, Lnf4;->a:Ljava/util/List;

    invoke-interface {p4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1, p2, v0}, Lnf4;->a(ILjava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_1

    new-instance p4, Lnf4;

    invoke-direct {p4, v1}, Lnf4;-><init>(Lnf4;)V

    iput-object p0, p4, Lnf4;->b:Lof4;

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    move-object p4, v1

    :cond_2
    invoke-virtual {p1, p2, v0}, Lnf4;->d(ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p1, p2, v0}, Lnf4;->b(ILjava/lang/String;)I

    move-result v0

    add-int/2addr v0, p2

    const/4 p2, 0x0

    :goto_0
    iget-object v1, p0, Ltx1;->i:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p2, v2, :cond_4

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsx1;

    instance-of v2, v1, Lof4;

    if-eqz v2, :cond_3

    check-cast v1, Lof4;

    invoke-interface {v1, p1, v0, p3, p4}, Lof4;->a(Lnf4;ILjava/util/ArrayList;Lnf4;)V

    :cond_3
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    return-void
.end method

.method public final b(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 4

    iget-object v0, p0, Ltx1;->d:Landroid/graphics/Matrix;

    invoke-virtual {v0, p2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget-object p2, p0, Ltx1;->l:Lo19;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lo19;->e()Landroid/graphics/Matrix;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    :cond_0
    iget-object p2, p0, Ltx1;->f:Landroid/graphics/RectF;

    const/4 v1, 0x0

    invoke-virtual {p2, v1, v1, v1, v1}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object p0, p0, Ltx1;->i:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_2

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsx1;

    instance-of v3, v2, Lxs2;

    if-eqz v3, :cond_1

    check-cast v2, Lxs2;

    invoke-interface {v2, p2, v0, p3}, Lxs2;->b(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    invoke-virtual {p1, p2}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final c()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ll46;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Ltx1;->k:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ltx1;->k:Ljava/util/ArrayList;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Ltx1;->i:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsx1;

    instance-of v2, v1, Ll46;

    if-eqz v2, :cond_0

    iget-object v2, p0, Ltx1;->k:Ljava/util/ArrayList;

    check-cast v1, Ll46;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Ltx1;->k:Ljava/util/ArrayList;

    return-object p0
.end method

.method public final d(Landroid/graphics/Canvas;Landroid/graphics/Matrix;ILet2;)V
    .locals 7

    iget-boolean v0, p0, Ltx1;->h:Z

    if-eqz v0, :cond_0

    goto/16 :goto_7

    :cond_0
    iget-object v0, p0, Ltx1;->d:Landroid/graphics/Matrix;

    invoke-virtual {v0, p2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget-object v1, p0, Ltx1;->l:Lo19;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lo19;->e()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    iget-object v1, v1, Lo19;->p:Lld0;

    if-nez v1, :cond_1

    const/16 v1, 0x64

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lld0;->f()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_0
    int-to-float v1, v1

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    int-to-float p3, p3

    mul-float/2addr v1, p3

    const/high16 p3, 0x437f0000    # 255.0f

    div-float/2addr v1, p3

    mul-float/2addr v1, p3

    float-to-int p3, v1

    :cond_2
    iget-object v1, p0, Ltx1;->j:Lox4;

    iget-boolean v2, v1, Lox4;->u:Z

    const/16 v3, 0xff

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Ltx1;->j()Z

    move-result v2

    if-eqz v2, :cond_3

    if-ne p3, v3, :cond_4

    :cond_3
    if-eqz p4, :cond_5

    iget-boolean v1, v1, Lox4;->v:Z

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Ltx1;->j()Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_4
    move v1, v4

    goto :goto_1

    :cond_5
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_6

    goto :goto_2

    :cond_6
    move v3, p3

    :goto_2
    iget-object v2, p0, Ltx1;->c:Lxu5;

    if-eqz v1, :cond_9

    iget-object v5, p0, Ltx1;->b:Landroid/graphics/RectF;

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v6, v6, v6}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-virtual {p0, v5, p2, v4}, Ltx1;->b(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    iget-object p2, p0, Ltx1;->a:Lxu5$b;

    iput p3, p2, Lxu5$b;->a:I

    const/4 p3, 0x0

    if-eqz p4, :cond_8

    iget v6, p4, Let2;->d:I

    invoke-static {v6}, Landroid/graphics/Color;->alpha(I)I

    move-result v6

    if-lez v6, :cond_7

    iput-object p4, p2, Lxu5$b;->b:Let2;

    goto :goto_3

    :cond_7
    iput-object p3, p2, Lxu5$b;->b:Let2;

    :goto_3
    move-object p4, p3

    goto :goto_4

    :cond_8
    iput-object p3, p2, Lxu5$b;->b:Let2;

    :goto_4
    invoke-virtual {v2, p1, v5, p2}, Lxu5;->e(Landroid/graphics/Canvas;Landroid/graphics/RectF;Lxu5$b;)Landroid/graphics/Canvas;

    move-result-object p1

    goto :goto_5

    :cond_9
    if-eqz p4, :cond_a

    new-instance p2, Let2;

    invoke-direct {p2, p4}, Let2;-><init>(Let2;)V

    invoke-virtual {p2, v3}, Let2;->b(I)V

    move-object p4, p2

    :cond_a
    :goto_5
    iget-object p0, p0, Ltx1;->i:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p2

    sub-int/2addr p2, v4

    :goto_6
    if-ltz p2, :cond_c

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    instance-of v4, p3, Lxs2;

    if-eqz v4, :cond_b

    check-cast p3, Lxs2;

    invoke-interface {p3, p1, v0, v3, p4}, Lxs2;->d(Landroid/graphics/Canvas;Landroid/graphics/Matrix;ILet2;)V

    :cond_b
    add-int/lit8 p2, p2, -0x1

    goto :goto_6

    :cond_c
    if-eqz v1, :cond_d

    invoke-virtual {v2}, Lxu5;->c()V

    :cond_d
    :goto_7
    return-void
.end method

.method public final e()V
    .locals 0

    iget-object p0, p0, Ltx1;->j:Lox4;

    invoke-virtual {p0}, Lox4;->invalidateSelf()V

    return-void
.end method

.method public final f(Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lsx1;",
            ">;",
            "Ljava/util/List<",
            "Lsx1;",
            ">;)V"
        }
    .end annotation

    new-instance p2, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iget-object p0, p0, Ltx1;->i:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v1, v0

    invoke-direct {p2, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_0
    if-ltz p1, :cond_0

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsx1;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Lsx1;->f(Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public final getPath()Landroid/graphics/Path;
    .locals 5

    iget-object v0, p0, Ltx1;->d:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    iget-object v1, p0, Ltx1;->l:Lo19;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lo19;->e()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    :cond_0
    iget-object v1, p0, Ltx1;->e:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    iget-boolean v2, p0, Ltx1;->h:Z

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    iget-object p0, p0, Ltx1;->i:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_3

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lsx1;

    instance-of v4, v3, Ll46;

    if-eqz v4, :cond_2

    check-cast v3, Ll46;

    invoke-interface {v3}, Ll46;->getPath()Landroid/graphics/Path;

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-object v1
.end method

.method public final i(Lby4;Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Ltx1;->l:Lo19;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Lo19;->c(Lby4;Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final j()Z
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    iget-object v3, p0, Ltx1;->i:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lxs2;

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    const/4 v3, 0x2

    if-lt v2, v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method
