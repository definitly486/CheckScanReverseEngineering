.class public final synthetic Lvo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Landroidx/compose/ui/Modifier;

.field public final synthetic c:Landroidx/compose/material3/internal/FloatProducer;

.field public final synthetic d:J

.field public final synthetic e:J

.field public final synthetic f:J

.field public final synthetic g:J

.field public final synthetic h:Lbm3;

.field public final synthetic i:Landroidx/compose/ui/text/TextStyle;

.field public final synthetic j:Lbm3;

.field public final synthetic k:Landroidx/compose/ui/text/TextStyle;

.field public final synthetic l:Lll3;

.field public final synthetic m:Landroidx/compose/foundation/layout/Arrangement$Vertical;

.field public final synthetic n:Landroidx/compose/ui/Alignment$Horizontal;

.field public final synthetic o:I

.field public final synthetic p:Z

.field public final synthetic q:Lbm3;

.field public final synthetic r:Lbm3;

.field public final synthetic s:F

.field public final synthetic t:I

.field public final synthetic u:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;Landroidx/compose/material3/internal/FloatProducer;JJJJLbm3;Landroidx/compose/ui/text/TextStyle;Lbm3;Landroidx/compose/ui/text/TextStyle;Lll3;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;IZLbm3;Lbm3;FII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lvo;->b:Landroidx/compose/ui/Modifier;

    iput-object p2, p0, Lvo;->c:Landroidx/compose/material3/internal/FloatProducer;

    iput-wide p3, p0, Lvo;->d:J

    iput-wide p5, p0, Lvo;->e:J

    iput-wide p7, p0, Lvo;->f:J

    iput-wide p9, p0, Lvo;->g:J

    iput-object p11, p0, Lvo;->h:Lbm3;

    iput-object p12, p0, Lvo;->i:Landroidx/compose/ui/text/TextStyle;

    iput-object p13, p0, Lvo;->j:Lbm3;

    iput-object p14, p0, Lvo;->k:Landroidx/compose/ui/text/TextStyle;

    iput-object p15, p0, Lvo;->l:Lll3;

    move-object/from16 p1, p16

    iput-object p1, p0, Lvo;->m:Landroidx/compose/foundation/layout/Arrangement$Vertical;

    move-object/from16 p1, p17

    iput-object p1, p0, Lvo;->n:Landroidx/compose/ui/Alignment$Horizontal;

    move/from16 p1, p18

    iput p1, p0, Lvo;->o:I

    move/from16 p1, p19

    iput-boolean p1, p0, Lvo;->p:Z

    move-object/from16 p1, p20

    iput-object p1, p0, Lvo;->q:Lbm3;

    move-object/from16 p1, p21

    iput-object p1, p0, Lvo;->r:Lbm3;

    move/from16 p1, p22

    iput p1, p0, Lvo;->s:F

    move/from16 p1, p23

    iput p1, p0, Lvo;->t:I

    move/from16 p1, p24

    iput p1, p0, Lvo;->u:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v25, p1

    check-cast v25, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v26

    iget-object v1, v0, Lvo;->b:Landroidx/compose/ui/Modifier;

    iget-object v2, v0, Lvo;->c:Landroidx/compose/material3/internal/FloatProducer;

    iget-wide v3, v0, Lvo;->d:J

    iget-wide v5, v0, Lvo;->e:J

    iget-wide v7, v0, Lvo;->f:J

    iget-wide v9, v0, Lvo;->g:J

    iget-object v11, v0, Lvo;->h:Lbm3;

    iget-object v12, v0, Lvo;->i:Landroidx/compose/ui/text/TextStyle;

    iget-object v13, v0, Lvo;->j:Lbm3;

    iget-object v14, v0, Lvo;->k:Landroidx/compose/ui/text/TextStyle;

    iget-object v15, v0, Lvo;->l:Lll3;

    move-object/from16 v16, v1

    iget-object v1, v0, Lvo;->m:Landroidx/compose/foundation/layout/Arrangement$Vertical;

    move-object/from16 v17, v1

    iget-object v1, v0, Lvo;->n:Landroidx/compose/ui/Alignment$Horizontal;

    move-object/from16 v18, v1

    iget v1, v0, Lvo;->o:I

    move/from16 v19, v1

    iget-boolean v1, v0, Lvo;->p:Z

    move/from16 v20, v1

    iget-object v1, v0, Lvo;->q:Lbm3;

    move-object/from16 v21, v1

    iget-object v1, v0, Lvo;->r:Lbm3;

    move-object/from16 v22, v1

    iget v1, v0, Lvo;->s:F

    move/from16 v23, v1

    iget v1, v0, Lvo;->t:I

    iget v0, v0, Lvo;->u:I

    move/from16 v24, v23

    move/from16 v23, v1

    move-object/from16 v1, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v18

    move/from16 v18, v19

    move/from16 v19, v20

    move-object/from16 v20, v21

    move-object/from16 v21, v22

    move/from16 v22, v24

    move/from16 v24, v0

    invoke-static/range {v1 .. v26}, Landroidx/compose/material3/AppBarKt;->B(Landroidx/compose/ui/Modifier;Landroidx/compose/material3/internal/FloatProducer;JJJJLbm3;Landroidx/compose/ui/text/TextStyle;Lbm3;Landroidx/compose/ui/text/TextStyle;Lll3;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;IZLbm3;Lbm3;FIILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object v0

    return-object v0
.end method
