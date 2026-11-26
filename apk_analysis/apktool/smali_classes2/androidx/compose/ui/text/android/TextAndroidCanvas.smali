.class public final Landroidx/compose/ui/text/android/TextAndroidCanvas;
.super Landroid/graphics/Canvas;
.source "SourceFile"


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private _nativeCanvas:Landroid/graphics/Canvas;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/graphics/Canvas;-><init>()V

    return-void
.end method

.method private final getNativeCanvas()Landroid/graphics/Canvas;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/text/android/TextAndroidCanvas;->_nativeCanvas:Landroid/graphics/Canvas;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "Text drawing wrapper is missing a Canvas!"

    invoke-static {p0}, Landroidx/compose/ui/text/internal/InlineClassHelperKt;->throwIllegalStateExceptionForNullCheck(Ljava/lang/String;)Ljava/lang/Void;

    invoke-static {}, Lh8;->d()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static synthetic get_nativeCanvas$ui_text$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public clipOutPath(Landroid/graphics/Path;)Z
    .locals 1

    sget-object v0, Landroidx/compose/ui/text/android/CanvasCompatO;->INSTANCE:Landroidx/compose/ui/text/android/CanvasCompatO;

    invoke-direct {p0}, Landroidx/compose/ui/text/android/TextAndroidCanvas;->getNativeCanvas()Landroid/graphics/Canvas;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Landroidx/compose/ui/text/android/CanvasCompatO;->clipOutPath(Landroid/graphics/Canvas;Landroid/graphics/Path;)Z

    move-result p0

    return p0
.end method

.method public clipOutRect(FFFF)Z
    .locals 6

    sget-object v0, Landroidx/compose/ui/text/android/CanvasCompatO;->INSTANCE:Landroidx/compose/ui/text/android/CanvasCompatO;

    invoke-direct {p0}, Landroidx/compose/ui/text/android/TextAndroidCanvas;->getNativeCanvas()Landroid/graphics/Canvas;

    move-result-object v1

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroidx/compose/ui/text/android/CanvasCompatO;->clipOutRect(Landroid/graphics/Canvas;FFFF)Z

    move-result p0

    return p0
.end method

.method public clipOutRect(IIII)Z
    .locals 6

    .line 17
    sget-object v0, Landroidx/compose/ui/text/android/CanvasCompatO;->INSTANCE:Landroidx/compose/ui/text/android/CanvasCompatO;

    invoke-direct {p0}, Landroidx/compose/ui/text/android/TextAndroidCanvas;->getNativeCanvas()Landroid/graphics/Canvas;

    move-result-object v1

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroidx/compose/ui/text/android/CanvasCompatO;->clipOutRect(Landroid/graphics/Canvas;IIII)Z

    move-result p0

    return p0
.end method

.method public clipOutRect(Landroid/graphics/Rect;)Z
    .locals 1

    .line 15
    sget-object v0, Landroidx/compose/ui/text/android/CanvasCompatO;->INSTANCE:Landroidx/compose/ui/text/android/CanvasCompatO;

    invoke-direct {p0}, Landroidx/compose/ui/text/android/TextAndroidCanvas;->getNativeCanvas()Landroid/graphics/Canvas;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Landroidx/compose/ui/text/android/CanvasCompatO;->clipOutRect(Landroid/graphics/Canvas;Landroid/graphics/Rect;)Z

    move-result p0

    return p0
.end method

.method public clipOutRect(Landroid/graphics/RectF;)Z
    .locals 1

    .line 16
    sget-object v0, Landroidx/compose/ui/text/android/CanvasCompatO;->INSTANCE:Landroidx/compose/ui/text/android/CanvasCompatO;

    invoke-direct {p0}, Landroidx/compose/ui/text/android/TextAndroidCanvas;->getNativeCanvas()Landroid/graphics/Canvas;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Landroidx/compose/ui/text/android/CanvasCompatO;->clipOutRect(Landroid/graphics/Canvas;Landroid/graphics/RectF;)Z

    move-result p0

    return p0
.end method

.method public clipPath(Landroid/graphics/Path;)Z
    .locals 0

    .line 9
    invoke-direct {p0}, Landroidx/compose/ui/text/android/TextAndroidCanvas;->getNativeCanvas()Landroid/graphics/Canvas;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    move-result p0

    return p0
.end method

.method public clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z
    .locals 0
    .annotation runtime Lul2;
    .end annotation

    invoke-direct {p0}, Landroidx/compose/ui/text/android/TextAndroidCanvas;->getNativeCanvas()Landroid/graphics/Canvas;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    move-result p0

    return p0
.end method

.method public clipRect(FFFF)Z
    .locals 0

    .line 13
    invoke-direct {p0}, Landroidx/compose/ui/text/android/TextAndroidCanvas;->getNativeCanvas()Landroid/graphics/Canvas;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    move-result p0

    return p0
.end method

