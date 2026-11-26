.class public final synthetic Lbg0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Landroidx/compose/foundation/text/input/TextFieldDecorator;

.field public final synthetic c:Landroidx/compose/foundation/text/input/TextFieldLineLimits;

.field public final synthetic d:Landroidx/compose/foundation/text/input/internal/TextLayoutState;

.field public final synthetic e:Landroidx/compose/ui/text/TextStyle;

.field public final synthetic f:Z

.field public final synthetic g:Z

.field public final synthetic h:Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;

.field public final synthetic i:Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;

.field public final synthetic j:Landroidx/compose/ui/graphics/Brush;

.field public final synthetic k:Z

.field public final synthetic l:Z

.field public final synthetic m:Landroidx/compose/foundation/ScrollState;

.field public final synthetic n:Landroidx/compose/foundation/gestures/Orientation;

.field public final synthetic o:Landroidx/compose/foundation/text/contextmenu/modifier/ToolbarRequesterImpl;

.field public final synthetic p:Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviors;

.field public final synthetic q:Z

.field public final synthetic r:Lbm3;

.field public final synthetic s:Landroidx/compose/foundation/text/KeyboardOptions;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/foundation/text/input/TextFieldDecorator;Landroidx/compose/foundation/text/input/TextFieldLineLimits;Landroidx/compose/foundation/text/input/internal/TextLayoutState;Landroidx/compose/ui/text/TextStyle;ZZLandroidx/compose/foundation/text/input/internal/TransformedTextFieldState;Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;Landroidx/compose/ui/graphics/Brush;ZZLandroidx/compose/foundation/ScrollState;Landroidx/compose/foundation/gestures/Orientation;Landroidx/compose/foundation/text/contextmenu/modifier/ToolbarRequesterImpl;Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviors;ZLbm3;Landroidx/compose/foundation/text/KeyboardOptions;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbg0;->b:Landroidx/compose/foundation/text/input/TextFieldDecorator;

    iput-object p2, p0, Lbg0;->c:Landroidx/compose/foundation/text/input/TextFieldLineLimits;

    iput-object p3, p0, Lbg0;->d:Landroidx/compose/foundation/text/input/internal/TextLayoutState;

    iput-object p4, p0, Lbg0;->e:Landroidx/compose/ui/text/TextStyle;

    iput-boolean p5, p0, Lbg0;->f:Z

    iput-boolean p6, p0, Lbg0;->g:Z

    iput-object p7, p0, Lbg0;->h:Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;

    iput-object p8, p0, Lbg0;->i:Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;

    iput-object p9, p0, Lbg0;->j:Landroidx/compose/ui/graphics/Brush;

    iput-boolean p10, p0, Lbg0;->k:Z

    iput-boolean p11, p0, Lbg0;->l:Z

    iput-object p12, p0, Lbg0;->m:Landroidx/compose/foundation/ScrollState;

    iput-object p13, p0, Lbg0;->n:Landroidx/compose/foundation/gestures/Orientation;

    iput-object p14, p0, Lbg0;->o:Landroidx/compose/foundation/text/contextmenu/modifier/ToolbarRequesterImpl;

    iput-object p15, p0, Lbg0;->p:Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviors;

    move/from16 p1, p16

    iput-boolean p1, p0, Lbg0;->q:Z

    move-object/from16 p1, p17

    iput-object p1, p0, Lbg0;->r:Lbm3;

    move-object/from16 p1, p18

    iput-object p1, p0, Lbg0;->s:Landroidx/compose/foundation/text/KeyboardOptions;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v19, p1

    check-cast v19, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v20

    iget-object v1, v0, Lbg0;->b:Landroidx/compose/foundation/text/input/TextFieldDecorator;

    iget-object v2, v0, Lbg0;->c:Landroidx/compose/foundation/text/input/TextFieldLineLimits;

    iget-object v3, v0, Lbg0;->d:Landroidx/compose/foundation/text/input/internal/TextLayoutState;

    iget-object v4, v0, Lbg0;->e:Landroidx/compose/ui/text/TextStyle;

    iget-boolean v5, v0, Lbg0;->f:Z

    iget-boolean v6, v0, Lbg0;->g:Z

    iget-object v7, v0, Lbg0;->h:Landroidx/compose/foundation/text/input/internal/TransformedTextFieldState;

    iget-object v8, v0, Lbg0;->i:Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;

    iget-object v9, v0, Lbg0;->j:Landroidx/compose/ui/graphics/Brush;

    iget-boolean v10, v0, Lbg0;->k:Z

    iget-boolean v11, v0, Lbg0;->l:Z

    iget-object v12, v0, Lbg0;->m:Landroidx/compose/foundation/ScrollState;

    iget-object v13, v0, Lbg0;->n:Landroidx/compose/foundation/gestures/Orientation;

    iget-object v14, v0, Lbg0;->o:Landroidx/compose/foundation/text/contextmenu/modifier/ToolbarRequesterImpl;

    iget-object v15, v0, Lbg0;->p:Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviors;

    move-object/from16 v16, v1

    iget-boolean v1, v0, Lbg0;->q:Z

    move/from16 v17, v1

    iget-object v1, v0, Lbg0;->r:Lbm3;

    iget-object v0, v0, Lbg0;->s:Landroidx/compose/foundation/text/KeyboardOptions;

    move/from16 v18, v17

    move-object/from16 v17, v1

    move-object/from16 v1, v16

    move/from16 v16, v18

    move-object/from16 v18, v0

    invoke-static/range {v1 .. v20}, Landroidx/compose/foundation/text/BasicTextFieldKt;->h(Landroidx/compose/foundation/text/input/TextFieldDecorator;Landroidx/compose/foundation/text/input/TextFieldLineLimits;Landroidx/compose/foundation/text/input/internal/TextLayoutState;Landroidx/compose/ui/text/TextStyle;ZZLandroidx/compose/foundation/text/input/internal/TransformedTextFieldState;Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;Landroidx/compose/ui/graphics/Brush;ZZLandroidx/compose/foundation/ScrollState;Landroidx/compose/foundation/gestures/Orientation;Landroidx/compose/foundation/text/contextmenu/modifier/ToolbarRequesterImpl;Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviors;ZLbm3;Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/runtime/Composer;I)Lj59;

    move-result-object v0

    return-object v0
.end method
