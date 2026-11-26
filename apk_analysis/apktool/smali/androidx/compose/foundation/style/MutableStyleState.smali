.class public final Landroidx/compose/foundation/style/MutableStyleState;
.super Landroidx/compose/foundation/style/StyleState;
.source "SourceFile"


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private customStates:Landroidx/compose/runtime/snapshots/SnapshotStateMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/snapshots/SnapshotStateMap<",
            "Landroidx/compose/foundation/style/StyleStateKey<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final interactionSource:Landroidx/compose/foundation/interaction/InteractionSource;

.field private final predefinedState$delegate:Landroidx/compose/runtime/MutableIntState;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/interaction/InteractionSource;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/compose/foundation/style/StyleState;-><init>(Ljh2;)V

    iput-object p1, p0, Landroidx/compose/foundation/style/MutableStyleState;->interactionSource:Landroidx/compose/foundation/interaction/InteractionSource;

    invoke-static {}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateMapOf()Landroidx/compose/runtime/snapshots/SnapshotStateMap;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/foundation/style/MutableStyleState;->customStates:Landroidx/compose/runtime/snapshots/SnapshotStateMap;

    const/16 p1, 0x10

    invoke-static {p1}, Landroidx/compose/runtime/SnapshotIntStateKt;->mutableIntStateOf(I)Landroidx/compose/runtime/MutableIntState;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/foundation/style/MutableStyleState;->predefinedState$delegate:Landroidx/compose/runtime/MutableIntState;

    return-void
.end method


