.class public final Landroidx/compose/foundation/gestures/Draggable2DElement;
.super Landroidx/compose/ui/node/ModifierNodeElement;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/foundation/gestures/Draggable2DElement$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/compose/ui/node/ModifierNodeElement<",
        "Landroidx/compose/foundation/gestures/Draggable2DNode;",
        ">;"
    }
.end annotation


# static fields
.field public static final $stable:I

.field private static final CanDrag:Lnl3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnl3<",
            "Landroidx/compose/ui/input/pointer/PointerType;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Landroidx/compose/foundation/gestures/Draggable2DElement$Companion;


# instance fields
.field private final enabled:Z

.field private final interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

.field private final onDragStarted:Lnl3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnl3<",
            "Landroidx/compose/ui/geometry/Offset;",
            "Lj59;",
            ">;"
        }
    .end annotation
.end field

.field private final onDragStopped:Lnl3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnl3<",
            "Landroidx/compose/ui/unit/Velocity;",
            "Lj59;",
            ">;"
        }
    .end annotation
.end field

.field private final reverseDirection:Z

.field private final startDragImmediately:Z

.field private final state:Landroidx/compose/foundation/gestures/Draggable2DState;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/foundation/gestures/Draggable2DElement$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/foundation/gestures/Draggable2DElement$Companion;-><init>(Ljh2;)V

    sput-object v0, Landroidx/compose/foundation/gestures/Draggable2DElement;->Companion:Landroidx/compose/foundation/gestures/Draggable2DElement$Companion;

    new-instance v0, Lgg1;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lgg1;-><init>(I)V

    sput-object v0, Landroidx/compose/foundation/gestures/Draggable2DElement;->CanDrag:Lnl3;

    return-void
.end method

