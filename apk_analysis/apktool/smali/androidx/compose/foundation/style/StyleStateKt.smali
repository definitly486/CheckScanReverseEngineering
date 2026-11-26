.class public final Landroidx/compose/foundation/style/StyleStateKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final EnabledStateMask:I = 0x10

.field private static final FocusedStateMask:I = 0x4

.field private static final HoveredStateMask:I = 0x2

.field private static final PressedStateMask:I = 0x1

.field private static final SelectedStateMask:I = 0x8

.field private static final ToggleStateIndeterminate:I = 0x40

.field private static final ToggleStateMask:I = 0x60

.field private static final ToggleStateOff:I = 0x0

.field private static final ToggleStateOn:I = 0x20

.field private static final ToggleStateShift:I = 0x5


# direct methods
.method public static synthetic a(Landroidx/compose/foundation/style/StyleStateKey;Landroidx/compose/foundation/style/StyleState;)Z
    .locals 0

    invoke-static {p0, p1}, Landroidx/compose/foundation/style/StyleStateKt;->checked$lambda$0(Landroidx/compose/foundation/style/StyleStateKey;Landroidx/compose/foundation/style/StyleState;)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(Landroidx/compose/foundation/style/StyleStateKey;Landroidx/compose/foundation/style/StyleState;)Z
    .locals 0

    invoke-static {p0, p1}, Landroidx/compose/foundation/style/StyleStateKt;->disabled$lambda$0(Landroidx/compose/foundation/style/StyleStateKey;Landroidx/compose/foundation/style/StyleState;)Z

    move-result p0

    return p0
.end method

.method public static synthetic c(Landroidx/compose/foundation/style/StyleStateKey;Landroidx/compose/foundation/style/StyleState;)Z
    .locals 0

    invoke-static {p0, p1}, Landroidx/compose/foundation/style/StyleStateKt;->triStateToggleOff$lambda$0(Landroidx/compose/foundation/style/StyleStateKey;Landroidx/compose/foundation/style/StyleState;)Z

    move-result p0

    return p0
.end method

.method public static final checked(Landroidx/compose/foundation/style/StyleScope;Landroidx/compose/foundation/style/Style;)V
    .locals 3

    sget-object v0, Landroidx/compose/foundation/style/StyleStateKey;->Companion:Landroidx/compose/foundation/style/StyleStateKey$Companion;

    invoke-virtual {v0}, Landroidx/compose/foundation/style/StyleStateKey$Companion;->getToggle()Landroidx/compose/foundation/style/StyleStateKey;

    move-result-object v0

    new-instance v1, Led7;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Led7;-><init>(I)V

    invoke-interface {p0, v0, p1, v1}, Landroidx/compose/foundation/style/StyleScope;->state(Landroidx/compose/foundation/style/StyleStateKey;Landroidx/compose/foundation/style/Style;Lbm3;)V

    return-void
.end method

.method private static final checked$lambda$0(Landroidx/compose/foundation/style/StyleStateKey;Landroidx/compose/foundation/style/StyleState;)Z
    .locals 0

    invoke-virtual {p1}, Landroidx/compose/foundation/style/StyleState;->isChecked()Z

    move-result p0

    return p0
.end method

.method public static synthetic d(Landroidx/compose/foundation/style/StyleStateKey;Landroidx/compose/foundation/style/StyleState;)Z
    .locals 0

    invoke-static {p0, p1}, Landroidx/compose/foundation/style/StyleStateKt;->selected$lambda$0(Landroidx/compose/foundation/style/StyleStateKey;Landroidx/compose/foundation/style/StyleState;)Z

    move-result p0

    return p0
.end method

.method public static final disabled(Landroidx/compose/foundation/style/StyleScope;Landroidx/compose/foundation/style/Style;)V
    .locals 3

    sget-object v0, Landroidx/compose/foundation/style/StyleStateKey;->Companion:Landroidx/compose/foundation/style/StyleStateKey$Companion;

    invoke-virtual {v0}, Landroidx/compose/foundation/style/StyleStateKey$Companion;->getEnabled()Landroidx/compose/foundation/style/StyleStateKey;

    move-result-object v0

    new-instance v1, Lcd7;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcd7;-><init>(I)V

    invoke-interface {p0, v0, p1, v1}, Landroidx/compose/foundation/style/StyleScope;->state(Landroidx/compose/foundation/style/StyleStateKey;Landroidx/compose/foundation/style/Style;Lbm3;)V

    return-void
