.class final Landroidx/compose/material3/DatePickerKt$DisplayModeToggleButton$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material3/DatePickerKt;->DisplayModeToggleButton-iUJLfQg(Landroidx/compose/ui/Modifier;ILnl3;Landroidx/compose/material3/DatePickerColors;Landroidx/compose/runtime/Composer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbm3<",
        "Landroidx/compose/runtime/Composer;",
        "Ljava/lang/Integer;",
        "Lj59;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $displayMode:I

.field final synthetic $modifier:Landroidx/compose/ui/Modifier;

.field final synthetic $onDisplayModeChange:Lnl3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnl3<",
            "Landroidx/compose/material3/DisplayMode;",
            "Lj59;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILnl3;Landroidx/compose/ui/Modifier;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lnl3<",
            "-",
            "Landroidx/compose/material3/DisplayMode;",
            "Lj59;",
            ">;",
            "Landroidx/compose/ui/Modifier;",
            ")V"
        }
    .end annotation

    iput p1, p0, Landroidx/compose/material3/DatePickerKt$DisplayModeToggleButton$1;->$displayMode:I

    iput-object p2, p0, Landroidx/compose/material3/DatePickerKt$DisplayModeToggleButton$1;->$onDisplayModeChange:Lnl3;

    iput-object p3, p0, Landroidx/compose/material3/DatePickerKt$DisplayModeToggleButton$1;->$modifier:Landroidx/compose/ui/Modifier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lnl3;)Lj59;
    .locals 0

    invoke-static {p0}, Landroidx/compose/material3/DatePickerKt$DisplayModeToggleButton$1;->invoke$lambda$1$lambda$0(Lnl3;)Lj59;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lnl3;)Lj59;
    .locals 0

    invoke-static {p0}, Landroidx/compose/material3/DatePickerKt$DisplayModeToggleButton$1;->invoke$lambda$3$lambda$2(Lnl3;)Lj59;

    move-result-object p0

    return-object p0
.end method

