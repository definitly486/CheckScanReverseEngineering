.class final Landroidx/compose/material3/MaterialThemeKt$MaterialExpressiveTheme$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material3/MaterialThemeKt;->MaterialExpressiveTheme(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/MotionScheme;Landroidx/compose/material3/Shapes;Landroidx/compose/material3/Typography;Lbm3;Landroidx/compose/runtime/Composer;II)V
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
.field final synthetic $colorScheme:Landroidx/compose/material3/ColorScheme;

.field final synthetic $content:Lbm3;
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

.field final synthetic $motionScheme:Landroidx/compose/material3/MotionScheme;

.field final synthetic $shapes:Landroidx/compose/material3/Shapes;

.field final synthetic $typography:Landroidx/compose/material3/Typography;


# direct methods
.method public constructor <init>(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/MotionScheme;Landroidx/compose/material3/Shapes;Landroidx/compose/material3/Typography;Lbm3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/material3/ColorScheme;",
            "Landroidx/compose/material3/MotionScheme;",
            "Landroidx/compose/material3/Shapes;",
            "Landroidx/compose/material3/Typography;",
            "Lbm3<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lj59;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/material3/MaterialThemeKt$MaterialExpressiveTheme$1;->$colorScheme:Landroidx/compose/material3/ColorScheme;

    iput-object p2, p0, Landroidx/compose/material3/MaterialThemeKt$MaterialExpressiveTheme$1;->$motionScheme:Landroidx/compose/material3/MotionScheme;

    iput-object p3, p0, Landroidx/compose/material3/MaterialThemeKt$MaterialExpressiveTheme$1;->$shapes:Landroidx/compose/material3/Shapes;

    iput-object p4, p0, Landroidx/compose/material3/MaterialThemeKt$MaterialExpressiveTheme$1;->$typography:Landroidx/compose/material3/Typography;

    iput-object p5, p0, Landroidx/compose/material3/MaterialThemeKt$MaterialExpressiveTheme$1;->$content:Lbm3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 140
    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroidx/compose/material3/MaterialThemeKt$MaterialExpressiveTheme$1;->invoke(Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public final invoke(Landroidx/compose/runtime/Composer;I)V
    .locals 28

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

    move-object/from16 v9, p1

    invoke-interface {v9, v2, v3}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, -0x1

    const-string v3, "androidx.compose.material3.MaterialExpressiveTheme.<anonymous> (MaterialTheme.kt:201)"

    const v4, 0x5b8825f8

    invoke-static {v4, v1, v2, v3}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_1
    iget-object v1, v0, Landroidx/compose/material3/MaterialThemeKt$MaterialExpressiveTheme$1;->$colorScheme:Landroidx/compose/material3/ColorScheme;

    if-nez v1, :cond_2

    invoke-static {}, Landroidx/compose/material3/ColorSchemeKt;->expressiveLightColorScheme()Landroidx/compose/material3/ColorScheme;

    move-result-object v1

    :cond_2
    move-object v4, v1

    iget-object v1, v0, Landroidx/compose/material3/MaterialThemeKt$MaterialExpressiveTheme$1;->$motionScheme:Landroidx/compose/material3/MotionScheme;

    if-nez v1, :cond_3

    sget-object v1, Landroidx/compose/material3/MotionScheme;->Companion:Landroidx/compose/material3/MotionScheme$Companion;

    invoke-virtual {v1}, Landroidx/compose/material3/MotionScheme$Companion;->expressive$material3()Landroidx/compose/material3/MotionScheme;

    move-result-object v1

    :cond_3
    move-object v5, v1

    iget-object v1, v0, Landroidx/compose/material3/MaterialThemeKt$MaterialExpressiveTheme$1;->$shapes:Landroidx/compose/material3/Shapes;

    if-nez v1, :cond_4

    new-instance v10, Landroidx/compose/material3/Shapes;

    const/16 v16, 0x1f

    const/16 v17, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-direct/range {v10 .. v17}, Landroidx/compose/material3/Shapes;-><init>(Landroidx/compose/foundation/shape/CornerBasedShape;Landroidx/compose/foundation/shape/CornerBasedShape;Landroidx/compose/foundation/shape/CornerBasedShape;Landroidx/compose/foundation/shape/CornerBasedShape;Landroidx/compose/foundation/shape/CornerBasedShape;ILjh2;)V

    move-object v6, v10

    goto :goto_1

    :cond_4
    move-object v6, v1

    :goto_1
    iget-object v1, v0, Landroidx/compose/material3/MaterialThemeKt$MaterialExpressiveTheme$1;->$typography:Landroidx/compose/material3/Typography;

    if-nez v1, :cond_5

    new-instance v10, Landroidx/compose/material3/Typography;

    const/16 v26, 0x7fff

    const/16 v27, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    invoke-direct/range {v10 .. v27}, Landroidx/compose/material3/Typography;-><init>(Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;ILjh2;)V

    move-object v7, v10

    goto :goto_2

    :cond_5
    move-object v7, v1

    :goto_2
    iget-object v8, v0, Landroidx/compose/material3/MaterialThemeKt$MaterialExpressiveTheme$1;->$content:Lbm3;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static/range {v4 .. v11}, Landroidx/compose/material3/MaterialThemeKt;->MaterialTheme(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/MotionScheme;Landroidx/compose/material3/Shapes;Landroidx/compose/material3/Typography;Lbm3;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_6
    return-void

    :cond_7
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    return-void
.end method