.end method

.method private static final disabled$lambda$0(Landroidx/compose/foundation/style/StyleStateKey;Landroidx/compose/foundation/style/StyleState;)Z
    .locals 0

    invoke-virtual {p1}, Landroidx/compose/foundation/style/StyleState;->isEnabled()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static synthetic e(Landroidx/compose/foundation/style/StyleStateKey;Landroidx/compose/foundation/style/StyleState;)Z
    .locals 0

    invoke-static {p0, p1}, Landroidx/compose/foundation/style/StyleStateKt;->triStateToggleIndeterminate$lambda$0(Landroidx/compose/foundation/style/StyleStateKey;Landroidx/compose/foundation/style/StyleState;)Z

    move-result p0

    return p0
.end method

.method public static synthetic f(Landroidx/compose/foundation/style/StyleStateKey;Landroidx/compose/foundation/style/StyleState;)Z
    .locals 0

    invoke-static {p0, p1}, Landroidx/compose/foundation/style/StyleStateKt;->hovered$lambda$0(Landroidx/compose/foundation/style/StyleStateKey;Landroidx/compose/foundation/style/StyleState;)Z

    move-result p0

    return p0
.end method

.method public static final focused(Landroidx/compose/foundation/style/StyleScope;Landroidx/compose/foundation/style/Style;)V
    .locals 3

    sget-object v0, Landroidx/compose/foundation/style/StyleStateKey;->Companion:Landroidx/compose/foundation/style/StyleStateKey$Companion;

    invoke-virtual {v0}, Landroidx/compose/foundation/style/StyleStateKey$Companion;->getFocused()Landroidx/compose/foundation/style/StyleStateKey;

    move-result-object v0

    new-instance v1, Ldm4;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ldm4;-><init>(I)V

    invoke-interface {p0, v0, p1, v1}, Landroidx/compose/foundation/style/StyleScope;->state(Landroidx/compose/foundation/style/StyleStateKey;Landroidx/compose/foundation/style/Style;Lbm3;)V

    return-void
.end method

.method private static final focused$lambda$0(Landroidx/compose/foundation/style/StyleStateKey;Landroidx/compose/foundation/style/StyleState;)Z
    .locals 0

    invoke-virtual {p1}, Landroidx/compose/foundation/style/StyleState;->isFocused()Z

    move-result p0

    return p0
.end method

.method public static synthetic g(Landroidx/compose/foundation/style/StyleStateKey;Landroidx/compose/foundation/style/StyleState;)Z
    .locals 0

    invoke-static {p0, p1}, Landroidx/compose/foundation/style/StyleStateKt;->focused$lambda$0(Landroidx/compose/foundation/style/StyleStateKey;Landroidx/compose/foundation/style/StyleState;)Z

    move-result p0

    return p0
.end method

.method public static synthetic h(Landroidx/compose/foundation/style/StyleStateKey;Landroidx/compose/foundation/style/StyleState;)Z
    .locals 0

    invoke-static {p0, p1}, Landroidx/compose/foundation/style/StyleStateKt;->pressed$lambda$0(Landroidx/compose/foundation/style/StyleStateKey;Landroidx/compose/foundation/style/StyleState;)Z

    move-result p0

    return p0
.end method

.method public static final hovered(Landroidx/compose/foundation/style/StyleScope;Landroidx/compose/foundation/style/Style;)V
    .locals 3

    sget-object v0, Landroidx/compose/foundation/style/StyleStateKey;->Companion:Landroidx/compose/foundation/style/StyleStateKey$Companion;

    invoke-virtual {v0}, Landroidx/compose/foundation/style/StyleStateKey$Companion;->getHovered()Landroidx/compose/foundation/style/StyleStateKey;

    move-result-object v0

    new-instance v1, Ldd7;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ldd7;-><init>(I)V

    invoke-interface {p0, v0, p1, v1}, Landroidx/compose/foundation/style/StyleScope;->state(Landroidx/compose/foundation/style/StyleStateKey;Landroidx/compose/foundation/style/Style;Lbm3;)V

    return-void
.end method

.method private static final hovered$lambda$0(Landroidx/compose/foundation/style/StyleStateKey;Landroidx/compose/foundation/style/StyleState;)Z
    .locals 0

    invoke-virtual {p1}, Landroidx/compose/foundation/style/StyleState;->isHovered()Z

    move-result p0

    return p0
