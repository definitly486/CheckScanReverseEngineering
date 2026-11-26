.class public final synthetic Lfc5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Lll3;

.field public final synthetic c:Landroidx/compose/ui/Modifier;

.field public final synthetic d:Landroidx/compose/material3/SheetState;

.field public final synthetic e:F

.field public final synthetic f:Landroidx/compose/ui/graphics/Shape;

.field public final synthetic g:J

.field public final synthetic h:J

.field public final synthetic i:F

.field public final synthetic j:J

.field public final synthetic k:Lbm3;

.field public final synthetic l:Landroidx/compose/foundation/layout/WindowInsets;

.field public final synthetic m:Landroidx/compose/material3/ModalBottomSheetProperties;

.field public final synthetic n:Ldm3;

.field public final synthetic o:I

.field public final synthetic p:I

.field public final synthetic q:I


# direct methods
.method public synthetic constructor <init>(Lll3;Landroidx/compose/ui/Modifier;Landroidx/compose/material3/SheetState;FLandroidx/compose/ui/graphics/Shape;JJFJLbm3;Landroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/material3/ModalBottomSheetProperties;Ldm3;III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfc5;->b:Lll3;

    iput-object p2, p0, Lfc5;->c:Landroidx/compose/ui/Modifier;

    iput-object p3, p0, Lfc5;->d:Landroidx/compose/material3/SheetState;

    iput p4, p0, Lfc5;->e:F

    iput-object p5, p0, Lfc5;->f:Landroidx/compose/ui/graphics/Shape;

    iput-wide p6, p0, Lfc5;->g:J

    iput-wide p8, p0, Lfc5;->h:J

    iput p10, p0, Lfc5;->i:F

    iput-wide p11, p0, Lfc5;->j:J

    iput-object p13, p0, Lfc5;->k:Lbm3;

    iput-object p14, p0, Lfc5;->l:Landroidx/compose/foundation/layout/WindowInsets;

    iput-object p15, p0, Lfc5;->m:Landroidx/compose/material3/ModalBottomSheetProperties;

    move-object/from16 p1, p16

    iput-object p1, p0, Lfc5;->n:Ldm3;

    move/from16 p1, p17

    iput p1, p0, Lfc5;->o:I

    move/from16 p1, p18

    iput p1, p0, Lfc5;->p:I

    move/from16 p1, p19

    iput p1, p0, Lfc5;->q:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v20, p1

    check-cast v20, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v21

    iget-object v1, v0, Lfc5;->b:Lll3;

    iget-object v2, v0, Lfc5;->c:Landroidx/compose/ui/Modifier;

    iget-object v3, v0, Lfc5;->d:Landroidx/compose/material3/SheetState;

    iget v4, v0, Lfc5;->e:F

    iget-object v5, v0, Lfc5;->f:Landroidx/compose/ui/graphics/Shape;

    iget-wide v6, v0, Lfc5;->g:J

    iget-wide v8, v0, Lfc5;->h:J

    iget v10, v0, Lfc5;->i:F

    iget-wide v11, v0, Lfc5;->j:J

    iget-object v13, v0, Lfc5;->k:Lbm3;

    iget-object v14, v0, Lfc5;->l:Landroidx/compose/foundation/layout/WindowInsets;

    iget-object v15, v0, Lfc5;->m:Landroidx/compose/material3/ModalBottomSheetProperties;

    move-object/from16 v16, v1

    iget-object v1, v0, Lfc5;->n:Ldm3;

    move-object/from16 v17, v1

    iget v1, v0, Lfc5;->o:I

    move/from16 v18, v1

    iget v1, v0, Lfc5;->p:I

    iget v0, v0, Lfc5;->q:I

    move/from16 v19, v18

    move/from16 v18, v1

    move-object/from16 v1, v16

    move-object/from16 v16, v17

    move/from16 v17, v19

    move/from16 v19, v0

    invoke-static/range {v1 .. v21}, Landroidx/compose/material3/ModalBottomSheet_androidKt;->b(Lll3;Landroidx/compose/ui/Modifier;Landroidx/compose/material3/SheetState;FLandroidx/compose/ui/graphics/Shape;JJFJLbm3;Landroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/material3/ModalBottomSheetProperties;Ldm3;IIILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object v0

    return-object v0
.end method
