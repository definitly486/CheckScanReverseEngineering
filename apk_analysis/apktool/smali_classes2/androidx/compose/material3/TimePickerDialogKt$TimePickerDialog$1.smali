.class final Landroidx/compose/material3/TimePickerDialogKt$TimePickerDialog$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material3/TimePickerDialogKt;->TimePickerDialog-FItCLgY(Lll3;Lbm3;Lbm3;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/window/DialogProperties;Lbm3;Lbm3;Landroidx/compose/ui/graphics/Shape;JLdm3;Landroidx/compose/runtime/Composer;II)V
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
.field final synthetic $confirmButton:Lbm3;
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

.field final synthetic $containerColor:J

.field final synthetic $content:Ldm3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldm3<",
            "Landroidx/compose/foundation/layout/ColumnScope;",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lj59;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $dismissButton:Lbm3;
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

.field final synthetic $modeToggleButton:Lbm3;
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

.field final synthetic $modifier:Landroidx/compose/ui/Modifier;

.field final synthetic $shape:Landroidx/compose/ui/graphics/Shape;

.field final synthetic $title:Lbm3;
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
.method public constructor <init>(Lbm3;Lbm3;Landroidx/compose/ui/Modifier;Lbm3;Lbm3;Landroidx/compose/ui/graphics/Shape;JLdm3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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
            "Landroidx/compose/ui/Modifier;",
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
            "Landroidx/compose/ui/graphics/Shape;",
            "J",
            "Ldm3<",
            "-",
            "Landroidx/compose/foundation/layout/ColumnScope;",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lj59;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/material3/TimePickerDialogKt$TimePickerDialog$1;->$confirmButton:Lbm3;

    iput-object p2, p0, Landroidx/compose/material3/TimePickerDialogKt$TimePickerDialog$1;->$title:Lbm3;

    iput-object p3, p0, Landroidx/compose/material3/TimePickerDialogKt$TimePickerDialog$1;->$modifier:Landroidx/compose/ui/Modifier;

    iput-object p4, p0, Landroidx/compose/material3/TimePickerDialogKt$TimePickerDialog$1;->$modeToggleButton:Lbm3;

    iput-object p5, p0, Landroidx/compose/material3/TimePickerDialogKt$TimePickerDialog$1;->$dismissButton:Lbm3;

    iput-object p6, p0, Landroidx/compose/material3/TimePickerDialogKt$TimePickerDialog$1;->$shape:Landroidx/compose/ui/graphics/Shape;

    iput-wide p7, p0, Landroidx/compose/material3/TimePickerDialogKt$TimePickerDialog$1;->$containerColor:J

    iput-object p9, p0, Landroidx/compose/material3/TimePickerDialogKt$TimePickerDialog$1;->$content:Ldm3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 72
    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroidx/compose/material3/TimePickerDialogKt$TimePickerDialog$1;->invoke(Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public final invoke(Landroidx/compose/runtime/Composer;I)V
    .locals 16

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

    move-object/from16 v13, p1

    invoke-interface {v13, v2, v3}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, -0x1

    const-string v3, "androidx.compose.material3.TimePickerDialog.<anonymous> (TimePickerDialog.kt:81)"

    const v4, 0x11a9a92e

    invoke-static {v4, v1, v2, v3}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_1
    iget-object v4, v0, Landroidx/compose/material3/TimePickerDialogKt$TimePickerDialog$1;->$confirmButton:Lbm3;

    iget-object v5, v0, Landroidx/compose/material3/TimePickerDialogKt$TimePickerDialog$1;->$title:Lbm3;

    iget-object v6, v0, Landroidx/compose/material3/TimePickerDialogKt$TimePickerDialog$1;->$modifier:Landroidx/compose/ui/Modifier;

    iget-object v7, v0, Landroidx/compose/material3/TimePickerDialogKt$TimePickerDialog$1;->$modeToggleButton:Lbm3;

    iget-object v8, v0, Landroidx/compose/material3/TimePickerDialogKt$TimePickerDialog$1;->$dismissButton:Lbm3;

    iget-object v9, v0, Landroidx/compose/material3/TimePickerDialogKt$TimePickerDialog$1;->$shape:Landroidx/compose/ui/graphics/Shape;

    iget-wide v10, v0, Landroidx/compose/material3/TimePickerDialogKt$TimePickerDialog$1;->$containerColor:J

    iget-object v12, v0, Landroidx/compose/material3/TimePickerDialogKt$TimePickerDialog$1;->$content:Ldm3;

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static/range {v4 .. v15}, Landroidx/compose/material3/TimePickerDialogKt;->TimePickerDialogLayout-3csKH6Y(Lbm3;Lbm3;Landroidx/compose/ui/Modifier;Lbm3;Lbm3;Landroidx/compose/ui/graphics/Shape;JLdm3;Landroidx/compose/runtime/Composer;II)V

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