.method public clipRect(FFFFLandroid/graphics/Region$Op;)Z
    .locals 0
    .annotation runtime Lul2;
    .end annotation

    .line 12
    invoke-direct {p0}, Landroidx/compose/ui/text/android/TextAndroidCanvas;->getNativeCanvas()Landroid/graphics/Canvas;

    move-result-object p0

    invoke-virtual/range {p0 .. p5}, Landroid/graphics/Canvas;->clipRect(FFFFLandroid/graphics/Region$Op;)Z

    move-result p0

    return p0
.end method

.method public clipRect(IIII)Z
    .locals 0

    .line 14
    invoke-direct {p0}, Landroidx/compose/ui/text/android/TextAndroidCanvas;->getNativeCanvas()Landroid/graphics/Canvas;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    move-result p0

    return p0
.end method

.method public clipRect(Landroid/graphics/Rect;)Z
    .locals 0

    .line 11
    invoke-direct {p0}, Landroidx/compose/ui/text/android/TextAndroidCanvas;->getNativeCanvas()Landroid/graphics/Canvas;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    move-result p0

    return p0
.end method

.method public clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z
    .locals 0
    .annotation runtime Lul2;
    .end annotation

    .line 9
    invoke-direct {p0}, Landroidx/compose/ui/text/android/TextAndroidCanvas;->getNativeCanvas()Landroid/graphics/Canvas;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    move-result p0

    return p0
.end method

.method public clipRect(Landroid/graphics/RectF;)Z
    .locals 0

    .line 10
    invoke-direct {p0}, Landroidx/compose/ui/text/android/TextAndroidCanvas;->getNativeCanvas()Landroid/graphics/Canvas;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    move-result p0

    return p0
.end method

.method public clipRect(Landroid/graphics/RectF;Landroid/graphics/Region$Op;)Z
    .locals 0
    .annotation runtime Lul2;
    .end annotation

    invoke-direct {p0}, Landroidx/compose/ui/text/android/TextAndroidCanvas;->getNativeCanvas()Landroid/graphics/Canvas;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;Landroid/graphics/Region$Op;)Z

    move-result p0

    return p0
.end method

.method public concat(Landroid/graphics/Matrix;)V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/ui/text/android/TextAndroidCanvas;->getNativeCanvas()Landroid/graphics/Canvas;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    return-void
.end method

