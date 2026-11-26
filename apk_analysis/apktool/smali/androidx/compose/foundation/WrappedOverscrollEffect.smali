.class final Landroidx/compose/foundation/WrappedOverscrollEffect;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/foundation/OverscrollEffect;


# instance fields
.field private final attachNode:Z

.field private final eventHandlingEnabled:Z

.field private final innerOverscrollEffect:Landroidx/compose/foundation/OverscrollEffect;

.field private final node:Landroidx/compose/ui/node/DelegatableNode;


# direct methods
.method public constructor <init>(ZZLandroidx/compose/foundation/OverscrollEffect;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Landroidx/compose/foundation/WrappedOverscrollEffect;->attachNode:Z

    iput-boolean p2, p0, Landroidx/compose/foundation/WrappedOverscrollEffect;->eventHandlingEnabled:Z

    iput-object p3, p0, Landroidx/compose/foundation/WrappedOverscrollEffect;->innerOverscrollEffect:Landroidx/compose/foundation/OverscrollEffect;

    if-eqz p1, :cond_0

    invoke-interface {p3}, Landroidx/compose/foundation/OverscrollEffect;->getNode()Landroidx/compose/ui/node/DelegatableNode;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p1, Landroidx/compose/foundation/WrappedOverscrollEffect$node$1;

    invoke-direct {p1}, Landroidx/compose/foundation/WrappedOverscrollEffect$node$1;-><init>()V

    :goto_0
    iput-object p1, p0, Landroidx/compose/foundation/WrappedOverscrollEffect;->node:Landroidx/compose/ui/node/DelegatableNode;

    return-void
.end method


# virtual methods
.method public applyToFling-BMRW4eQ(JLbm3;Le02;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lbm3<",
            "-",
            "Landroidx/compose/ui/unit/Velocity;",
            "-",
            "Le02<",
            "-",
            "Landroidx/compose/ui/unit/Velocity;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Le02<",
            "-",
            "Lj59;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-boolean v0, p0, Landroidx/compose/foundation/WrappedOverscrollEffect;->eventHandlingEnabled:Z

    if-eqz v0, :cond_1

    iget-object p0, p0, Landroidx/compose/foundation/WrappedOverscrollEffect;->innerOverscrollEffect:Landroidx/compose/foundation/OverscrollEffect;

    invoke-interface {p0, p1, p2, p3, p4}, Landroidx/compose/foundation/OverscrollEffect;->applyToFling-BMRW4eQ(JLbm3;Le02;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, La32;->COROUTINE_SUSPENDED:La32;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :cond_1
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Velocity;->box-impl(J)Landroidx/compose/ui/unit/Velocity;

    move-result-object p0

    invoke-interface {p3, p0, p4}, Lbm3;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, La32;->COROUTINE_SUSPENDED:La32;

    if-ne p0, p1, :cond_2

    return-object p0

    :cond_2
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public applyToScroll-Rhakbz0(JILnl3;)J
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI",
            "Lnl3<",
            "-",
            "Landroidx/compose/ui/geometry/Offset;",
            "Landroidx/compose/ui/geometry/Offset;",
            ">;)J"
        }
    .end annotation

    iget-boolean v0, p0, Landroidx/compose/foundation/WrappedOverscrollEffect;->eventHandlingEnabled:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/compose/foundation/WrappedOverscrollEffect;->innerOverscrollEffect:Landroidx/compose/foundation/OverscrollEffect;

    invoke-interface {p0, p1, p2, p3, p4}, Landroidx/compose/foundation/OverscrollEffect;->applyToScroll-Rhakbz0(JILnl3;)J

    move-result-wide p0

    return-wide p0

    :cond_0
    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Offset;->box-impl(J)Landroidx/compose/ui/geometry/Offset;

    move-result-object p0

    invoke-interface {p4, p0}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/geometry/Offset;

    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Offset;->unbox-impl()J

    move-result-wide p0

    return-wide p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/compose/foundation/WrappedOverscrollEffect;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    iget-boolean v1, p0, Landroidx/compose/foundation/WrappedOverscrollEffect;->attachNode:Z

    check-cast p1, Landroidx/compose/foundation/WrappedOverscrollEffect;

    iget-boolean v3, p1, Landroidx/compose/foundation/WrappedOverscrollEffect;->attachNode:Z

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Landroidx/compose/foundation/WrappedOverscrollEffect;->eventHandlingEnabled:Z

    iget-boolean v3, p1, Landroidx/compose/foundation/WrappedOverscrollEffect;->eventHandlingEnabled:Z

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object p0, p0, Landroidx/compose/foundation/WrappedOverscrollEffect;->innerOverscrollEffect:Landroidx/compose/foundation/OverscrollEffect;

    iget-object p1, p1, Landroidx/compose/foundation/WrappedOverscrollEffect;->innerOverscrollEffect:Landroidx/compose/foundation/OverscrollEffect;

    invoke-static {p0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public getNode()Landroidx/compose/ui/node/DelegatableNode;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/WrappedOverscrollEffect;->node:Landroidx/compose/ui/node/DelegatableNode;

    return-object p0
.end method

.method public hashCode()I
    .locals 3

    iget-boolean v0, p0, Landroidx/compose/foundation/WrappedOverscrollEffect;->attachNode:Z

    invoke-static {v0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-boolean v2, p0, Landroidx/compose/foundation/WrappedOverscrollEffect;->eventHandlingEnabled:Z

    invoke-static {v0, v1, v2}, Ltg;->c(IIZ)I

    move-result v0

    iget-object p0, p0, Landroidx/compose/foundation/WrappedOverscrollEffect;->innerOverscrollEffect:Landroidx/compose/foundation/OverscrollEffect;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public isInProgress()Z
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/WrappedOverscrollEffect;->innerOverscrollEffect:Landroidx/compose/foundation/OverscrollEffect;

    invoke-interface {p0}, Landroidx/compose/foundation/OverscrollEffect;->isInProgress()Z

    move-result p0

    return p0
.end method
