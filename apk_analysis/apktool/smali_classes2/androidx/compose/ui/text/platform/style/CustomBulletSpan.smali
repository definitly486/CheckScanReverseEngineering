.class public final Landroidx/compose/ui/text/platform/style/CustomBulletSpan;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/style/LeadingMarginSpan;


# static fields
.field public static final $stable:I


# instance fields
.field private final alpha:F

.field private final brush:Landroidx/compose/ui/graphics/Brush;

.field private final bulletHeightPx:F

.field private final bulletWidthPx:F

.field private final density:Landroidx/compose/ui/unit/Density;

.field private final diff:I

.field private final drawStyle:Landroidx/compose/ui/graphics/drawscope/DrawStyle;

.field private final minimumRequiredIndent:I

.field private final shape:Landroidx/compose/ui/graphics/Shape;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget v0, Landroidx/compose/ui/graphics/drawscope/DrawStyle;->$stable:I

    sput v0, Landroidx/compose/ui/text/platform/style/CustomBulletSpan;->$stable:I

    return-void
.end method

.method public constructor <init>(Landroidx/compose/ui/graphics/Shape;FFFLandroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/unit/Density;F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/text/platform/style/CustomBulletSpan;->shape:Landroidx/compose/ui/graphics/Shape;

    iput p2, p0, Landroidx/compose/ui/text/platform/style/CustomBulletSpan;->bulletWidthPx:F

    iput p3, p0, Landroidx/compose/ui/text/platform/style/CustomBulletSpan;->bulletHeightPx:F

    iput-object p5, p0, Landroidx/compose/ui/text/platform/style/CustomBulletSpan;->brush:Landroidx/compose/ui/graphics/Brush;

    iput p6, p0, Landroidx/compose/ui/text/platform/style/CustomBulletSpan;->alpha:F

    iput-object p7, p0, Landroidx/compose/ui/text/platform/style/CustomBulletSpan;->drawStyle:Landroidx/compose/ui/graphics/drawscope/DrawStyle;

    iput-object p8, p0, Landroidx/compose/ui/text/platform/style/CustomBulletSpan;->density:Landroidx/compose/ui/unit/Density;

    add-float/2addr p2, p4

    invoke-static {p2}, Lw65;->b(F)I

    move-result p1

    iput p1, p0, Landroidx/compose/ui/text/platform/style/CustomBulletSpan;->minimumRequiredIndent:I

    invoke-static {p9}, Lw65;->b(F)I

    move-result p2

    sub-int/2addr p2, p1

    iput p2, p0, Landroidx/compose/ui/text/platform/style/CustomBulletSpan;->diff:I

    return-void
.end method

.method public static synthetic a(Landroidx/compose/ui/text/platform/style/CustomBulletSpan;JILandroid/graphics/Canvas;Landroid/graphics/Paint;IF)Lj59;
    .locals 0

    invoke-static/range {p0 .. p7}, Landroidx/compose/ui/text/platform/style/CustomBulletSpan;->drawLeadingMargin$lambda$0$0(Landroidx/compose/ui/text/platform/style/CustomBulletSpan;JILandroid/graphics/Canvas;Landroid/graphics/Paint;IF)Lj59;

    move-result-object p0

    return-object p0
.end method

.method private static final drawLeadingMargin$lambda$0$0(Landroidx/compose/ui/text/platform/style/CustomBulletSpan;JILandroid/graphics/Canvas;Landroid/graphics/Paint;IF)Lj59;
    .locals 2

    iget-object v0, p0, Landroidx/compose/ui/text/platform/style/CustomBulletSpan;->shape:Landroidx/compose/ui/graphics/Shape;

    if-lez p3, :cond_0

    sget-object v1, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    goto :goto_0

    :cond_0
    sget-object v1, Landroidx/compose/ui/unit/LayoutDirection;->Rtl:Landroidx/compose/ui/unit/LayoutDirection;

    :goto_0
    iget-object p0, p0, Landroidx/compose/ui/text/platform/style/CustomBulletSpan;->density:Landroidx/compose/ui/unit/Density;

    invoke-interface {v0, p1, p2, v1, p0}, Landroidx/compose/ui/graphics/Shape;->createOutline-Pq9zytI(JLandroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/unit/Density;)Landroidx/compose/ui/graphics/Outline;

    move-result-object p1

    int-to-float p0, p6

    move p6, p3

    move-object p2, p4

    move-object p3, p5

    move p5, p7

    move p4, p0

    invoke-static/range {p1 .. p6}, Landroidx/compose/ui/text/platform/style/BulletSpan_androidKt;->access$draw(Landroidx/compose/ui/graphics/Outline;Landroid/graphics/Canvas;Landroid/graphics/Paint;FFI)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method


# virtual methods
.method public drawLeadingMargin(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIIILjava/lang/CharSequence;IIZLandroid/text/Layout;)V
    .locals 11

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    add-int v0, p5, p7

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float v10, v0, v1

    iget v0, p0, Landroidx/compose/ui/text/platform/style/CustomBulletSpan;->minimumRequiredIndent:I

    sub-int/2addr p3, v0

    if-gez p3, :cond_1

    const/4 p3, 0x0

    :cond_1
    move v9, p3

    invoke-virtual/range {p8 .. p8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 p3, p8

    check-cast p3, Landroid/text/Spanned;

    invoke-interface {p3, p0}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result p3

    move/from16 v0, p9

    if-ne p3, v0, :cond_2

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object p3

    iget-object v0, p0, Landroidx/compose/ui/text/platform/style/CustomBulletSpan;->drawStyle:Landroidx/compose/ui/graphics/drawscope/DrawStyle;

    invoke-static {p2, v0}, Landroidx/compose/ui/text/platform/style/BulletSpan_androidKt;->access$setDrawStyle(Landroid/graphics/Paint;Landroidx/compose/ui/graphics/drawscope/DrawStyle;)V

    iget v0, p0, Landroidx/compose/ui/text/platform/style/CustomBulletSpan;->bulletWidthPx:F

    iget v1, p0, Landroidx/compose/ui/text/platform/style/CustomBulletSpan;->bulletHeightPx:F

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    int-to-long v2, v0

    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    int-to-long v0, v0

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    const-wide v4, 0xffffffffL

    and-long/2addr v0, v4

    or-long/2addr v0, v2

    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Size;->constructor-impl(J)J

    move-result-wide v4

    iget-object v0, p0, Landroidx/compose/ui/text/platform/style/CustomBulletSpan;->brush:Landroidx/compose/ui/graphics/Brush;

    iget v1, p0, Landroidx/compose/ui/text/platform/style/CustomBulletSpan;->alpha:F

    new-instance v2, Ld72;

    move-object v3, p0

    move-object v7, p1

    move-object v8, p2

    move v6, p4

    invoke-direct/range {v2 .. v10}, Ld72;-><init>(Landroidx/compose/ui/text/platform/style/CustomBulletSpan;JILandroid/graphics/Canvas;Landroid/graphics/Paint;IF)V

    move-object/from16 p5, v0

    move/from16 p6, v1

    move-object/from16 p9, v2

    move-wide/from16 p7, v4

    move-object p4, v8

    invoke-static/range {p4 .. p9}, Landroidx/compose/ui/text/platform/style/BulletSpan_androidKt;->access$setBrushAndDraw-yzxVdVo(Landroid/graphics/Paint;Landroidx/compose/ui/graphics/Brush;FJLll3;)V

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public getLeadingMargin(Z)I
    .locals 0

    iget p0, p0, Landroidx/compose/ui/text/platform/style/CustomBulletSpan;->diff:I

    if-ltz p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    return p0
.end method
