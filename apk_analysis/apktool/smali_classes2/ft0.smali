.class public final synthetic Lft0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Ldm3;

.field public final synthetic c:Landroidx/compose/ui/Modifier;

.field public final synthetic d:Landroidx/compose/material3/BottomSheetScaffoldState;

.field public final synthetic e:F

.field public final synthetic f:F

.field public final synthetic g:Landroidx/compose/ui/graphics/Shape;

.field public final synthetic h:J

.field public final synthetic i:J

.field public final synthetic j:F

.field public final synthetic k:F

.field public final synthetic l:Lbm3;

.field public final synthetic m:Z

.field public final synthetic n:Lbm3;

.field public final synthetic o:Ldm3;

.field public final synthetic p:J

.field public final synthetic q:J

.field public final synthetic r:Ldm3;

.field public final synthetic s:I

.field public final synthetic t:I

.field public final synthetic u:I


# direct methods
.method public synthetic constructor <init>(Ldm3;Landroidx/compose/ui/Modifier;Landroidx/compose/material3/BottomSheetScaffoldState;FFLandroidx/compose/ui/graphics/Shape;JJFFLbm3;ZLbm3;Ldm3;JJLdm3;III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lft0;->b:Ldm3;

    iput-object p2, p0, Lft0;->c:Landroidx/compose/ui/Modifier;

    iput-object p3, p0, Lft0;->d:Landroidx/compose/material3/BottomSheetScaffoldState;

    iput p4, p0, Lft0;->e:F

    iput p5, p0, Lft0;->f:F

    iput-object p6, p0, Lft0;->g:Landroidx/compose/ui/graphics/Shape;

    iput-wide p7, p0, Lft0;->h:J

    iput-wide p9, p0, Lft0;->i:J

    iput p11, p0, Lft0;->j:F

    iput p12, p0, Lft0;->k:F

    iput-object p13, p0, Lft0;->l:Lbm3;

    iput-boolean p14, p0, Lft0;->m:Z

    iput-object p15, p0, Lft0;->n:Lbm3;

    move-object/from16 p1, p16

    iput-object p1, p0, Lft0;->o:Ldm3;

    move-wide/from16 p1, p17

    iput-wide p1, p0, Lft0;->p:J

    move-wide/from16 p1, p19

    iput-wide p1, p0, Lft0;->q:J

    move-object/from16 p1, p21

    iput-object p1, p0, Lft0;->r:Ldm3;

    move/from16 p1, p22

    iput p1, p0, Lft0;->s:I

    move/from16 p1, p23

    iput p1, p0, Lft0;->t:I

    move/from16 p1, p24

    iput p1, p0, Lft0;->u:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 30

    move-object/from16 v0, p0

    move-object/from16 v25, p1

    check-cast v25, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v26

    iget-object v1, v0, Lft0;->b:Ldm3;

    iget-object v2, v0, Lft0;->c:Landroidx/compose/ui/Modifier;

    iget-object v3, v0, Lft0;->d:Landroidx/compose/material3/BottomSheetScaffoldState;

    iget v4, v0, Lft0;->e:F

    iget v5, v0, Lft0;->f:F

    iget-object v6, v0, Lft0;->g:Landroidx/compose/ui/graphics/Shape;

    iget-wide v7, v0, Lft0;->h:J

    iget-wide v9, v0, Lft0;->i:J

    iget v11, v0, Lft0;->j:F

    iget v12, v0, Lft0;->k:F

    iget-object v13, v0, Lft0;->l:Lbm3;

    iget-boolean v14, v0, Lft0;->m:Z

    iget-object v15, v0, Lft0;->n:Lbm3;

    move-object/from16 v16, v1

    iget-object v1, v0, Lft0;->o:Ldm3;

    move-object/from16 v18, v1

    move-object/from16 v17, v2

    iget-wide v1, v0, Lft0;->p:J

    move-wide/from16 v19, v1

    iget-wide v1, v0, Lft0;->q:J

    move-wide/from16 v21, v1

    iget-object v1, v0, Lft0;->r:Ldm3;

    iget v2, v0, Lft0;->s:I

    move-object/from16 v23, v1

    iget v1, v0, Lft0;->t:I

    iget v0, v0, Lft0;->u:I

    move/from16 v24, v0

    move-object/from16 v27, v23

    move/from16 v23, v1

    move-object/from16 v1, v16

    move-object/from16 v16, v18

    move-wide/from16 v28, v21

    move/from16 v22, v2

    move-object/from16 v2, v17

    move-wide/from16 v17, v19

    move-wide/from16 v19, v28

    move-object/from16 v21, v27

    invoke-static/range {v1 .. v26}, Landroidx/compose/material3/BottomSheetScaffoldKt;->d(Ldm3;Landroidx/compose/ui/Modifier;Landroidx/compose/material3/BottomSheetScaffoldState;FFLandroidx/compose/ui/graphics/Shape;JJFFLbm3;ZLbm3;Ldm3;JJLdm3;IIILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object v0

    return-object v0
.end method
