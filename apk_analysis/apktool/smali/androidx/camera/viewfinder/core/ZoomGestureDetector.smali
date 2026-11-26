.class public final Landroidx/camera/viewfinder/core/ZoomGestureDetector;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/viewfinder/core/ZoomGestureDetector$Companion;,
        Landroidx/camera/viewfinder/core/ZoomGestureDetector$OnZoomGestureListener;,
        Landroidx/camera/viewfinder/core/ZoomGestureDetector$ZoomEvent;
    }
.end annotation


# static fields
.field private static final ANCHORED_ZOOM_MODE_DOUBLE_TAP:I = 0x1

.field private static final ANCHORED_ZOOM_MODE_NONE:I = 0x0

.field private static final ANCHORED_ZOOM_MODE_STYLUS:I = 0x2

.field public static final Companion:Landroidx/camera/viewfinder/core/ZoomGestureDetector$Companion;

.field private static final DEFAULT_MIN_SPAN:I = 0x0

.field private static final SCALE_FACTOR:F = 0.5f


# instance fields
.field private anchoredZoomMode:I

.field private anchoredZoomStartX:F

.field private anchoredZoomStartY:F

.field private final context:Landroid/content/Context;

.field private currentSpan:F

.field private currentSpanX:F

.field private currentSpanY:F

.field private eventBeforeOrAboveStartingGestureEvent:Z

.field private eventTime:J

.field private focusX:I

.field private focusY:I

.field private gestureDetector:Landroid/view/GestureDetector;

.field private initialSpan:F

.field private isInProgress:Z

.field private isQuickZoomEnabled:Z

.field private isStylusZoomEnabled:Z

.field private final listener:Landroidx/camera/viewfinder/core/ZoomGestureDetector$OnZoomGestureListener;

.field private final minSpan:I

.field private prevTime:J

.field private previousSpan:F

.field private previousSpanX:F

.field private previousSpanY:F

.field private final spanSlop:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/camera/viewfinder/core/ZoomGestureDetector$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/camera/viewfinder/core/ZoomGestureDetector$Companion;-><init>(Ljh2;)V

    sput-object v0, Landroidx/camera/viewfinder/core/ZoomGestureDetector;->Companion:Landroidx/camera/viewfinder/core/ZoomGestureDetector$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IILandroidx/camera/viewfinder/core/ZoomGestureDetector$OnZoomGestureListener;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/viewfinder/core/ZoomGestureDetector;->context:Landroid/content/Context;

    iput p2, p0, Landroidx/camera/viewfinder/core/ZoomGestureDetector;->spanSlop:I

    iput p3, p0, Landroidx/camera/viewfinder/core/ZoomGestureDetector;->minSpan:I

    iput-object p4, p0, Landroidx/camera/viewfinder/core/ZoomGestureDetector;->listener:Landroidx/camera/viewfinder/core/ZoomGestureDetector$OnZoomGestureListener;

    const/4 p2, 0x1

    iput-boolean p2, p0, Landroidx/camera/viewfinder/core/ZoomGestureDetector;->isQuickZoomEnabled:Z

    iput-boolean p2, p0, Landroidx/camera/viewfinder/core/ZoomGestureDetector;->isStylusZoomEnabled:Z

    new-instance p2, Landroid/view/GestureDetector;

    new-instance p3, Landroidx/camera/viewfinder/core/ZoomGestureDetector$gestureDetector$1;

    invoke-direct {p3, p0}, Landroidx/camera/viewfinder/core/ZoomGestureDetector$gestureDetector$1;-><init>(Landroidx/camera/viewfinder/core/ZoomGestureDetector;)V

    invoke-direct {p2, p1, p3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p2, p0, Landroidx/camera/viewfinder/core/ZoomGestureDetector;->gestureDetector:Landroid/view/GestureDetector;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;IILandroidx/camera/viewfinder/core/ZoomGestureDetector$OnZoomGestureListener;ILjh2;)V
    .locals 0

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    .line 37
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p2

    mul-int/lit8 p2, p2, 0x2

    :cond_0
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_1

    const/4 p3, 0x0

    .line 38
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/camera/viewfinder/core/ZoomGestureDetector;-><init>(Landroid/content/Context;IILandroidx/camera/viewfinder/core/ZoomGestureDetector$OnZoomGestureListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILandroidx/camera/viewfinder/core/ZoomGestureDetector$OnZoomGestureListener;)V
    .locals 7

    .line 36
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Landroidx/camera/viewfinder/core/ZoomGestureDetector;-><init>(Landroid/content/Context;IILandroidx/camera/viewfinder/core/ZoomGestureDetector$OnZoomGestureListener;ILjh2;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/camera/viewfinder/core/ZoomGestureDetector$OnZoomGestureListener;)V
    .locals 7

    .line 35
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v6}, Landroidx/camera/viewfinder/core/ZoomGestureDetector;-><init>(Landroid/content/Context;IILandroidx/camera/viewfinder/core/ZoomGestureDetector$OnZoomGestureListener;ILjh2;)V

    return-void
