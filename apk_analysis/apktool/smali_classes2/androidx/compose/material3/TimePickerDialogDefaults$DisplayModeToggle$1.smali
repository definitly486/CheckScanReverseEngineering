.class final Landroidx/compose/material3/TimePickerDialogDefaults$DisplayModeToggle$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material3/TimePickerDialogDefaults;->DisplayModeToggle-S7Bxtbk(Lll3;ILandroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;II)V
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


# direct methods
.method public constructor <init>(I)V
    .locals 0

    iput p1, p0, Landroidx/compose/material3/TimePickerDialogDefaults$DisplayModeToggle$1;->$displayMode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 119
    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroidx/compose/material3/TimePickerDialogDefaults$DisplayModeToggle$1;->invoke(Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public final invoke(Landroidx/compose/runtime/Composer;I)V
    .locals 11

    and-int/lit8 v0, p2, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    and-int/lit8 v1, p2, 0x1

    invoke-interface {p1, v0, v1}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    const-string v1, "androidx.compose.material3.TimePickerDialogDefaults.DisplayModeToggle.<anonymous> (TimePickerDialog.kt:266)"

    const v3, -0x299b08b1

    invoke-static {v3, p2, v0, v1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_1
    iget p2, p0, Landroidx/compose/material3/TimePickerDialogDefaults$DisplayModeToggle$1;->$displayMode:I

    sget-object v0, Landroidx/compose/material3/TimePickerDisplayMode;->Companion:Landroidx/compose/material3/TimePickerDisplayMode$Companion;

    invoke-virtual {v0}, Landroidx/compose/material3/TimePickerDisplayMode$Companion;->getPicker--ONbchU()I

    move-result v1

    invoke-static {p2, v1}, Landroidx/compose/material3/TimePickerDisplayMode;->equals-impl0(II)Z

    move-result p2

    if-eqz p2, :cond_2

    sget-object p2, Landroidx/compose/material3/internal/Icons$Outlined;->INSTANCE:Landroidx/compose/material3/internal/Icons$Outlined;

    invoke-virtual {p2}, Landroidx/compose/material3/internal/Icons$Outlined;->getKeyboard()Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object p2

    :goto_1
    move-object v3, p2

    goto :goto_2

    :cond_2
    sget-object p2, Landroidx/compose/material3/internal/Icons$Outlined;->INSTANCE:Landroidx/compose/material3/internal/Icons$Outlined;

    invoke-virtual {p2}, Landroidx/compose/material3/internal/Icons$Outlined;->getSchedule()Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object p2

    goto :goto_1

    :goto_2
    iget p0, p0, Landroidx/compose/material3/TimePickerDialogDefaults$DisplayModeToggle$1;->$displayMode:I

    invoke-virtual {v0}, Landroidx/compose/material3/TimePickerDisplayMode$Companion;->getPicker--ONbchU()I

    move-result p2

    invoke-static {p0, p2}, Landroidx/compose/material3/TimePickerDisplayMode;->equals-impl0(II)Z

    move-result p0

    if-eqz p0, :cond_3

    sget-object p0, Landroidx/compose/material3/internal/Strings;->Companion:Landroidx/compose/material3/internal/Strings$Companion;

    sget p0, Landroidx/compose/material3/R$string;->m3c_time_picker_toggle_touch:I

    invoke-static {p0}, Landroidx/compose/material3/internal/Strings;->constructor-impl(I)I

    move-result p0

    goto :goto_3

    :cond_3
    sget-object p0, Landroidx/compose/material3/internal/Strings;->Companion:Landroidx/compose/material3/internal/Strings$Companion;

    sget p0, Landroidx/compose/material3/R$string;->m3c_time_picker_toggle_keyboard:I

    invoke-static {p0}, Landroidx/compose/material3/internal/Strings;->constructor-impl(I)I

    move-result p0

    :goto_3
    invoke-static {p0, p1, v2}, Landroidx/compose/material3/internal/Strings_androidKt;->getString-2EP1pXo(ILandroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v4

    const/4 v9, 0x0

    const/16 v10, 0xc

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    move-object v8, p1

    invoke-static/range {v3 .. v10}, Landroidx/compose/material3/IconKt;->Icon-ww6aTOc(Landroidx/compose/ui/graphics/vector/ImageVector;Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p0

    if-eqz p0, :cond_4

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_4
    return-void

    :cond_5
    move-object v8, p1

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    return-void
.end method
