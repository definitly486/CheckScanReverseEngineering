.class public final Lva8;
.super Lke0;
.source "SourceFile"


# instance fields
.field public final q:Lnd0;

.field public final r:Ljava/lang/String;

.field public final s:Z

.field public final t:Ltn1;

.field public u:Lac9;


# direct methods
.method public constructor <init>(Lox4;Lnd0;Lds7;)V
    .locals 10

    iget-object v0, p3, Lds7;->g:Lds7$b;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lds7$a;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    if-eq v0, v1, :cond_0

    sget-object v0, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    :goto_0
    move-object v3, v0

    goto :goto_1

    :cond_0
    sget-object v0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    goto :goto_0

    :cond_1
    sget-object v0, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    goto :goto_0

    :goto_1
    iget-object v0, p3, Lds7;->h:Lds7$c;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Lds7$a;->b:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v4, v0

    if-eq v0, v2, :cond_4

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v0, 0x0

    :goto_2
    move-object v4, v0

    goto :goto_3

    :cond_2
    sget-object v0, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    goto :goto_2

    :cond_3
    sget-object v0, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    goto :goto_2

    :cond_4
    sget-object v0, Landroid/graphics/Paint$Join;->BEVEL:Landroid/graphics/Paint$Join;

    goto :goto_2

    :goto_3
    iget v5, p3, Lds7;->i:F

    iget-object v6, p3, Lds7;->e:Lfl;

    iget-object v7, p3, Lds7;->f:Ldl;

    iget-object v8, p3, Lds7;->c:Ljava/util/ArrayList;

    iget-object v9, p3, Lds7;->b:Ldl;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v9}, Lke0;-><init>(Lox4;Lnd0;Landroid/graphics/Paint$Cap;Landroid/graphics/Paint$Join;FLfl;Ldl;Ljava/util/ArrayList;Ldl;)V

    iput-object p2, p0, Lva8;->q:Lnd0;

    iget-object v1, p3, Lds7;->a:Ljava/lang/String;

    iput-object v1, p0, Lva8;->r:Ljava/lang/String;

    iget-boolean v1, p3, Lds7;->j:Z

    iput-boolean v1, p0, Lva8;->s:Z

    iget-object v1, p3, Lds7;->d:Lcl;

    invoke-virtual {v1}, Lcl;->a()Lld0;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Ltn1;

    iput-object v3, p0, Lva8;->t:Ltn1;

    invoke-virtual {v1, p0}, Lld0;->a(Lld0$a;)V

    invoke-virtual {p2, v1}, Lnd0;->c(Lld0;)V

    return-void
.end method


# virtual methods
.method public final d(Landroid/graphics/Canvas;Landroid/graphics/Matrix;ILet2;)V
    .locals 3

    iget-boolean v0, p0, Lva8;->s:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lva8;->t:Ltn1;

    invoke-virtual {v0}, Lld0;->b()Lvf4;

    move-result-object v1

    invoke-virtual {v0}, Lld0;->d()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Ltn1;->m(Lvf4;F)I

    move-result v0

    iget-object v1, p0, Lke0;->i:Lch4;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lva8;->u:Lac9;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lac9;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/ColorFilter;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Lke0;->d(Landroid/graphics/Canvas;Landroid/graphics/Matrix;ILet2;)V

    return-void
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lva8;->r:Ljava/lang/String;

    return-object p0
.end method

.method public final i(Lby4;Ljava/lang/Object;)V
    .locals 3

    invoke-super {p0, p1, p2}, Lke0;->i(Lby4;Ljava/lang/Object;)V

    sget-object v0, Lvx4;->a:Landroid/graphics/PointF;

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lva8;->t:Ltn1;

    if-ne p2, v0, :cond_0

    invoke-virtual {v1, p1}, Lld0;->k(Lby4;)V

    return-void

    :cond_0
    sget-object v0, Lvx4;->I:Landroid/graphics/ColorFilter;

    if-ne p2, v0, :cond_2

    iget-object p2, p0, Lva8;->u:Lac9;

    iget-object v0, p0, Lva8;->q:Lnd0;

    if-eqz p2, :cond_1

    invoke-virtual {v0, p2}, Lnd0;->p(Lld0;)V

    :cond_1
    new-instance p2, Lac9;

    const/4 v2, 0x0

    invoke-direct {p2, p1, v2}, Lac9;-><init>(Lby4;Ljava/lang/Object;)V

    iput-object p2, p0, Lva8;->u:Lac9;

    invoke-virtual {p2, p0}, Lld0;->a(Lld0$a;)V

    invoke-virtual {v0, v1}, Lnd0;->c(Lld0;)V

    :cond_2
    return-void
.end method