.method public constructor <init>(Landroidx/compose/foundation/gestures/Draggable2DState;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;ZLnl3;Lnl3;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/gestures/Draggable2DState;",
            "Z",
            "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
            "Z",
            "Lnl3<",
            "-",
            "Landroidx/compose/ui/geometry/Offset;",
            "Lj59;",
            ">;",
            "Lnl3<",
            "-",
            "Landroidx/compose/ui/unit/Velocity;",
            "Lj59;",
            ">;Z)V"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/compose/ui/node/ModifierNodeElement;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/gestures/Draggable2DElement;->state:Landroidx/compose/foundation/gestures/Draggable2DState;

    iput-boolean p2, p0, Landroidx/compose/foundation/gestures/Draggable2DElement;->enabled:Z

    iput-object p3, p0, Landroidx/compose/foundation/gestures/Draggable2DElement;->interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    iput-boolean p4, p0, Landroidx/compose/foundation/gestures/Draggable2DElement;->startDragImmediately:Z

    iput-object p5, p0, Landroidx/compose/foundation/gestures/Draggable2DElement;->onDragStarted:Lnl3;

    iput-object p6, p0, Landroidx/compose/foundation/gestures/Draggable2DElement;->onDragStopped:Lnl3;

    iput-boolean p7, p0, Landroidx/compose/foundation/gestures/Draggable2DElement;->reverseDirection:Z

    return-void
.end method

.method private static final CanDrag$lambda$0(Landroidx/compose/ui/input/pointer/PointerType;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic a(Landroidx/compose/ui/input/pointer/PointerType;)Z
    .locals 0

    invoke-static {p0}, Landroidx/compose/foundation/gestures/Draggable2DElement;->CanDrag$lambda$0(Landroidx/compose/ui/input/pointer/PointerType;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$getCanDrag$cp()Lnl3;
    .locals 1

    sget-object v0, Landroidx/compose/foundation/gestures/Draggable2DElement;->CanDrag:Lnl3;

    return-object v0
.end method


# virtual methods
.method public create()Landroidx/compose/foundation/gestures/Draggable2DNode;
    .locals 9

    new-instance v0, Landroidx/compose/foundation/gestures/Draggable2DNode;

    iget-object v1, p0, Landroidx/compose/foundation/gestures/Draggable2DElement;->state:Landroidx/compose/foundation/gestures/Draggable2DState;

    sget-object v2, Landroidx/compose/foundation/gestures/Draggable2DElement;->CanDrag:Lnl3;

    iget-boolean v3, p0, Landroidx/compose/foundation/gestures/Draggable2DElement;->enabled:Z

    iget-object v4, p0, Landroidx/compose/foundation/gestures/Draggable2DElement;->interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    iget-boolean v5, p0, Landroidx/compose/foundation/gestures/Draggable2DElement;->startDragImmediately:Z

    iget-boolean v6, p0, Landroidx/compose/foundation/gestures/Draggable2DElement;->reverseDirection:Z

    iget-object v7, p0, Landroidx/compose/foundation/gestures/Draggable2DElement;->onDragStarted:Lnl3;

    iget-object v8, p0, Landroidx/compose/foundation/gestures/Draggable2DElement;->onDragStopped:Lnl3;

    invoke-direct/range {v0 .. v8}, Landroidx/compose/foundation/gestures/Draggable2DNode;-><init>(Landroidx/compose/foundation/gestures/Draggable2DState;Lnl3;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;ZZLnl3;Lnl3;)V

    return-object v0
.end method

.method public bridge synthetic create()Landroidx/compose/ui/Modifier$Node;
    .locals 0

    .line 22
    invoke-virtual {p0}, Landroidx/compose/foundation/gestures/Draggable2DElement;->create()Landroidx/compose/foundation/gestures/Draggable2DNode;

    move-result-object p0

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    const-class v2, Landroidx/compose/foundation/gestures/Draggable2DElement;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    check-cast p1, Landroidx/compose/foundation/gestures/Draggable2DElement;

    iget-object v2, p0, Landroidx/compose/foundation/gestures/Draggable2DElement;->state:Landroidx/compose/foundation/gestures/Draggable2DState;

    iget-object v3, p1, Landroidx/compose/foundation/gestures/Draggable2DElement;->state:Landroidx/compose/foundation/gestures/Draggable2DState;

    invoke-static {v2, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    iget-boolean v2, p0, Landroidx/compose/foundation/gestures/Draggable2DElement;->enabled:Z

    iget-boolean v3, p1, Landroidx/compose/foundation/gestures/Draggable2DElement;->enabled:Z

    if-eq v2, v3, :cond_4

    return v1

    :cond_4
    iget-object v2, p0, Landroidx/compose/foundation/gestures/Draggable2DElement;->interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    iget-object v3, p1, Landroidx/compose/foundation/gestures/Draggable2DElement;->interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    invoke-static {v2, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    :cond_5
    iget-boolean v2, p0, Landroidx/compose/foundation/gestures/Draggable2DElement;->startDragImmediately:Z

    iget-boolean v3, p1, Landroidx/compose/foundation/gestures/Draggable2DElement;->startDragImmediately:Z

    if-eq v2, v3, :cond_6

    return v1

    :cond_6
    iget-object v2, p0, Landroidx/compose/foundation/gestures/Draggable2DElement;->onDragStarted:Lnl3;

    iget-object v3, p1, Landroidx/compose/foundation/gestures/Draggable2DElement;->onDragStarted:Lnl3;

    if-eq v2, v3, :cond_7

    return v1

    :cond_7
    iget-object v2, p0, Landroidx/compose/foundation/gestures/Draggable2DElement;->onDragStopped:Lnl3;

    iget-object v3, p1, Landroidx/compose/foundation/gestures/Draggable2DElement;->onDragStopped:Lnl3;

    if-eq v2, v3, :cond_8

    return v1

    :cond_8
    iget-boolean p0, p0, Landroidx/compose/foundation/gestures/Draggable2DElement;->reverseDirection:Z

    iget-boolean p1, p1, Landroidx/compose/foundation/gestures/Draggable2DElement;->reverseDirection:Z

    if-eq p0, p1, :cond_9

    return v1

    :cond_9
    return v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Landroidx/compose/foundation/gestures/Draggable2DElement;->state:Landroidx/compose/foundation/gestures/Draggable2DState;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-boolean v2, p0, Landroidx/compose/foundation/gestures/Draggable2DElement;->enabled:Z

    invoke-static {v0, v1, v2}, Ltg;->c(IIZ)I

    move-result v0

    iget-object v2, p0, Landroidx/compose/foundation/gestures/Draggable2DElement;->interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-boolean v2, p0, Landroidx/compose/foundation/gestures/Draggable2DElement;->startDragImmediately:Z

    invoke-static {v0, v1, v2}, Ltg;->c(IIZ)I

    move-result v0

    iget-object v2, p0, Landroidx/compose/foundation/gestures/Draggable2DElement;->onDragStarted:Lnl3;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object v0, p0, Landroidx/compose/foundation/gestures/Draggable2DElement;->onDragStopped:Lnl3;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-boolean p0, p0, Landroidx/compose/foundation/gestures/Draggable2DElement;->reverseDirection:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public inspectableProperties(Landroidx/compose/ui/platform/InspectorInfo;)V
    .locals 3

    const-string v0, "draggable2D"

    invoke-virtual {p1, v0}, Landroidx/compose/ui/platform/InspectorInfo;->setName(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/compose/ui/platform/InspectorInfo;->getProperties()Landroidx/compose/ui/platform/ValueElementSequence;

    move-result-object v0

    const-string v1, "enabled"

    iget-boolean v2, p0, Landroidx/compose/foundation/gestures/Draggable2DElement;->enabled:Z

    invoke-static {v2, v0, v1, p1}, Lil1;->c(ZLandroidx/compose/ui/platform/ValueElementSequence;Ljava/lang/String;Landroidx/compose/ui/platform/InspectorInfo;)Landroidx/compose/ui/platform/ValueElementSequence;

    move-result-object v0

    const-string v1, "interactionSource"

    iget-object v2, p0, Landroidx/compose/foundation/gestures/Draggable2DElement;->interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/platform/ValueElementSequence;->set(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroidx/compose/ui/platform/InspectorInfo;->getProperties()Landroidx/compose/ui/platform/ValueElementSequence;

    move-result-object v0

    const-string v1, "startDragImmediately"

    iget-boolean v2, p0, Landroidx/compose/foundation/gestures/Draggable2DElement;->startDragImmediately:Z

    invoke-static {v2, v0, v1, p1}, Lil1;->c(ZLandroidx/compose/ui/platform/ValueElementSequence;Ljava/lang/String;Landroidx/compose/ui/platform/InspectorInfo;)Landroidx/compose/ui/platform/ValueElementSequence;

    move-result-object v0

    const-string v1, "onDragStarted"

    iget-object v2, p0, Landroidx/compose/foundation/gestures/Draggable2DElement;->onDragStarted:Lnl3;

    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/platform/ValueElementSequence;->set(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroidx/compose/ui/platform/InspectorInfo;->getProperties()Landroidx/compose/ui/platform/ValueElementSequence;

    move-result-object v0

    const-string v1, "onDragStopped"

    iget-object v2, p0, Landroidx/compose/foundation/gestures/Draggable2DElement;->onDragStopped:Lnl3;

    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/platform/ValueElementSequence;->set(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroidx/compose/ui/platform/InspectorInfo;->getProperties()Landroidx/compose/ui/platform/ValueElementSequence;

    move-result-object v0

    const-string v1, "reverseDirection"

    iget-boolean v2, p0, Landroidx/compose/foundation/gestures/Draggable2DElement;->reverseDirection:Z

    invoke-static {v2, v0, v1, p1}, Lil1;->c(ZLandroidx/compose/ui/platform/ValueElementSequence;Ljava/lang/String;Landroidx/compose/ui/platform/InspectorInfo;)Landroidx/compose/ui/platform/ValueElementSequence;

    move-result-object p1

    const-string v0, "state"

    iget-object p0, p0, Landroidx/compose/foundation/gestures/Draggable2DElement;->state:Landroidx/compose/foundation/gestures/Draggable2DState;

    invoke-virtual {p1, v0, p0}, Landroidx/compose/ui/platform/ValueElementSequence;->set(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public update(Landroidx/compose/foundation/gestures/Draggable2DNode;)V
    .locals 9

    iget-object v1, p0, Landroidx/compose/foundation/gestures/Draggable2DElement;->state:Landroidx/compose/foundation/gestures/Draggable2DState;

    sget-object v2, Landroidx/compose/foundation/gestures/Draggable2DElement;->CanDrag:Lnl3;

    iget-boolean v3, p0, Landroidx/compose/foundation/gestures/Draggable2DElement;->enabled:Z

    iget-object v4, p0, Landroidx/compose/foundation/gestures/Draggable2DElement;->interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    iget-boolean v5, p0, Landroidx/compose/foundation/gestures/Draggable2DElement;->startDragImmediately:Z

    iget-boolean v6, p0, Landroidx/compose/foundation/gestures/Draggable2DElement;->reverseDirection:Z

    iget-object v7, p0, Landroidx/compose/foundation/gestures/Draggable2DElement;->onDragStarted:Lnl3;

    iget-object v8, p0, Landroidx/compose/foundation/gestures/Draggable2DElement;->onDragStopped:Lnl3;

    move-object v0, p1

    invoke-virtual/range {v0 .. v8}, Landroidx/compose/foundation/gestures/Draggable2DNode;->update(Landroidx/compose/foundation/gestures/Draggable2DState;Lnl3;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;ZZLnl3;Lnl3;)V

    return-void
.end method

.method public bridge synthetic update(Landroidx/compose/ui/Modifier$Node;)V
    .locals 0

    .line 21
    check-cast p1, Landroidx/compose/foundation/gestures/Draggable2DNode;

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/gestures/Draggable2DElement;->update(Landroidx/compose/foundation/gestures/Draggable2DNode;)V

    return-void
.end method
