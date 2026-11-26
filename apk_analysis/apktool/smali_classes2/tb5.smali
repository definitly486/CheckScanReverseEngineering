.class public final synthetic Ltb5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Lll3;

.field public final synthetic c:Landroidx/compose/ui/Modifier;

.field public final synthetic d:Landroidx/compose/material3/SheetState;

.field public final synthetic e:F

.field public final synthetic f:Z

.field public final synthetic g:Landroidx/compose/ui/graphics/Shape;

.field public final synthetic h:J

.field public final synthetic i:J

.field public final synthetic j:F

.field public final synthetic k:J

.field public final synthetic l:Lbm3;

.field public final synthetic m:Lbm3;

.field public final synthetic n:Landroidx/compose/material3/ModalBottomSheetProperties;

.field public final synthetic o:Ldm3;

.field public final synthetic p:I

.field public final synthetic q:I

.field public final synthetic r:I


# direct methods
.method public synthetic constructor <init>(Lll3;Landroidx/compose/ui/Modifier;Landroidx/compose/material3/SheetState;FZLandroidx/compose/ui/graphics/Shape;JJFJLbm3;Lbm3;Landroidx/compose/material3/ModalBottomSheetProperties;Ldm3;III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltb5;->b:Lll3;

    iput-object p2, p0, Ltb5;->c:Landroidx/compose/ui/Modifier;

    iput-object p3, p0, Ltb5;->d:Landroidx/compose/material3/SheetState;

    iput p4, p0, Ltb5;->e:F

    iput-boolean p5, p0, Ltb5;->f:Z

    iput-object p6, p0, Ltb5;->g:Landroidx/compose/ui/graphics/Shape;

    iput-wide p7, p0, Ltb5;->h:J

    iput-wide p9, p0, Ltb5;->i:J

    iput p11, p0, Ltb5;->j:F

    iput-wide p12, p0, Ltb5;->k:J

    iput-object p14, p0, Ltb5;->l:Lbm3;

    iput-object p15, p0, Ltb5;->m:Lbm3;

    move-object/from16 p1, p16

    iput-object p1, p0, Ltb5;->n:Landroidx/compose/material3/ModalBottomSheetProperties;

    move-object/from16 p1, p17

    iput-object p1, p0, Ltb5;->o:Ldm3;

    move/from16 p1, p18

    iput p1, p0, Ltb5;->p:I

    move/from16 p1, p19

    iput p1, p0, Ltb5;->q:I

    move/from16 p1, p20

    iput p1, p0, Ltb5;->r:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v21, p1

    check-cast v21, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v22

    iget-object v1, v0, Ltb5;->b:Lll3;

    iget-object v2, v0, Ltb5;->c:Landroidx/compose/ui/Modifier;

    iget-object v3, v0, Ltb5;->d:Landroidx/compose/material3/SheetState;

    iget v4, v0, Ltb5;->e:F

    iget-boolean v5, v0, Ltb5;->f:Z

    iget-object v6, v0, Ltb5;->g:Landroidx/compose/ui/graphics/Shape;

    iget-wide v7, v0, Ltb5;->h:J

    iget-wide v9, v0, Ltb5;->i:J

    iget v11, v0, Ltb5;->j:F

    iget-wide v12, v0, Ltb5;->k:J

    iget-object v14, v0, Ltb5;->l:Lbm3;

    iget-object v15, v0, Ltb5;->m:Lbm3;

    move-object/from16 v16, v1

    iget-object v1, v0, Ltb5;->n:Landroidx/compose/material3/ModalBottomSheetProperties;

    move-object/from16 v17, v1

    iget-object v1, v0, Ltb5;->o:Ldm3;

    move-object/from16 v18, v1

    iget v1, v0, Ltb5;->p:I

    move/from16 v19, v1

    iget v1, v0, Ltb5;->q:I

    iget v0, v0, Ltb5;->r:I

    move/from16 v20, v19

    move/from16 v19, v1

    move-object/from16 v1, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v18

    move/from16 v18, v20

    move/from16 v20, v0

    invoke-static/range {v1 .. v22}, Landroidx/compose/material3/ModalBottomSheetKt;->c(Lll3;Landroidx/compose/ui/Modifier;Landroidx/compose/material3/SheetState;FZLandroidx/compose/ui/graphics/Shape;JJFJLbm3;Lbm3;Landroidx/compose/material3/ModalBottomSheetProperties;Ldm3;IIILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object v0

    return-object v0
.end method