.end method

.method public static final synthetic access$setAnchoredZoomMode$p(Landroidx/camera/viewfinder/core/ZoomGestureDetector;I)V
    .locals 0

    iput p1, p0, Landroidx/camera/viewfinder/core/ZoomGestureDetector;->anchoredZoomMode:I

    return-void
.end method

.method public static final synthetic access$setAnchoredZoomStartX$p(Landroidx/camera/viewfinder/core/ZoomGestureDetector;F)V
    .locals 0

    iput p1, p0, Landroidx/camera/viewfinder/core/ZoomGestureDetector;->anchoredZoomStartX:F

    return-void
.end method

.method public static final synthetic access$setAnchoredZoomStartY$p(Landroidx/camera/viewfinder/core/ZoomGestureDetector;F)V
    .locals 0

    iput p1, p0, Landroidx/camera/viewfinder/core/ZoomGestureDetector;->anchoredZoomStartY:F

    return-void
.end method

.method private final getIncrementalScaleFactor()F
    .locals 4

    invoke-direct {p0}, Landroidx/camera/viewfinder/core/ZoomGestureDetector;->inAnchoredZoomMode()Z

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Landroidx/camera/viewfinder/core/ZoomGestureDetector;->eventBeforeOrAboveStartingGestureEvent:Z

    if-eqz v0, :cond_0

    iget v2, p0, Landroidx/camera/viewfinder/core/ZoomGestureDetector;->currentSpan:F

    iget v3, p0, Landroidx/camera/viewfinder/core/ZoomGestureDetector;->previousSpan:F

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_1

    :cond_0
    if-nez v0, :cond_2

    iget v0, p0, Landroidx/camera/viewfinder/core/ZoomGestureDetector;->currentSpan:F

    iget v2, p0, Landroidx/camera/viewfinder/core/ZoomGestureDetector;->previousSpan:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Landroidx/camera/viewfinder/core/ZoomGestureDetector;->currentSpan:F

    iget v3, p0, Landroidx/camera/viewfinder/core/ZoomGestureDetector;->previousSpan:F

    div-float/2addr v2, v3

    sub-float v2, v1, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v2, v3

    iget v3, p0, Landroidx/camera/viewfinder/core/ZoomGestureDetector;->previousSpan:F

    iget p0, p0, Landroidx/camera/viewfinder/core/ZoomGestureDetector;->spanSlop:I

    int-to-float p0, p0

    cmpg-float p0, v3, p0

    if-gtz p0, :cond_3

    return v1

    :cond_3
    if-eqz v0, :cond_4

    add-float/2addr v2, v1

    return v2

    :cond_4
    sub-float/2addr v1, v2

    return v1

    :cond_5
    iget v0, p0, Landroidx/camera/viewfinder/core/ZoomGestureDetector;->previousSpan:F

    const/4 v2, 0x0

    cmpl-float v2, v0, v2

    if-lez v2, :cond_6

    iget p0, p0, Landroidx/camera/viewfinder/core/ZoomGestureDetector;->currentSpan:F

    div-float/2addr p0, v0

    return p0

    :cond_6
    return v1
