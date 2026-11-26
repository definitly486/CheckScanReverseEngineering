.class public abstract Lnd0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lxs2;
.implements Lld0$a;
.implements Lof4;


# instance fields
.field public A:F

.field public B:Landroid/graphics/BlurMaskFilter;

.field public C:Lch4;

.field public final a:Landroid/graphics/Path;

.field public final b:Landroid/graphics/Matrix;

.field public final c:Landroid/graphics/Matrix;

.field public final d:Lch4;

.field public final e:Lch4;

.field public final f:Lch4;

.field public final g:Lch4;

.field public final h:Lch4;

.field public final i:Landroid/graphics/RectF;

.field public final j:Landroid/graphics/RectF;

.field public final k:Landroid/graphics/RectF;

.field public final l:Landroid/graphics/RectF;

.field public final m:Landroid/graphics/RectF;

.field public final n:Landroid/graphics/Matrix;

.field public final o:Lox4;

.field public final p:Lxk4;

.field public final q:Lm15;

.field public final r:Ltc3;

.field public s:Lnd0;

.field public t:Lnd0;

.field public u:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnd0;",
            ">;"
        }
    .end annotation
.end field

.field public final v:Ljava/util/ArrayList;

.field public final w:Lo19;

.field public x:Z

.field public y:Z

.field public z:Lch4;


