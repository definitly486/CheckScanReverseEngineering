.class final Landroidx/compose/material3/ChipKt$SelectableChip$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material3/ChipKt;->SelectableChip-u0RnIRE(ZLandroidx/compose/ui/Modifier;Lll3;ZLbm3;Landroidx/compose/ui/text/TextStyle;Lbm3;Lbm3;Lbm3;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/SelectableChipColors;Landroidx/compose/material3/SelectableChipElevation;Landroidx/compose/foundation/BorderStroke;FLandroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/Composer;II)V
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
.field final synthetic $avatar:Lbm3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbm3<",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lj59;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $colors:Landroidx/compose/material3/SelectableChipColors;

.field final synthetic $enabled:Z

.field final synthetic $label:Lbm3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbm3<",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lj59;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $labelTextStyle:Landroidx/compose/ui/text/TextStyle;

.field final synthetic $leadingIcon:Lbm3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbm3<",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lj59;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $minHeight:F

.field final synthetic $paddingValues:Landroidx/compose/foundation/layout/PaddingValues;

.field final synthetic $selected:Z

.field final synthetic $trailingIcon:Lbm3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbm3<",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lj59;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/compose/material3/SelectableChipColors;ZZLbm3;Landroidx/compose/ui/text/TextStyle;Lbm3;Lbm3;Lbm3;FLandroidx/compose/foundation/layout/PaddingValues;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/material3/SelectableChipColors;",
            "ZZ",
            "Lbm3<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lj59;",
            ">;",
            "Landroidx/compose/ui/text/TextStyle;",
            "Lbm3<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lj59;",
            ">;",
            "Lbm3<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lj59;",
            ">;",
            "Lbm3<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lj59;",
            ">;F",
            "Landroidx/compose/foundation/layout/PaddingValues;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/material3/ChipKt$SelectableChip$2;->$colors:Landroidx/compose/material3/SelectableChipColors;

    iput-boolean p2, p0, Landroidx/compose/material3/ChipKt$SelectableChip$2;->$enabled:Z

    iput-boolean p3, p0, Landroidx/compose/material3/ChipKt$SelectableChip$2;->$selected:Z

    iput-object p4, p0, Landroidx/compose/material3/ChipKt$SelectableChip$2;->$label:Lbm3;

    iput-object p5, p0, Landroidx/compose/material3/ChipKt$SelectableChip$2;->$labelTextStyle:Landroidx/compose/ui/text/TextStyle;

    iput-object p6, p0, Landroidx/compose/material3/ChipKt$SelectableChip$2;->$leadingIcon:Lbm3;

    iput-object p7, p0, Landroidx/compose/material3/ChipKt$SelectableChip$2;->$avatar:Lbm3;

    iput-object p8, p0, Landroidx/compose/material3/ChipKt$SelectableChip$2;->$trailingIcon:Lbm3;

    iput p9, p0, Landroidx/compose/material3/ChipKt$SelectableChip$2;->$minHeight:F

    iput-object p10, p0, Landroidx/compose/material3/ChipKt$SelectableChip$2;->$paddingValues:Landroidx/compose/foundation/layout/PaddingValues;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 104
    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroidx/compose/material3/ChipKt$SelectableChip$2;->invoke(Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public final invoke(Landroidx/compose/runtime/Composer;I)V
    .locals 19

    move-object/from16 v0, p0

    move/from16 v1, p2

    and-int/lit8 v2, v1, 0x3

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    and-int/lit8 v3, v1, 0x1

    move-object/from16 v4, p1

    invoke-interface {v4, v2, v3}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, -0x1

    const-string v3, "androidx.compose.material3.SelectableChip.<anonymous> (Chip.kt:2019)"

    const v5, -0x3b02f76a

    invoke-static {v5, v1, v2, v3}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_1
    iget-object v1, v0, Landroidx/compose/material3/ChipKt$SelectableChip$2;->$colors:Landroidx/compose/material3/SelectableChipColors;

    iget-boolean v2, v0, Landroidx/compose/material3/ChipKt$SelectableChip$2;->$enabled:Z

    iget-boolean v3, v0, Landroidx/compose/material3/ChipKt$SelectableChip$2;->$selected:Z

    invoke-virtual {v1, v2, v3}, Landroidx/compose/material3/SelectableChipColors;->labelColor-WaAFU9c$material3(ZZ)J

    move-result-wide v6

    iget-object v1, v0, Landroidx/compose/material3/ChipKt$SelectableChip$2;->$colors:Landroidx/compose/material3/SelectableChipColors;

    iget-boolean v2, v0, Landroidx/compose/material3/ChipKt$SelectableChip$2;->$enabled:Z

    iget-boolean v3, v0, Landroidx/compose/material3/ChipKt$SelectableChip$2;->$selected:Z

    invoke-virtual {v1, v2, v3}, Landroidx/compose/material3/SelectableChipColors;->leadingIconContentColor-WaAFU9c$material3(ZZ)J

    move-result-wide v11

    iget-object v1, v0, Landroidx/compose/material3/ChipKt$SelectableChip$2;->$colors:Landroidx/compose/material3/SelectableChipColors;

    iget-boolean v2, v0, Landroidx/compose/material3/ChipKt$SelectableChip$2;->$enabled:Z

    iget-boolean v3, v0, Landroidx/compose/material3/ChipKt$SelectableChip$2;->$selected:Z

    invoke-virtual {v1, v2, v3}, Landroidx/compose/material3/SelectableChipColors;->trailingIconContentColor-WaAFU9c$material3(ZZ)J

    move-result-wide v13

    iget-object v4, v0, Landroidx/compose/material3/ChipKt$SelectableChip$2;->$label:Lbm3;

    iget-object v5, v0, Landroidx/compose/material3/ChipKt$SelectableChip$2;->$labelTextStyle:Landroidx/compose/ui/text/TextStyle;

    iget-object v8, v0, Landroidx/compose/material3/ChipKt$SelectableChip$2;->$leadingIcon:Lbm3;

    iget-object v9, v0, Landroidx/compose/material3/ChipKt$SelectableChip$2;->$avatar:Lbm3;

    iget-object v10, v0, Landroidx/compose/material3/ChipKt$SelectableChip$2;->$trailingIcon:Lbm3;

    iget v15, v0, Landroidx/compose/material3/ChipKt$SelectableChip$2;->$minHeight:F

    iget-object v0, v0, Landroidx/compose/material3/ChipKt$SelectableChip$2;->$paddingValues:Landroidx/compose/foundation/layout/PaddingValues;

    const/16 v18, 0x0

    move-object/from16 v17, p1

    move-object/from16 v16, v0

    invoke-static/range {v4 .. v18}, Landroidx/compose/material3/ChipKt;->access$AnimatingChipContent-fe0OD_I(Lbm3;Landroidx/compose/ui/text/TextStyle;JLbm3;Lbm3;Lbm3;JJFLandroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/runtime/Composer;I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_2
    return-void

    :cond_3
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    return-void
.end method
