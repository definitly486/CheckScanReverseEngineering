.class public final Lqs8;
.super Lnd0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lqs8$d;
    }
.end annotation


# instance fields
.field public final D:Ljava/lang/StringBuilder;

.field public final E:Ljava/lang/StringBuilder;

.field public final F:Ljava/lang/StringBuilder;

.field public final G:Ljava/lang/StringBuilder;

.field public final H:Landroid/graphics/RectF;

.field public final I:Landroid/graphics/Matrix;

.field public final J:Lqs8$a;

.field public final K:Lqs8$b;

.field public final L:Ljava/util/HashMap;

.field public final M:Landroidx/collection/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/LongSparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final N:Ljava/util/ArrayList;

.field public final O:Ljava/util/ArrayList;

.field public final P:Lis8;

.field public final Q:Lox4;

.field public final R:Lnw4;

.field public final S:Lts8;

.field public final T:Ltn1;

.field public U:Lac9;

.field public final V:Ltn1;

.field public W:Lac9;

.field public final X:Ltc3;

.field public Y:Lac9;

.field public final Z:Ltc3;

.field public a0:Lac9;

.field public final b0:Lb84;

.field public c0:Lac9;

.field public d0:Lac9;

.field public final e0:Lb84;

.field public final f0:Lb84;

.field public final g0:Lb84;


