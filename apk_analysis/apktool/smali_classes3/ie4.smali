.class public final Lie4;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ltd4$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "x"

    const-string v1, "y"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ltd4$a;->a([Ljava/lang/String;)Ltd4$a;

    move-result-object v0

    sput-object v0, Lie4;->a:Ltd4$a;

    return-void
.end method

.method public static a(Ltd4;)I
    .locals 6

    invoke-virtual {p0}, Ltd4;->m()V

    invoke-virtual {p0}, Ltd4;->E()D

    move-result-wide v0

    const-wide v2, 0x406fe00000000000L    # 255.0

    mul-double/2addr v0, v2

    double-to-int v0, v0

    invoke-virtual {p0}, Ltd4;->E()D

    move-result-wide v4

    mul-double/2addr v4, v2

    double-to-int v1, v4

    invoke-virtual {p0}, Ltd4;->E()D

    move-result-wide v4

    mul-double/2addr v4, v2

    double-to-int v2, v4

    :goto_0
    invoke-virtual {p0}, Ltd4;->v()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Ltd4;->e0()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ltd4;->o()V

    const/16 p0, 0xff

    invoke-static {p0, v0, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    return p0
.end method

.method public static b(Ltd4;F)Landroid/graphics/PointF;
    .locals 4

    sget-object v0, Lie4$a;->a:[I

    invoke-virtual {p0}, Ltd4;->U()Ltd4$b;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    const/4 v2, 0x2

    if-eq v0, v2, :cond_4

    const/4 v2, 0x3

    if-ne v0, v2, :cond_3

    invoke-virtual {p0}, Ltd4;->n()V

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    invoke-virtual {p0}, Ltd4;->v()Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v3, Lie4;->a:Ltd4$a;

    invoke-virtual {p0, v3}, Ltd4;->X(Ltd4$a;)I

    move-result v3

    if-eqz v3, :cond_1

    if-eq v3, v1, :cond_0

    invoke-virtual {p0}, Ltd4;->Z()V

    invoke-virtual {p0}, Ltd4;->e0()V

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lie4;->d(Ltd4;)F

    move-result v2

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lie4;->d(Ltd4;)F

    move-result v0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Ltd4;->p()V

    new-instance p0, Landroid/graphics/PointF;

    mul-float/2addr v0, p1

    mul-float/2addr v2, p1

    invoke-direct {p0, v0, v2}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p0

    :cond_3
    const-string p1, "Unknown point starts with "

    invoke-virtual {p0}, Ltd4;->U()Ltd4$b;

    move-result-object p0

    invoke-static {p0, p1}, Lmz0;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_4
    invoke-virtual {p0}, Ltd4;->m()V

    invoke-virtual {p0}, Ltd4;->E()D

    move-result-wide v0

    double-to-float v0, v0

    invoke-virtual {p0}, Ltd4;->E()D

    move-result-wide v1

    double-to-float v1, v1

    :goto_1
    invoke-virtual {p0}, Ltd4;->U()Ltd4$b;

    move-result-object v2

    sget-object v3, Ltd4$b;->END_ARRAY:Ltd4$b;

    if-eq v2, v3, :cond_5

    invoke-virtual {p0}, Ltd4;->e0()V

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Ltd4;->o()V

    new-instance p0, Landroid/graphics/PointF;

    mul-float/2addr v0, p1

    mul-float/2addr v1, p1

    invoke-direct {p0, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p0

    :cond_6
    invoke-virtual {p0}, Ltd4;->E()D

    move-result-wide v0

    double-to-float v0, v0

    invoke-virtual {p0}, Ltd4;->E()D

    move-result-wide v1

    double-to-float v1, v1

    :goto_2
    invoke-virtual {p0}, Ltd4;->v()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {p0}, Ltd4;->e0()V

    goto :goto_2

    :cond_7
    new-instance p0, Landroid/graphics/PointF;

    mul-float/2addr v0, p1

    mul-float/2addr v1, p1

    invoke-direct {p0, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p0
.end method

.method public static c(Ltd4;F)Ljava/util/ArrayList;
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Ltd4;->m()V

    :goto_0
    invoke-virtual {p0}, Ltd4;->U()Ltd4$b;

    move-result-object v1

    sget-object v2, Ltd4$b;->BEGIN_ARRAY:Ltd4$b;

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Ltd4;->m()V

    invoke-static {p0, p1}, Lie4;->b(Ltd4;F)Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Ltd4;->o()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ltd4;->o()V

    return-object v0
.end method

.method public static d(Ltd4;)F
    .locals 3

    invoke-virtual {p0}, Ltd4;->U()Ltd4$b;

    move-result-object v0

    sget-object v1, Lie4$a;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    invoke-virtual {p0}, Ltd4;->m()V

    invoke-virtual {p0}, Ltd4;->E()D

    move-result-wide v0

    double-to-float v0, v0

    :goto_0
    invoke-virtual {p0}, Ltd4;->v()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Ltd4;->e0()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ltd4;->o()V

    return v0

    :cond_1
    const-string p0, "Unknown value for token of type "

    invoke-static {v0, p0}, Lr01;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_2
    invoke-virtual {p0}, Ltd4;->E()D

    move-result-wide v0

    double-to-float p0, v0

    return p0
.end method
