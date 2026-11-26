.class final Landroidx/compose/foundation/gestures/TransformableKt$detectNonTouchGestures$2;
.super Lf57;
.source "SourceFile"

# interfaces
.implements Lbm3;


# annotations
.annotation runtime Lbd2;
    c = "androidx.compose.foundation.gestures.TransformableKt$detectNonTouchGestures$2"
    f = "Transformable.kt"
    l = {
        0x120,
        0x13b,
        0x14b,
        0x15d
    }
    m = "invokeSuspend"
    v = 0x1
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/gestures/TransformableKt;->detectNonTouchGestures(Landroidx/compose/ui/input/pointer/PointerInputScope;Lx81;Landroidx/compose/foundation/gestures/ScrollConfig;Le02;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lf57;",
        "Lbm3<",
        "Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;",
        "Le02<",
        "-",
        "Lj59;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $channel:Lx81;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx81<",
            "Landroidx/compose/foundation/gestures/TransformEvent;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $currentContext:Lo22;

.field final synthetic $scrollConfig:Landroidx/compose/foundation/gestures/ScrollConfig;

.field private synthetic L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method public constructor <init>(Lo22;Landroidx/compose/foundation/gestures/ScrollConfig;Lx81;Le02;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo22;",
            "Landroidx/compose/foundation/gestures/ScrollConfig;",
            "Lx81<",
            "Landroidx/compose/foundation/gestures/TransformEvent;",
            ">;",
            "Le02<",
            "-",
            "Landroidx/compose/foundation/gestures/TransformableKt$detectNonTouchGestures$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/foundation/gestures/TransformableKt$detectNonTouchGestures$2;->$currentContext:Lo22;

    iput-object p2, p0, Landroidx/compose/foundation/gestures/TransformableKt$detectNonTouchGestures$2;->$scrollConfig:Landroidx/compose/foundation/gestures/ScrollConfig;

    iput-object p3, p0, Landroidx/compose/foundation/gestures/TransformableKt$detectNonTouchGestures$2;->$channel:Lx81;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lf57;-><init>(ILe02;)V

    return-void
.end method

.method public static synthetic g(Landroidx/compose/ui/input/pointer/PointerInputChange;)Z
    .locals 0

    invoke-static {p0}, Landroidx/compose/foundation/gestures/TransformableKt$detectNonTouchGestures$2;->invokeSuspend$lambda$1(Landroidx/compose/ui/input/pointer/PointerInputChange;)Z

    move-result p0

    return p0
.end method

.method public static synthetic i(Landroidx/compose/ui/input/pointer/PointerInputChange;)Z
    .locals 0

    invoke-static {p0}, Landroidx/compose/foundation/gestures/TransformableKt$detectNonTouchGestures$2;->invokeSuspend$lambda$0(Landroidx/compose/ui/input/pointer/PointerInputChange;)Z

    move-result p0

    return p0
.end method

.method private static final invokeSuspend$lambda$0(Landroidx/compose/ui/input/pointer/PointerInputChange;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method private static final invokeSuspend$lambda$1(Landroidx/compose/ui/input/pointer/PointerInputChange;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method private static final invokeSuspend$lambda$3(Landroidx/compose/ui/input/pointer/PointerInputChange;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic m(Landroidx/compose/ui/input/pointer/PointerInputChange;)Z
    .locals 0

    invoke-static {p0}, Landroidx/compose/foundation/gestures/TransformableKt$detectNonTouchGestures$2;->invokeSuspend$lambda$3(Landroidx/compose/ui/input/pointer/PointerInputChange;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Le02;)Le02;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Le02<",
            "*>;)",
            "Le02<",
            "Lj59;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroidx/compose/foundation/gestures/TransformableKt$detectNonTouchGestures$2;

    iget-object v1, p0, Landroidx/compose/foundation/gestures/TransformableKt$detectNonTouchGestures$2;->$currentContext:Lo22;

    iget-object v2, p0, Landroidx/compose/foundation/gestures/TransformableKt$detectNonTouchGestures$2;->$scrollConfig:Landroidx/compose/foundation/gestures/ScrollConfig;

    iget-object p0, p0, Landroidx/compose/foundation/gestures/TransformableKt$detectNonTouchGestures$2;->$channel:Lx81;

    invoke-direct {v0, v1, v2, p0, p2}, Landroidx/compose/foundation/gestures/TransformableKt$detectNonTouchGestures$2;-><init>(Lo22;Landroidx/compose/foundation/gestures/ScrollConfig;Lx81;Le02;)V

    iput-object p1, v0, Landroidx/compose/foundation/gestures/TransformableKt$detectNonTouchGestures$2;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Le02;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;",
            "Le02<",
            "-",
            "Lj59;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/gestures/TransformableKt$detectNonTouchGestures$2;->create(Ljava/lang/Object;Le02;)Le02;

    move-result-object p0

    check-cast p0, Landroidx/compose/foundation/gestures/TransformableKt$detectNonTouchGestures$2;

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/gestures/TransformableKt$detectNonTouchGestures$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 13
    check-cast p1, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    check-cast p2, Le02;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/gestures/TransformableKt$detectNonTouchGestures$2;->invoke(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Le02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 20

    move-object/from16 v1, p0

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    iget v2, v1, Landroidx/compose/foundation/gestures/TransformableKt$detectNonTouchGestures$2;->label:I

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v2, :cond_4

    if-eq v2, v7, :cond_3

    if-eq v2, v5, :cond_2

    if-eq v2, v4, :cond_1

    if-ne v2, v3, :cond_0

    iget-object v2, v1, Landroidx/compose/foundation/gestures/TransformableKt$detectNonTouchGestures$2;->L$0:Ljava/lang/Object;

    check-cast v2, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    :try_start_0
    invoke-static/range {p1 .. p1}, Lr57;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v9, p1

    goto/16 :goto_8

    :catchall_0
    move-exception v0

    goto/16 :goto_9

    :cond_0
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lah;->f(Ljava/lang/String;)V

    return-object v8

    :cond_1
    iget-object v2, v1, Landroidx/compose/foundation/gestures/TransformableKt$detectNonTouchGestures$2;->L$0:Ljava/lang/Object;

    check-cast v2, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    :try_start_1
    invoke-static/range {p1 .. p1}, Lr57;->b(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v9, p1

    goto/16 :goto_5

    :cond_2
    iget-object v2, v1, Landroidx/compose/foundation/gestures/TransformableKt$detectNonTouchGestures$2;->L$0:Ljava/lang/Object;

    check-cast v2, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    :try_start_2
    invoke-static/range {p1 .. p1}, Lr57;->b(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object/from16 v9, p1

    goto/16 :goto_3

    :cond_3
    iget-object v2, v1, Landroidx/compose/foundation/gestures/TransformableKt$detectNonTouchGestures$2;->L$0:Ljava/lang/Object;

    check-cast v2, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    :try_start_3
    invoke-static/range {p1 .. p1}, Lr57;->b(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object/from16 v9, p1

    goto :goto_1

    :cond_4
    invoke-static/range {p1 .. p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object v2, v1, Landroidx/compose/foundation/gestures/TransformableKt$detectNonTouchGestures$2;->L$0:Ljava/lang/Object;

    check-cast v2, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    :goto_0
    iget-object v9, v1, Landroidx/compose/foundation/gestures/TransformableKt$detectNonTouchGestures$2;->$currentContext:Lo22;

    invoke-static {v9}, Lqb4;->h(Lo22;)Z

    move-result v9

    if-eqz v9, :cond_f

    :cond_5
    :try_start_4
    iput-object v2, v1, Landroidx/compose/foundation/gestures/TransformableKt$detectNonTouchGestures$2;->L$0:Ljava/lang/Object;

    iput v7, v1, Landroidx/compose/foundation/gestures/TransformableKt$detectNonTouchGestures$2;->label:I

    invoke-static {v2, v8, v1, v7, v8}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->awaitPointerEvent$default(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Landroidx/compose/ui/input/pointer/PointerEventPass;Le02;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-ne v9, v0, :cond_6

    goto/16 :goto_7

    :cond_6
    :goto_1
    check-cast v9, Landroidx/compose/ui/input/pointer/PointerEvent;

    iget-object v10, v1, Landroidx/compose/foundation/gestures/TransformableKt$detectNonTouchGestures$2;->$scrollConfig:Landroidx/compose/foundation/gestures/ScrollConfig;

    invoke-static {v2, v9, v10}, Landroidx/compose/foundation/gestures/TransformableKt;->access$consumePointerEventAsCtrlScrollOrNull(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Landroidx/compose/ui/input/pointer/PointerEvent;Landroidx/compose/foundation/gestures/ScrollConfig;)Landroidx/compose/ui/geometry/Offset;

    move-result-object v10

    invoke-static {v2, v9}, Landroidx/compose/foundation/gestures/TransformableKt;->access$consumePointerEventAsPanOrNull(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Landroidx/compose/ui/input/pointer/PointerEvent;)Landroidx/compose/ui/geometry/Offset;

    move-result-object v11

    invoke-static {v2, v9}, Landroidx/compose/foundation/gestures/TransformableKt;->access$consumePointerEventAsScaleOrNull(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Landroidx/compose/ui/input/pointer/PointerEvent;)Ljava/lang/Float;

    move-result-object v12

    if-nez v10, :cond_7

    if-nez v11, :cond_7

    if-eqz v12, :cond_5

    :cond_7
    if-eqz v10, :cond_9

    invoke-virtual {v10}, Landroidx/compose/ui/geometry/Offset;->unbox-impl()J

    move-result-wide v10

    iget-object v12, v1, Landroidx/compose/foundation/gestures/TransformableKt$detectNonTouchGestures$2;->$channel:Lx81;

    sget-object v13, Landroidx/compose/foundation/gestures/TransformEvent$TransformStarted;->INSTANCE:Landroidx/compose/foundation/gestures/TransformEvent$TransformStarted;

    invoke-interface {v12, v13}, Lno7;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    const-wide v12, 0xffffffffL

    and-long/2addr v10, v12

    long-to-int v10, v10

    invoke-static {v10}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v10

    const v11, 0x44084000    # 545.0f

    div-float/2addr v10, v11

    const-wide/high16 v11, 0x4000000000000000L    # 2.0

    float-to-double v13, v10

    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    double-to-float v15, v10

    iget-object v10, v1, Landroidx/compose/foundation/gestures/TransformableKt$detectNonTouchGestures$2;->$channel:Lx81;

    new-instance v12, Landroidx/compose/foundation/gestures/TransformEvent$TransformDelta;

    new-instance v11, Landroidx/compose/foundation/gestures/a0;

    invoke-direct {v11}, Ljava/lang/Object;-><init>()V

    invoke-static {v9, v6, v11, v7, v8}, Landroidx/compose/foundation/gestures/TransformGestureDetectorKt;->calculateCentroid$default(Landroidx/compose/ui/input/pointer/PointerEvent;ZLnl3;ILjava/lang/Object;)J

    move-result-wide v13

    sget-object v9, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v9}, Landroidx/compose/ui/geometry/Offset$Companion;->getZero-F1C5BW0()J

    move-result-wide v16

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-direct/range {v12 .. v19}, Landroidx/compose/foundation/gestures/TransformEvent$TransformDelta;-><init>(JFJFLjh2;)V

    invoke-interface {v10, v12}, Lno7;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v2, v1, Landroidx/compose/foundation/gestures/TransformableKt$detectNonTouchGestures$2;->L$0:Ljava/lang/Object;

    iput v5, v1, Landroidx/compose/foundation/gestures/TransformableKt$detectNonTouchGestures$2;->label:I

    invoke-static {v2, v8, v1, v7, v8}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->awaitPointerEvent$default(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Landroidx/compose/ui/input/pointer/PointerEventPass;Le02;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-ne v9, v0, :cond_8

    goto/16 :goto_7

    :cond_8
    :goto_3
    check-cast v9, Landroidx/compose/ui/input/pointer/PointerEvent;

    iget-object v10, v1, Landroidx/compose/foundation/gestures/TransformableKt$detectNonTouchGestures$2;->$scrollConfig:Landroidx/compose/foundation/gestures/ScrollConfig;

    invoke-static {v2, v9, v10}, Landroidx/compose/foundation/gestures/TransformableKt;->access$consumePointerEventAsCtrlScrollOrNull(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Landroidx/compose/ui/input/pointer/PointerEvent;Landroidx/compose/foundation/gestures/ScrollConfig;)Landroidx/compose/ui/geometry/Offset;

    move-result-object v10

    if-eqz v10, :cond_d

    invoke-virtual {v10}, Landroidx/compose/ui/geometry/Offset;->unbox-impl()J

    move-result-wide v10

    goto :goto_2

    :cond_9
    if-eqz v11, :cond_b

    invoke-virtual {v11}, Landroidx/compose/ui/geometry/Offset;->unbox-impl()J

    move-result-wide v10

    iget-object v12, v1, Landroidx/compose/foundation/gestures/TransformableKt$detectNonTouchGestures$2;->$channel:Lx81;

    sget-object v13, Landroidx/compose/foundation/gestures/TransformEvent$TransformStarted;->INSTANCE:Landroidx/compose/foundation/gestures/TransformEvent$TransformStarted;

    invoke-interface {v12, v13}, Lno7;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    move-wide v14, v10

    :goto_4
    iget-object v10, v1, Landroidx/compose/foundation/gestures/TransformableKt$detectNonTouchGestures$2;->$channel:Lx81;

    move-object v11, v10

    new-instance v10, Landroidx/compose/foundation/gestures/TransformEvent$TransformDelta;

    new-instance v12, Landroidx/compose/foundation/gestures/b0;

    invoke-direct {v12}, Ljava/lang/Object;-><init>()V

    invoke-static {v9, v6, v12, v7, v8}, Landroidx/compose/foundation/gestures/TransformGestureDetectorKt;->calculateCentroid$default(Landroidx/compose/ui/input/pointer/PointerEvent;ZLnl3;ILjava/lang/Object;)J

    move-result-wide v12

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v9, v11

    move-wide v11, v12

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-direct/range {v10 .. v17}, Landroidx/compose/foundation/gestures/TransformEvent$TransformDelta;-><init>(JFJFLjh2;)V

    invoke-interface {v9, v10}, Lno7;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v2, v1, Landroidx/compose/foundation/gestures/TransformableKt$detectNonTouchGestures$2;->L$0:Ljava/lang/Object;

    iput v4, v1, Landroidx/compose/foundation/gestures/TransformableKt$detectNonTouchGestures$2;->label:I

    invoke-static {v2, v8, v1, v7, v8}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->awaitPointerEvent$default(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Landroidx/compose/ui/input/pointer/PointerEventPass;Le02;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-ne v9, v0, :cond_a

    goto :goto_7

    :cond_a
    :goto_5
    check-cast v9, Landroidx/compose/ui/input/pointer/PointerEvent;

    invoke-static {v2, v9}, Landroidx/compose/foundation/gestures/TransformableKt;->access$consumePointerEventAsPanOrNull(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Landroidx/compose/ui/input/pointer/PointerEvent;)Landroidx/compose/ui/geometry/Offset;

    move-result-object v10

    if-eqz v10, :cond_d

    invoke-virtual {v10}, Landroidx/compose/ui/geometry/Offset;->unbox-impl()J

    move-result-wide v14

    goto :goto_4

    :cond_b
    if-eqz v12, :cond_e

    invoke-virtual {v12}, Ljava/lang/Number;->floatValue()F

    move-result v10

    iget-object v11, v1, Landroidx/compose/foundation/gestures/TransformableKt$detectNonTouchGestures$2;->$channel:Lx81;

    sget-object v12, Landroidx/compose/foundation/gestures/TransformEvent$TransformStarted;->INSTANCE:Landroidx/compose/foundation/gestures/TransformEvent$TransformStarted;

    invoke-interface {v11, v12}, Lno7;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    move v13, v10

    :goto_6
    iget-object v10, v1, Landroidx/compose/foundation/gestures/TransformableKt$detectNonTouchGestures$2;->$channel:Lx81;

    move-object v11, v10

    new-instance v10, Landroidx/compose/foundation/gestures/TransformEvent$TransformDelta;

    new-instance v12, Landroidx/compose/foundation/gestures/c0;

    invoke-direct {v12}, Ljava/lang/Object;-><init>()V

    invoke-static {v9, v6, v12, v7, v8}, Landroidx/compose/foundation/gestures/TransformGestureDetectorKt;->calculateCentroid$default(Landroidx/compose/ui/input/pointer/PointerEvent;ZLnl3;ILjava/lang/Object;)J

    move-result-wide v14

    sget-object v9, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v9}, Landroidx/compose/ui/geometry/Offset$Companion;->getZero-F1C5BW0()J

    move-result-wide v16

    move-object v9, v11

    move-wide v11, v14

    move-wide/from16 v14, v16

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-direct/range {v10 .. v17}, Landroidx/compose/foundation/gestures/TransformEvent$TransformDelta;-><init>(JFJFLjh2;)V

    invoke-interface {v9, v10}, Lno7;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v2, v1, Landroidx/compose/foundation/gestures/TransformableKt$detectNonTouchGestures$2;->L$0:Ljava/lang/Object;

    iput v3, v1, Landroidx/compose/foundation/gestures/TransformableKt$detectNonTouchGestures$2;->label:I

    invoke-static {v2, v8, v1, v7, v8}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->awaitPointerEvent$default(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Landroidx/compose/ui/input/pointer/PointerEventPass;Le02;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-ne v9, v0, :cond_c

    :goto_7
    return-object v0

    :cond_c
    :goto_8
    check-cast v9, Landroidx/compose/ui/input/pointer/PointerEvent;

    invoke-static {v2, v9}, Landroidx/compose/foundation/gestures/TransformableKt;->access$consumePointerEventAsScaleOrNull(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Landroidx/compose/ui/input/pointer/PointerEvent;)Ljava/lang/Float;

    move-result-object v10

    if-eqz v10, :cond_d

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v13
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_6

    :cond_d
    iget-object v9, v1, Landroidx/compose/foundation/gestures/TransformableKt$detectNonTouchGestures$2;->$channel:Lx81;

    sget-object v10, Landroidx/compose/foundation/gestures/TransformEvent$TransformStopped;->INSTANCE:Landroidx/compose/foundation/gestures/TransformEvent$TransformStopped;

    invoke-interface {v9, v10}, Lno7;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_e
    :try_start_5
    const-string v0, "One of zoomOffset, panOffset and scaleDelta must be non-null"

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_9
    iget-object v1, v1, Landroidx/compose/foundation/gestures/TransformableKt$detectNonTouchGestures$2;->$channel:Lx81;

    sget-object v2, Landroidx/compose/foundation/gestures/TransformEvent$TransformStopped;->INSTANCE:Landroidx/compose/foundation/gestures/TransformEvent$TransformStopped;

    invoke-interface {v1, v2}, Lno7;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    throw v0

    :cond_f
    sget-object v0, Lj59;->a:Lj59;

    return-object v0
.end method
