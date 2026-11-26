.class public final Lj27;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lxs2;
.implements Ll46;
.implements Lwr3;
.implements Lld0$a;
.implements Lpf4;


# instance fields
.field public final a:Landroid/graphics/Matrix;

.field public final b:Landroid/graphics/Path;

.field public final c:Lox4;

.field public final d:Lnd0;

.field public final e:Ljava/lang/String;

.field public final f:Z

.field public final g:Ltc3;

.field public final h:Ltc3;

.field public final i:Lo19;

.field public j:Ltx1;


# direct methods
.method public constructor <init>(Lox4;Lnd0;Li27;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lj27;->a:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lj27;->b:Landroid/graphics/Path;

    iput-object p1, p0, Lj27;->c:Lox4;

    iput-object p2, p0, Lj27;->d:Lnd0;

    iget-object p1, p3, Li27;->a:Ljava/lang/String;

    iput-object p1, p0, Lj27;->e:Ljava/lang/String;

    iget-boolean p1, p3, Li27;->e:Z

    iput-boolean p1, p0, Lj27;->f:Z

    iget-object p1, p3, Li27;->b:Ldl;

    invoke-virtual {p1}, Ldl;->p()Ltc3;

    move-result-object p1

    iput-object p1, p0, Lj27;->g:Ltc3;

    invoke-virtual {p2, p1}, Lnd0;->c(Lld0;)V

    invoke-virtual {p1, p0}, Lld0;->a(Lld0$a;)V

    iget-object p1, p3, Li27;->c:Ldl;

    invoke-virtual {p1}, Ldl;->p()Ltc3;

    move-result-object p1

    iput-object p1, p0, Lj27;->h:Ltc3;

    invoke-virtual {p2, p1}, Lnd0;->c(Lld0;)V

    invoke-virtual {p1, p0}, Lld0;->a(Lld0$a;)V

    iget-object p1, p3, Li27;->d:Lql;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p3, Lo19;

    invoke-direct {p3, p1}, Lo19;-><init>(Lql;)V

    iput-object p3, p0, Lj27;->i:Lo19;

    invoke-virtual {p3, p2}, Lo19;->a(Lnd0;)V

    invoke-virtual {p3, p0}, Lo19;->b(Lld0$a;)V

    return-void
.end method


# virtual methods
.method public final a(Lnf4;ILjava/util/ArrayList;Lnf4;)V
    .locals 3

    invoke-static {p1, p2, p3, p4, p0}, Lhb5;->g(Lnf4;ILjava/util/ArrayList;Lnf4;Lpf4;)V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lj27;->j:Ltx1;

    iget-object v1, v1, Ltx1;->i:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lj27;->j:Ltx1;

    iget-object v1, v1, Ltx1;->i:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsx1;

    instance-of v2, v1, Lpf4;

    if-eqz v2, :cond_0

    check-cast v1, Lpf4;

    invoke-static {p1, p2, p3, p4, v1}, Lhb5;->g(Lnf4;ILjava/util/ArrayList;Lnf4;Lpf4;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final b(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 0

    iget-object p0, p0, Lj27;->j:Ltx1;

    invoke-virtual {p0, p1, p2, p3}, Ltx1;->b(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    return-void
.end method

.method public final c(Ljava/util/ListIterator;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ListIterator<",
            "Lsx1;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lj27;->j:Ltx1;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    invoke-interface {p1}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsx1;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {p1}, Ljava/util/ListIterator;->remove()V

    goto :goto_1

    :cond_2
    invoke-static {v6}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    new-instance v1, Ltx1;

    iget-boolean v5, p0, Lj27;->f:Z

    const/4 v7, 0x0

    iget-object v2, p0, Lj27;->c:Lox4;

    iget-object v3, p0, Lj27;->d:Lnd0;

    const-string v4, "Repeater"

    invoke-direct/range {v1 .. v7}, Ltx1;-><init>(Lox4;Lnd0;Ljava/lang/String;ZLjava/util/ArrayList;Lql;)V

    iput-object v1, p0, Lj27;->j:Ltx1;

    return-void
.end method

.method public final d(Landroid/graphics/Canvas;Landroid/graphics/Matrix;ILet2;)V
    .locals 9

    iget-object v0, p0, Lj27;->g:Ltc3;

    invoke-virtual {v0}, Lld0;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget-object v1, p0, Lj27;->h:Ltc3;

    invoke-virtual {v1}, Lld0;->f()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget-object v2, p0, Lj27;->i:Lo19;

    iget-object v3, v2, Lo19;->v:Lld0;

    invoke-virtual {v3}, Lld0;->f()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    const/high16 v4, 0x42c80000    # 100.0f

    div-float/2addr v3, v4

    iget-object v5, v2, Lo19;->w:Lld0;

    invoke-virtual {v5}, Lld0;->f()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    div-float/2addr v5, v4

    float-to-int v4, v0

    add-int/lit8 v4, v4, -0x1

    :goto_0
    if-ltz v4, :cond_0

    iget-object v6, p0, Lj27;->a:Landroid/graphics/Matrix;

    invoke-virtual {v6, p2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    int-to-float v7, v4

    add-float v8, v7, v1

    invoke-virtual {v2, v8}, Lo19;->f(F)Landroid/graphics/Matrix;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    int-to-float v8, p3

    div-float/2addr v7, v0

    invoke-static {v3, v5, v7}, Lhb5;->f(FFF)F

    move-result v7

    mul-float/2addr v7, v8

    iget-object v8, p0, Lj27;->j:Ltx1;

    float-to-int v7, v7

    invoke-virtual {v8, p1, v6, v7, p4}, Ltx1;->d(Landroid/graphics/Canvas;Landroid/graphics/Matrix;ILet2;)V

    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final e()V
    .locals 0

    iget-object p0, p0, Lj27;->c:Lox4;

    invoke-virtual {p0}, Lox4;->invalidateSelf()V

    return-void
.end method

.method public final f(Ljava/util/List;Ljava/util/List;)V
    .locals 0
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

    iget-object p0, p0, Lj27;->j:Ltx1;

    invoke-virtual {p0, p1, p2}, Ltx1;->f(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lj27;->e:Ljava/lang/String;

    return-object p0
.end method

.method public final getPath()Landroid/graphics/Path;
    .locals 6

    iget-object v0, p0, Lj27;->j:Ltx1;

    invoke-virtual {v0}, Ltx1;->getPath()Landroid/graphics/Path;

    move-result-object v0

    iget-object v1, p0, Lj27;->b:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    iget-object v2, p0, Lj27;->g:Ltc3;

    invoke-virtual {v2}, Lld0;->f()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iget-object v3, p0, Lj27;->h:Ltc3;

    invoke-virtual {v3}, Lld0;->f()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    float-to-int v2, v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_0

    int-to-float v4, v2

    add-float/2addr v4, v3

    iget-object v5, p0, Lj27;->i:Lo19;

    invoke-virtual {v5, v4}, Lo19;->f(F)Landroid/graphics/Matrix;

    move-result-object v4

    iget-object v5, p0, Lj27;->a:Landroid/graphics/Matrix;

    invoke-virtual {v5, v4}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    invoke-virtual {v1, v0, v5}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public final i(Lby4;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lj27;->i:Lo19;

    invoke-virtual {v0, p1, p2}, Lo19;->c(Lby4;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lvx4;->s:Ljava/lang/Float;

    if-ne p2, v0, :cond_1

    iget-object p0, p0, Lj27;->g:Ltc3;

    invoke-virtual {p0, p1}, Lld0;->k(Lby4;)V

    return-void

    :cond_1
    sget-object v0, Lvx4;->t:Ljava/lang/Float;

    if-ne p2, v0, :cond_2

    iget-object p0, p0, Lj27;->h:Ltc3;

    invoke-virtual {p0, p1}, Lld0;->k(Lby4;)V

    :cond_2
    :goto_0
    return-void
.end method