.end method

.method public static synthetic i(Landroidx/compose/foundation/style/StyleStateKey;Landroidx/compose/foundation/style/StyleState;)Z
    .locals 0

    invoke-static {p0, p1}, Landroidx/compose/foundation/style/StyleStateKt;->triStateToggleOn$lambda$0(Landroidx/compose/foundation/style/StyleStateKey;Landroidx/compose/foundation/style/StyleState;)Z

    move-result p0

    return p0
.end method

.method public static final pressed(Landroidx/compose/foundation/style/StyleScope;Landroidx/compose/foundation/style/Style;)V
    .locals 3

    sget-object v0, Landroidx/compose/foundation/style/StyleStateKey;->Companion:Landroidx/compose/foundation/style/StyleStateKey$Companion;

    invoke-virtual {v0}, Landroidx/compose/foundation/style/StyleStateKey$Companion;->getPressed()Landroidx/compose/foundation/style/StyleStateKey;

    move-result-object v0

    new-instance v1, Lbd7;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lbd7;-><init>(I)V

    invoke-interface {p0, v0, p1, v1}, Landroidx/compose/foundation/style/StyleScope;->state(Landroidx/compose/foundation/style/StyleStateKey;Landroidx/compose/foundation/style/Style;Lbm3;)V

    return-void
.end method

.method private static final pressed$lambda$0(Landroidx/compose/foundation/style/StyleStateKey;Landroidx/compose/foundation/style/StyleState;)Z
    .locals 0

    invoke-virtual {p1}, Landroidx/compose/foundation/style/StyleState;->isPressed()Z

    move-result p0

    return p0
.end method

