.class public final synthetic Lo12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Landroidx/compose/foundation/text/LegacyTextFieldState;

.field public final synthetic c:Landroidx/compose/ui/text/TextStyle;

.field public final synthetic d:I

.field public final synthetic e:I

.field public final synthetic f:Landroidx/compose/foundation/text/TextFieldScrollerPosition;

.field public final synthetic g:Landroidx/compose/ui/text/input/TextFieldValue;

.field public final synthetic h:Landroidx/compose/ui/text/input/VisualTransformation;

.field public final synthetic i:Landroidx/compose/ui/Modifier;

.field public final synthetic j:Landroidx/compose/ui/Modifier;

.field public final synthetic k:Landroidx/compose/ui/Modifier;

.field public final synthetic l:Landroidx/compose/ui/Modifier;

.field public final synthetic m:Landroidx/compose/foundation/relocation/BringIntoViewRequester;

.field public final synthetic n:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

.field public final synthetic o:Z

.field public final synthetic p:Z

.field public final synthetic q:Lnl3;

.field public final synthetic r:Landroidx/compose/ui/text/input/OffsetMapping;

.field public final synthetic s:Landroidx/compose/ui/unit/Density;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/foundation/text/LegacyTextFieldState;Landroidx/compose/ui/text/TextStyle;IILandroidx/compose/foundation/text/TextFieldScrollerPosition;Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/ui/text/input/VisualTransformation;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/relocation/BringIntoViewRequester;Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;ZZLnl3;Landroidx/compose/ui/text/input/OffsetMapping;Landroidx/compose/ui/unit/Density;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo12;->b:Landroidx/compose/foundation/text/LegacyTextFieldState;

    iput-object p2, p0, Lo12;->c:Landroidx/compose/ui/text/TextStyle;

    iput p3, p0, Lo12;->d:I

    iput p4, p0, Lo12;->e:I

    iput-object p5, p0, Lo12;->f:Landroidx/compose/foundation/text/TextFieldScrollerPosition;

    iput-object p6, p0, Lo12;->g:Landroidx/compose/ui/text/input/TextFieldValue;

    iput-object p7, p0, Lo12;->h:Landroidx/compose/ui/text/input/VisualTransformation;

    iput-object p8, p0, Lo12;->i:Landroidx/compose/ui/Modifier;

    iput-object p9, p0, Lo12;->j:Landroidx/compose/ui/Modifier;

    iput-object p10, p0, Lo12;->k:Landroidx/compose/ui/Modifier;

    iput-object p11, p0, Lo12;->l:Landroidx/compose/ui/Modifier;

    iput-object p12, p0, Lo12;->m:Landroidx/compose/foundation/relocation/BringIntoViewRequester;

    iput-object p13, p0, Lo12;->n:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    iput-boolean p14, p0, Lo12;->o:Z

    iput-boolean p15, p0, Lo12;->p:Z

    move-object/from16 p1, p16

    iput-object p1, p0, Lo12;->q:Lnl3;

    move-object/from16 p1, p17

    iput-object p1, p0, Lo12;->r:Landroidx/compose/ui/text/input/OffsetMapping;

    move-object/from16 p1, p18

    iput-object p1, p0, Lo12;->s:Landroidx/compose/ui/unit/Density;

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

    iget-object v1, v0, Lo12;->b:Landroidx/compose/foundation/text/LegacyTextFieldState;

    iget-object v2, v0, Lo12;->c:Landroidx/compose/ui/text/TextStyle;

    iget v3, v0, Lo12;->d:I

    iget v4, v0, Lo12;->e:I

    iget-object v5, v0, Lo12;->f:Landroidx/compose/foundation/text/TextFieldScrollerPosition;

    iget-object v6, v0, Lo12;->g:Landroidx/compose/ui/text/input/TextFieldValue;

    iget-object v7, v0, Lo12;->h:Landroidx/compose/ui/text/input/VisualTransformation;

    iget-object v8, v0, Lo12;->i:Landroidx/compose/ui/Modifier;

    iget-object v9, v0, Lo12;->j:Landroidx/compose/ui/Modifier;

    iget-object v10, v0, Lo12;->k:Landroidx/compose/ui/Modifier;

    iget-object v11, v0, Lo12;->l:Landroidx/compose/ui/Modifier;

    iget-object v12, v0, Lo12;->m:Landroidx/compose/foundation/relocation/BringIntoViewRequester;

    iget-object v13, v0, Lo12;->n:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    iget-boolean v14, v0, Lo12;->o:Z

    iget-boolean v15, v0, Lo12;->p:Z

    move-object/from16 v16, v1

    iget-object v1, v0, Lo12;->q:Lnl3;

    move-object/from16 v17, v1

    iget-object v1, v0, Lo12;->r:Landroidx/compose/ui/text/input/OffsetMapping;

    iget-object v0, v0, Lo12;->s:Landroidx/compose/ui/unit/Density;

    move-object/from16 v18, v17

    move-object/from16 v17, v1

    move-object/from16 v1, v16

    move-object/from16 v16, v18

    move-object/from16 v18, v0

    invoke-static/range {v1 .. v20}, Landroidx/compose/foundation/text/CoreTextFieldKt;->p(Landroidx/compose/foundation/text/LegacyTextFieldState;Landroidx/compose/ui/text/TextStyle;IILandroidx/compose/foundation/text/TextFieldScrollerPosition;Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/ui/text/input/VisualTransformation;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/relocation/BringIntoViewRequester;Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;ZZLnl3;Landroidx/compose/ui/text/input/OffsetMapping;Landroidx/compose/ui/unit/Density;Landroidx/compose/runtime/Composer;I)Lj59;

    move-result-object v0

    return-object v0
.end method