.method private static final invoke$lambda$1$lambda$0(Lnl3;)Lj59;
    .locals 1

    sget-object v0, Landroidx/compose/material3/DisplayMode;->Companion:Landroidx/compose/material3/DisplayMode$Companion;

    invoke-virtual {v0}, Landroidx/compose/material3/DisplayMode$Companion;->getInput-jFl-4v0()I

    move-result v0

    invoke-static {v0}, Landroidx/compose/material3/DisplayMode;->box-impl(I)Landroidx/compose/material3/DisplayMode;

    move-result-object v0

    invoke-interface {p0, v0}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method private static final invoke$lambda$3$lambda$2(Lnl3;)Lj59;
    .locals 1

    sget-object v0, Landroidx/compose/material3/DisplayMode;->Companion:Landroidx/compose/material3/DisplayMode$Companion;

    invoke-virtual {v0}, Landroidx/compose/material3/DisplayMode$Companion;->getPicker-jFl-4v0()I

    move-result v0

    invoke-static {v0}, Landroidx/compose/material3/DisplayMode;->box-impl(I)Landroidx/compose/material3/DisplayMode;

    move-result-object v0

    invoke-interface {p0, v0}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 201
    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroidx/compose/material3/DatePickerKt$DisplayModeToggleButton$1;->invoke(Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public final invoke(Landroidx/compose/runtime/Composer;I)V
    .locals 8

    and-int/lit8 v2, p2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eq v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    and-int/lit8 v3, p2, 0x1

    invoke-interface {p1, v2, v3}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, -0x1

    const-string v3, "androidx.compose.material3.DisplayModeToggleButton.<anonymous> (DatePicker.kt:1408)"

    const v6, -0x67628e45

    invoke-static {v6, p2, v2, v3}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_1
    iget v1, p0, Landroidx/compose/material3/DatePickerKt$DisplayModeToggleButton$1;->$displayMode:I

    sget-object v2, Landroidx/compose/material3/DisplayMode;->Companion:Landroidx/compose/material3/DisplayMode$Companion;

    invoke-virtual {v2}, Landroidx/compose/material3/DisplayMode$Companion;->getPicker-jFl-4v0()I

    move-result v2

    invoke-static {v1, v2}, Landroidx/compose/material3/DisplayMode;->equals-impl0(II)Z

    move-result v1

    if-eqz v1, :cond_4

    const v1, -0x6092e1f

    invoke-interface {p1, v1}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    sget-object v1, Landroidx/compose/material3/internal/Icons$Filled;->INSTANCE:Landroidx/compose/material3/internal/Icons$Filled;

    invoke-virtual {v1}, Landroidx/compose/material3/internal/Icons$Filled;->getEdit$material3()Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v1

    sget-object v2, Landroidx/compose/material3/internal/Strings;->Companion:Landroidx/compose/material3/internal/Strings$Companion;

    sget v2, Landroidx/compose/material3/R$string;->m3c_date_picker_switch_to_input_mode:I

    invoke-static {v2}, Landroidx/compose/material3/internal/Strings;->constructor-impl(I)I

    move-result v2

    invoke-static {v2, p1, v4}, Landroidx/compose/material3/internal/Strings_androidKt;->getString-2EP1pXo(ILandroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroidx/compose/material3/DatePickerKt$DisplayModeToggleButton$1;->$onDisplayModeChange:Lnl3;

    invoke-interface {p1, v3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v3

    iget-object v4, p0, Landroidx/compose/material3/DatePickerKt$DisplayModeToggleButton$1;->$onDisplayModeChange:Lnl3;

    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v6

    if-nez v3, :cond_2

    sget-object v3, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v3}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v3

    if-ne v6, v3, :cond_3

    :cond_2
    new-instance v6, Landroidx/compose/material3/e0;

    invoke-direct {v6, v4}, Landroidx/compose/material3/e0;-><init>(Lnl3;)V

    invoke-interface {p1, v6}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_3
    check-cast v6, Lll3;

    iget-object v3, p0, Landroidx/compose/material3/DatePickerKt$DisplayModeToggleButton$1;->$modifier:Landroidx/compose/ui/Modifier;

    move-object v0, v6

    const/4 v6, 0x0

    const/16 v7, 0x10

    const/4 v4, 0x0

    move-object v5, p1

    invoke-static/range {v0 .. v7}, Landroidx/compose/material3/DatePickerKt;->access$IconButtonWithTooltip(Lll3;Landroidx/compose/ui/graphics/vector/ImageVector;Ljava/lang/String;Landroidx/compose/ui/Modifier;ZLandroidx/compose/runtime/Composer;II)V

    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    goto :goto_1

    :cond_4
    const v1, -0x604a288

    invoke-interface {p1, v1}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    sget-object v1, Landroidx/compose/material3/internal/Icons$Filled;->INSTANCE:Landroidx/compose/material3/internal/Icons$Filled;

    invoke-virtual {v1}, Landroidx/compose/material3/internal/Icons$Filled;->getDateRange$material3()Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v1

    sget-object v2, Landroidx/compose/material3/internal/Strings;->Companion:Landroidx/compose/material3/internal/Strings$Companion;

    sget v2, Landroidx/compose/material3/R$string;->m3c_date_picker_switch_to_calendar_mode:I

    invoke-static {v2}, Landroidx/compose/material3/internal/Strings;->constructor-impl(I)I

    move-result v2

    invoke-static {v2, p1, v4}, Landroidx/compose/material3/internal/Strings_androidKt;->getString-2EP1pXo(ILandroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroidx/compose/material3/DatePickerKt$DisplayModeToggleButton$1;->$onDisplayModeChange:Lnl3;

    invoke-interface {p1, v3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v3

    iget-object v4, p0, Landroidx/compose/material3/DatePickerKt$DisplayModeToggleButton$1;->$onDisplayModeChange:Lnl3;

    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v6

    if-nez v3, :cond_5

    sget-object v3, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v3}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v3

    if-ne v6, v3, :cond_6

    :cond_5
    new-instance v6, Landroidx/compose/material3/f0;

    invoke-direct {v6, v4}, Landroidx/compose/material3/f0;-><init>(Lnl3;)V

    invoke-interface {p1, v6}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_6
    check-cast v6, Lll3;

    iget-object v3, p0, Landroidx/compose/material3/DatePickerKt$DisplayModeToggleButton$1;->$modifier:Landroidx/compose/ui/Modifier;

    move-object v0, v6

    const/4 v6, 0x0

    const/16 v7, 0x10

    const/4 v4, 0x0

    move-object v5, p1

    invoke-static/range {v0 .. v7}, Landroidx/compose/material3/DatePickerKt;->access$IconButtonWithTooltip(Lll3;Landroidx/compose/ui/graphics/vector/ImageVector;Ljava/lang/String;Landroidx/compose/ui/Modifier;ZLandroidx/compose/runtime/Composer;II)V

    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    :goto_1
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_7
    return-void

    :cond_8
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    return-void
.end method