.method public static final rememberUpdatedStyleState(Landroidx/compose/foundation/interaction/InteractionSource;Ldm3;Landroidx/compose/runtime/Composer;II)Landroidx/compose/foundation/style/StyleState;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/interaction/InteractionSource;",
            "Ldm3<",
            "-",
            "Landroidx/compose/foundation/style/MutableStyleState;",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lj59;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "II)",
            "Landroidx/compose/foundation/style/StyleState;"
        }
    .end annotation

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    sget-object p1, Landroidx/compose/foundation/style/StyleStateKt$rememberUpdatedStyleState$1;->INSTANCE:Landroidx/compose/foundation/style/StyleStateKt$rememberUpdatedStyleState$1;

    :cond_0
    and-int/lit8 p4, p3, 0xe

    xor-int/lit8 p4, p4, 0x6

    const/4 v0, 0x4

    if-le p4, v0, :cond_1

    invoke-interface {p2, p0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_2

    :cond_1
    and-int/lit8 p4, p3, 0x6

    if-ne p4, v0, :cond_3

    :cond_2
    const/4 p4, 0x1

    goto :goto_0

    :cond_3
    const/4 p4, 0x0

    :goto_0
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    if-nez p4, :cond_4

    sget-object p4, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {p4}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object p4

    if-ne v0, p4, :cond_5

    :cond_4
    new-instance v0, Landroidx/compose/foundation/style/MutableStyleState;

    invoke-direct {v0, p0}, Landroidx/compose/foundation/style/MutableStyleState;-><init>(Landroidx/compose/foundation/interaction/InteractionSource;)V

    invoke-interface {p2, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_5
    check-cast v0, Landroidx/compose/foundation/style/MutableStyleState;

    and-int/lit8 p0, p3, 0x70

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, v0, p2, p0}, Ldm3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static final selected(Landroidx/compose/foundation/style/StyleScope;Landroidx/compose/foundation/style/Style;)V
    .locals 3

    sget-object v0, Landroidx/compose/foundation/style/StyleStateKey;->Companion:Landroidx/compose/foundation/style/StyleStateKey$Companion;

    invoke-virtual {v0}, Landroidx/compose/foundation/style/StyleStateKey$Companion;->getSelected()Landroidx/compose/foundation/style/StyleStateKey;

    move-result-object v0

    new-instance v1, Lgm4;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lgm4;-><init>(I)V

    invoke-interface {p0, v0, p1, v1}, Landroidx/compose/foundation/style/StyleScope;->state(Landroidx/compose/foundation/style/StyleStateKey;Landroidx/compose/foundation/style/Style;Lbm3;)V

    return-void
.end method

.method private static final selected$lambda$0(Landroidx/compose/foundation/style/StyleStateKey;Landroidx/compose/foundation/style/StyleState;)Z
    .locals 0

    invoke-virtual {p1}, Landroidx/compose/foundation/style/StyleState;->isSelected()Z

    move-result p0

    return p0
.end method

.method public static final triStateToggleIndeterminate(Landroidx/compose/foundation/style/StyleScope;Landroidx/compose/foundation/style/Style;)V
    .locals 2

    sget-object v0, Landroidx/compose/foundation/style/StyleStateKey;->Companion:Landroidx/compose/foundation/style/StyleStateKey$Companion;

    invoke-virtual {v0}, Landroidx/compose/foundation/style/StyleStateKey$Companion;->getToggle()Landroidx/compose/foundation/style/StyleStateKey;

    move-result-object v0

    new-instance v1, Lkb8;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-interface {p0, v0, p1, v1}, Landroidx/compose/foundation/style/StyleScope;->state(Landroidx/compose/foundation/style/StyleStateKey;Landroidx/compose/foundation/style/Style;Lbm3;)V

    return-void
.end method

.method private static final triStateToggleIndeterminate$lambda$0(Landroidx/compose/foundation/style/StyleStateKey;Landroidx/compose/foundation/style/StyleState;)Z
    .locals 0

    invoke-virtual {p1}, Landroidx/compose/foundation/style/StyleState;->getTriStateToggle()Landroidx/compose/ui/state/ToggleableState;

    move-result-object p0

    sget-object p1, Landroidx/compose/ui/state/ToggleableState;->Indeterminate:Landroidx/compose/ui/state/ToggleableState;

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static final triStateToggleOff(Landroidx/compose/foundation/style/StyleScope;Landroidx/compose/foundation/style/Style;)V
    .locals 3

    sget-object v0, Landroidx/compose/foundation/style/StyleStateKey;->Companion:Landroidx/compose/foundation/style/StyleStateKey$Companion;

    invoke-virtual {v0}, Landroidx/compose/foundation/style/StyleStateKey$Companion;->getToggle()Landroidx/compose/foundation/style/StyleStateKey;

    move-result-object v0

    new-instance v1, Lfm4;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lfm4;-><init>(I)V

    invoke-interface {p0, v0, p1, v1}, Landroidx/compose/foundation/style/StyleScope;->state(Landroidx/compose/foundation/style/StyleStateKey;Landroidx/compose/foundation/style/Style;Lbm3;)V

    return-void
.end method

.method private static final triStateToggleOff$lambda$0(Landroidx/compose/foundation/style/StyleStateKey;Landroidx/compose/foundation/style/StyleState;)Z
    .locals 0

    invoke-virtual {p1}, Landroidx/compose/foundation/style/StyleState;->getTriStateToggle()Landroidx/compose/ui/state/ToggleableState;

    move-result-object p0

    sget-object p1, Landroidx/compose/ui/state/ToggleableState;->Off:Landroidx/compose/ui/state/ToggleableState;

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static final triStateToggleOn(Landroidx/compose/foundation/style/StyleScope;Landroidx/compose/foundation/style/Style;)V
    .locals 3

    sget-object v0, Landroidx/compose/foundation/style/StyleStateKey;->Companion:Landroidx/compose/foundation/style/StyleStateKey$Companion;

    invoke-virtual {v0}, Landroidx/compose/foundation/style/StyleStateKey$Companion;->getToggle()Landroidx/compose/foundation/style/StyleStateKey;

    move-result-object v0

    new-instance v1, Lix6;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lix6;-><init>(I)V

    invoke-interface {p0, v0, p1, v1}, Landroidx/compose/foundation/style/StyleScope;->state(Landroidx/compose/foundation/style/StyleStateKey;Landroidx/compose/foundation/style/Style;Lbm3;)V

    return-void
.end method

.method private static final triStateToggleOn$lambda$0(Landroidx/compose/foundation/style/StyleStateKey;Landroidx/compose/foundation/style/StyleState;)Z
    .locals 0

    invoke-virtual {p1}, Landroidx/compose/foundation/style/StyleState;->getTriStateToggle()Landroidx/compose/ui/state/ToggleableState;

    move-result-object p0

    sget-object p1, Landroidx/compose/ui/state/ToggleableState;->On:Landroidx/compose/ui/state/ToggleableState;

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static final updateFromMask(IIZ)I
    .locals 1

    not-int v0, p1

    and-int/2addr p0, v0

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    or-int/2addr p0, p1

    return p0
.end method