.end method

.method private final inAnchoredZoomMode()Z
    .locals 0

    iget p0, p0, Landroidx/camera/viewfinder/core/ZoomGestureDetector;->anchoredZoomMode:I

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final getTimeDelta()J
    .locals 4

    iget-wide v0, p0, Landroidx/camera/viewfinder/core/ZoomGestureDetector;->eventTime:J

    iget-wide v2, p0, Landroidx/camera/viewfinder/core/ZoomGestureDetector;->prevTime:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public final isQuickZoomEnabled()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/camera/viewfinder/core/ZoomGestureDetector;->isQuickZoomEnabled:Z

    return p0
.end method

.method public final isStylusZoomEnabled()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/camera/viewfinder/core/ZoomGestureDetector;->isStylusZoomEnabled:Z

    return p0
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    iput-wide v2, v0, Landroidx/camera/viewfinder/core/ZoomGestureDetector;->eventTime:J

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    iget-boolean v3, v0, Landroidx/camera/viewfinder/core/ZoomGestureDetector;->isQuickZoomEnabled:Z

    if-eqz v3, :cond_0

    iget-object v3, v0, Landroidx/camera/viewfinder/core/ZoomGestureDetector;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v3, v1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_0
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v4

    and-int/lit8 v4, v4, 0x20

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_1

    move v4, v6

    goto :goto_0

    :cond_1
    move v4, v5

    :goto_0
    iget v7, v0, Landroidx/camera/viewfinder/core/ZoomGestureDetector;->anchoredZoomMode:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_2

    if-nez v4, :cond_2

    move v7, v6

    goto :goto_1

    :cond_2
    move v7, v5

    :goto_1
    if-eq v2, v6, :cond_4

    const/4 v9, 0x3

    if-eq v2, v9, :cond_4

    if-eqz v7, :cond_3

    goto :goto_2

    :cond_3
    move v9, v5

    goto :goto_3

    :cond_4
    :goto_2
    move v9, v6

    :goto_3
    const/4 v10, 0x0

    if-eqz v2, :cond_6

    if-eqz v9, :cond_5

    goto :goto_4

    :cond_5
    move/from16 v18, v6

    goto :goto_6

    :cond_6
    :goto_4
    iget-boolean v11, v0, Landroidx/camera/viewfinder/core/ZoomGestureDetector;->isInProgress:Z

    if-eqz v11, :cond_7

    iget-object v11, v0, Landroidx/camera/viewfinder/core/ZoomGestureDetector;->listener:Landroidx/camera/viewfinder/core/ZoomGestureDetector$OnZoomGestureListener;

    new-instance v12, Landroidx/camera/viewfinder/core/ZoomGestureDetector$ZoomEvent$End;

    iget-wide v13, v0, Landroidx/camera/viewfinder/core/ZoomGestureDetector;->eventTime:J

    iget v15, v0, Landroidx/camera/viewfinder/core/ZoomGestureDetector;->focusX:I

    move/from16 v18, v6

    iget v6, v0, Landroidx/camera/viewfinder/core/ZoomGestureDetector;->focusY:I

    invoke-direct {v0}, Landroidx/camera/viewfinder/core/ZoomGestureDetector;->getIncrementalScaleFactor()F

    move-result v17

    move/from16 v16, v6

    invoke-direct/range {v12 .. v17}, Landroidx/camera/viewfinder/core/ZoomGestureDetector$ZoomEvent$End;-><init>(JIIF)V

    invoke-interface {v11, v12}, Landroidx/camera/viewfinder/core/ZoomGestureDetector$OnZoomGestureListener;->onZoomEvent(Landroidx/camera/viewfinder/core/ZoomGestureDetector$ZoomEvent;)Z

    iput-boolean v5, v0, Landroidx/camera/viewfinder/core/ZoomGestureDetector;->isInProgress:Z

    iput v10, v0, Landroidx/camera/viewfinder/core/ZoomGestureDetector;->initialSpan:F

    iput v5, v0, Landroidx/camera/viewfinder/core/ZoomGestureDetector;->anchoredZoomMode:I

    goto :goto_5

    :cond_7
    move/from16 v18, v6

    invoke-direct {v0}, Landroidx/camera/viewfinder/core/ZoomGestureDetector;->inAnchoredZoomMode()Z

    move-result v6

    if-eqz v6, :cond_8

    if-eqz v9, :cond_8

    iput-boolean v5, v0, Landroidx/camera/viewfinder/core/ZoomGestureDetector;->isInProgress:Z

    iput v10, v0, Landroidx/camera/viewfinder/core/ZoomGestureDetector;->initialSpan:F

    iput v5, v0, Landroidx/camera/viewfinder/core/ZoomGestureDetector;->anchoredZoomMode:I

    :cond_8
    :goto_5
    if-eqz v9, :cond_9

    goto/16 :goto_13

    :cond_9
    :goto_6
    iget-boolean v6, v0, Landroidx/camera/viewfinder/core/ZoomGestureDetector;->isInProgress:Z

    if-nez v6, :cond_a

    iget-boolean v6, v0, Landroidx/camera/viewfinder/core/ZoomGestureDetector;->isStylusZoomEnabled:Z

    if-eqz v6, :cond_a

    invoke-direct {v0}, Landroidx/camera/viewfinder/core/ZoomGestureDetector;->inAnchoredZoomMode()Z

    move-result v6

    if-nez v6, :cond_a

    if-nez v9, :cond_a

    if-eqz v4, :cond_a

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iput v4, v0, Landroidx/camera/viewfinder/core/ZoomGestureDetector;->anchoredZoomStartX:F

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iput v4, v0, Landroidx/camera/viewfinder/core/ZoomGestureDetector;->anchoredZoomStartY:F

    iput v8, v0, Landroidx/camera/viewfinder/core/ZoomGestureDetector;->anchoredZoomMode:I

    iput v10, v0, Landroidx/camera/viewfinder/core/ZoomGestureDetector;->initialSpan:F

    :cond_a
    const/4 v4, 0x6

    if-eqz v2, :cond_c

    if-eq v2, v4, :cond_c

    const/4 v6, 0x5

    if-eq v2, v6, :cond_c

    if-eqz v7, :cond_b

    goto :goto_7

    :cond_b
    move v6, v5

    goto :goto_8

    :cond_c
    :goto_7
    move/from16 v6, v18

    :goto_8
    if-ne v2, v4, :cond_d

    move/from16 v4, v18

    goto :goto_9

    :cond_d
    move v4, v5

    :goto_9
    if-eqz v4, :cond_e

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v7

    goto :goto_a

    :cond_e
    const/4 v7, -0x1

    :goto_a
    if-eqz v4, :cond_f

    add-int/lit8 v4, v3, -0x1

    goto :goto_b

    :cond_f
    move v4, v3

    :goto_b
    invoke-direct {v0}, Landroidx/camera/viewfinder/core/ZoomGestureDetector;->inAnchoredZoomMode()Z

    move-result v9

    if-eqz v9, :cond_11

    iget v9, v0, Landroidx/camera/viewfinder/core/ZoomGestureDetector;->anchoredZoomStartX:F

    iget v11, v0, Landroidx/camera/viewfinder/core/ZoomGestureDetector;->anchoredZoomStartY:F

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getY()F

    move-result v12

    cmpg-float v12, v12, v11

    if-gez v12, :cond_10

    move/from16 v12, v18

    goto :goto_c

    :cond_10
    move v12, v5

    :goto_c
    iput-boolean v12, v0, Landroidx/camera/viewfinder/core/ZoomGestureDetector;->eventBeforeOrAboveStartingGestureEvent:Z

    goto :goto_e

    :cond_11
    move v9, v5

    move v11, v10

    move v12, v11

    :goto_d
    if-ge v9, v3, :cond_13

    if-eq v7, v9, :cond_12

    invoke-virtual {v1, v9}, Landroid/view/MotionEvent;->getX(I)F

    move-result v13

    add-float/2addr v11, v13

    invoke-virtual {v1, v9}, Landroid/view/MotionEvent;->getY(I)F

    move-result v13

    add-float/2addr v12, v13

    :cond_12
    add-int/lit8 v9, v9, 0x1

    goto :goto_d

    :cond_13
    int-to-float v9, v4

    div-float/2addr v11, v9

    div-float v9, v12, v9

    move/from16 v25, v11

    move v11, v9

    move/from16 v9, v25

    :goto_e
    move v13, v5

    move v12, v10

    :goto_f
    if-ge v13, v3, :cond_15

    if-eq v7, v13, :cond_14

    invoke-virtual {v1, v13}, Landroid/view/MotionEvent;->getX(I)F

    move-result v14

    sub-float/2addr v14, v9

    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v14

    add-float/2addr v14, v10

    invoke-virtual {v1, v13}, Landroid/view/MotionEvent;->getY(I)F

    move-result v10

    sub-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    add-float/2addr v10, v12

    move v12, v10

    move v10, v14

    :cond_14
    add-int/lit8 v13, v13, 0x1

    goto :goto_f

    :cond_15
    int-to-float v1, v4

    div-float/2addr v10, v1

    div-float/2addr v12, v1

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v10, v1

    mul-float/2addr v12, v1

    invoke-direct {v0}, Landroidx/camera/viewfinder/core/ZoomGestureDetector;->inAnchoredZoomMode()Z

    move-result v1

    if-eqz v1, :cond_16

    move v1, v12

    goto :goto_10

    :cond_16
    float-to-double v3, v10

    float-to-double v13, v12

    invoke-static {v3, v4, v13, v14}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v3

    double-to-float v1, v3

    :goto_10
    iget-boolean v3, v0, Landroidx/camera/viewfinder/core/ZoomGestureDetector;->isInProgress:Z

    invoke-static {v9}, Lw65;->b(F)I

    move-result v4

    iput v4, v0, Landroidx/camera/viewfinder/core/ZoomGestureDetector;->focusX:I

    invoke-static {v11}, Lw65;->b(F)I

    move-result v4

    iput v4, v0, Landroidx/camera/viewfinder/core/ZoomGestureDetector;->focusY:I

    invoke-direct {v0}, Landroidx/camera/viewfinder/core/ZoomGestureDetector;->inAnchoredZoomMode()Z

    move-result v4

    if-nez v4, :cond_18

    iget-boolean v4, v0, Landroidx/camera/viewfinder/core/ZoomGestureDetector;->isInProgress:Z

    if-eqz v4, :cond_18

    iget v4, v0, Landroidx/camera/viewfinder/core/ZoomGestureDetector;->minSpan:I

    int-to-float v4, v4

    cmpg-float v4, v1, v4

    if-ltz v4, :cond_17

    if-eqz v6, :cond_18

    :cond_17
    iget-object v4, v0, Landroidx/camera/viewfinder/core/ZoomGestureDetector;->listener:Landroidx/camera/viewfinder/core/ZoomGestureDetector$OnZoomGestureListener;

    new-instance v19, Landroidx/camera/viewfinder/core/ZoomGestureDetector$ZoomEvent$End;

    iget-wide v13, v0, Landroidx/camera/viewfinder/core/ZoomGestureDetector;->eventTime:J

    iget v7, v0, Landroidx/camera/viewfinder/core/ZoomGestureDetector;->focusX:I

    iget v9, v0, Landroidx/camera/viewfinder/core/ZoomGestureDetector;->focusY:I

    invoke-direct {v0}, Landroidx/camera/viewfinder/core/ZoomGestureDetector;->getIncrementalScaleFactor()F

    move-result v24

    move/from16 v22, v7

    move/from16 v23, v9

    move-wide/from16 v20, v13

    invoke-direct/range {v19 .. v24}, Landroidx/camera/viewfinder/core/ZoomGestureDetector$ZoomEvent$End;-><init>(JIIF)V

    move-object/from16 v7, v19

    invoke-interface {v4, v7}, Landroidx/camera/viewfinder/core/ZoomGestureDetector$OnZoomGestureListener;->onZoomEvent(Landroidx/camera/viewfinder/core/ZoomGestureDetector$ZoomEvent;)Z

    iput-boolean v5, v0, Landroidx/camera/viewfinder/core/ZoomGestureDetector;->isInProgress:Z

    iput v1, v0, Landroidx/camera/viewfinder/core/ZoomGestureDetector;->initialSpan:F

    :cond_18
    if-eqz v6, :cond_19

    iput v10, v0, Landroidx/camera/viewfinder/core/ZoomGestureDetector;->currentSpanX:F

    iput v10, v0, Landroidx/camera/viewfinder/core/ZoomGestureDetector;->previousSpanX:F

    iput v12, v0, Landroidx/camera/viewfinder/core/ZoomGestureDetector;->currentSpanY:F

    iput v12, v0, Landroidx/camera/viewfinder/core/ZoomGestureDetector;->previousSpanY:F

    iput v1, v0, Landroidx/camera/viewfinder/core/ZoomGestureDetector;->currentSpan:F

    iput v1, v0, Landroidx/camera/viewfinder/core/ZoomGestureDetector;->previousSpan:F

    iput v1, v0, Landroidx/camera/viewfinder/core/ZoomGestureDetector;->initialSpan:F

    :cond_19
    invoke-direct {v0}, Landroidx/camera/viewfinder/core/ZoomGestureDetector;->inAnchoredZoomMode()Z

    move-result v4

    if-eqz v4, :cond_1a

    iget v4, v0, Landroidx/camera/viewfinder/core/ZoomGestureDetector;->spanSlop:I

    goto :goto_11

    :cond_1a
    iget v4, v0, Landroidx/camera/viewfinder/core/ZoomGestureDetector;->minSpan:I

    :goto_11
    iget-boolean v5, v0, Landroidx/camera/viewfinder/core/ZoomGestureDetector;->isInProgress:Z

    if-nez v5, :cond_1c

    int-to-float v4, v4

    cmpl-float v4, v1, v4

    if-ltz v4, :cond_1c

    if-nez v3, :cond_1b

    iget v3, v0, Landroidx/camera/viewfinder/core/ZoomGestureDetector;->initialSpan:F

    sub-float v3, v1, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, v0, Landroidx/camera/viewfinder/core/ZoomGestureDetector;->spanSlop:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1c

    :cond_1b
    iput v10, v0, Landroidx/camera/viewfinder/core/ZoomGestureDetector;->currentSpanX:F

    iput v10, v0, Landroidx/camera/viewfinder/core/ZoomGestureDetector;->previousSpanX:F

    iput v12, v0, Landroidx/camera/viewfinder/core/ZoomGestureDetector;->currentSpanY:F

    iput v12, v0, Landroidx/camera/viewfinder/core/ZoomGestureDetector;->previousSpanY:F

    iput v1, v0, Landroidx/camera/viewfinder/core/ZoomGestureDetector;->currentSpan:F

    iput v1, v0, Landroidx/camera/viewfinder/core/ZoomGestureDetector;->previousSpan:F

    iget-wide v3, v0, Landroidx/camera/viewfinder/core/ZoomGestureDetector;->eventTime:J

    iput-wide v3, v0, Landroidx/camera/viewfinder/core/ZoomGestureDetector;->prevTime:J

    iget-object v5, v0, Landroidx/camera/viewfinder/core/ZoomGestureDetector;->listener:Landroidx/camera/viewfinder/core/ZoomGestureDetector$OnZoomGestureListener;

    new-instance v6, Landroidx/camera/viewfinder/core/ZoomGestureDetector$ZoomEvent$Begin;

    iget v7, v0, Landroidx/camera/viewfinder/core/ZoomGestureDetector;->focusX:I

    iget v9, v0, Landroidx/camera/viewfinder/core/ZoomGestureDetector;->focusY:I

    invoke-direct {v6, v3, v4, v7, v9}, Landroidx/camera/viewfinder/core/ZoomGestureDetector$ZoomEvent$Begin;-><init>(JII)V

    invoke-interface {v5, v6}, Landroidx/camera/viewfinder/core/ZoomGestureDetector$OnZoomGestureListener;->onZoomEvent(Landroidx/camera/viewfinder/core/ZoomGestureDetector$ZoomEvent;)Z

    move-result v3

    iput-boolean v3, v0, Landroidx/camera/viewfinder/core/ZoomGestureDetector;->isInProgress:Z

    :cond_1c
    if-ne v2, v8, :cond_1e

    iput v10, v0, Landroidx/camera/viewfinder/core/ZoomGestureDetector;->currentSpanX:F

    iput v12, v0, Landroidx/camera/viewfinder/core/ZoomGestureDetector;->currentSpanY:F

    iput v1, v0, Landroidx/camera/viewfinder/core/ZoomGestureDetector;->currentSpan:F

    iget-boolean v1, v0, Landroidx/camera/viewfinder/core/ZoomGestureDetector;->isInProgress:Z

    if-eqz v1, :cond_1d

    iget-object v1, v0, Landroidx/camera/viewfinder/core/ZoomGestureDetector;->listener:Landroidx/camera/viewfinder/core/ZoomGestureDetector$OnZoomGestureListener;

    new-instance v2, Landroidx/camera/viewfinder/core/ZoomGestureDetector$ZoomEvent$Move;

    iget-wide v3, v0, Landroidx/camera/viewfinder/core/ZoomGestureDetector;->eventTime:J

    iget v5, v0, Landroidx/camera/viewfinder/core/ZoomGestureDetector;->focusX:I

    iget v6, v0, Landroidx/camera/viewfinder/core/ZoomGestureDetector;->focusY:I

    invoke-direct {v0}, Landroidx/camera/viewfinder/core/ZoomGestureDetector;->getIncrementalScaleFactor()F

    move-result v7

    invoke-direct/range {v2 .. v7}, Landroidx/camera/viewfinder/core/ZoomGestureDetector$ZoomEvent$Move;-><init>(JIIF)V

    invoke-interface {v1, v2}, Landroidx/camera/viewfinder/core/ZoomGestureDetector$OnZoomGestureListener;->onZoomEvent(Landroidx/camera/viewfinder/core/ZoomGestureDetector$ZoomEvent;)Z

    move-result v1

    goto :goto_12

    :cond_1d
    move/from16 v1, v18

    :goto_12
    if-eqz v1, :cond_1e

    iget v1, v0, Landroidx/camera/viewfinder/core/ZoomGestureDetector;->currentSpanX:F

    iput v1, v0, Landroidx/camera/viewfinder/core/ZoomGestureDetector;->previousSpanX:F

    iget v1, v0, Landroidx/camera/viewfinder/core/ZoomGestureDetector;->currentSpanY:F

    iput v1, v0, Landroidx/camera/viewfinder/core/ZoomGestureDetector;->previousSpanY:F

    iget v1, v0, Landroidx/camera/viewfinder/core/ZoomGestureDetector;->currentSpan:F

    iput v1, v0, Landroidx/camera/viewfinder/core/ZoomGestureDetector;->previousSpan:F

    iget-wide v1, v0, Landroidx/camera/viewfinder/core/ZoomGestureDetector;->eventTime:J

    iput-wide v1, v0, Landroidx/camera/viewfinder/core/ZoomGestureDetector;->prevTime:J

    :cond_1e
    :goto_13
    return v18
.end method

.method public final setQuickZoomEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/camera/viewfinder/core/ZoomGestureDetector;->isQuickZoomEnabled:Z

    return-void
.end method

.method public final setStylusZoomEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/camera/viewfinder/core/ZoomGestureDetector;->isStylusZoomEnabled:Z

    return-void
.end method