.method public disableZ()V
    .locals 1

    sget-object v0, Landroidx/compose/ui/text/android/CanvasCompatQ;->INSTANCE:Landroidx/compose/ui/text/android/CanvasCompatQ;

    invoke-direct {p0}, Landroidx/compose/ui/text/android/TextAndroidCanvas;->getNativeCanvas()Landroid/graphics/Canvas;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/compose/ui/text/android/CanvasCompatQ;->disableZ(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public drawARGB(IIII)V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/ui/text/android/TextAndroidCanvas;->getNativeCanvas()Landroid/graphics/Canvas;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    return-void
.end method

.method public drawArc(FFFFFFZLandroid/graphics/Paint;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Landroidx/compose/ui/text/android/TextAndroidCanvas;->getNativeCanvas()Landroid/graphics/Canvas;

    move-result-object p0

    invoke-virtual/range {p0 .. p8}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    return-void
.end method

.method public drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/ui/text/android/TextAndroidCanvas;->getNativeCanvas()Landroid/graphics/Canvas;

    move-result-object p0

    invoke-virtual/range {p0 .. p5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    return-void
.end method

.method public drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/ui/text/android/TextAndroidCanvas;->getNativeCanvas()Landroid/graphics/Canvas;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Landroidx/compose/ui/text/android/TextAndroidCanvas;->getNativeCanvas()Landroid/graphics/Canvas;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    return-void
.end method

.method public drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Landroidx/compose/ui/text/android/TextAndroidCanvas;->getNativeCanvas()Landroid/graphics/Canvas;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void
.end method

.method public drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Landroidx/compose/ui/text/android/TextAndroidCanvas;->getNativeCanvas()Landroid/graphics/Canvas;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method public drawBitmap([IIIFFIIZLandroid/graphics/Paint;)V
    .locals 0
    .annotation runtime Lul2;
    .end annotation

    .line 10
    invoke-direct {p0}, Landroidx/compose/ui/text/android/TextAndroidCanvas;->getNativeCanvas()Landroid/graphics/Canvas;

    move-result-object p0

    invoke-virtual/range {p0 .. p9}, Landroid/graphics/Canvas;->drawBitmap([IIIFFIIZLandroid/graphics/Paint;)V

    return-void
.end method

.method public drawBitmap([IIIIIIIZLandroid/graphics/Paint;)V
    .locals 0
    .annotation runtime Lul2;
    .end annotation

    .line 11
    invoke-direct {p0}, Landroidx/compose/ui/text/android/TextAndroidCanvas;->getNativeCanvas()Landroid/graphics/Canvas;

    move-result-object p0

    invoke-virtual/range {p0 .. p9}, Landroid/graphics/Canvas;->drawBitmap([IIIIIIIZLandroid/graphics/Paint;)V

    return-void
.end method

.method public drawBitmapMesh(Landroid/graphics/Bitmap;II[FI[IILandroid/graphics/Paint;)V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/ui/text/android/TextAndroidCanvas;->getNativeCanvas()Landroid/graphics/Canvas;

    move-result-object p0

    invoke-virtual/range {p0 .. p8}, Landroid/graphics/Canvas;->drawBitmapMesh(Landroid/graphics/Bitmap;II[FI[IILandroid/graphics/Paint;)V

    return-void
.end method

.method public drawCircle(FFFLandroid/graphics/Paint;)V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/ui/text/android/TextAndroidCanvas;->getNativeCanvas()Landroid/graphics/Canvas;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public drawColor(I)V
    .locals 0

    .line 10
    invoke-direct {p0}, Landroidx/compose/ui/text/android/TextAndroidCanvas;->getNativeCanvas()Landroid/graphics/Canvas;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/graphics/Canvas;->drawColor(I)V

    return-void
.end method

.method public drawColor(ILandroid/graphics/BlendMode;)V
    .locals 1

    .line 12
    sget-object v0, Landroidx/compose/ui/text/android/CanvasCompatQ;->INSTANCE:Landroidx/compose/ui/text/android/CanvasCompatQ;

    invoke-direct {p0}, Landroidx/compose/ui/text/android/TextAndroidCanvas;->getNativeCanvas()Landroid/graphics/Canvas;

    move-result-object p0

    invoke-virtual {v0, p0, p1, p2}, Landroidx/compose/ui/text/android/CanvasCompatQ;->drawColor(Landroid/graphics/Canvas;ILandroid/graphics/BlendMode;)V

    return-void
.end method

.method public drawColor(ILandroid/graphics/PorterDuff$Mode;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Landroidx/compose/ui/text/android/TextAndroidCanvas;->getNativeCanvas()Landroid/graphics/Canvas;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method public drawColor(J)V
    .locals 1

    sget-object v0, Landroidx/compose/ui/text/android/CanvasCompatQ;->INSTANCE:Landroidx/compose/ui/text/android/CanvasCompatQ;

    invoke-direct {p0}, Landroidx/compose/ui/text/android/TextAndroidCanvas;->getNativeCanvas()Landroid/graphics/Canvas;

    move-result-object p0

    invoke-virtual {v0, p0, p1, p2}, Landroidx/compose/ui/text/android/CanvasCompatQ;->drawColor(Landroid/graphics/Canvas;J)V

    return-void
.end method

.method public drawColor(JLandroid/graphics/BlendMode;)V
    .locals 1

    .line 13
    sget-object v0, Landroidx/compose/ui/text/android/CanvasCompatQ;->INSTANCE:Landroidx/compose/ui/text/android/CanvasCompatQ;

    invoke-direct {p0}, Landroidx/compose/ui/text/android/TextAndroidCanvas;->getNativeCanvas()Landroid/graphics/Canvas;

    move-result-object p0

    invoke-virtual {v0, p0, p1, p2, p3}, Landroidx/compose/ui/text/android/CanvasCompatQ;->drawColor(Landroid/graphics/Canvas;JLandroid/graphics/BlendMode;)V

    return-void
.end method

.method public drawDoubleRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/RectF;FFLandroid/graphics/Paint;)V
    .locals 9

    sget-object v0, Landroidx/compose/ui/text/android/CanvasCompatQ;->INSTANCE:Landroidx/compose/ui/text/android/CanvasCompatQ;

    invoke-direct {p0}, Landroidx/compose/ui/text/android/TextAndroidCanvas;->getNativeCanvas()Landroid/graphics/Canvas;

    move-result-object v1

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    move v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Landroidx/compose/ui/text/android/CanvasCompatQ;->drawDoubleRoundRect(Landroid/graphics/Canvas;Landroid/graphics/RectF;FFLandroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public drawDoubleRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/RectF;[FLandroid/graphics/Paint;)V
    .locals 7

    .line 18
    sget-object v0, Landroidx/compose/ui/text/android/CanvasCompatQ;->INSTANCE:Landroidx/compose/ui/text/android/CanvasCompatQ;

    invoke-direct {p0}, Landroidx/compose/ui/text/android/TextAndroidCanvas;->getNativeCanvas()Landroid/graphics/Canvas;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/text/android/CanvasCompatQ;->drawDoubleRoundRect(Landroid/graphics/Canvas;Landroid/graphics/RectF;[FLandroid/graphics/RectF;[FLandroid/graphics/Paint;)V

    return-void
.end method

.method public drawGlyphs([II[FIILandroid/graphics/fonts/Font;Landroid/graphics/Paint;)V
    .locals 9

    sget-object v0, Landroidx/compose/ui/text/android/CanvasCompatS;->INSTANCE:Landroidx/compose/ui/text/android/CanvasCompatS;

    invoke-direct {p0}, Landroidx/compose/ui/text/android/TextAndroidCanvas;->getNativeCanvas()Landroid/graphics/Canvas;

    move-result-object v1

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Landroidx/compose/ui/text/android/CanvasCompatS;->drawGlyphs(Landroid/graphics/Canvas;[II[FIILandroid/graphics/fonts/Font;Landroid/graphics/Paint;)V

    return-void
.end method

.method public drawLine(FFFFLandroid/graphics/Paint;)V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/ui/text/android/TextAndroidCanvas;->getNativeCanvas()Landroid/graphics/Canvas;

    move-result-object p0

    invoke-virtual/range {p0 .. p5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public drawLines([FIILandroid/graphics/Paint;)V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/ui/text/android/TextAndroidCanvas;->getNativeCanvas()Landroid/graphics/Canvas;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/graphics/Canvas;->drawLines([FIILandroid/graphics/Paint;)V

    return-void
.end method

.method public drawLines([FLandroid/graphics/Paint;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Landroidx/compose/ui/text/android/TextAndroidCanvas;->getNativeCanvas()Landroid/graphics/Canvas;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroid/graphics/Canvas;->drawLines([FLandroid/graphics/Paint;)V

    return-void
.end method

.method public drawOval(FFFFLandroid/graphics/Paint;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Landroidx/compose/ui/text/android/TextAndroidCanvas;->getNativeCanvas()Landroid/graphics/Canvas;

    move-result-object p0

    invoke-virtual/range {p0 .. p5}, Landroid/graphics/Canvas;->drawOval(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/ui/text/android/TextAndroidCanvas;->getNativeCanvas()Landroid/graphics/Canvas;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method public drawPaint(Landroid/graphics/Paint;)V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/ui/text/android/TextAndroidCanvas;->getNativeCanvas()Landroid/graphics/Canvas;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    return-void
.end method

.method public drawPatch(Landroid/graphics/NinePatch;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    .locals 1

    sget-object v0, Landroidx/compose/ui/text/android/CanvasCompatS;->INSTANCE:Landroidx/compose/ui/text/android/CanvasCompatS;

    invoke-direct {p0}, Landroidx/compose/ui/text/android/TextAndroidCanvas;->getNativeCanvas()Landroid/graphics/Canvas;

    move-result-object p0

    invoke-virtual {v0, p0, p1, p2, p3}, Landroidx/compose/ui/text/android/CanvasCompatS;->drawPatch(Landroid/graphics/Canvas;Landroid/graphics/NinePatch;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void
.end method

.method public drawPatch(Landroid/graphics/NinePatch;Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    .locals 1

    .line 10
    sget-object v0, Landroidx/compose/ui/text/android/CanvasCompatS;->INSTANCE:Landroidx/compose/ui/text/android/CanvasCompatS;

    invoke-direct {p0}, Landroidx/compose/ui/text/android/TextAndroidCanvas;->getNativeCanvas()Landroid/graphics/Canvas;

    move-result-object p0

    invoke-virtual {v0, p0, p1, p2, p3}, Landroidx/compose/ui/text/android/CanvasCompatS;->drawPatch(Landroid/graphics/Canvas;Landroid/graphics/NinePatch;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method public drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/ui/text/android/TextAndroidCanvas;->getNativeCanvas()Landroid/graphics/Canvas;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method public drawPicture(Landroid/graphics/Picture;)V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/ui/text/android/TextAndroidCanvas;->getNativeCanvas()Landroid/graphics/Canvas;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/graphics/Canvas;->drawPicture(Landroid/graphics/Picture;)V

    return-void
.end method

.method public drawPicture(Landroid/graphics/Picture;Landroid/graphics/Rect;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Landroidx/compose/ui/text/android/TextAndroidCanvas;->getNativeCanvas()Landroid/graphics/Canvas;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroid/graphics/Canvas;->drawPicture(Landroid/graphics/Picture;Landroid/graphics/Rect;)V

    return-void
.end method

.method public drawPicture(Landroid/graphics/Picture;Landroid/graphics/RectF;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Landroidx/compose/ui/text/android/TextAndroidCanvas;->getNativeCanvas()Landroid/graphics/Canvas;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroid/graphics/Canvas;->drawPicture(Landroid/graphics/Picture;Landroid/graphics/RectF;)V

    return-void
.end method

.method public drawPoint(FFLandroid/graphics/Paint;)V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/ui/text/android/TextAndroidCanvas;->getNativeCanvas()Landroid/graphics/Canvas;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public drawPoints([FIILandroid/graphics/Paint;)V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/ui/text/android/TextAndroidCanvas;->getNativeCanvas()Landroid/graphics/Canvas;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/graphics/Canvas;->drawPoints([FIILandroid/graphics/Paint;)V

    return-void
.end method

.method public drawPoints([FLandroid/graphics/Paint;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Landroidx/compose/ui/text/android/TextAndroidCanvas;->getNativeCanvas()Landroid/graphics/Canvas;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroid/graphics/Canvas;->drawPoints([FLandroid/graphics/Paint;)V

    return-void
.end method

.method public drawPosText(Ljava/lang/String;[FLandroid/graphics/Paint;)V
    .locals 0
    .annotation runtime Lul2;
    .end annotation

    .line 8
    invoke-direct {p0}, Landroidx/compose/ui/text/android/TextAndroidCanvas;->getNativeCanvas()Landroid/graphics/Canvas;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Landroid/graphics/Canvas;->drawPosText(Ljava/lang/String;[FLandroid/graphics/Paint;)V

    return-void
.end method

.method public drawPosText([CII[FLandroid/graphics/Paint;)V
    .locals 0
    .annotation runtime Lul2;
    .end annotation

    invoke-direct {p0}, Landroidx/compose/ui/text/android/TextAndroidCanvas;->getNativeCanvas()Landroid/graphics/Canvas;

    move-result-object p0

    invoke-virtual/range {p0 .. p5}, Landroid/graphics/Canvas;->drawPosText([CII[FLandroid/graphics/Paint;)V

    return-void
.end method

.method public drawRGB(III)V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/ui/text/android/TextAndroidCanvas;->getNativeCanvas()Landroid/graphics/Canvas;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Landroid/graphics/Canvas;->drawRGB(III)V

    return-void
.end method

.method public drawRect(FFFFLandroid/graphics/Paint;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Landroidx/compose/ui/text/android/TextAndroidCanvas;->getNativeCanvas()Landroid/graphics/Canvas;

    move-result-object p0

    invoke-virtual/range {p0 .. p5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Landroidx/compose/ui/text/android/TextAndroidCanvas;->getNativeCanvas()Landroid/graphics/Canvas;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void
.end method

.method public drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/ui/text/android/TextAndroidCanvas;->getNativeCanvas()Landroid/graphics/Canvas;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method public drawRenderNode(Landroid/graphics/RenderNode;)V
    .locals 1

    sget-object v0, Landroidx/compose/ui/text/android/CanvasCompatQ;->INSTANCE:Landroidx/compose/ui/text/android/CanvasCompatQ;

    invoke-direct {p0}, Landroidx/compose/ui/text/android/TextAndroidCanvas;->getNativeCanvas()Landroid/graphics/Canvas;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Landroidx/compose/ui/text/android/CanvasCompatQ;->drawRenderNode(Landroid/graphics/Canvas;Landroid/graphics/RenderNode;)V

    return-void
.end method

.method public drawRoundRect(FFFFFFLandroid/graphics/Paint;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Landroidx/compose/ui/text/android/TextAndroidCanvas;->getNativeCanvas()Landroid/graphics/Canvas;

    move-result-object p0

    invoke-virtual/range {p0 .. p7}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/ui/text/android/TextAndroidCanvas;->getNativeCanvas()Landroid/graphics/Canvas;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Landroidx/compose/ui/text/android/TextAndroidCanvas;->getNativeCanvas()Landroid/graphics/Canvas;

    move-result-object p0

    invoke-virtual/range {p0 .. p6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Landroidx/compose/ui/text/android/TextAndroidCanvas;->getNativeCanvas()Landroid/graphics/Canvas;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Landroidx/compose/ui/text/android/TextAndroidCanvas;->getNativeCanvas()Landroid/graphics/Canvas;

    move-result-object p0

    invoke-virtual/range {p0 .. p6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public drawText([CIIFFLandroid/graphics/Paint;)V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/ui/text/android/TextAndroidCanvas;->getNativeCanvas()Landroid/graphics/Canvas;

    move-result-object p0

    invoke-virtual/range {p0 .. p6}, Landroid/graphics/Canvas;->drawText([CIIFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public drawTextOnPath(Ljava/lang/String;Landroid/graphics/Path;FFLandroid/graphics/Paint;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Landroidx/compose/ui/text/android/TextAndroidCanvas;->getNativeCanvas()Landroid/graphics/Canvas;

    move-result-object p0

    invoke-virtual/range {p0 .. p5}, Landroid/graphics/Canvas;->drawTextOnPath(Ljava/lang/String;Landroid/graphics/Path;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public drawTextOnPath([CIILandroid/graphics/Path;FFLandroid/graphics/Paint;)V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/ui/text/android/TextAndroidCanvas;->getNativeCanvas()Landroid/graphics/Canvas;

    move-result-object p0

    invoke-virtual/range {p0 .. p7}, Landroid/graphics/Canvas;->drawTextOnPath([CIILandroid/graphics/Path;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public drawTextRun(Landroid/graphics/text/MeasuredText;IIIIFFZLandroid/graphics/Paint;)V
    .locals 11

    .line 27
    sget-object v0, Landroidx/compose/ui/text/android/CanvasCompatQ;->INSTANCE:Landroidx/compose/ui/text/android/CanvasCompatQ;

    .line 28
    invoke-direct {p0}, Landroidx/compose/ui/text/android/TextAndroidCanvas;->getNativeCanvas()Landroid/graphics/Canvas;

    move-result-object v1

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    .line 29
    invoke-virtual/range {v0 .. v10}, Landroidx/compose/ui/text/android/CanvasCompatQ;->drawTextRun(Landroid/graphics/Canvas;Landroid/graphics/text/MeasuredText;IIIIFFZLandroid/graphics/Paint;)V

    return-void
.end method

.method public drawTextRun(Ljava/lang/CharSequence;IIIIFFZLandroid/graphics/Paint;)V
    .locals 11

    .line 24
    sget-object v0, Landroidx/compose/ui/text/android/CanvasCompatM;->INSTANCE:Landroidx/compose/ui/text/android/CanvasCompatM;

    .line 25
    invoke-direct {p0}, Landroidx/compose/ui/text/android/TextAndroidCanvas;->getNativeCanvas()Landroid/graphics/Canvas;

    move-result-object v1

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    .line 26
    invoke-virtual/range {v0 .. v10}, Landroidx/compose/ui/text/android/CanvasCompatM;->drawTextRun(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIIIFFZLandroid/graphics/Paint;)V

    return-void
.end method

.method public drawTextRun([CIIIIFFZLandroid/graphics/Paint;)V
    .locals 11

    sget-object v0, Landroidx/compose/ui/text/android/CanvasCompatM;->INSTANCE:Landroidx/compose/ui/text/android/CanvasCompatM;

    invoke-direct {p0}, Landroidx/compose/ui/text/android/TextAndroidCanvas;->getNativeCanvas()Landroid/graphics/Canvas;

    move-result-object v1

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    invoke-virtual/range {v0 .. v10}, Landroidx/compose/ui/text/android/CanvasCompatM;->drawTextRun(Landroid/graphics/Canvas;[CIIIIFFZLandroid/graphics/Paint;)V

    return-void
.end method

.method public drawVertices(Landroid/graphics/Canvas$VertexMode;I[FI[FI[II[SIILandroid/graphics/Paint;)V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/ui/text/android/TextAndroidCanvas;->getNativeCanvas()Landroid/graphics/Canvas;

    move-result-object p0

    invoke-virtual/range {p0 .. p12}, Landroid/graphics/Canvas;->drawVertices(Landroid/graphics/Canvas$VertexMode;I[FI[FI[II[SIILandroid/graphics/Paint;)V

    return-void
.end method

.method public enableZ()V
    .locals 1

    sget-object v0, Landroidx/compose/ui/text/android/CanvasCompatQ;->INSTANCE:Landroidx/compose/ui/text/android/CanvasCompatQ;

    invoke-direct {p0}, Landroidx/compose/ui/text/android/TextAndroidCanvas;->getNativeCanvas()Landroid/graphics/Canvas;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/compose/ui/text/android/CanvasCompatQ;->enableZ(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public getClipBounds(Landroid/graphics/Rect;)Z
    .locals 3

    invoke-direct {p0}, Landroidx/compose/ui/text/android/TextAndroidCanvas;->getNativeCanvas()Landroid/graphics/Canvas;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    const v1, 0x7fffffff

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    :cond_0
    return p0
.end method

.method public getDensity()I
    .locals 0

    invoke-direct {p0}, Landroidx/compose/ui/text/android/TextAndroidCanvas;->getNativeCanvas()Landroid/graphics/Canvas;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Canvas;->getDensity()I

    move-result p0

    return p0
.end method

.method public getDrawFilter()Landroid/graphics/DrawFilter;
    .locals 0

    invoke-direct {p0}, Landroidx/compose/ui/text/android/TextAndroidCanvas;->getNativeCanvas()Landroid/graphics/Canvas;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Canvas;->getDrawFilter()Landroid/graphics/DrawFilter;

    move-result-object p0

    return-object p0
.end method

.method public getHeight()I
    .locals 0

    invoke-direct {p0}, Landroidx/compose/ui/text/android/TextAndroidCanvas;->getNativeCanvas()Landroid/graphics/Canvas;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Canvas;->getHeight()I

    move-result p0

    return p0
.end method

.method public getMatrix(Landroid/graphics/Matrix;)V
    .locals 0
    .annotation runtime Lul2;
    .end annotation

    invoke-direct {p0}, Landroidx/compose/ui/text/android/TextAndroidCanvas;->getNativeCanvas()Landroid/graphics/Canvas;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/graphics/Canvas;->getMatrix(Landroid/graphics/Matrix;)V

    return-void
.end method

.method public getMaximumBitmapHeight()I
    .locals 0

    invoke-direct {p0}, Landroidx/compose/ui/text/android/TextAndroidCanvas;->getNativeCanvas()Landroid/graphics/Canvas;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Canvas;->getMaximumBitmapHeight()I

    move-result p0

    return p0
.end method

.method public getMaximumBitmapWidth()I
    .locals 0

    invoke-direct {p0}, Landroidx/compose/ui/text/android/TextAndroidCanvas;->getNativeCanvas()Landroid/graphics/Canvas;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Canvas;->getMaximumBitmapWidth()I

    move-result p0

    return p0
.end method

.method public getSaveCount()I
    .locals 0

    invoke-direct {p0}, Landroidx/compose/ui/text/android/TextAndroidCanvas;->getNativeCanvas()Landroid/graphics/Canvas;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Canvas;->getSaveCount()I

    move-result p0

    return p0
.end method

.method public getWidth()I
    .locals 0

    invoke-direct {p0}, Landroidx/compose/ui/text/android/TextAndroidCanvas;->getNativeCanvas()Landroid/graphics/Canvas;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Canvas;->getWidth()I

    move-result p0

    return p0
.end method

.method public final get_nativeCanvas$ui_text()Landroid/graphics/Canvas;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/text/android/TextAndroidCanvas;->_nativeCanvas:Landroid/graphics/Canvas;

    return-object p0
.end method

.method public isOpaque()Z
    .locals 0

    invoke-direct {p0}, Landroidx/compose/ui/text/android/TextAndroidCanvas;->getNativeCanvas()Landroid/graphics/Canvas;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Canvas;->isOpaque()Z

    move-result p0

    return p0
.end method

.method public quickReject(FFFF)Z
    .locals 6

    sget-object v0, Landroidx/compose/ui/text/android/CanvasCompatR;->INSTANCE:Landroidx/compose/ui/text/android/CanvasCompatR;

    invoke-direct {p0}, Landroidx/compose/ui/text/android/TextAndroidCanvas;->getNativeCanvas()Landroid/graphics/Canvas;

    move-result-object v1

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroidx/compose/ui/text/android/CanvasCompatR;->quickReject(Landroid/graphics/Canvas;FFFF)Z

    move-result p0

    return p0
.end method

.method public quickReject(FFFFLandroid/graphics/Canvas$EdgeType;)Z
    .locals 0
    .annotation runtime Lul2;
    .end annotation

    .line 18
    invoke-direct {p0}, Landroidx/compose/ui/text/android/TextAndroidCanvas;->getNativeCanvas()Landroid/graphics/Canvas;

    move-result-object p0

    invoke-virtual/range {p0 .. p5}, Landroid/graphics/Canvas;->quickReject(FFFFLandroid/graphics/Canvas$EdgeType;)Z

    move-result p0

    return p0
.end method

.method public quickReject(Landroid/graphics/Path;)Z
    .locals 1

    .line 17
    sget-object v0, Landroidx/compose/ui/text/android/CanvasCompatR;->INSTANCE:Landroidx/compose/ui/text/android/CanvasCompatR;

    invoke-direct {p0}, Landroidx/compose/ui/text/android/TextAndroidCanvas;->getNativeCanvas()Landroid/graphics/Canvas;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Landroidx/compose/ui/text/android/CanvasCompatR;->quickReject(Landroid/graphics/Canvas;Landroid/graphics/Path;)Z

    move-result p0

    return p0
.end method

.method public quickReject(Landroid/graphics/Path;Landroid/graphics/Canvas$EdgeType;)Z
    .locals 0
    .annotation runtime Lul2;
    .end annotation

    .line 16
    invoke-direct {p0}, Landroidx/compose/ui/text/android/TextAndroidCanvas;->getNativeCanvas()Landroid/graphics/Canvas;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroid/graphics/Canvas;->quickReject(Landroid/graphics/Path;Landroid/graphics/Canvas$EdgeType;)Z

    move-result p0

    return p0
.end method

.method public quickReject(Landroid/graphics/RectF;)Z
    .locals 1

    .line 15
    sget-object v0, Landroidx/compose/ui/text/android/CanvasCompatR;->INSTANCE:Landroidx/compose/ui/text/android/CanvasCompatR;

    invoke-direct {p0}, Landroidx/compose/ui/text/android/TextAndroidCanvas;->getNativeCanvas()Landroid/graphics/Canvas;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Landroidx/compose/ui/text/android/CanvasCompatR;->quickReject(Landroid/graphics/Canvas;Landroid/graphics/RectF;)Z

    move-result p0

    return p0
.end method

.method public quickReject(Landroid/graphics/RectF;Landroid/graphics/Canvas$EdgeType;)Z
    .locals 0
    .annotation runtime Lul2;
    .end annotation

    .line 19
    invoke-direct {p0}, Landroidx/compose/ui/text/android/TextAndroidCanvas;->getNativeCanvas()Landroid/graphics/Canvas;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroid/graphics/Canvas;->quickReject(Landroid/graphics/RectF;Landroid/graphics/Canvas$EdgeType;)Z

    move-result p0

    return p0
.end method

.method public restore()V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/ui/text/android/TextAndroidCanvas;->getNativeCanvas()Landroid/graphics/Canvas;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public restoreToCount(I)V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/ui/text/android/TextAndroidCanvas;->getNativeCanvas()Landroid/graphics/Canvas;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method public rotate(F)V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/ui/text/android/TextAndroidCanvas;->getNativeCanvas()Landroid/graphics/Canvas;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/graphics/Canvas;->rotate(F)V

    return-void
.end method

.method public save()I
    .locals 0

    invoke-direct {p0}, Landroidx/compose/ui/text/android/TextAndroidCanvas;->getNativeCanvas()Landroid/graphics/Canvas;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Canvas;->save()I

    move-result p0

    return p0
.end method

.method public saveLayer(FFFFLandroid/graphics/Paint;)I
    .locals 0

    .line 11
    invoke-direct {p0}, Landroidx/compose/ui/text/android/TextAndroidCanvas;->getNativeCanvas()Landroid/graphics/Canvas;

    move-result-object p0

    invoke-virtual/range {p0 .. p5}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;)I

    move-result p0

    return p0
.end method

.method public saveLayer(FFFFLandroid/graphics/Paint;I)I
    .locals 0
    .annotation runtime Lul2;
    .end annotation

    .line 10
    invoke-direct {p0}, Landroidx/compose/ui/text/android/TextAndroidCanvas;->getNativeCanvas()Landroid/graphics/Canvas;

    move-result-object p0

    invoke-virtual/range {p0 .. p6}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    move-result p0

    return p0
.end method

.method public saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;)I
    .locals 0

    .line 9
    invoke-direct {p0}, Landroidx/compose/ui/text/android/TextAndroidCanvas;->getNativeCanvas()Landroid/graphics/Canvas;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;)I

    move-result p0

    return p0
.end method

.method public saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;I)I
    .locals 0
    .annotation runtime Lul2;
    .end annotation

    invoke-direct {p0}, Landroidx/compose/ui/text/android/TextAndroidCanvas;->getNativeCanvas()Landroid/graphics/Canvas;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;I)I

    move-result p0

    return p0
.end method

.method public saveLayerAlpha(FFFFI)I
    .locals 0

    .line 11
    invoke-direct {p0}, Landroidx/compose/ui/text/android/TextAndroidCanvas;->getNativeCanvas()Landroid/graphics/Canvas;

    move-result-object p0

    invoke-virtual/range {p0 .. p5}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFI)I

    move-result p0

    return p0
.end method

.method public saveLayerAlpha(FFFFII)I
    .locals 0
    .annotation runtime Lul2;
    .end annotation

    .line 10
    invoke-direct {p0}, Landroidx/compose/ui/text/android/TextAndroidCanvas;->getNativeCanvas()Landroid/graphics/Canvas;

    move-result-object p0

    invoke-virtual/range {p0 .. p6}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    move-result p0

    return p0
.end method

.method public saveLayerAlpha(Landroid/graphics/RectF;I)I
    .locals 0

    .line 9
    invoke-direct {p0}, Landroidx/compose/ui/text/android/TextAndroidCanvas;->getNativeCanvas()Landroid/graphics/Canvas;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroid/graphics/Canvas;->saveLayerAlpha(Landroid/graphics/RectF;I)I

    move-result p0

    return p0
.end method

.method public saveLayerAlpha(Landroid/graphics/RectF;II)I
    .locals 0
    .annotation runtime Lul2;
    .end annotation

    invoke-direct {p0}, Landroidx/compose/ui/text/android/TextAndroidCanvas;->getNativeCanvas()Landroid/graphics/Canvas;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Landroid/graphics/Canvas;->saveLayerAlpha(Landroid/graphics/RectF;II)I

    move-result p0

    return p0
.end method

.method public scale(FF)V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/ui/text/android/TextAndroidCanvas;->getNativeCanvas()Landroid/graphics/Canvas;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroid/graphics/Canvas;->scale(FF)V

    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/ui/text/android/TextAndroidCanvas;->getNativeCanvas()Landroid/graphics/Canvas;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public setDensity(I)V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/ui/text/android/TextAndroidCanvas;->getNativeCanvas()Landroid/graphics/Canvas;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/graphics/Canvas;->setDensity(I)V

    return-void
.end method

.method public setDrawFilter(Landroid/graphics/DrawFilter;)V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/ui/text/android/TextAndroidCanvas;->getNativeCanvas()Landroid/graphics/Canvas;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    return-void
.end method

.method public setMatrix(Landroid/graphics/Matrix;)V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/ui/text/android/TextAndroidCanvas;->getNativeCanvas()Landroid/graphics/Canvas;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    return-void
.end method

.method public final set_nativeCanvas$ui_text(Landroid/graphics/Canvas;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/ui/text/android/TextAndroidCanvas;->_nativeCanvas:Landroid/graphics/Canvas;

    return-void
.end method

.method public skew(FF)V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/ui/text/android/TextAndroidCanvas;->getNativeCanvas()Landroid/graphics/Canvas;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroid/graphics/Canvas;->skew(FF)V

    return-void
.end method

.method public translate(FF)V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/ui/text/android/TextAndroidCanvas;->getNativeCanvas()Landroid/graphics/Canvas;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroid/graphics/Canvas;->translate(FF)V

    return-void
.end method

.method public final withCanvas(Landroid/graphics/Canvas;Lnl3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Lnl3<",
            "-",
            "Landroid/graphics/Canvas;",
            "Lj59;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroidx/compose/ui/text/android/TextAndroidCanvas;->set_nativeCanvas$ui_text(Landroid/graphics/Canvas;)V

    const/4 p1, 0x0

    :try_start_0
    invoke-interface {p2, p0}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, p1}, Landroidx/compose/ui/text/android/TextAndroidCanvas;->set_nativeCanvas$ui_text(Landroid/graphics/Canvas;)V

    return-void

    :catchall_0
    move-exception p2

    invoke-virtual {p0, p1}, Landroidx/compose/ui/text/android/TextAndroidCanvas;->set_nativeCanvas$ui_text(Landroid/graphics/Canvas;)V

    throw p2
.end method
