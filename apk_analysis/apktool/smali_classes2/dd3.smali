.class public final synthetic Ldd3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Lbm3;

.field public final synthetic c:Lbm3;

.field public final synthetic d:Lll3;

.field public final synthetic e:Landroidx/compose/ui/text/TextStyle;

.field public final synthetic f:F

.field public final synthetic g:F

.field public final synthetic h:F

.field public final synthetic i:F

.field public final synthetic j:F

.field public final synthetic k:Landroidx/compose/ui/Modifier;

.field public final synthetic l:Z

.field public final synthetic m:Landroidx/compose/ui/graphics/Shape;

.field public final synthetic n:J

.field public final synthetic o:J

.field public final synthetic p:Landroidx/compose/material3/FloatingActionButtonElevation;

.field public final synthetic q:Landroidx/compose/foundation/interaction/MutableInteractionSource;

.field public final synthetic r:I

.field public final synthetic s:I

.field public final synthetic t:I


# direct methods
.method public synthetic constructor <init>(Lbm3;Lbm3;Lll3;Landroidx/compose/ui/text/TextStyle;FFFFFLandroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;JJLandroidx/compose/material3/FloatingActionButtonElevation;Landroidx/compose/foundation/interaction/MutableInteractionSource;III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldd3;->b:Lbm3;

    iput-object p2, p0, Ldd3;->c:Lbm3;

    iput-object p3, p0, Ldd3;->d:Lll3;

    iput-object p4, p0, Ldd3;->e:Landroidx/compose/ui/text/TextStyle;

    iput p5, p0, Ldd3;->f:F

    iput p6, p0, Ldd3;->g:F

    iput p7, p0, Ldd3;->h:F

    iput p8, p0, Ldd3;->i:F

    iput p9, p0, Ldd3;->j:F

    iput-object p10, p0, Ldd3;->k:Landroidx/compose/ui/Modifier;

    iput-boolean p11, p0, Ldd3;->l:Z

    iput-object p12, p0, Ldd3;->m:Landroidx/compose/ui/graphics/Shape;

    iput-wide p13, p0, Ldd3;->n:J

    move-wide p1, p15

    iput-wide p1, p0, Ldd3;->o:J

    move-object/from16 p1, p17

    iput-object p1, p0, Ldd3;->p:Landroidx/compose/material3/FloatingActionButtonElevation;

    move-object/from16 p1, p18

    iput-object p1, p0, Ldd3;->q:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    move/from16 p1, p19

    iput p1, p0, Ldd3;->r:I

    move/from16 p1, p20

    iput p1, p0, Ldd3;->s:I

    move/from16 p1, p21

    iput p1, p0, Ldd3;->t:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v22, p1

    check-cast v22, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v23

    iget-object v1, v0, Ldd3;->b:Lbm3;

    iget-object v2, v0, Ldd3;->c:Lbm3;

    iget-object v3, v0, Ldd3;->d:Lll3;

    iget-object v4, v0, Ldd3;->e:Landroidx/compose/ui/text/TextStyle;

    iget v5, v0, Ldd3;->f:F

    iget v6, v0, Ldd3;->g:F

    iget v7, v0, Ldd3;->h:F

    iget v8, v0, Ldd3;->i:F

    iget v9, v0, Ldd3;->j:F

    iget-object v10, v0, Ldd3;->k:Landroidx/compose/ui/Modifier;

    iget-boolean v11, v0, Ldd3;->l:Z

    iget-object v12, v0, Ldd3;->m:Landroidx/compose/ui/graphics/Shape;

    iget-wide v13, v0, Ldd3;->n:J

    move-object v15, v1

    move-object/from16 v16, v2

    iget-wide v1, v0, Ldd3;->o:J

    move-wide/from16 v17, v1

    iget-object v1, v0, Ldd3;->p:Landroidx/compose/material3/FloatingActionButtonElevation;

    iget-object v2, v0, Ldd3;->q:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    move-object/from16 v19, v1

    iget v1, v0, Ldd3;->r:I

    move/from16 v20, v1

    iget v1, v0, Ldd3;->s:I

    iget v0, v0, Ldd3;->t:I

    move/from16 v21, v0

    move/from16 v24, v20

    move/from16 v20, v1

    move-object v1, v15

    move-wide/from16 v25, v17

    move-object/from16 v18, v2

    move-object/from16 v2, v16

    move-wide/from16 v15, v25

    move-object/from16 v17, v19

    move/from16 v19, v24

    invoke-static/range {v1 .. v23}, Landroidx/compose/material3/FloatingActionButtonKt;->e(Lbm3;Lbm3;Lll3;Landroidx/compose/ui/text/TextStyle;FFFFFLandroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;JJLandroidx/compose/material3/FloatingActionButtonElevation;Landroidx/compose/foundation/interaction/MutableInteractionSource;IIILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object v0

    return-object v0
.end method