# virtual methods
.method public get(Landroidx/compose/foundation/style/StyleStateKey;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/compose/foundation/style/StyleStateKey<",
            "TT;>;)TT;"
        }
    .end annotation

    invoke-virtual {p1, p0}, Landroidx/compose/foundation/style/StyleStateKey;->getValueFrom$foundation(Landroidx/compose/foundation/style/MutableStyleState;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final getCustomStates$foundation()Landroidx/compose/runtime/snapshots/SnapshotStateMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/runtime/snapshots/SnapshotStateMap<",
            "Landroidx/compose/foundation/style/StyleStateKey<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/foundation/style/MutableStyleState;->customStates:Landroidx/compose/runtime/snapshots/SnapshotStateMap;

    return-object p0
.end method

.method public final getCustomValue$foundation(Landroidx/compose/foundation/style/StyleStateKey;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/compose/foundation/style/StyleStateKey<",
            "TT;>;)TT;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/foundation/style/MutableStyleState;->customStates:Landroidx/compose/runtime/snapshots/SnapshotStateMap;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    invoke-virtual {p1}, Landroidx/compose/foundation/style/StyleStateKey;->getDefaultValue$foundation()Ljava/lang/Object;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public getInteractionSource$foundation()Landroidx/compose/foundation/interaction/InteractionSource;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/style/MutableStyleState;->interactionSource:Landroidx/compose/foundation/interaction/InteractionSource;

    return-object p0
.end method

.method public final getPredefinedState$foundation()I
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/style/MutableStyleState;->predefinedState$delegate:Landroidx/compose/runtime/MutableIntState;

    invoke-interface {p0}, Landroidx/compose/runtime/IntState;->getIntValue()I

    move-result p0

    return p0
.end method

.method public getTriStateToggle()Landroidx/compose/ui/state/ToggleableState;
    .locals 1

    sget-object v0, Landroidx/compose/foundation/style/PredefinedToggleStateKey;->INSTANCE:Landroidx/compose/foundation/style/PredefinedToggleStateKey;

    invoke-virtual {v0, p0}, Landroidx/compose/foundation/style/PredefinedToggleStateKey;->getValueFrom$foundation(Landroidx/compose/foundation/style/MutableStyleState;)Landroidx/compose/ui/state/ToggleableState;

    move-result-object p0

    return-object p0
.end method

.method public isChecked()Z
    .locals 1

    sget-object v0, Landroidx/compose/foundation/style/PredefinedToggleStateKey;->INSTANCE:Landroidx/compose/foundation/style/PredefinedToggleStateKey;

    invoke-virtual {v0, p0}, Landroidx/compose/foundation/style/PredefinedToggleStateKey;->getValueFrom$foundation(Landroidx/compose/foundation/style/MutableStyleState;)Landroidx/compose/ui/state/ToggleableState;

    move-result-object p0

    sget-object v0, Landroidx/compose/ui/state/ToggleableState;->On:Landroidx/compose/ui/state/ToggleableState;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isEnabled()Z
    .locals 0

    invoke-virtual {p0}, Landroidx/compose/foundation/style/MutableStyleState;->getPredefinedState$foundation()I

    move-result p0

    and-int/lit8 p0, p0, 0x10

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isFocused()Z
    .locals 0

    invoke-virtual {p0}, Landroidx/compose/foundation/style/MutableStyleState;->getPredefinedState$foundation()I

    move-result p0

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isHovered()Z
    .locals 0

    invoke-virtual {p0}, Landroidx/compose/foundation/style/MutableStyleState;->getPredefinedState$foundation()I

    move-result p0

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isPressed()Z
    .locals 1

    invoke-virtual {p0}, Landroidx/compose/foundation/style/MutableStyleState;->getPredefinedState$foundation()I

    move-result p0

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isSelected()Z
    .locals 0

    invoke-virtual {p0}, Landroidx/compose/foundation/style/MutableStyleState;->getPredefinedState$foundation()I

    move-result p0

    and-int/lit8 p0, p0, 0x8

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public processInteractions$foundation(Landroidx/compose/foundation/interaction/InteractionSource;Le02;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/interaction/InteractionSource;",
            "Le02<",
            "-",
            "Lj59;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    new-instance v0, Landroidx/compose/foundation/style/InteractionSet;

    invoke-direct {v0}, Landroidx/compose/foundation/style/InteractionSet;-><init>()V

    new-instance v1, Landroidx/compose/foundation/style/InteractionSet;

    invoke-direct {v1}, Landroidx/compose/foundation/style/InteractionSet;-><init>()V

    new-instance v2, Landroidx/compose/foundation/style/InteractionSet;

    invoke-direct {v2}, Landroidx/compose/foundation/style/InteractionSet;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Landroidx/compose/foundation/style/MutableStyleState;->setPressed(Z)V

    invoke-virtual {p0, v3}, Landroidx/compose/foundation/style/MutableStyleState;->setHovered(Z)V

    invoke-virtual {p0, v3}, Landroidx/compose/foundation/style/MutableStyleState;->setFocused(Z)V

    invoke-interface {p1}, Landroidx/compose/foundation/interaction/InteractionSource;->getInteractions()Lhd3;

    move-result-object p1

    new-instance v3, Landroidx/compose/foundation/style/MutableStyleState$processInteractions$2;

    invoke-direct {v3, v0, p0, v1, v2}, Landroidx/compose/foundation/style/MutableStyleState$processInteractions$2;-><init>(Landroidx/compose/foundation/style/InteractionSet;Landroidx/compose/foundation/style/MutableStyleState;Landroidx/compose/foundation/style/InteractionSet;Landroidx/compose/foundation/style/InteractionSet;)V

    invoke-interface {p1, v3, p2}, Lhd3;->collect(Lid3;Le02;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, La32;->COROUTINE_SUSPENDED:La32;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public final remove(Landroidx/compose/foundation/style/StyleStateKey;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/compose/foundation/style/StyleStateKey<",
            "TT;>;)V"
        }
    .end annotation

    instance-of v0, p1, Landroidx/compose/foundation/style/PredefinedKey;

    if-nez v0, :cond_0

    iget-object p0, p0, Landroidx/compose/foundation/style/MutableStyleState;->customStates:Landroidx/compose/runtime/snapshots/SnapshotStateMap;

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/snapshots/SnapshotStateMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    const-string p0, "Cannot remove an internal StyleStateKey"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-void
.end method

.method public final set(Landroidx/compose/foundation/style/StyleStateKey;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/compose/foundation/style/StyleStateKey<",
            "TT;>;TT;)V"
        }
    .end annotation

    invoke-virtual {p1, p2, p0}, Landroidx/compose/foundation/style/StyleStateKey;->setValueTo$foundation(Ljava/lang/Object;Landroidx/compose/foundation/style/MutableStyleState;)V

    return-void
.end method

.method public setChecked(Z)V
    .locals 1

    sget-object v0, Landroidx/compose/foundation/style/PredefinedToggleStateKey;->INSTANCE:Landroidx/compose/foundation/style/PredefinedToggleStateKey;

    if-eqz p1, :cond_0

    sget-object p1, Landroidx/compose/ui/state/ToggleableState;->On:Landroidx/compose/ui/state/ToggleableState;

    goto :goto_0

    :cond_0
    sget-object p1, Landroidx/compose/ui/state/ToggleableState;->Off:Landroidx/compose/ui/state/ToggleableState;

    :goto_0
    invoke-virtual {v0, p1, p0}, Landroidx/compose/foundation/style/PredefinedToggleStateKey;->setValueTo$foundation(Landroidx/compose/ui/state/ToggleableState;Landroidx/compose/foundation/style/MutableStyleState;)V

    return-void
.end method

.method public final setCustomStates$foundation(Landroidx/compose/runtime/snapshots/SnapshotStateMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/snapshots/SnapshotStateMap<",
            "Landroidx/compose/foundation/style/StyleStateKey<",
            "*>;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/foundation/style/MutableStyleState;->customStates:Landroidx/compose/runtime/snapshots/SnapshotStateMap;

    return-void
.end method

.method public final setCustomValue$foundation(Landroidx/compose/foundation/style/StyleStateKey;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/compose/foundation/style/StyleStateKey<",
            "TT;>;TT;)V"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/foundation/style/MutableStyleState;->customStates:Landroidx/compose/runtime/snapshots/SnapshotStateMap;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    invoke-virtual {p0}, Landroidx/compose/foundation/style/MutableStyleState;->getPredefinedState$foundation()I

    move-result v0

    and-int/lit8 v0, v0, -0x11

    if-eqz p1, :cond_0

    const/16 p1, 0x10

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    or-int/2addr p1, v0

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/style/MutableStyleState;->setPredefinedState$foundation(I)V

    return-void
.end method

.method public setFocused(Z)V
    .locals 1

    invoke-virtual {p0}, Landroidx/compose/foundation/style/MutableStyleState;->getPredefinedState$foundation()I

    move-result v0

    and-int/lit8 v0, v0, -0x5

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    or-int/2addr p1, v0

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/style/MutableStyleState;->setPredefinedState$foundation(I)V

    return-void
.end method

.method public setHovered(Z)V
    .locals 1

    invoke-virtual {p0}, Landroidx/compose/foundation/style/MutableStyleState;->getPredefinedState$foundation()I

    move-result v0

    and-int/lit8 v0, v0, -0x3

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    or-int/2addr p1, v0

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/style/MutableStyleState;->setPredefinedState$foundation(I)V

    return-void
.end method

.method public final setPredefinedState$foundation(I)V
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/style/MutableStyleState;->predefinedState$delegate:Landroidx/compose/runtime/MutableIntState;

    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableIntState;->setIntValue(I)V

    return-void
.end method

.method public setPressed(Z)V
    .locals 1

    invoke-virtual {p0}, Landroidx/compose/foundation/style/MutableStyleState;->getPredefinedState$foundation()I

    move-result v0

    and-int/lit8 v0, v0, -0x2

    or-int/2addr p1, v0

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/style/MutableStyleState;->setPredefinedState$foundation(I)V

    return-void
.end method

.method public setSelected(Z)V
    .locals 1

    invoke-virtual {p0}, Landroidx/compose/foundation/style/MutableStyleState;->getPredefinedState$foundation()I

    move-result v0

    and-int/lit8 v0, v0, -0x9

    if-eqz p1, :cond_0

    const/16 p1, 0x8

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    or-int/2addr p1, v0

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/style/MutableStyleState;->setPredefinedState$foundation(I)V

    return-void
.end method

.method public setTriStateToggle(Landroidx/compose/ui/state/ToggleableState;)V
    .locals 1

    sget-object v0, Landroidx/compose/foundation/style/PredefinedToggleStateKey;->INSTANCE:Landroidx/compose/foundation/style/PredefinedToggleStateKey;

    invoke-virtual {v0, p1, p0}, Landroidx/compose/foundation/style/PredefinedToggleStateKey;->setValueTo$foundation(Landroidx/compose/ui/state/ToggleableState;Landroidx/compose/foundation/style/MutableStyleState;)V

    return-void
.end method