# direct methods
.method public constructor <init>(Lox4;Lxk4;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Lnd0;-><init>(Lox4;Lxk4;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lqs8;->D:Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lqs8;->E:Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lqs8;->F:Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lqs8;->G:Ljava/lang/StringBuilder;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lqs8;->H:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lqs8;->I:Landroid/graphics/Matrix;

    new-instance v0, Lqs8$a;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iput-object v0, p0, Lqs8;->J:Lqs8$a;

    new-instance v0, Lqs8$b;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iput-object v0, p0, Lqs8;->K:Lqs8$b;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lqs8;->L:Ljava/util/HashMap;

    new-instance v0, Landroidx/collection/LongSparseArray;

    invoke-direct {v0}, Landroidx/collection/LongSparseArray;-><init>()V

    iput-object v0, p0, Lqs8;->M:Landroidx/collection/LongSparseArray;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lqs8;->N:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lqs8;->O:Ljava/util/ArrayList;

    sget-object v0, Lts8;->INDEX:Lts8;

    iput-object v0, p0, Lqs8;->S:Lts8;

    iput-object p1, p0, Lqs8;->Q:Lox4;

    iget-object p1, p2, Lxk4;->b:Lnw4;

    iput-object p1, p0, Lqs8;->R:Lnw4;

    iget-object p1, p2, Lxk4;->q:Lll;

    new-instance v0, Lis8;

    iget-object p1, p1, Lu1;->b:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    invoke-direct {v0, p1}, Lld0;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lqs8;->P:Lis8;

    invoke-virtual {v0, p0}, Lld0;->a(Lld0$a;)V

    invoke-virtual {p0, v0}, Lnd0;->c(Lld0;)V

    iget-object p1, p2, Lxk4;->r:Lml;

    if-eqz p1, :cond_0

    iget-object p2, p1, Lml;->a:Ljava/lang/Object;

    check-cast p2, Lpl;

    if-eqz p2, :cond_0

    iget-object p2, p2, Lpl;->a:Lcl;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcl;->a()Lld0;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Ltn1;

    iput-object v0, p0, Lqs8;->T:Ltn1;

    invoke-virtual {p2, p0}, Lld0;->a(Lld0$a;)V

    invoke-virtual {p0, p2}, Lnd0;->c(Lld0;)V

    :cond_0
    if-eqz p1, :cond_1

    iget-object p2, p1, Lml;->a:Ljava/lang/Object;

    check-cast p2, Lpl;

    if-eqz p2, :cond_1

    iget-object p2, p2, Lpl;->b:Lcl;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcl;->a()Lld0;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Ltn1;

    iput-object v0, p0, Lqs8;->V:Ltn1;

    invoke-virtual {p2, p0}, Lld0;->a(Lld0$a;)V

    invoke-virtual {p0, p2}, Lnd0;->c(Lld0;)V

    :cond_1
    if-eqz p1, :cond_2

    iget-object p2, p1, Lml;->a:Ljava/lang/Object;

    check-cast p2, Lpl;

    if-eqz p2, :cond_2

    iget-object p2, p2, Lpl;->c:Ldl;

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ldl;->p()Ltc3;

    move-result-object p2

    iput-object p2, p0, Lqs8;->X:Ltc3;

    invoke-virtual {p2, p0}, Lld0;->a(Lld0$a;)V

    invoke-virtual {p0, p2}, Lnd0;->c(Lld0;)V

    :cond_2
    if-eqz p1, :cond_3

    iget-object p2, p1, Lml;->a:Ljava/lang/Object;

    check-cast p2, Lpl;

    if-eqz p2, :cond_3

    iget-object p2, p2, Lpl;->d:Ldl;

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ldl;->p()Ltc3;

    move-result-object p2

    iput-object p2, p0, Lqs8;->Z:Ltc3;

    invoke-virtual {p2, p0}, Lld0;->a(Lld0$a;)V

    invoke-virtual {p0, p2}, Lnd0;->c(Lld0;)V

    :cond_3
    if-eqz p1, :cond_4

    iget-object p2, p1, Lml;->a:Ljava/lang/Object;

    check-cast p2, Lpl;

    if-eqz p2, :cond_4

    iget-object p2, p2, Lpl;->e:Lfl;

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Lfl;->a()Lld0;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Lb84;

    iput-object v0, p0, Lqs8;->b0:Lb84;

    invoke-virtual {p2, p0}, Lld0;->a(Lld0$a;)V

    invoke-virtual {p0, p2}, Lnd0;->c(Lld0;)V

    :cond_4
    if-eqz p1, :cond_5

    iget-object p2, p1, Lml;->b:Ljava/lang/Object;

    check-cast p2, Lol;

    if-eqz p2, :cond_5

    iget-object p2, p2, Lol;->a:Lfl;

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Lfl;->a()Lld0;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Lb84;

    iput-object v0, p0, Lqs8;->e0:Lb84;

    invoke-virtual {p2, p0}, Lld0;->a(Lld0$a;)V

    invoke-virtual {p0, p2}, Lnd0;->c(Lld0;)V

    :cond_5
    if-eqz p1, :cond_6

    iget-object p2, p1, Lml;->b:Ljava/lang/Object;

    check-cast p2, Lol;

    if-eqz p2, :cond_6

    iget-object p2, p2, Lol;->b:Lfl;

    if-eqz p2, :cond_6

    invoke-virtual {p2}, Lfl;->a()Lld0;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Lb84;

    iput-object v0, p0, Lqs8;->f0:Lb84;

    invoke-virtual {p2, p0}, Lld0;->a(Lld0$a;)V

    invoke-virtual {p0, p2}, Lnd0;->c(Lld0;)V

    :cond_6
    if-eqz p1, :cond_7

    iget-object p2, p1, Lml;->b:Ljava/lang/Object;

    check-cast p2, Lol;

    if-eqz p2, :cond_7

    iget-object p2, p2, Lol;->c:Lfl;

    if-eqz p2, :cond_7

    invoke-virtual {p2}, Lfl;->a()Lld0;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Lb84;

    iput-object v0, p0, Lqs8;->g0:Lb84;

    invoke-virtual {p2, p0}, Lld0;->a(Lld0$a;)V

    invoke-virtual {p0, p2}, Lnd0;->c(Lld0;)V

    :cond_7
    if-eqz p1, :cond_8

    iget-object p1, p1, Lml;->b:Ljava/lang/Object;

    check-cast p1, Lol;

    if-eqz p1, :cond_8

    iget-object p1, p1, Lol;->d:Lts8;

    iput-object p1, p0, Lqs8;->S:Lts8;

    :cond_8
    return-void
.end method

.method public static v(Ljava/lang/String;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V
    .locals 8

    invoke-virtual {p1}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v0

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object v2, p0

    move-object v7, p1

    move-object v1, p2

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public static w(Landroid/graphics/Path;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V
    .locals 2

    invoke-virtual {p1}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v0

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p2, p0, p1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method


# virtual methods
.method public final A(Ljava/lang/String;FLdi3;FFZ)Ljava/util/List;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "F",
            "Ldi3;",
            "FFZ)",
            "Ljava/util/List<",
            "Lqs8$d;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    const/4 v3, 0x0

    const/4 v4, 0x0

    move v5, v3

    move v7, v5

    move v8, v7

    move v9, v8

    move v11, v9

    move v6, v4

    move v10, v6

    move v12, v10

    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v13

    if-ge v5, v13, :cond_7

    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-eqz p6, :cond_1

    iget-object v14, v2, Ldi3;->a:Ljava/lang/String;

    iget-object v15, v2, Ldi3;->c:Ljava/lang/String;

    invoke-static {v13, v14, v15}, Lgi3;->a(CLjava/lang/String;Ljava/lang/String;)I

    move-result v14

    iget-object v15, v0, Lqs8;->R:Lnw4;

    iget-object v15, v15, Lnw4;->h:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v15, v14}, Landroidx/collection/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lgi3;

    if-nez v14, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-wide v14, v14, Lgi3;->c:D

    double-to-float v14, v14

    mul-float v14, v14, p4

    invoke-static {}, Lib9;->c()F

    move-result v15

    mul-float/2addr v15, v14

    add-float v15, v15, p5

    goto :goto_1

    :cond_1
    add-int/lit8 v14, v5, 0x1

    invoke-virtual {v1, v5, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    iget-object v15, v0, Lqs8;->J:Lqs8$a;

    invoke-virtual {v15, v14}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v14

    add-float v15, v14, p5

    :goto_1
    const/16 v14, 0x20

    if-ne v13, v14, :cond_2

    const/4 v9, 0x1

    move v12, v15

    goto :goto_2

    :cond_2
    if-eqz v9, :cond_3

    move v9, v3

    move v11, v5

    move v10, v15

    goto :goto_2

    :cond_3
    add-float/2addr v10, v15

    :goto_2
    add-float/2addr v6, v15

    cmpl-float v16, p2, v4

    if-lez v16, :cond_6

    cmpl-float v16, v6, p2

    if-ltz v16, :cond_6

    if-ne v13, v14, :cond_4

    goto :goto_3

    :cond_4
    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v0, v7}, Lqs8;->x(I)Lqs8$d;

    move-result-object v13

    if-ne v11, v8, :cond_5

    invoke-virtual {v1, v8, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    sub-int/2addr v11, v8

    int-to-float v8, v11

    mul-float/2addr v8, v12

    sub-float/2addr v6, v15

    sub-float/2addr v6, v8

    iput-object v10, v13, Lqs8$d;->a:Ljava/lang/String;

    iput v6, v13, Lqs8$d;->b:F

    move v8, v5

    move v11, v8

    move v6, v15

    move v10, v6

    goto :goto_3

    :cond_5
    add-int/lit8 v14, v11, -0x1

    invoke-virtual {v1, v8, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v15

    sub-int/2addr v8, v15

    int-to-float v8, v8

    mul-float/2addr v8, v12

    sub-float/2addr v6, v10

    sub-float/2addr v6, v8

    sub-float/2addr v6, v12

    iput-object v14, v13, Lqs8$d;->a:Ljava/lang/String;

    iput v6, v13, Lqs8$d;->b:F

    move v6, v10

    move v8, v11

    :cond_6
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :cond_7
    cmpl-float v2, v6, v4

    if-lez v2, :cond_8

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v0, v7}, Lqs8;->x(I)Lqs8$d;

    move-result-object v2

    invoke-virtual {v1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lqs8$d;->a:Ljava/lang/String;

    iput v6, v2, Lqs8$d;->b:F

    :cond_8
    iget-object v0, v0, Lqs8;->O:Ljava/util/ArrayList;

    invoke-virtual {v0, v3, v7}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final b(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lnd0;->b(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    iget-object p0, p0, Lqs8;->R:Lnw4;

    iget-object p2, p0, Lnw4;->k:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p2

    int-to-float p2, p2

    iget-object p0, p0, Lnw4;->k:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    int-to-float p0, p0

    const/4 p3, 0x0

    invoke-virtual {p1, p3, p3, p2, p0}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method public final i(Lby4;Ljava/lang/Object;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lnd0;->i(Lby4;Ljava/lang/Object;)V

    sget-object v0, Lvx4;->a:Landroid/graphics/PointF;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    if-ne p2, v0, :cond_1

    iget-object p2, p0, Lqs8;->U:Lac9;

    if-eqz p2, :cond_0

    invoke-virtual {p0, p2}, Lnd0;->p(Lld0;)V

    :cond_0
    new-instance p2, Lac9;

    invoke-direct {p2, p1, v1}, Lac9;-><init>(Lby4;Ljava/lang/Object;)V

    iput-object p2, p0, Lqs8;->U:Lac9;

    invoke-virtual {p2, p0}, Lld0;->a(Lld0$a;)V

    iget-object p1, p0, Lqs8;->U:Lac9;

    invoke-virtual {p0, p1}, Lnd0;->c(Lld0;)V

    return-void

    :cond_1
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    if-ne p2, v0, :cond_3

    iget-object p2, p0, Lqs8;->W:Lac9;

    if-eqz p2, :cond_2

    invoke-virtual {p0, p2}, Lnd0;->p(Lld0;)V

    :cond_2
    new-instance p2, Lac9;

    invoke-direct {p2, p1, v1}, Lac9;-><init>(Lby4;Ljava/lang/Object;)V

    iput-object p2, p0, Lqs8;->W:Lac9;

    invoke-virtual {p2, p0}, Lld0;->a(Lld0$a;)V

    iget-object p1, p0, Lqs8;->W:Lac9;

    invoke-virtual {p0, p1}, Lnd0;->c(Lld0;)V

    return-void

    :cond_3
    sget-object v0, Lvx4;->q:Ljava/lang/Float;

    if-ne p2, v0, :cond_5

    iget-object p2, p0, Lqs8;->Y:Lac9;

    if-eqz p2, :cond_4

    invoke-virtual {p0, p2}, Lnd0;->p(Lld0;)V

    :cond_4
    new-instance p2, Lac9;

    invoke-direct {p2, p1, v1}, Lac9;-><init>(Lby4;Ljava/lang/Object;)V

    iput-object p2, p0, Lqs8;->Y:Lac9;

    invoke-virtual {p2, p0}, Lld0;->a(Lld0$a;)V

    iget-object p1, p0, Lqs8;->Y:Lac9;

    invoke-virtual {p0, p1}, Lnd0;->c(Lld0;)V

    return-void

    :cond_5
    sget-object v0, Lvx4;->r:Ljava/lang/Float;

    if-ne p2, v0, :cond_7

    iget-object p2, p0, Lqs8;->a0:Lac9;

    if-eqz p2, :cond_6

    invoke-virtual {p0, p2}, Lnd0;->p(Lld0;)V

    :cond_6
    new-instance p2, Lac9;

    invoke-direct {p2, p1, v1}, Lac9;-><init>(Lby4;Ljava/lang/Object;)V

    iput-object p2, p0, Lqs8;->a0:Lac9;

    invoke-virtual {p2, p0}, Lld0;->a(Lld0$a;)V

    iget-object p1, p0, Lqs8;->a0:Lac9;

    invoke-virtual {p0, p1}, Lnd0;->c(Lld0;)V

    return-void

    :cond_7
    sget-object v0, Lvx4;->D:Ljava/lang/Float;

    if-ne p2, v0, :cond_9

    iget-object p2, p0, Lqs8;->c0:Lac9;

    if-eqz p2, :cond_8

    invoke-virtual {p0, p2}, Lnd0;->p(Lld0;)V

    :cond_8
    new-instance p2, Lac9;

    invoke-direct {p2, p1, v1}, Lac9;-><init>(Lby4;Ljava/lang/Object;)V

    iput-object p2, p0, Lqs8;->c0:Lac9;

    invoke-virtual {p2, p0}, Lld0;->a(Lld0$a;)V

    iget-object p1, p0, Lqs8;->c0:Lac9;

    invoke-virtual {p0, p1}, Lnd0;->c(Lld0;)V

    return-void

    :cond_9
    sget-object v0, Lvx4;->K:Landroid/graphics/Typeface;

    if-ne p2, v0, :cond_b

    iget-object p2, p0, Lqs8;->d0:Lac9;

    if-eqz p2, :cond_a

    invoke-virtual {p0, p2}, Lnd0;->p(Lld0;)V

    :cond_a
    new-instance p2, Lac9;

    invoke-direct {p2, p1, v1}, Lac9;-><init>(Lby4;Ljava/lang/Object;)V

    iput-object p2, p0, Lqs8;->d0:Lac9;

    invoke-virtual {p2, p0}, Lld0;->a(Lld0$a;)V

    iget-object p1, p0, Lqs8;->d0:Lac9;

    invoke-virtual {p0, p1}, Lnd0;->c(Lld0;)V

    return-void

    :cond_b
    sget-object v0, Lvx4;->M:Ljava/lang/String;

    if-ne p2, v0, :cond_c

    iget-object p0, p0, Lqs8;->P:Lis8;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Lrx4;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lbq2;

    invoke-direct {v0}, Lbq2;-><init>()V

    new-instance v1, Lhs8;

    invoke-direct {v1, p2, p1, v0}, Lhs8;-><init>(Lrx4;Lby4;Lbq2;)V

    invoke-virtual {p0, v1}, Lld0;->k(Lby4;)V

    :cond_c
    return-void
.end method

.method public final l(Landroid/graphics/Canvas;Landroid/graphics/Matrix;ILet2;)V
    .locals 30

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move/from16 v8, p3

    iget-object v1, v0, Lqs8;->P:Lis8;

    invoke-virtual {v1}, Lld0;->f()Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lbq2;

    iget-object v10, v0, Lqs8;->R:Lnw4;

    iget-object v1, v10, Lnw4;->f:Ljava/util/HashMap;

    iget-object v2, v9, Lbq2;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Ldi3;

    if-nez v3, :cond_0

    return-void

    :cond_0
    iget-object v11, v3, Ldi3;->c:Ljava/lang/String;

    iget-object v12, v3, Ldi3;->a:Ljava/lang/String;

    invoke-virtual {v7}, Landroid/graphics/Canvas;->save()I

    invoke-virtual/range {p1 .. p2}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    const/4 v13, 0x0

    invoke-virtual {v0, v9, v8, v13}, Lqs8;->u(Lbq2;II)V

    iget-object v14, v0, Lqs8;->Q:Lox4;

    iget-object v1, v14, Lox4;->l:Ljava/util/Map;

    const-string v2, "\n"

    const-string v4, "\u0003"

    const-string v5, "\r"

    const-string v6, "\r\n"

    iget-object v15, v0, Lqs8;->Z:Ltc3;

    const/high16 v16, 0x41200000    # 10.0f

    const/16 v17, 0x3

    const/high16 v18, 0x42c80000    # 100.0f

    move/from16 v19, v13

    iget-object v13, v0, Lqs8;->J:Lqs8$a;

    move-object/from16 v20, v15

    iget-object v15, v0, Lqs8;->K:Lqs8$b;

    move-object/from16 v21, v1

    const/16 v22, 0x1

    move-object/from16 v23, v15

    if-nez v21, :cond_f

    const/16 v21, 0x2

    iget-object v1, v14, Lox4;->b:Lnw4;

    iget-object v1, v1, Lnw4;->h:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v1}, Landroidx/collection/SparseArrayCompat;->size()I

    move-result v1

    if-lez v1, :cond_e

    iget-object v1, v0, Lqs8;->c0:Lac9;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lac9;->f()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    goto :goto_0

    :cond_1
    iget v1, v9, Lbq2;->c:F

    :goto_0
    div-float v1, v1, v18

    sget-object v18, Lib9;->e:Lib9$d;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v18

    const/16 v24, 0x0

    move-object/from16 v15, v18

    check-cast v15, [F

    aput v24, v15, v19

    aput v24, v15, v22

    sget v18, Lib9;->f:F

    aput v18, v15, v21

    aput v18, v15, v17

    move/from16 v18, v1

    move-object/from16 v1, p2

    invoke-virtual {v1, v15}, Landroid/graphics/Matrix;->mapPoints([F)V

    aget v1, v15, v21

    aget v21, v15, v19

    sub-float v1, v1, v21

    aget v17, v15, v17

    aget v15, v15, v22

    sub-float v15, v17, v15

    move-object/from16 v26, v13

    move-object/from16 v25, v14

    float-to-double v13, v1

    move-object/from16 v27, v10

    move-object/from16 v28, v11

    float-to-double v10, v15

    invoke-static {v13, v14, v10, v11}, Ljava/lang/Math;->hypot(DD)D

    iget-object v1, v9, Lbq2;->a:Ljava/lang/String;

    invoke-virtual {v1, v6, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v11

    iget v1, v9, Lbq2;->e:I

    int-to-float v1, v1

    div-float v1, v1, v16

    iget-object v2, v0, Lqs8;->a0:Lac9;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lac9;->f()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    :goto_1
    add-float/2addr v1, v2

    :cond_2
    move v5, v1

    goto :goto_2

    :cond_3
    if-eqz v20, :cond_2

    invoke-virtual/range {v20 .. v20}, Lld0;->f()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    goto :goto_1

    :goto_2
    move/from16 v13, v19

    const/4 v15, -0x1

    :goto_3
    if-ge v13, v11, :cond_d

    invoke-interface {v10, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, v9, Lbq2;->m:Landroid/graphics/PointF;

    if-nez v2, :cond_4

    move/from16 v2, v24

    goto :goto_4

    :cond_4
    iget v2, v2, Landroid/graphics/PointF;->x:F

    :goto_4
    const/4 v6, 0x1

    move/from16 v4, v18

    invoke-virtual/range {v0 .. v6}, Lqs8;->A(Ljava/lang/String;FLdi3;FFZ)Ljava/util/List;

    move-result-object v1

    move/from16 v2, v19

    :goto_5
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_c

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lqs8$d;

    add-int/lit8 v15, v15, 0x1

    invoke-virtual {v7}, Landroid/graphics/Canvas;->save()I

    iget v14, v6, Lqs8$d;->b:F

    invoke-virtual {v0, v7, v9, v15, v14}, Lqs8;->z(Landroid/graphics/Canvas;Lbq2;IF)Z

    move-result v14

    if-eqz v14, :cond_b

    iget-object v6, v6, Lqs8$d;->a:Ljava/lang/String;

    move-object/from16 p2, v1

    move/from16 v14, v19

    :goto_6
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v14, v1, :cond_a

    invoke-virtual {v6, v14}, Ljava/lang/String;->charAt(I)C

    move-result v1

    move-object/from16 v17, v10

    move-object/from16 v10, v28

    invoke-static {v1, v12, v10}, Lgi3;->a(CLjava/lang/String;Ljava/lang/String;)I

    move-result v1

    move/from16 v16, v2

    move/from16 p4, v5

    move-object/from16 v2, v27

    iget-object v5, v2, Lnw4;->h:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v5, v1}, Landroidx/collection/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgi3;

    if-nez v1, :cond_5

    move-object/from16 v27, v2

    move-object/from16 v18, v6

    move/from16 v21, v11

    move/from16 v20, v13

    move/from16 v22, v14

    move-object/from16 v2, v23

    move-object/from16 v14, v25

    move-object/from16 v13, v26

    goto/16 :goto_b

    :cond_5
    invoke-virtual {v0, v9, v8, v14}, Lqs8;->u(Lbq2;II)V

    iget-object v5, v0, Lqs8;->L:Ljava/util/HashMap;

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_6

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    move-object/from16 v18, v6

    move/from16 v21, v11

    move/from16 v20, v13

    move/from16 v22, v14

    move-object/from16 v14, v25

    goto :goto_8

    :cond_6
    move-object/from16 v18, v6

    iget-object v6, v1, Lgi3;->a:Ljava/util/ArrayList;

    move/from16 v21, v11

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v11

    move/from16 v20, v13

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13, v11}, Ljava/util/ArrayList;-><init>(I)V

    move/from16 v22, v14

    move/from16 v14, v19

    :goto_7
    if-ge v14, v11, :cond_7

    invoke-virtual {v6, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    move-object/from16 v28, v6

    move-object/from16 v6, v27

    check-cast v6, Lwr7;

    move/from16 v27, v11

    new-instance v11, Ltx1;

    move/from16 v29, v14

    move-object/from16 v14, v25

    invoke-direct {v11, v14, v0, v6, v2}, Ltx1;-><init>(Lox4;Lnd0;Lwr7;Lnw4;)V

    invoke-virtual {v13, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v29, 0x1

    move/from16 v11, v27

    move v14, v6

    move-object/from16 v6, v28

    goto :goto_7

    :cond_7
    move-object/from16 v14, v25

    invoke-virtual {v5, v1, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v5, v13

    :goto_8
    move/from16 v6, v19

    :goto_9
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v11

    if-ge v6, v11, :cond_9

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ltx1;

    invoke-virtual {v11}, Ltx1;->getPath()Landroid/graphics/Path;

    move-result-object v11

    iget-object v13, v0, Lqs8;->H:Landroid/graphics/RectF;

    move-object/from16 v27, v2

    move/from16 v2, v19

    invoke-virtual {v11, v13, v2}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    iget-object v2, v0, Lqs8;->I:Landroid/graphics/Matrix;

    invoke-virtual {v2}, Landroid/graphics/Matrix;->reset()V

    iget v13, v9, Lbq2;->g:F

    neg-float v13, v13

    invoke-static {}, Lib9;->c()F

    move-result v25

    mul-float v13, v13, v25

    move-object/from16 v25, v5

    move/from16 v5, v24

    invoke-virtual {v2, v5, v13}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    invoke-virtual {v2, v4, v4}, Landroid/graphics/Matrix;->preScale(FF)Z

    invoke-virtual {v11, v2}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-boolean v2, v9, Lbq2;->k:Z

    if-eqz v2, :cond_8

    move-object/from16 v13, v26

    invoke-static {v11, v13, v7}, Lqs8;->w(Landroid/graphics/Path;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    move-object/from16 v2, v23

    invoke-static {v11, v2, v7}, Lqs8;->w(Landroid/graphics/Path;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    goto :goto_a

    :cond_8
    move-object/from16 v2, v23

    move-object/from16 v13, v26

    invoke-static {v11, v2, v7}, Lqs8;->w(Landroid/graphics/Path;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    invoke-static {v11, v13, v7}, Lqs8;->w(Landroid/graphics/Path;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    :goto_a
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v23, v2

    move-object/from16 v26, v13

    move-object/from16 v5, v25

    move-object/from16 v2, v27

    const/16 v19, 0x0

    const/16 v24, 0x0

    goto :goto_9

    :cond_9
    move-object/from16 v27, v2

    move-object/from16 v2, v23

    move-object/from16 v13, v26

    iget-wide v5, v1, Lgi3;->c:D

    double-to-float v1, v5

    mul-float/2addr v1, v4

    invoke-static {}, Lib9;->c()F

    move-result v5

    mul-float/2addr v5, v1

    add-float v5, v5, p4

    const/4 v1, 0x0

    invoke-virtual {v7, v5, v1}, Landroid/graphics/Canvas;->translate(FF)V

    :goto_b
    add-int/lit8 v1, v22, 0x1

    move/from16 v5, p4

    move-object/from16 v23, v2

    move-object/from16 v28, v10

    move-object/from16 v26, v13

    move-object/from16 v25, v14

    move/from16 v2, v16

    move-object/from16 v10, v17

    move-object/from16 v6, v18

    move/from16 v13, v20

    move/from16 v11, v21

    const/16 v19, 0x0

    const/16 v24, 0x0

    move v14, v1

    goto/16 :goto_6

    :cond_a
    :goto_c
    move/from16 v16, v2

    move/from16 p4, v5

    move-object/from16 v17, v10

    move/from16 v21, v11

    move/from16 v20, v13

    move-object/from16 v2, v23

    move-object/from16 v14, v25

    move-object/from16 v13, v26

    move-object/from16 v10, v28

    goto :goto_d

    :cond_b
    move-object/from16 p2, v1

    goto :goto_c

    :goto_d
    invoke-virtual {v7}, Landroid/graphics/Canvas;->restore()V

    add-int/lit8 v1, v16, 0x1

    move/from16 v5, p4

    move-object/from16 v23, v2

    move-object/from16 v28, v10

    move-object/from16 v26, v13

    move-object/from16 v25, v14

    move-object/from16 v10, v17

    move/from16 v13, v20

    move/from16 v11, v21

    const/16 v19, 0x0

    const/16 v24, 0x0

    move v2, v1

    move-object/from16 v1, p2

    goto/16 :goto_5

    :cond_c
    move/from16 p4, v5

    move-object/from16 v17, v10

    move/from16 v21, v11

    move/from16 v20, v13

    move-object/from16 v2, v23

    move-object/from16 v14, v25

    move-object/from16 v13, v26

    move-object/from16 v10, v28

    add-int/lit8 v1, v20, 0x1

    move/from16 v18, v4

    move-object/from16 v10, v17

    const/16 v19, 0x0

    const/16 v24, 0x0

    move v13, v1

    goto/16 :goto_3

    :cond_d
    move-object v8, v7

    goto/16 :goto_29

    :cond_e
    :goto_e
    move-object v10, v11

    move-object/from16 v11, v23

    goto :goto_f

    :cond_f
    const/16 v21, 0x2

    goto :goto_e

    :goto_f
    iget-object v1, v0, Lqs8;->d0:Lac9;

    if-eqz v1, :cond_10

    invoke-virtual {v1}, Lac9;->f()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Typeface;

    if-eqz v1, :cond_10

    move-object/from16 v23, v2

    goto/16 :goto_16

    :cond_10
    iget-object v1, v14, Lox4;->l:Ljava/util/Map;

    if-eqz v1, :cond_13

    invoke-interface {v1, v12}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_11

    invoke-interface {v1, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Typeface;

    :goto_10
    move-object/from16 v23, v2

    goto/16 :goto_15

    :cond_11
    iget-object v15, v3, Ldi3;->b:Ljava/lang/String;

    invoke-interface {v1, v15}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_12

    invoke-interface {v1, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Typeface;

    goto :goto_10

    :cond_12
    const-string v15, "-"

    invoke-static {v12, v15, v10}, Lcg;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v1, v15}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_13

    invoke-interface {v1, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Typeface;

    goto :goto_10

    :cond_13
    invoke-virtual {v14}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v1

    if-nez v1, :cond_14

    const/4 v1, 0x0

    goto :goto_11

    :cond_14
    iget-object v1, v14, Lox4;->k:Lfi3;

    if-nez v1, :cond_15

    new-instance v1, Lfi3;

    invoke-virtual {v14}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v15

    invoke-direct {v1, v15}, Lfi3;-><init>(Landroid/graphics/drawable/Drawable$Callback;)V

    iput-object v1, v14, Lox4;->k:Lfi3;

    iget-object v14, v14, Lox4;->m:Ljava/lang/String;

    if-eqz v14, :cond_15

    iput-object v14, v1, Lfi3;->e:Ljava/lang/String;

    :cond_15
    :goto_11
    if-eqz v1, :cond_1d

    iget-object v14, v1, Lfi3;->a:Lpg5;

    iput-object v12, v14, Lpg5;->a:Ljava/lang/String;

    iput-object v10, v14, Lpg5;->b:Ljava/lang/String;

    iget-object v15, v1, Lfi3;->b:Ljava/util/HashMap;

    invoke-virtual {v15, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/graphics/Typeface;

    if-eqz v23, :cond_16

    move-object/from16 v1, v23

    goto :goto_10

    :cond_16
    iget-object v8, v1, Lfi3;->c:Ljava/util/HashMap;

    invoke-virtual {v8, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/graphics/Typeface;

    if-eqz v23, :cond_17

    move-object/from16 v1, v23

    move-object/from16 v23, v2

    goto :goto_12

    :cond_17
    iget-object v7, v3, Ldi3;->d:Landroid/graphics/Typeface;

    if-eqz v7, :cond_18

    move-object/from16 v23, v2

    move-object v1, v7

    goto :goto_12

    :cond_18
    const-string v7, "fonts/"

    invoke-static {v7, v12}, Lfh;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v23, v2

    iget-object v2, v1, Lfi3;->e:Ljava/lang/String;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v1, v1, Lfi3;->d:Landroid/content/res/AssetManager;

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v8, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_12
    const-string v2, "Italic"

    invoke-virtual {v10, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v7, "Bold"

    invoke-virtual {v10, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v2, :cond_19

    if-eqz v7, :cond_19

    move/from16 v2, v17

    goto :goto_13

    :cond_19
    if-eqz v2, :cond_1a

    move/from16 v2, v21

    goto :goto_13

    :cond_1a
    if-eqz v7, :cond_1b

    move/from16 v2, v22

    goto :goto_13

    :cond_1b
    const/4 v2, 0x0

    :goto_13
    invoke-virtual {v1}, Landroid/graphics/Typeface;->getStyle()I

    move-result v7

    if-ne v7, v2, :cond_1c

    goto :goto_14

    :cond_1c
    invoke-static {v1, v2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v1

    :goto_14
    invoke-virtual {v15, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_15

    :cond_1d
    move-object/from16 v23, v2

    const/4 v1, 0x0

    :goto_15
    if-eqz v1, :cond_1e

    goto :goto_16

    :cond_1e
    iget-object v1, v3, Ldi3;->d:Landroid/graphics/Typeface;

    :goto_16
    if-nez v1, :cond_20

    :cond_1f
    move-object/from16 v8, p1

    goto/16 :goto_29

    :cond_20
    iget-object v2, v9, Lbq2;->a:Ljava/lang/String;

    invoke-virtual {v13, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v1, v0, Lqs8;->c0:Lac9;

    if-eqz v1, :cond_21

    invoke-virtual {v1}, Lac9;->f()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    goto :goto_17

    :cond_21
    iget v1, v9, Lbq2;->c:F

    :goto_17
    invoke-static {}, Lib9;->c()F

    move-result v7

    mul-float/2addr v7, v1

    invoke-virtual {v13, v7}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-virtual {v13}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v7

    invoke-virtual {v11, v7}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    invoke-virtual {v13}, Landroid/graphics/Paint;->getTextSize()F

    move-result v7

    invoke-virtual {v11, v7}, Landroid/graphics/Paint;->setTextSize(F)V

    iget v7, v9, Lbq2;->e:I

    int-to-float v7, v7

    div-float v7, v7, v16

    iget-object v8, v0, Lqs8;->a0:Lac9;

    if-eqz v8, :cond_22

    invoke-virtual {v8}, Lac9;->f()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Float;

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    :goto_18
    add-float/2addr v7, v8

    goto :goto_19

    :cond_22
    if-eqz v20, :cond_23

    invoke-virtual/range {v20 .. v20}, Lld0;->f()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Float;

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    goto :goto_18

    :cond_23
    :goto_19
    invoke-static {}, Lib9;->c()F

    move-result v8

    mul-float/2addr v8, v7

    mul-float/2addr v8, v1

    div-float v8, v8, v18

    invoke-virtual {v2, v6, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, v23

    invoke-virtual {v1, v2, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v10

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, -0x1

    :goto_1a
    if-ge v12, v10, :cond_1f

    invoke-interface {v7, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, v9, Lbq2;->m:Landroid/graphics/PointF;

    if-nez v2, :cond_24

    const/4 v2, 0x0

    goto :goto_1b

    :cond_24
    iget v5, v2, Landroid/graphics/PointF;->x:F

    move v2, v5

    :goto_1b
    const/4 v4, 0x0

    const/4 v6, 0x0

    move v5, v8

    move/from16 v8, v21

    invoke-virtual/range {v0 .. v6}, Lqs8;->A(Ljava/lang/String;FLdi3;FFZ)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    :goto_1c
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_30

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lqs8$d;

    add-int/lit8 v15, v15, 0x1

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget-object v6, v4, Lqs8$d;->a:Ljava/lang/String;

    invoke-virtual {v13, v6}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v6

    move-object/from16 v8, p1

    invoke-virtual {v0, v8, v9, v15, v6}, Lqs8;->z(Landroid/graphics/Canvas;Lbq2;IF)Z

    move-result v6

    if-eqz v6, :cond_2f

    iget-object v6, v4, Lqs8$d;->a:Ljava/lang/String;

    move-object/from16 p2, v1

    invoke-virtual {v6}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    move/from16 v16, v2

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v2

    move-object/from16 p4, v3

    const/4 v3, 0x0

    invoke-static {v1, v3, v2}, Ljava/text/Bidi;->requiresBidi([CII)Z

    move-result v1

    if-eqz v1, :cond_29

    new-instance v1, Ljava/text/Bidi;

    const/4 v2, -0x2

    invoke-direct {v1, v6, v2}, Ljava/text/Bidi;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1}, Ljava/text/Bidi;->getRunCount()I

    move-result v2

    new-array v3, v2, [B

    move/from16 v17, v5

    new-array v5, v2, [Ljava/lang/Integer;

    move-object/from16 v18, v7

    const/4 v7, 0x0

    :goto_1d
    if-ge v7, v2, :cond_25

    move/from16 v20, v10

    invoke-virtual {v1, v7}, Ljava/text/Bidi;->getRunLevel(I)I

    move-result v10

    int-to-byte v10, v10

    aput-byte v10, v3, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v5, v7

    add-int/lit8 v7, v7, 0x1

    move/from16 v10, v20

    goto :goto_1d

    :cond_25
    move/from16 v20, v10

    const/4 v7, 0x0

    invoke-static {v3, v7, v5, v7, v2}, Ljava/text/Bidi;->reorderVisually([BI[Ljava/lang/Object;II)V

    iget-object v3, v0, Lqs8;->F:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    const/4 v7, 0x0

    :goto_1e
    if-ge v7, v2, :cond_28

    aget-object v10, v5, v7

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    move/from16 v23, v2

    invoke-virtual {v1, v10}, Ljava/text/Bidi;->getRunStart(I)I

    move-result v2

    move-object/from16 v25, v5

    invoke-virtual {v1, v10}, Ljava/text/Bidi;->getRunLimit(I)I

    move-result v5

    invoke-virtual {v1, v10}, Ljava/text/Bidi;->getRunLevel(I)I

    move-result v10

    invoke-virtual {v6, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    and-int/lit8 v5, v10, 0x1

    if-nez v5, :cond_26

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v26, v1

    goto :goto_20

    :cond_26
    iget-object v5, v0, Lqs8;->G:Ljava/lang/StringBuilder;

    const/4 v10, 0x0

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->setLength(I)V

    move-object/from16 v26, v1

    :goto_1f
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v10, v1, :cond_27

    invoke-virtual {v0, v10, v2}, Lqs8;->t(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v27, v2

    const/4 v2, 0x0

    invoke-virtual {v5, v2, v1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v10, v1

    move-object/from16 v2, v27

    goto :goto_1f

    :cond_27
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    :goto_20
    add-int/lit8 v7, v7, 0x1

    move/from16 v2, v23

    move-object/from16 v5, v25

    move-object/from16 v1, v26

    goto :goto_1e

    :cond_28
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_21

    :cond_29
    move/from16 v17, v5

    move-object/from16 v18, v7

    move/from16 v20, v10

    :goto_21
    iget-object v1, v0, Lqs8;->N:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    const/4 v2, 0x0

    :goto_22
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_2a

    invoke-virtual {v0, v2, v6}, Lqs8;->t(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_22

    :cond_2a
    const/4 v2, 0x0

    :goto_23
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2e

    iget-object v3, v0, Lqs8;->E:Ljava/lang/StringBuilder;

    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v2, 0x1

    :goto_24
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_2c

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const/4 v7, 0x0

    :goto_25
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v7, v10, :cond_2c

    invoke-virtual {v6, v7}, Ljava/lang/String;->codePointAt(I)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Character;->getDirectionality(I)B

    move-result v10

    move-object/from16 v23, v1

    const/4 v1, 0x2

    if-ne v10, v1, :cond_2b

    const/4 v10, 0x0

    invoke-virtual {v3, v10, v6}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v1, v23

    goto :goto_24

    :cond_2b
    const/4 v10, 0x0

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v1, v23

    goto :goto_25

    :cond_2c
    move-object/from16 v23, v1

    const/4 v1, 0x2

    const/4 v10, 0x0

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    add-int/2addr v2, v14

    move/from16 v6, p3

    invoke-virtual {v0, v9, v6, v2}, Lqs8;->u(Lbq2;II)V

    iget-boolean v2, v9, Lbq2;->k:Z

    if-eqz v2, :cond_2d

    invoke-static {v3, v13, v8}, Lqs8;->v(Ljava/lang/String;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    invoke-static {v3, v11, v8}, Lqs8;->v(Ljava/lang/String;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    goto :goto_26

    :cond_2d
    invoke-static {v3, v11, v8}, Lqs8;->v(Ljava/lang/String;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    invoke-static {v3, v13, v8}, Lqs8;->v(Ljava/lang/String;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    :goto_26
    invoke-virtual {v13, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    add-float v2, v2, v17

    const/4 v3, 0x0

    invoke-virtual {v8, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    move v2, v5

    move-object/from16 v1, v23

    goto :goto_23

    :cond_2e
    :goto_27
    move/from16 v6, p3

    const/4 v1, 0x2

    const/4 v3, 0x0

    const/4 v10, 0x0

    goto :goto_28

    :cond_2f
    move-object/from16 p2, v1

    move/from16 v16, v2

    move-object/from16 p4, v3

    move/from16 v17, v5

    move-object/from16 v18, v7

    move/from16 v20, v10

    goto :goto_27

    :goto_28
    iget-object v2, v4, Lqs8$d;->a:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v14, v2

    invoke-virtual {v8}, Landroid/graphics/Canvas;->restore()V

    add-int/lit8 v2, v16, 0x1

    move-object/from16 v3, p4

    move v8, v1

    move/from16 v5, v17

    move-object/from16 v7, v18

    move/from16 v10, v20

    move-object/from16 v1, p2

    goto/16 :goto_1c

    :cond_30
    move/from16 v6, p3

    move-object/from16 p4, v3

    move/from16 v17, v5

    move-object/from16 v18, v7

    move v1, v8

    move/from16 v20, v10

    const/4 v3, 0x0

    const/4 v10, 0x0

    move-object/from16 v8, p1

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v3, p4

    move/from16 v21, v1

    move/from16 v8, v17

    move/from16 v10, v20

    goto/16 :goto_1a

    :goto_29
    invoke-virtual {v8}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public final t(ILjava/lang/String;)Ljava/lang/String;
    .locals 5

    invoke-virtual {p2, p1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v1

    add-int/2addr v1, p1

    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p2, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->getType(I)I

    move-result v3

    const/16 v4, 0x10

    if-eq v3, v4, :cond_0

    invoke-static {v2}, Ljava/lang/Character;->getType(I)I

    move-result v3

    const/16 v4, 0x1b

    if-eq v3, v4, :cond_0

    invoke-static {v2}, Ljava/lang/Character;->getType(I)I

    move-result v3

    const/4 v4, 0x6

    if-eq v3, v4, :cond_0

    invoke-static {v2}, Ljava/lang/Character;->getType(I)I

    move-result v3

    const/16 v4, 0x1c

    if-eq v3, v4, :cond_0

    invoke-static {v2}, Ljava/lang/Character;->getType(I)I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_0

    invoke-static {v2}, Ljava/lang/Character;->getType(I)I

    move-result v3

    const/16 v4, 0x13

    if-ne v3, v4, :cond_1

    :cond_0
    invoke-static {v2}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    add-int/2addr v1, v3

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v2

    goto :goto_0

    :cond_1
    int-to-long v2, v0

    iget-object v0, p0, Lqs8;->M:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0, v2, v3}, Landroidx/collection/LongSparseArray;->containsKey(J)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v0, v2, v3}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_2
    const/4 v4, 0x0

    iget-object p0, p0, Lqs8;->D:Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    :goto_1
    if-ge p1, v1, :cond_3

    invoke-virtual {p2, p1}, Ljava/lang/String;->codePointAt(I)I

    move-result v4

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/Character;->charCount(I)I

    move-result v4

    add-int/2addr p1, v4

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v2, v3, p0}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    return-object p0
.end method

.method public final u(Lbq2;II)V
    .locals 6

    iget-object v0, p0, Lqs8;->U:Lac9;

    iget-object v1, p0, Lqs8;->J:Lqs8$a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lac9;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lqs8;->T:Ltn1;

    if-eqz v0, :cond_1

    invoke-virtual {p0, p3}, Lqs8;->y(I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lld0;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    :cond_1
    iget v0, p1, Lbq2;->h:I

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    :goto_0
    iget-object v0, p0, Lqs8;->W:Lac9;

    iget-object v2, p0, Lqs8;->K:Lqs8$b;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lac9;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lqs8;->V:Ltn1;

    if-eqz v0, :cond_3

    invoke-virtual {p0, p3}, Lqs8;->y(I)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Lld0;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    :cond_3
    iget v0, p1, Lbq2;->i:I

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    :goto_1
    iget-object v0, p0, Lnd0;->w:Lo19;

    iget-object v0, v0, Lo19;->p:Lld0;

    const/16 v3, 0x64

    if-nez v0, :cond_4

    move v0, v3

    goto :goto_2

    :cond_4
    invoke-virtual {v0}, Lld0;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_2
    iget-object v4, p0, Lqs8;->b0:Lb84;

    if-eqz v4, :cond_5

    invoke-virtual {p0, p3}, Lqs8;->y(I)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {v4}, Lld0;->f()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    :cond_5
    int-to-float v0, v0

    const/high16 v4, 0x437f0000    # 255.0f

    mul-float/2addr v0, v4

    const/high16 v5, 0x42c80000    # 100.0f

    div-float/2addr v0, v5

    int-to-float v3, v3

    div-float/2addr v3, v5

    mul-float/2addr v3, v0

    int-to-float p2, p2

    mul-float/2addr v3, p2

    div-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result p2

    invoke-virtual {v1, p2}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {v2, p2}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object p2, p0, Lqs8;->Y:Lac9;

    if-eqz p2, :cond_6

    invoke-virtual {p2}, Lac9;->f()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    invoke-virtual {v2, p0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void

    :cond_6
    iget-object p2, p0, Lqs8;->X:Ltc3;

    if-eqz p2, :cond_7

    invoke-virtual {p0, p3}, Lqs8;->y(I)Z

    move-result p0

    if-eqz p0, :cond_7

    invoke-virtual {p2}, Lld0;->f()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    invoke-virtual {v2, p0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void

    :cond_7
    iget p0, p1, Lbq2;->j:F

    invoke-static {}, Lib9;->c()F

    move-result p1

    mul-float/2addr p1, p0

    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method public final x(I)Lqs8$d;
    .locals 2

    iget-object p0, p0, Lqs8;->O:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    if-ge v0, p1, :cond_0

    new-instance v1, Lqs8$d;

    invoke-direct {v1}, Lqs8$d;-><init>()V

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lqs8$d;

    return-object p0
.end method

.method public final y(I)Z
    .locals 5

    iget-object v0, p0, Lqs8;->P:Lis8;

    invoke-virtual {v0}, Lld0;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbq2;

    iget-object v0, v0, Lbq2;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v1, p0, Lqs8;->e0:Lb84;

    if-eqz v1, :cond_3

    iget-object v2, p0, Lqs8;->f0:Lb84;

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Lld0;->f()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2}, Lld0;->f()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-virtual {v1}, Lld0;->f()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2}, Lld0;->f()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget-object v2, p0, Lqs8;->g0:Lb84;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lld0;->f()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/2addr v3, v2

    add-int/2addr v1, v2

    :cond_0
    iget-object p0, p0, Lqs8;->S:Lts8;

    sget-object v2, Lts8;->INDEX:Lts8;

    if-ne p0, v2, :cond_1

    if-lt p1, v3, :cond_2

    if-ge p1, v1, :cond_2

    goto :goto_0

    :cond_1
    int-to-float p0, p1

    int-to-float p1, v0

    div-float/2addr p0, p1

    const/high16 p1, 0x42c80000    # 100.0f

    mul-float/2addr p0, p1

    int-to-float p1, v3

    cmpl-float p1, p0, p1

    if-ltz p1, :cond_2

    int-to-float p1, v1

    cmpg-float p0, p0, p1

    if-gez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return p0

    :cond_3
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final z(Landroid/graphics/Canvas;Lbq2;IF)Z
    .locals 6

    iget-object v0, p2, Lbq2;->l:Landroid/graphics/PointF;

    iget-object v1, p2, Lbq2;->m:Landroid/graphics/PointF;

    invoke-static {}, Lib9;->c()F

    move-result v2

    const/4 v3, 0x0

    if-nez v0, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    iget v4, p2, Lbq2;->f:F

    mul-float/2addr v4, v2

    iget v5, v0, Landroid/graphics/PointF;->y:F

    add-float/2addr v4, v5

    :goto_0
    int-to-float p3, p3

    iget v5, p2, Lbq2;->f:F

    mul-float/2addr p3, v5

    mul-float/2addr p3, v2

    add-float/2addr p3, v4

    iget-object p0, p0, Lqs8;->Q:Lox4;

    iget-boolean p0, p0, Lox4;->w:Z

    if-eqz p0, :cond_1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    iget p0, v0, Landroid/graphics/PointF;->y:F

    iget v2, v1, Landroid/graphics/PointF;->y:F

    add-float/2addr p0, v2

    iget v2, p2, Lbq2;->c:F

    add-float/2addr p0, v2

    cmpl-float p0, p3, p0

    if-ltz p0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    if-nez v0, :cond_2

    move p0, v3

    goto :goto_1

    :cond_2
    iget p0, v0, Landroid/graphics/PointF;->x:F

    :goto_1
    if-nez v1, :cond_3

    goto :goto_2

    :cond_3
    iget v3, v1, Landroid/graphics/PointF;->x:F

    :goto_2
    sget-object v0, Lqs8$c;->a:[I

    iget-object p2, p2, Lbq2;->d:Lbq2$a;

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_6

    const/4 v1, 0x2

    if-eq p2, v1, :cond_5

    const/4 v1, 0x3

    if-eq p2, v1, :cond_4

    return v0

    :cond_4
    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr v3, p2

    add-float/2addr v3, p0

    div-float/2addr p4, p2

    sub-float/2addr v3, p4

    invoke-virtual {p1, v3, p3}, Landroid/graphics/Canvas;->translate(FF)V

    return v0

    :cond_5
    add-float/2addr p0, v3

    sub-float/2addr p0, p4

    invoke-virtual {p1, p0, p3}, Landroid/graphics/Canvas;->translate(FF)V

    return v0

    :cond_6
    invoke-virtual {p1, p0, p3}, Landroid/graphics/Canvas;->translate(FF)V

    return v0
.end method
