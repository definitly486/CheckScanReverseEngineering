.class public final Landroidx/compose/foundation/gestures/AnchoredDraggableState$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/foundation/gestures/AnchoredDraggableState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljh2;)V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/foundation/gestures/AnchoredDraggableState$Companion;-><init>()V

    return-void
.end method

.method public static synthetic Saver$default(Landroidx/compose/foundation/gestures/AnchoredDraggableState$Companion;Landroidx/compose/animation/core/AnimationSpec;Landroidx/compose/animation/core/DecayAnimationSpec;Lnl3;Lll3;Lnl3;ILjava/lang/Object;)Landroidx/compose/runtime/saveable/Saver;
    .locals 6

    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_0

    new-instance p5, Lsf;

    const/4 p6, 0x0

    invoke-direct {p5, p6}, Lsf;-><init>(I)V

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroidx/compose/foundation/gestures/AnchoredDraggableState$Companion;->Saver(Landroidx/compose/animation/core/AnimationSpec;Landroidx/compose/animation/core/DecayAnimationSpec;Lnl3;Lll3;Lnl3;)Landroidx/compose/runtime/saveable/Saver;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic Saver$default(Landroidx/compose/foundation/gestures/AnchoredDraggableState$Companion;Lnl3;ILjava/lang/Object;)Landroidx/compose/runtime/saveable/Saver;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 21
    new-instance p1, Lpf;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lpf;-><init>(I)V

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/compose/foundation/gestures/AnchoredDraggableState$Companion;->Saver(Lnl3;)Landroidx/compose/runtime/saveable/Saver;

    move-result-object p0

    return-object p0
.end method

