.class public final Lku1;
.super Lnd0;
.source "SourceFile"


# instance fields
.field public D:Lld0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lld0<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public final E:Ljava/util/ArrayList;

.field public final F:Landroid/graphics/RectF;

.field public final G:Landroid/graphics/RectF;

.field public final H:Landroid/graphics/RectF;

.field public final I:Lxu5;

.field public final J:Lxu5$b;

.field public K:F

.field public L:Z

.field public final M:Lht2;


# direct methods
.method public constructor <init>(Lox4;Lxk4;Ljava/util/List;Lnw4;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lox4;",
            "Lxk4;",
            "Ljava/util/List<",
            "Lxk4;",
            ">;",
            "Lnw4;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lnd0;-><init>(Lox4;Lxk4;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lku1;->E:Ljava/util/ArrayList;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lku1;->F:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lku1;->G:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lku1;->H:Landroid/graphics/RectF;

    new-instance v0, Lxu5;

    invoke-direct {v0}, Lxu5;-><init>()V

    iput-object v0, p0, Lku1;->I:Lxu5;

    new-instance v0, Lxu5$b;

    invoke-direct {v0}, Lxu5$b;-><init>()V

    iput-object v0, p0, Lku1;->J:Lxu5$b;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lku1;->L:Z

    iget-object p2, p2, Lxk4;->s:Ldl;

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ldl;->p()Ltc3;

    move-result-object p2

    iput-object p2, p0, Lku1;->D:Lld0;

    invoke-virtual {p0, p2}, Lnd0;->c(Lld0;)V

    iget-object p2, p0, Lku1;->D:Lld0;

    invoke-virtual {p2, p0}, Lld0;->a(Lld0$a;)V

    goto :goto_0

    :cond_0
    iput-object v1, p0, Lku1;->D:Lld0;

    :goto_0
    new-instance p2, Landroidx/collection/LongSparseArray;

    iget-object v2, p4, Lnw4;->j:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {p2, v2}, Landroidx/collection/LongSparseArray;-><init>(I)V

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v0

    move-object v3, v1

    :goto_1
    const/4 v4, 0x0

    if-ltz v2, :cond_4

    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lxk4;

    sget-object v6, Lnd0$a;->a:[I

    iget-object v7, v5, Lxk4;->e:Lxk4$a;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Unknown layer type "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v5, Lxk4;->e:Lxk4$a;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lgv4;->b(Ljava/lang/String;)V

    move-object v6, v1

    goto :goto_2

    :pswitch_0
    new-instance v6, Lqs8;

    invoke-direct {v6, p1, v5}, Lqs8;-><init>(Lox4;Lxk4;)V

    goto :goto_2

    :pswitch_1
    new-instance v6, Lxp5;

    invoke-direct {v6, p1, v5}, Lnd0;-><init>(Lox4;Lxk4;)V

    goto :goto_2

    :pswitch_2
    new-instance v6, Lo14;

    invoke-direct {v6, p1, v5}, Lo14;-><init>(Lox4;Lxk4;)V

    goto :goto_2

    :pswitch_3
    new-instance v6, Lr48;

    invoke-direct {v6, p1, v5}, Lr48;-><init>(Lox4;Lxk4;)V

    goto :goto_2

    :pswitch_4
    new-instance v6, Lku1;

    iget-object v7, v5, Lxk4;->g:Ljava/lang/String;

    iget-object v8, p4, Lnw4;->c:Ljava/util/HashMap;

    invoke-virtual {v8, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-direct {v6, p1, v5, v7, p4}, Lku1;-><init>(Lox4;Lxk4;Ljava/util/List;Lnw4;)V

    goto :goto_2

    :pswitch_5
    new-instance v6, Lzr7;

    invoke-direct {v6, p1, v5, p0, p4}, Lzr7;-><init>(Lox4;Lxk4;Lku1;Lnw4;)V

    :goto_2
    if-nez v6, :cond_1

    goto :goto_3

    :cond_1
    iget-object v7, v6, Lnd0;->p:Lxk4;

    iget-wide v7, v7, Lxk4;->d:J

    invoke-virtual {p2, v7, v8, v6}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    if-eqz v3, :cond_2

    iput-object v6, v3, Lnd0;->s:Lnd0;

    move-object v3, v1

    goto :goto_3

    :cond_2
    iget-object v7, p0, Lku1;->E:Ljava/util/ArrayList;

    invoke-virtual {v7, v4, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    sget-object v4, Lku1$a;->a:[I

    iget-object v5, v5, Lxk4;->u:Lxk4$b;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v4, v4, v5

    if-eq v4, v0, :cond_3

    const/4 v5, 0x2

    if-eq v4, v5, :cond_3

    goto :goto_3

    :cond_3
    move-object v3, v6

    :goto_3
    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_1

    :cond_4
    :goto_4
    invoke-virtual {p2}, Landroidx/collection/LongSparseArray;->size()I

    move-result p1

    if-ge v4, p1, :cond_7

    invoke-virtual {p2, v4}, Landroidx/collection/LongSparseArray;->keyAt(I)J

    move-result-wide p3

    invoke-virtual {p2, p3, p4}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnd0;

    if-nez p1, :cond_5

    goto :goto_5

    :cond_5
    iget-object p3, p1, Lnd0;->p:Lxk4;

    iget-wide p3, p3, Lxk4;->f:J

    invoke-virtual {p2, p3, p4}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lnd0;

    if-eqz p3, :cond_6

    iput-object p3, p1, Lnd0;->t:Lnd0;

    :cond_6
    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_7
    iget-object p1, p0, Lnd0;->p:Lxk4;

    iget-object p1, p1, Lxk4;->x:Lft2;

    if-eqz p1, :cond_8

    new-instance p2, Lht2;

    invoke-direct {p2, p0, p0, p1}, Lht2;-><init>(Lnd0;Lnd0;Lft2;)V

    iput-object p2, p0, Lku1;->M:Lht2;

    :cond_8
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final b(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 4

    invoke-super {p0, p1, p2, p3}, Lnd0;->b(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    iget-object p2, p0, Lku1;->E:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p3

    const/4 v0, 0x1

    sub-int/2addr p3, v0

    :goto_0
    if-ltz p3, :cond_0

    iget-object v1, p0, Lku1;->F:Landroid/graphics/RectF;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnd0;

    iget-object v3, p0, Lnd0;->n:Landroid/graphics/Matrix;

    invoke-virtual {v2, v1, v3, v0}, Lnd0;->b(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    invoke-virtual {p1, v1}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final i(Lby4;Ljava/lang/Object;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lnd0;->i(Lby4;Ljava/lang/Object;)V

    sget-object v0, Lvx4;->C:Ljava/lang/Float;

    if-ne p2, v0, :cond_0

    new-instance p2, Lac9;

    const/4 v0, 0x0

    invoke-direct {p2, p1, v0}, Lac9;-><init>(Lby4;Ljava/lang/Object;)V

    iput-object p2, p0, Lku1;->D:Lld0;

    invoke-virtual {p2, p0}, Lld0;->a(Lld0$a;)V

    iget-object p1, p0, Lku1;->D:Lld0;

    invoke-virtual {p0, p1}, Lnd0;->c(Lld0;)V

    return-void

    :cond_0
    const/4 v0, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object p0, p0, Lku1;->M:Lht2;

    if-ne p2, v0, :cond_1

    if-eqz p0, :cond_1

    iget-object p0, p0, Lht2;->c:Ltn1;

    invoke-virtual {p0, p1}, Lld0;->k(Lby4;)V

    return-void

    :cond_1
    sget-object v0, Lvx4;->E:Ljava/lang/Float;

    if-ne p2, v0, :cond_2

    if-eqz p0, :cond_2

    invoke-virtual {p0, p1}, Lht2;->b(Lby4;)V

    return-void

    :cond_2
    sget-object v0, Lvx4;->F:Ljava/lang/Float;

    if-ne p2, v0, :cond_3

    if-eqz p0, :cond_3

    iget-object p0, p0, Lht2;->e:Ltc3;

    invoke-virtual {p0, p1}, Lld0;->k(Lby4;)V

    return-void

    :cond_3
    sget-object v0, Lvx4;->G:Ljava/lang/Float;

    if-ne p2, v0, :cond_4

    if-eqz p0, :cond_4

    iget-object p0, p0, Lht2;->f:Ltc3;

    invoke-virtual {p0, p1}, Lld0;->k(Lby4;)V

    return-void

    :cond_4
    sget-object v0, Lvx4;->H:Ljava/lang/Float;

    if-ne p2, v0, :cond_5

    if-eqz p0, :cond_5

    iget-object p0, p0, Lht2;->g:Ltc3;

    invoke-virtual {p0, p1}, Lld0;->k(Lby4;)V

    :cond_5
    return-void
.end method

.method public final l(Landroid/graphics/Canvas;Landroid/graphics/Matrix;ILet2;)V
    .locals 8

    sget-object v0, Lah4;->a:Ldt;

    const/4 v0, 0x0

    iget-object v1, p0, Lku1;->M:Lht2;

    const/4 v2, 0x1

    if-nez p4, :cond_1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v3, v0

    goto :goto_1

    :cond_1
    :goto_0
    move v3, v2

    :goto_1
    iget-object v4, p0, Lnd0;->o:Lox4;

    iget-boolean v5, v4, Lox4;->u:Z

    const/16 v6, 0xff

    iget-object v7, p0, Lku1;->E:Ljava/util/ArrayList;

    if-eqz v5, :cond_2

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-le v5, v2, :cond_2

    if-ne p3, v6, :cond_3

    :cond_2
    if-eqz v3, :cond_4

    iget-boolean v3, v4, Lox4;->v:Z

    if-eqz v3, :cond_4

    :cond_3
    move v0, v2

    :cond_4
    if-eqz v0, :cond_5

    goto :goto_2

    :cond_5
    move v6, p3

    :goto_2
    if-eqz v1, :cond_6

    invoke-virtual {v1, p2, v6}, Lht2;->a(Landroid/graphics/Matrix;I)Let2;

    move-result-object p4

    :cond_6
    iget-boolean v1, p0, Lku1;->L:Z

    iget-object v3, p0, Lnd0;->p:Lxk4;

    iget-object v4, p0, Lku1;->G:Landroid/graphics/RectF;

    if-nez v1, :cond_7

    const-string v1, "__container"

    iget-object v5, v3, Lxk4;->c:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {v4}, Landroid/graphics/RectF;->setEmpty()V

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnd0;

    iget-object v5, p0, Lku1;->H:Landroid/graphics/RectF;

    invoke-virtual {v3, v5, p2, v2}, Lnd0;->b(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    invoke-virtual {v4, v5}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    goto :goto_3

    :cond_7
    iget v1, v3, Lxk4;->o:F

    iget v3, v3, Lxk4;->p:F

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v5, v1, v3}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-virtual {p2, v4}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    :cond_8
    iget-object v1, p0, Lku1;->I:Lxu5;

    if-eqz v0, :cond_b

    iget-object p0, p0, Lku1;->J:Lxu5$b;

    const/4 v3, 0x0

    iput-object v3, p0, Lxu5$b;->b:Let2;

    iput p3, p0, Lxu5$b;->a:I

    if-eqz p4, :cond_a

    iget p3, p4, Let2;->d:I

    invoke-static {p3}, Landroid/graphics/Color;->alpha(I)I

    move-result p3

    if-lez p3, :cond_9

    iput-object p4, p0, Lxu5$b;->b:Let2;

    goto :goto_4

    :cond_9
    iput-object v3, p0, Lxu5$b;->b:Let2;

    :goto_4
    move-object p4, v3

    :cond_a
    invoke-virtual {v1, p1, v4, p0}, Lxu5;->e(Landroid/graphics/Canvas;Landroid/graphics/RectF;Lxu5$b;)Landroid/graphics/Canvas;

    move-result-object p0

    goto :goto_5

    :cond_b
    move-object p0, p1

    :goto_5
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    move-result p3

    if-eqz p3, :cond_c

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result p3

    sub-int/2addr p3, v2

    :goto_6
    if-ltz p3, :cond_c

    invoke-virtual {v7, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnd0;

    invoke-virtual {v2, p0, p2, v6, p4}, Lnd0;->d(Landroid/graphics/Canvas;Landroid/graphics/Matrix;ILet2;)V

    add-int/lit8 p3, p3, -0x1

    goto :goto_6

    :cond_c
    if-eqz v0, :cond_d

    invoke-virtual {v1}, Lxu5;->c()V

    :cond_d
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    sget-object p0, Lah4;->a:Ldt;

    return-void
.end method

.method public final q(Lnf4;ILjava/util/ArrayList;Lnf4;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lku1;->E:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnd0;

    invoke-virtual {v1, p1, p2, p3, p4}, Lnd0;->a(Lnf4;ILjava/util/ArrayList;Lnf4;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final r(Z)V
    .locals 1

    invoke-super {p0, p1}, Lnd0;->r(Z)V

    iget-object p0, p0, Lku1;->E:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnd0;

    invoke-virtual {v0, p1}, Lnd0;->r(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final s(F)V
    .locals 4

    sget-object v0, Lah4;->a:Ldt;

    iput p1, p0, Lku1;->K:F

    invoke-super {p0, p1}, Lnd0;->s(F)V

    iget-object v0, p0, Lku1;->D:Lld0;

    iget-object v1, p0, Lnd0;->p:Lxk4;

    if-eqz v0, :cond_0

    iget-object p1, p0, Lnd0;->o:Lox4;

    iget-object p1, p1, Lox4;->b:Lnw4;

    iget v2, p1, Lnw4;->m:F

    iget p1, p1, Lnw4;->l:F

    sub-float/2addr v2, p1

    const p1, 0x3c23d70a    # 0.01f

    add-float/2addr v2, p1

    iget-object p1, v1, Lxk4;->b:Lnw4;

    iget p1, p1, Lnw4;->l:F

    invoke-virtual {v0}, Lld0;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget-object v3, v1, Lxk4;->b:Lnw4;

    iget v3, v3, Lnw4;->n:F

    mul-float/2addr v0, v3

    sub-float/2addr v0, p1

    div-float p1, v0, v2

    :cond_0
    iget-object v0, p0, Lku1;->D:Lld0;

    if-nez v0, :cond_1

    iget v0, v1, Lxk4;->n:F

    iget-object v2, v1, Lxk4;->b:Lnw4;

    iget v3, v2, Lnw4;->m:F

    iget v2, v2, Lnw4;->l:F

    sub-float/2addr v3, v2

    div-float/2addr v0, v3

    sub-float/2addr p1, v0

    :cond_1
    iget v0, v1, Lxk4;->m:F

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_2

    const-string v0, "__container"

    iget-object v2, v1, Lxk4;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget v0, v1, Lxk4;->m:F

    div-float/2addr p1, v0

    :cond_2
    iget-object p0, p0, Lku1;->E:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_3

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnd0;

    invoke-virtual {v1, p1}, Lnd0;->s(F)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    sget-object p0, Lah4;->a:Ldt;

    return-void
.end method
