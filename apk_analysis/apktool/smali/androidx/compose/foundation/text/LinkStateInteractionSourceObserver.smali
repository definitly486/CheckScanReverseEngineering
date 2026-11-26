.class public final Landroidx/compose/foundation/text/LinkStateInteractionSourceObserver;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final $stable:I


# instance fields
.field private final Focused:I

.field private final Hovered:I

.field private final Pressed:I

.field private final interactionSource:Landroidx/compose/foundation/interaction/InteractionSource;

.field private final interactionState:Landroidx/compose/runtime/MutableIntState;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/interaction/InteractionSource;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/text/LinkStateInteractionSourceObserver;->interactionSource:Landroidx/compose/foundation/interaction/InteractionSource;

    const/4 p1, 0x1

    iput p1, p0, Landroidx/compose/foundation/text/LinkStateInteractionSourceObserver;->Focused:I

    const/4 p1, 0x2

    iput p1, p0, Landroidx/compose/foundation/text/LinkStateInteractionSourceObserver;->Hovered:I

    const/4 p1, 0x4

    iput p1, p0, Landroidx/compose/foundation/text/LinkStateInteractionSourceObserver;->Pressed:I

    const/4 p1, 0x0

    invoke-static {p1}, Landroidx/compose/runtime/SnapshotIntStateKt;->mutableIntStateOf(I)Landroidx/compose/runtime/MutableIntState;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/foundation/text/LinkStateInteractionSourceObserver;->interactionState:Landroidx/compose/runtime/MutableIntState;

    return-void
.end method

.method public static final synthetic access$getFocused$p(Landroidx/compose/foundation/text/LinkStateInteractionSourceObserver;)I
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/text/LinkStateInteractionSourceObserver;->Focused:I

    return p0
.end method

.method public static final synthetic access$getHovered$p(Landroidx/compose/foundation/text/LinkStateInteractionSourceObserver;)I
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/text/LinkStateInteractionSourceObserver;->Hovered:I

    return p0
.end method

.method public static final synthetic access$getInteractionState$p(Landroidx/compose/foundation/text/LinkStateInteractionSourceObserver;)Landroidx/compose/runtime/MutableIntState;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/text/LinkStateInteractionSourceObserver;->interactionState:Landroidx/compose/runtime/MutableIntState;

    return-object p0
.end method

.method public static final synthetic access$getPressed$p(Landroidx/compose/foundation/text/LinkStateInteractionSourceObserver;)I
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/text/LinkStateInteractionSourceObserver;->Pressed:I

    return p0
.end method


# virtual methods
.method public final collectInteractionsForLinks(Le02;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le02<",
            "-",
            "Lj59;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    new-instance v0, Landroidx/collection/MutableObjectList;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroidx/collection/MutableObjectList;-><init>(IILjh2;)V

    iget-object v1, p0, Landroidx/compose/foundation/text/LinkStateInteractionSourceObserver;->interactionSource:Landroidx/compose/foundation/interaction/InteractionSource;

    invoke-interface {v1}, Landroidx/compose/foundation/interaction/InteractionSource;->getInteractions()Lhd3;

    move-result-object v1

    new-instance v2, Landroidx/compose/foundation/text/LinkStateInteractionSourceObserver$collectInteractionsForLinks$2;

    invoke-direct {v2, v0, p0}, Landroidx/compose/foundation/text/LinkStateInteractionSourceObserver$collectInteractionsForLinks$2;-><init>(Landroidx/collection/MutableObjectList;Landroidx/compose/foundation/text/LinkStateInteractionSourceObserver;)V

    invoke-interface {v1, v2, p1}, Lhd3;->collect(Lid3;Le02;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, La32;->COROUTINE_SUSPENDED:La32;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public final isFocused()Z
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/text/LinkStateInteractionSourceObserver;->interactionState:Landroidx/compose/runtime/MutableIntState;

    invoke-interface {v0}, Landroidx/compose/runtime/MutableIntState;->getIntValue()I

    move-result v0

    iget p0, p0, Landroidx/compose/foundation/text/LinkStateInteractionSourceObserver;->Focused:I

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final isHovered()Z
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/text/LinkStateInteractionSourceObserver;->interactionState:Landroidx/compose/runtime/MutableIntState;

    invoke-interface {v0}, Landroidx/compose/runtime/MutableIntState;->getIntValue()I

    move-result v0

    iget p0, p0, Landroidx/compose/foundation/text/LinkStateInteractionSourceObserver;->Hovered:I

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final isPressed()Z
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/text/LinkStateInteractionSourceObserver;->interactionState:Landroidx/compose/runtime/MutableIntState;

    invoke-interface {v0}, Landroidx/compose/runtime/MutableIntState;->getIntValue()I

    move-result v0

    iget p0, p0, Landroidx/compose/foundation/text/LinkStateInteractionSourceObserver;->Pressed:I

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