.method private static final Saver$lambda$0(Landroidx/compose/runtime/saveable/SaverScope;Landroidx/compose/foundation/gestures/AnchoredDraggableState;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p1}, Landroidx/compose/foundation/gestures/AnchoredDraggableState;->getCurrentValue()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static final Saver$lambda$1(Ljava/lang/Object;)Landroidx/compose/foundation/gestures/AnchoredDraggableState;
    .locals 1

    new-instance v0, Landroidx/compose/foundation/gestures/AnchoredDraggableState;

    invoke-direct {v0, p0}, Landroidx/compose/foundation/gestures/AnchoredDraggableState;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method private static final Saver$lambda$2(Ljava/lang/Object;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method private static final Saver$lambda$3(Landroidx/compose/runtime/saveable/SaverScope;Landroidx/compose/foundation/gestures/AnchoredDraggableState;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p1}, Landroidx/compose/foundation/gestures/AnchoredDraggableState;->getCurrentValue()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static final Saver$lambda$4(Lnl3;Ljava/lang/Object;)Landroidx/compose/foundation/gestures/AnchoredDraggableState;
    .locals 1

    new-instance v0, Landroidx/compose/foundation/gestures/AnchoredDraggableState;

    invoke-direct {v0, p1, p0}, Landroidx/compose/foundation/gestures/AnchoredDraggableState;-><init>(Ljava/lang/Object;Lnl3;)V

    return-object v0
.end method

.method private static final Saver$lambda$5(Ljava/lang/Object;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method private static final Saver$lambda$6(Landroidx/compose/runtime/saveable/SaverScope;Landroidx/compose/foundation/gestures/AnchoredDraggableState;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p1}, Landroidx/compose/foundation/gestures/AnchoredDraggableState;->getCurrentValue()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static final Saver$lambda$7(Lnl3;Lll3;Landroidx/compose/animation/core/AnimationSpec;Landroidx/compose/animation/core/DecayAnimationSpec;Lnl3;Ljava/lang/Object;)Landroidx/compose/foundation/gestures/AnchoredDraggableState;
    .locals 1

    move-object v0, p1

    move-object p1, p0

    move-object p0, p5

    move-object p5, p4

    move-object p4, p3

    move-object p3, p2

    move-object p2, v0

    invoke-static/range {p0 .. p5}, Landroidx/compose/foundation/gestures/AnchoredDraggableKt;->AnchoredDraggableState(Ljava/lang/Object;Lnl3;Lll3;Landroidx/compose/animation/core/AnimationSpec;Landroidx/compose/animation/core/DecayAnimationSpec;Lnl3;)Landroidx/compose/foundation/gestures/AnchoredDraggableState;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Landroidx/compose/runtime/saveable/SaverScope;Landroidx/compose/foundation/gestures/AnchoredDraggableState;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1}, Landroidx/compose/foundation/gestures/AnchoredDraggableState$Companion;->Saver$lambda$6(Landroidx/compose/runtime/saveable/SaverScope;Landroidx/compose/foundation/gestures/AnchoredDraggableState;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Landroidx/compose/runtime/saveable/SaverScope;Landroidx/compose/foundation/gestures/AnchoredDraggableState;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1}, Landroidx/compose/foundation/gestures/AnchoredDraggableState$Companion;->Saver$lambda$3(Landroidx/compose/runtime/saveable/SaverScope;Landroidx/compose/foundation/gestures/AnchoredDraggableState;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Ljava/lang/Object;)Landroidx/compose/foundation/gestures/AnchoredDraggableState;
    .locals 0

    invoke-static {p0}, Landroidx/compose/foundation/gestures/AnchoredDraggableState$Companion;->Saver$lambda$1(Ljava/lang/Object;)Landroidx/compose/foundation/gestures/AnchoredDraggableState;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Landroidx/compose/runtime/saveable/SaverScope;Landroidx/compose/foundation/gestures/AnchoredDraggableState;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1}, Landroidx/compose/foundation/gestures/AnchoredDraggableState$Companion;->Saver$lambda$0(Landroidx/compose/runtime/saveable/SaverScope;Landroidx/compose/foundation/gestures/AnchoredDraggableState;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0}, Landroidx/compose/foundation/gestures/AnchoredDraggableState$Companion;->Saver$lambda$5(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic f(Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0}, Landroidx/compose/foundation/gestures/AnchoredDraggableState$Companion;->Saver$lambda$2(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic g(Lnl3;Ljava/lang/Object;)Landroidx/compose/foundation/gestures/AnchoredDraggableState;
    .locals 0

    invoke-static {p0, p1}, Landroidx/compose/foundation/gestures/AnchoredDraggableState$Companion;->Saver$lambda$4(Lnl3;Ljava/lang/Object;)Landroidx/compose/foundation/gestures/AnchoredDraggableState;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic h(Lnl3;Lll3;Landroidx/compose/animation/core/AnimationSpec;Landroidx/compose/animation/core/DecayAnimationSpec;Lnl3;Ljava/lang/Object;)Landroidx/compose/foundation/gestures/AnchoredDraggableState;
    .locals 0

    invoke-static/range {p0 .. p5}, Landroidx/compose/foundation/gestures/AnchoredDraggableState$Companion;->Saver$lambda$7(Lnl3;Lll3;Landroidx/compose/animation/core/AnimationSpec;Landroidx/compose/animation/core/DecayAnimationSpec;Lnl3;Ljava/lang/Object;)Landroidx/compose/foundation/gestures/AnchoredDraggableState;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final Saver()Landroidx/compose/runtime/saveable/Saver;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Landroidx/compose/runtime/saveable/Saver<",
            "Landroidx/compose/foundation/gestures/AnchoredDraggableState<",
            "TT;>;TT;>;"
        }
    .end annotation

    new-instance p0, Ltf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Luf;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Luf;-><init>(I)V

    .line 21
    invoke-static {p0, v0}, Landroidx/compose/runtime/saveable/SaverKt;->Saver(Lbm3;Lnl3;)Landroidx/compose/runtime/saveable/Saver;

    move-result-object p0

    return-object p0
.end method

.method public final Saver(Landroidx/compose/animation/core/AnimationSpec;Landroidx/compose/animation/core/DecayAnimationSpec;Lnl3;Lll3;Lnl3;)Landroidx/compose/runtime/saveable/Saver;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/compose/animation/core/AnimationSpec<",
            "Ljava/lang/Float;",
            ">;",
            "Landroidx/compose/animation/core/DecayAnimationSpec<",
            "Ljava/lang/Float;",
            ">;",
            "Lnl3<",
            "-",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;",
            "Lll3<",
            "Ljava/lang/Float;",
            ">;",
            "Lnl3<",
            "-TT;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Landroidx/compose/runtime/saveable/Saver<",
            "Landroidx/compose/foundation/gestures/AnchoredDraggableState<",
            "TT;>;TT;>;"
        }
    .end annotation

    .annotation runtime Lul2;
    .end annotation

    new-instance p0, Lmf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lof;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lof;-><init>(Landroidx/compose/animation/core/AnimationSpec;Landroidx/compose/animation/core/DecayAnimationSpec;Lnl3;Lll3;Lnl3;)V

    invoke-static {p0, v0}, Landroidx/compose/runtime/saveable/SaverKt;->Saver(Lbm3;Lnl3;)Landroidx/compose/runtime/saveable/Saver;

    move-result-object p0

    return-object p0
.end method

.method public final Saver(Lnl3;)Landroidx/compose/runtime/saveable/Saver;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lnl3<",
            "-TT;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Landroidx/compose/runtime/saveable/Saver<",
            "Landroidx/compose/foundation/gestures/AnchoredDraggableState<",
            "TT;>;TT;>;"
        }
    .end annotation

    .annotation runtime Lul2;
    .end annotation

    new-instance p0, Lqf;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lqf;-><init>(I)V

    .line 20
    new-instance v0, Lrf;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lrf;-><init>(Ljava/lang/Object;I)V

    invoke-static {p0, v0}, Landroidx/compose/runtime/saveable/SaverKt;->Saver(Lbm3;Lnl3;)Landroidx/compose/runtime/saveable/Saver;

    move-result-object p0

    return-object p0
.end method