# direct methods
.method public constructor <init>(Lox4;Lxk4;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lnd0;->a:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lnd0;->b:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lnd0;->c:Landroid/graphics/Matrix;

    new-instance v0, Lch4;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lnd0;->d:Lch4;

    new-instance v0, Lch4;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v2}, Lch4;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lnd0;->e:Lch4;

    new-instance v0, Lch4;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v3}, Lch4;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lnd0;->f:Lch4;

    new-instance v0, Lch4;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lnd0;->g:Lch4;

    new-instance v4, Lch4;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    new-instance v6, Landroid/graphics/PorterDuffXfermode;

    invoke-direct {v6, v5}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    iput-object v4, p0, Lnd0;->h:Lch4;

    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    iput-object v4, p0, Lnd0;->i:Landroid/graphics/RectF;

    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    iput-object v4, p0, Lnd0;->j:Landroid/graphics/RectF;

    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    iput-object v4, p0, Lnd0;->k:Landroid/graphics/RectF;

    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    iput-object v4, p0, Lnd0;->l:Landroid/graphics/RectF;

    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    iput-object v4, p0, Lnd0;->m:Landroid/graphics/RectF;

    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    iput-object v4, p0, Lnd0;->n:Landroid/graphics/Matrix;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lnd0;->v:Ljava/util/ArrayList;

    iput-boolean v1, p0, Lnd0;->x:Z

    const/4 v4, 0x0

    iput v4, p0, Lnd0;->A:F

    iput-object p1, p0, Lnd0;->o:Lox4;

    iput-object p2, p0, Lnd0;->p:Lxk4;

    iget-object p1, p2, Lxk4;->h:Ljava/util/List;

    iget-object v4, p2, Lxk4;->u:Lxk4$b;

    sget-object v5, Lxk4$b;->INVERT:Lxk4$b;

    if-ne v4, v5, :cond_0

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    goto :goto_0

    :cond_0
    new-instance v3, Landroid/graphics/PorterDuffXfermode;

    invoke-direct {v3, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    :goto_0
    iget-object p2, p2, Lxk4;->i:Lql;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lo19;

    invoke-direct {v0, p2}, Lo19;-><init>(Lql;)V

    iput-object v0, p0, Lnd0;->w:Lo19;

    invoke-virtual {v0, p0}, Lo19;->b(Lld0$a;)V

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_2

    new-instance p2, Lm15;

    invoke-direct {p2, p1}, Lm15;-><init>(Ljava/util/List;)V

    iput-object p2, p0, Lnd0;->q:Lm15;

    iget-object p1, p2, Lm15;->a:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lld0;

    invoke-virtual {p2, p0}, Lld0;->a(Lld0$a;)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lnd0;->q:Lm15;

    iget-object p1, p1, Lm15;->b:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lld0;

    invoke-virtual {p0, p2}, Lnd0;->c(Lld0;)V

    invoke-virtual {p2, p0}, Lld0;->a(Lld0$a;)V

    goto :goto_2

    :cond_2
    iget-object p1, p0, Lnd0;->p:Lxk4;

    iget-object p2, p1, Lxk4;->t:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_5

    new-instance p2, Ltc3;

    iget-object p1, p1, Lxk4;->t:Ljava/util/List;

    invoke-direct {p2, p1}, Lld0;-><init>(Ljava/util/List;)V

    iput-object p2, p0, Lnd0;->r:Ltc3;

    iput-boolean v1, p2, Lld0;->b:Z

    new-instance p1, Lmd0;

    invoke-direct {p1, p0}, Lmd0;-><init>(Lnd0;)V

    invoke-virtual {p2, p1}, Lld0;->a(Lld0$a;)V

    iget-object p1, p0, Lnd0;->r:Ltc3;

    invoke-virtual {p1}, Lld0;->f()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/high16 p2, 0x3f800000    # 1.0f

    cmpl-float p1, p1, p2

    if-nez p1, :cond_3

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    iget-boolean p1, p0, Lnd0;->x:Z

    if-eq v1, p1, :cond_4

    iput-boolean v1, p0, Lnd0;->x:Z

    iget-object p1, p0, Lnd0;->o:Lox4;

    invoke-virtual {p1}, Lox4;->invalidateSelf()V

    :cond_4
    iget-object p1, p0, Lnd0;->r:Ltc3;

    invoke-virtual {p0, p1}, Lnd0;->c(Lld0;)V

    return-void

    :cond_5
    iget-boolean p1, p0, Lnd0;->x:Z

    if-eq v1, p1, :cond_6

    iput-boolean v1, p0, Lnd0;->x:Z

    iget-object p0, p0, Lnd0;->o:Lox4;

    invoke-virtual {p0}, Lox4;->invalidateSelf()V

    :cond_6
    return-void
.end method


# virtual methods
.method public final a(Lnf4;ILjava/util/ArrayList;Lnf4;)V
    .locals 4

    iget-object v0, p0, Lnd0;->s:Lnd0;

    iget-object v1, p0, Lnd0;->p:Lxk4;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lnd0;->p:Lxk4;

    iget-object v0, v0, Lxk4;->c:Ljava/lang/String;

    new-instance v2, Lnf4;

    invoke-direct {v2, p4}, Lnf4;-><init>(Lnf4;)V

    iget-object v3, v2, Lnf4;->a:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lnd0;->s:Lnd0;

    iget-object v0, v0, Lnd0;->p:Lxk4;

    iget-object v0, v0, Lxk4;->c:Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Lnf4;->a(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnd0;->s:Lnd0;

    new-instance v3, Lnf4;

    invoke-direct {v3, v2}, Lnf4;-><init>(Lnf4;)V

    iput-object v0, v3, Lnf4;->b:Lof4;

    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, Lnd0;->s:Lnd0;

    iget-object v0, v0, Lnd0;->p:Lxk4;

    iget-object v0, v0, Lxk4;->c:Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Lnf4;->c(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, v1, Lxk4;->c:Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Lnf4;->d(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnd0;->s:Lnd0;

    iget-object v0, v0, Lnd0;->p:Lxk4;

    iget-object v0, v0, Lxk4;->c:Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Lnf4;->b(ILjava/lang/String;)I

    move-result v0

    add-int/2addr v0, p2

    iget-object v3, p0, Lnd0;->s:Lnd0;

    invoke-virtual {v3, p1, v0, p3, v2}, Lnd0;->q(Lnf4;ILjava/util/ArrayList;Lnf4;)V

    :cond_1
    iget-object v0, v1, Lxk4;->c:Ljava/lang/String;

    iget-object v1, v1, Lxk4;->c:Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Lnf4;->c(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const-string v0, "__container"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    new-instance v0, Lnf4;

    invoke-direct {v0, p4}, Lnf4;-><init>(Lnf4;)V

    iget-object p4, v0, Lnf4;->a:Ljava/util/List;

    invoke-interface {p4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1, p2, v1}, Lnf4;->a(ILjava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_3

    new-instance p4, Lnf4;

    invoke-direct {p4, v0}, Lnf4;-><init>(Lnf4;)V

    iput-object p0, p4, Lnf4;->b:Lof4;

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    move-object p4, v0

    :cond_4
    invoke-virtual {p1, p2, v1}, Lnf4;->d(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1, p2, v1}, Lnf4;->b(ILjava/lang/String;)I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p0, p1, v0, p3, p4}, Lnd0;->q(Lnf4;ILjava/util/ArrayList;Lnf4;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public b(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 1

    iget-object p1, p0, Lnd0;->i:Landroid/graphics/RectF;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-virtual {p0}, Lnd0;->j()V

    iget-object p1, p0, Lnd0;->n:Landroid/graphics/Matrix;

    invoke-virtual {p1, p2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    if-eqz p3, :cond_1

    iget-object p2, p0, Lnd0;->u:Ljava/util/List;

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    :goto_0
    if-ltz p2, :cond_1

    iget-object p3, p0, Lnd0;->u:Ljava/util/List;

    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lnd0;

    iget-object p3, p3, Lnd0;->w:Lo19;

    invoke-virtual {p3}, Lo19;->e()Landroid/graphics/Matrix;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lnd0;->t:Lnd0;

    if-eqz p2, :cond_1

    iget-object p2, p2, Lnd0;->w:Lo19;

    invoke-virtual {p2}, Lo19;->e()Landroid/graphics/Matrix;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    :cond_1
    iget-object p0, p0, Lnd0;->w:Lo19;

    invoke-virtual {p0}, Lo19;->e()Landroid/graphics/Matrix;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    return-void
.end method

.method public final c(Lld0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lld0<",
            "**>;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lnd0;->v:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final d(Landroid/graphics/Canvas;Landroid/graphics/Matrix;ILet2;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v7, p2

    move/from16 v8, p3

    move-object/from16 v9, p4

    sget-object v2, Lah4;->a:Ldt;

    iget-boolean v2, v0, Lnd0;->x:Z

    if-eqz v2, :cond_25

    iget-object v2, v0, Lnd0;->p:Lxk4;

    iget-boolean v3, v2, Lxk4;->v:Z

    iget-object v4, v2, Lxk4;->y:Lbh4;

    if-eqz v3, :cond_0

    goto/16 :goto_11

    :cond_0
    invoke-virtual {v0}, Lnd0;->j()V

    iget-object v10, v0, Lnd0;->b:Landroid/graphics/Matrix;

    invoke-virtual {v10}, Landroid/graphics/Matrix;->reset()V

    invoke-virtual {v10, v7}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget-object v3, v0, Lnd0;->u:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v11, 0x1

    sub-int/2addr v3, v11

    :goto_0
    if-ltz v3, :cond_1

    iget-object v5, v0, Lnd0;->u:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lnd0;

    iget-object v5, v5, Lnd0;->w:Lo19;

    invoke-virtual {v5}, Lo19;->e()Landroid/graphics/Matrix;

    move-result-object v5

    invoke-virtual {v10, v5}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_1
    sget-object v3, Lah4;->a:Ldt;

    iget-object v3, v0, Lnd0;->w:Lo19;

    iget-object v5, v3, Lo19;->p:Lld0;

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Lld0;->f()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    goto :goto_1

    :cond_2
    const/16 v5, 0x64

    :goto_1
    int-to-float v6, v8

    const/high16 v12, 0x437f0000    # 255.0f

    div-float/2addr v6, v12

    int-to-float v5, v5

    mul-float/2addr v6, v5

    const/high16 v5, 0x42c80000    # 100.0f

    div-float/2addr v6, v5

    mul-float/2addr v6, v12

    float-to-int v12, v6

    iget-object v5, v0, Lnd0;->s:Lnd0;

    if-eqz v5, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v0}, Lnd0;->n()Z

    move-result v5

    if-nez v5, :cond_4

    sget-object v5, Lbh4;->NORMAL:Lbh4;

    if-ne v4, v5, :cond_4

    invoke-virtual {v3}, Lo19;->e()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v10, v2}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    invoke-virtual {v0, v1, v10, v12, v9}, Lnd0;->l(Landroid/graphics/Canvas;Landroid/graphics/Matrix;ILet2;)V

    invoke-virtual {v0}, Lnd0;->o()V

    return-void

    :cond_4
    :goto_2
    iget-object v13, v0, Lnd0;->i:Landroid/graphics/RectF;

    const/4 v14, 0x0

    invoke-virtual {v0, v13, v10, v14}, Lnd0;->b(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    iget-object v5, v0, Lnd0;->s:Lnd0;

    const/4 v6, 0x0

    if-eqz v5, :cond_6

    iget-object v2, v2, Lxk4;->u:Lxk4$b;

    sget-object v5, Lxk4$b;->INVERT:Lxk4$b;

    if-ne v2, v5, :cond_5

    goto :goto_3

    :cond_5
    iget-object v2, v0, Lnd0;->l:Landroid/graphics/RectF;

    invoke-virtual {v2, v6, v6, v6, v6}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v5, v0, Lnd0;->s:Lnd0;

    invoke-virtual {v5, v2, v7, v11}, Lnd0;->b(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    invoke-virtual {v13, v2}, Landroid/graphics/RectF;->intersect(Landroid/graphics/RectF;)Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {v13, v6, v6, v6, v6}, Landroid/graphics/RectF;->set(FFFF)V

    :cond_6
    :goto_3
    invoke-virtual {v3}, Lo19;->e()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v10, v2}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    iget-object v2, v0, Lnd0;->k:Landroid/graphics/RectF;

    invoke-virtual {v2, v6, v6, v6, v6}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-virtual {v0}, Lnd0;->n()Z

    move-result v3

    iget-object v14, v0, Lnd0;->q:Lm15;

    iget-object v15, v0, Lnd0;->a:Landroid/graphics/Path;

    if-nez v3, :cond_8

    :cond_7
    :goto_4
    const/4 v2, 0x0

    goto/16 :goto_9

    :cond_8
    iget-object v3, v14, Lm15;->c:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v5, 0x0

    :goto_5
    if-ge v5, v3, :cond_d

    iget-object v6, v14, Lm15;->c:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Li15;

    iget-object v11, v14, Lm15;->a:Ljava/util/ArrayList;

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lld0;

    invoke-virtual {v11}, Lld0;->f()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/graphics/Path;

    if-nez v11, :cond_9

    move/from16 v18, v3

    :goto_6
    move/from16 v19, v5

    goto :goto_8

    :cond_9
    invoke-virtual {v15, v11}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    invoke-virtual {v15, v10}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    sget-object v11, Lnd0$a;->b:[I

    move/from16 v18, v3

    iget-object v3, v6, Li15;->a:Li15$a;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v3, v11, v3

    const/4 v11, 0x1

    if-eq v3, v11, :cond_7

    const/4 v11, 0x2

    if-eq v3, v11, :cond_7

    const/4 v11, 0x3

    if-eq v3, v11, :cond_a

    const/4 v11, 0x4

    if-eq v3, v11, :cond_a

    goto :goto_7

    :cond_a
    iget-boolean v3, v6, Li15;->d:Z

    if-eqz v3, :cond_b

    goto :goto_4

    :cond_b
    :goto_7
    iget-object v3, v0, Lnd0;->m:Landroid/graphics/RectF;

    const/4 v11, 0x0

    invoke-virtual {v15, v3, v11}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    if-nez v5, :cond_c

    invoke-virtual {v2, v3}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    goto :goto_6

    :cond_c
    iget v6, v2, Landroid/graphics/RectF;->left:F

    iget v11, v3, Landroid/graphics/RectF;->left:F

    invoke-static {v6, v11}, Ljava/lang/Math;->min(FF)F

    move-result v6

    iget v11, v2, Landroid/graphics/RectF;->top:F

    move/from16 v19, v5

    iget v5, v3, Landroid/graphics/RectF;->top:F

    invoke-static {v11, v5}, Ljava/lang/Math;->min(FF)F

    move-result v5

    iget v11, v2, Landroid/graphics/RectF;->right:F

    iget v7, v3, Landroid/graphics/RectF;->right:F

    invoke-static {v11, v7}, Ljava/lang/Math;->max(FF)F

    move-result v7

    iget v11, v2, Landroid/graphics/RectF;->bottom:F

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    invoke-static {v11, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    invoke-virtual {v2, v6, v5, v7, v3}, Landroid/graphics/RectF;->set(FFFF)V

    :goto_8
    add-int/lit8 v5, v19, 0x1

    move-object/from16 v7, p2

    move/from16 v3, v18

    const/4 v11, 0x1

    goto :goto_5

    :cond_d
    invoke-virtual {v13, v2}, Landroid/graphics/RectF;->intersect(Landroid/graphics/RectF;)Z

    move-result v2

    if-nez v2, :cond_7

    const/4 v2, 0x0

    invoke-virtual {v13, v2, v2, v2, v2}, Landroid/graphics/RectF;->set(FFFF)V

    :goto_9
    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, v0, Lnd0;->j:Landroid/graphics/RectF;

    invoke-virtual {v6, v2, v2, v3, v5}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v3, v0, Lnd0;->c:Landroid/graphics/Matrix;

    invoke-virtual {v1, v3}, Landroid/graphics/Canvas;->getMatrix(Landroid/graphics/Matrix;)V

    invoke-virtual {v3}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v5

    if-nez v5, :cond_e

    invoke-virtual {v3, v3}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    invoke-virtual {v3, v6}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    :cond_e
    invoke-virtual {v13, v6}, Landroid/graphics/RectF;->intersect(Landroid/graphics/RectF;)Z

    move-result v3

    if-nez v3, :cond_f

    invoke-virtual {v13, v2, v2, v2, v2}, Landroid/graphics/RectF;->set(FFFF)V

    :cond_f
    sget-object v2, Lah4;->a:Ldt;

    invoke-virtual {v13}, Landroid/graphics/RectF;->width()F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_23

    invoke-virtual {v13}, Landroid/graphics/RectF;->height()F

    move-result v2

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_23

    iget-object v7, v0, Lnd0;->d:Lch4;

    const/16 v11, 0xff

    invoke-virtual {v7, v11}, Lch4;->setAlpha(I)V

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lbh4$a;->a:[I

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v2, v2, v5

    const/16 v5, 0x1d

    const/4 v6, 0x0

    packed-switch v2, :pswitch_data_0

    move-object v2, v6

    goto :goto_a

    :pswitch_0
    sget-object v2, Landroidx/core/graphics/BlendModeCompat;->PLUS:Landroidx/core/graphics/BlendModeCompat;

    goto :goto_a

    :pswitch_1
    sget-object v2, Landroidx/core/graphics/BlendModeCompat;->LIGHTEN:Landroidx/core/graphics/BlendModeCompat;

    goto :goto_a

    :pswitch_2
    sget-object v2, Landroidx/core/graphics/BlendModeCompat;->DARKEN:Landroidx/core/graphics/BlendModeCompat;

    goto :goto_a

    :pswitch_3
    sget-object v2, Landroidx/core/graphics/BlendModeCompat;->OVERLAY:Landroidx/core/graphics/BlendModeCompat;

    goto :goto_a

    :pswitch_4
    sget-object v2, Landroidx/core/graphics/BlendModeCompat;->SCREEN:Landroidx/core/graphics/BlendModeCompat;

    goto :goto_a

    :pswitch_5
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v5, :cond_10

    sget-object v2, Landroidx/core/graphics/BlendModeCompat;->MULTIPLY:Landroidx/core/graphics/BlendModeCompat;

    goto :goto_a

    :cond_10
    sget-object v2, Landroidx/core/graphics/BlendModeCompat;->MODULATE:Landroidx/core/graphics/BlendModeCompat;

    :goto_a
    invoke-static {v7, v2}, Landroidx/core/graphics/PaintCompat;->setBlendMode(Landroid/graphics/Paint;Landroidx/core/graphics/BlendModeCompat;)Z

    invoke-static {v1, v7, v13}, Lib9;->e(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/RectF;)V

    sget-object v2, Lbh4;->MULTIPLY:Lbh4;

    if-eq v4, v2, :cond_12

    invoke-virtual/range {p0 .. p1}, Lnd0;->k(Landroid/graphics/Canvas;)V

    :cond_11
    const/4 v11, 0x2

    goto :goto_b

    :cond_12
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v2, v5, :cond_11

    iget-object v2, v0, Lnd0;->C:Lch4;

    if-nez v2, :cond_13

    new-instance v2, Lch4;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, v0, Lnd0;->C:Lch4;

    const/4 v4, -0x1

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    :cond_13
    iget v2, v13, Landroid/graphics/RectF;->left:F

    sub-float/2addr v2, v3

    iget v4, v13, Landroid/graphics/RectF;->top:F

    sub-float/2addr v4, v3

    iget v5, v13, Landroid/graphics/RectF;->right:F

    add-float/2addr v5, v3

    move/from16 v16, v3

    iget v3, v13, Landroid/graphics/RectF;->bottom:F

    add-float v3, v3, v16

    move-object/from16 v16, v6

    iget-object v6, v0, Lnd0;->C:Lch4;

    move v11, v5

    move v5, v3

    move v3, v4

    move v4, v11

    const/4 v11, 0x2

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :goto_b
    invoke-virtual {v0, v1, v10, v12, v9}, Lnd0;->l(Landroid/graphics/Canvas;Landroid/graphics/Matrix;ILet2;)V

    invoke-virtual {v0}, Lnd0;->n()Z

    move-result v2

    if-eqz v2, :cond_21

    iget-object v2, v0, Lnd0;->e:Lch4;

    invoke-virtual {v1, v13, v2}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;)I

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1c

    if-ge v3, v4, :cond_14

    invoke-virtual/range {p0 .. p1}, Lnd0;->k(Landroid/graphics/Canvas;)V

    :cond_14
    const/4 v3, 0x0

    :goto_c
    iget-object v4, v14, Lm15;->c:Ljava/util/List;

    iget-object v5, v14, Lm15;->a:Ljava/util/ArrayList;

    iget-object v6, v14, Lm15;->c:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_20

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Li15;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lld0;

    iget-object v12, v14, Lm15;->b:Ljava/util/ArrayList;

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lld0;

    sget-object v17, Lnd0$a;->b:[I

    iget-object v11, v4, Li15;->a:Li15$a;

    iget-boolean v4, v4, Li15;->d:Z

    invoke-virtual {v11}, Ljava/lang/Enum;->ordinal()I

    move-result v11

    aget v11, v17, v11

    move/from16 v17, v3

    const/4 v3, 0x1

    if-eq v11, v3, :cond_1c

    iget-object v5, v0, Lnd0;->f:Lch4;

    const v6, 0x40233333    # 2.55f

    const/4 v3, 0x2

    if-eq v11, v3, :cond_19

    const/4 v3, 0x3

    if-eq v11, v3, :cond_17

    const/4 v3, 0x4

    if-eq v11, v3, :cond_15

    :goto_d
    const/16 v11, 0xff

    goto/16 :goto_10

    :cond_15
    if-eqz v4, :cond_16

    invoke-static {v1, v7, v13}, Lib9;->e(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/RectF;)V

    invoke-virtual {v1, v13, v7}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    invoke-virtual {v9}, Lld0;->f()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Path;

    invoke-virtual {v15, v4}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    invoke-virtual {v15, v10}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    invoke-virtual {v12}, Lld0;->f()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v6

    float-to-int v4, v4

    invoke-virtual {v7, v4}, Lch4;->setAlpha(I)V

    invoke-virtual {v1, v15, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_d

    :cond_16
    invoke-virtual {v9}, Lld0;->f()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Path;

    invoke-virtual {v15, v4}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    invoke-virtual {v15, v10}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    invoke-virtual {v12}, Lld0;->f()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v6

    float-to-int v4, v4

    invoke-virtual {v7, v4}, Lch4;->setAlpha(I)V

    invoke-virtual {v1, v15, v7}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_d

    :cond_17
    const/4 v3, 0x4

    if-eqz v4, :cond_18

    invoke-static {v1, v2, v13}, Lib9;->e(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/RectF;)V

    invoke-virtual {v1, v13, v7}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    invoke-virtual {v12}, Lld0;->f()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v6

    float-to-int v4, v4

    invoke-virtual {v5, v4}, Lch4;->setAlpha(I)V

    invoke-virtual {v9}, Lld0;->f()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Path;

    invoke-virtual {v15, v4}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    invoke-virtual {v15, v10}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    invoke-virtual {v1, v15, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_d

    :cond_18
    invoke-static {v1, v2, v13}, Lib9;->e(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/RectF;)V

    invoke-virtual {v9}, Lld0;->f()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Path;

    invoke-virtual {v15, v4}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    invoke-virtual {v15, v10}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    invoke-virtual {v12}, Lld0;->f()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v6

    float-to-int v4, v4

    invoke-virtual {v7, v4}, Lch4;->setAlpha(I)V

    invoke-virtual {v1, v15, v7}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_d

    :cond_19
    const/4 v3, 0x4

    if-nez v17, :cond_1a

    const/high16 v11, -0x1000000

    invoke-virtual {v7, v11}, Landroid/graphics/Paint;->setColor(I)V

    const/16 v11, 0xff

    invoke-virtual {v7, v11}, Lch4;->setAlpha(I)V

    invoke-virtual {v1, v13, v7}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :cond_1a
    if-eqz v4, :cond_1b

    invoke-static {v1, v5, v13}, Lib9;->e(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/RectF;)V

    invoke-virtual {v1, v13, v7}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    invoke-virtual {v12}, Lld0;->f()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v6

    float-to-int v4, v4

    invoke-virtual {v5, v4}, Lch4;->setAlpha(I)V

    invoke-virtual {v9}, Lld0;->f()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Path;

    invoke-virtual {v15, v4}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    invoke-virtual {v15, v10}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    invoke-virtual {v1, v15, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_d

    :cond_1b
    invoke-virtual {v9}, Lld0;->f()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Path;

    invoke-virtual {v15, v4}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    invoke-virtual {v15, v10}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    invoke-virtual {v1, v15, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_d

    :cond_1c
    const/4 v3, 0x4

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1d

    goto :goto_f

    :cond_1d
    const/4 v4, 0x0

    :goto_e
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_1f

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Li15;

    iget-object v5, v5, Li15;->a:Li15$a;

    sget-object v9, Li15$a;->MASK_MODE_NONE:Li15$a;

    if-eq v5, v9, :cond_1e

    :goto_f
    goto/16 :goto_d

    :cond_1e
    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    :cond_1f
    const/16 v11, 0xff

    invoke-virtual {v7, v11}, Lch4;->setAlpha(I)V

    invoke-virtual {v1, v13, v7}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :goto_10
    add-int/lit8 v4, v17, 0x1

    move v3, v4

    const/4 v11, 0x2

    goto/16 :goto_c

    :cond_20
    sget-object v2, Lah4;->a:Ldt;

    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    :cond_21
    iget-object v2, v0, Lnd0;->s:Lnd0;

    if-eqz v2, :cond_22

    iget-object v2, v0, Lnd0;->g:Lch4;

    invoke-virtual {v1, v13, v2}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;)I

    invoke-virtual/range {p0 .. p1}, Lnd0;->k(Landroid/graphics/Canvas;)V

    iget-object v2, v0, Lnd0;->s:Lnd0;

    move-object/from16 v7, p2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v7, v8, v3}, Lnd0;->d(Landroid/graphics/Canvas;Landroid/graphics/Matrix;ILet2;)V

    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    :cond_22
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    :cond_23
    iget-boolean v2, v0, Lnd0;->y:Z

    if-eqz v2, :cond_24

    iget-object v2, v0, Lnd0;->z:Lch4;

    if-eqz v2, :cond_24

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v2, v0, Lnd0;->z:Lch4;

    const v3, -0x3d7fd

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, v0, Lnd0;->z:Lch4;

    const/high16 v3, 0x40800000    # 4.0f

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v2, v0, Lnd0;->z:Lch4;

    invoke-virtual {v1, v13, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    iget-object v2, v0, Lnd0;->z:Lch4;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v2, v0, Lnd0;->z:Lch4;

    const v3, 0x50ebebeb

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, v0, Lnd0;->z:Lch4;

    invoke-virtual {v1, v13, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :cond_24
    invoke-virtual {v0}, Lnd0;->o()V

    :cond_25
    :goto_11
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final e()V
    .locals 0

    iget-object p0, p0, Lnd0;->o:Lox4;

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

    return-void
.end method

.method public i(Lby4;Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lnd0;->w:Lo19;

    invoke-virtual {p0, p1, p2}, Lo19;->c(Lby4;Ljava/lang/Object;)Z

    return-void
.end method

.method public final j()V
    .locals 2

    iget-object v0, p0, Lnd0;->u:Ljava/util/List;

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lnd0;->t:Lnd0;

    if-nez v0, :cond_1

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lnd0;->u:Ljava/util/List;

    return-void

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnd0;->u:Ljava/util/List;

    iget-object v0, p0, Lnd0;->t:Lnd0;

    :goto_0
    if-eqz v0, :cond_2

    iget-object v1, p0, Lnd0;->u:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, v0, Lnd0;->t:Lnd0;

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public final k(Landroid/graphics/Canvas;)V
    .locals 9

    sget-object v0, Lah4;->a:Ldt;

    iget-object v0, p0, Lnd0;->i:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v4, v1, v2

    iget v1, v0, Landroid/graphics/RectF;->top:F

    sub-float v5, v1, v2

    iget v1, v0, Landroid/graphics/RectF;->right:F

    add-float v6, v1, v2

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    add-float v7, v0, v2

    iget-object v8, p0, Lnd0;->h:Lch4;

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public abstract l(Landroid/graphics/Canvas;Landroid/graphics/Matrix;ILet2;)V
.end method

.method public m()Lik0;
    .locals 0

    iget-object p0, p0, Lnd0;->p:Lxk4;

    iget-object p0, p0, Lxk4;->w:Lik0;

    return-object p0
.end method

.method public final n()Z
    .locals 0

    iget-object p0, p0, Lnd0;->q:Lm15;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lm15;->a:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final o()V
    .locals 4

    iget-object v0, p0, Lnd0;->o:Lox4;

    iget-object v0, v0, Lox4;->b:Lnw4;

    iget-object v0, v0, Lnw4;->a:Ls46;

    iget-object p0, p0, Lnd0;->p:Lxk4;

    iget-object p0, p0, Lxk4;->c:Ljava/lang/String;

    iget-object v1, v0, Ls46;->c:Ljava/util/HashMap;

    iget-boolean v2, v0, Ls46;->a:Z

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc85;

    if-nez v2, :cond_1

    new-instance v2, Lc85;

    invoke-direct {v2}, Lc85;-><init>()V

    invoke-virtual {v1, p0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget v1, v2, Lc85;->a:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v2, Lc85;->a:I

    const v3, 0x7fffffff

    if-ne v1, v3, :cond_2

    div-int/lit8 v1, v1, 0x2

    iput v1, v2, Lc85;->a:I

    :cond_2
    const-string v1, "__container"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    iget-object p0, v0, Ls46;->b:Landroidx/collection/ArraySet;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls46$a;

    invoke-interface {v0}, Ls46$a;->a()V

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method public final p(Lld0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lld0<",
            "**>;)V"
        }
    .end annotation

    iget-object p0, p0, Lnd0;->v:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public q(Lnf4;ILjava/util/ArrayList;Lnf4;)V
    .locals 0

    return-void
.end method

.method public r(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lnd0;->z:Lch4;

    if-nez v0, :cond_0

    new-instance v0, Lch4;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lnd0;->z:Lch4;

    :cond_0
    iput-boolean p1, p0, Lnd0;->y:Z

    return-void
.end method

.method public s(F)V
    .locals 4

    sget-object v0, Lah4;->a:Ldt;

    iget-object v0, p0, Lnd0;->w:Lo19;

    iget-object v1, v0, Lo19;->p:Lld0;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Lld0;->j(F)V

    :cond_0
    iget-object v1, v0, Lo19;->v:Lld0;

    if-eqz v1, :cond_1

    invoke-virtual {v1, p1}, Lld0;->j(F)V

    :cond_1
    iget-object v1, v0, Lo19;->w:Lld0;

    if-eqz v1, :cond_2

    invoke-virtual {v1, p1}, Lld0;->j(F)V

    :cond_2
    iget-object v1, v0, Lo19;->l:Lld0;

    if-eqz v1, :cond_3

    invoke-virtual {v1, p1}, Lld0;->j(F)V

    :cond_3
    iget-object v1, v0, Lo19;->m:Lld0;

    if-eqz v1, :cond_4

    invoke-virtual {v1, p1}, Lld0;->j(F)V

    :cond_4
    iget-object v1, v0, Lo19;->n:Lld0;

    if-eqz v1, :cond_5

    invoke-virtual {v1, p1}, Lld0;->j(F)V

    :cond_5
    iget-object v1, v0, Lo19;->o:Lld0;

    if-eqz v1, :cond_6

    invoke-virtual {v1, p1}, Lld0;->j(F)V

    :cond_6
    iget-object v1, v0, Lo19;->q:Ltc3;

    if-eqz v1, :cond_7

    invoke-virtual {v1, p1}, Lld0;->j(F)V

    :cond_7
    iget-object v1, v0, Lo19;->r:Ltc3;

    if-eqz v1, :cond_8

    invoke-virtual {v1, p1}, Lld0;->j(F)V

    :cond_8
    iget-object v1, v0, Lo19;->s:Ltc3;

    if-eqz v1, :cond_9

    invoke-virtual {v1, p1}, Lld0;->j(F)V

    :cond_9
    iget-object v1, v0, Lo19;->t:Ltc3;

    if-eqz v1, :cond_a

    invoke-virtual {v1, p1}, Lld0;->j(F)V

    :cond_a
    iget-object v0, v0, Lo19;->u:Ltc3;

    if-eqz v0, :cond_b

    invoke-virtual {v0, p1}, Lld0;->j(F)V

    :cond_b
    const/4 v0, 0x0

    iget-object v1, p0, Lnd0;->q:Lm15;

    if-eqz v1, :cond_d

    iget-object v1, v1, Lm15;->a:Ljava/util/ArrayList;

    move v2, v0

    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_c

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lld0;

    invoke-virtual {v3, p1}, Lld0;->j(F)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_c
    sget-object v1, Lah4;->a:Ldt;

    :cond_d
    iget-object v1, p0, Lnd0;->r:Ltc3;

    if-eqz v1, :cond_e

    invoke-virtual {v1, p1}, Lld0;->j(F)V

    :cond_e
    iget-object v1, p0, Lnd0;->s:Lnd0;

    if-eqz v1, :cond_f

    invoke-virtual {v1, p1}, Lnd0;->s(F)V

    :cond_f
    :goto_1
    iget-object v1, p0, Lnd0;->v:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_10

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lld0;

    invoke-virtual {v1, p1}, Lld0;->j(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_10
    sget-object p0, Lah4;->a:Ldt;

    return-void
.end method
