.class public final synthetic Lel5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Landroidx/compose/foundation/interaction/InteractionSource;

.field public final synthetic c:J

.field public final synthetic d:Landroidx/compose/ui/graphics/Shape;

.field public final synthetic e:Lll3;

.field public final synthetic f:Lbm3;

.field public final synthetic g:I

.field public final synthetic h:Lll3;

.field public final synthetic i:Lbm3;

.field public final synthetic j:F

.field public final synthetic k:F

.field public final synthetic l:F

.field public final synthetic m:F

.field public final synthetic n:F

.field public final synthetic o:F

.field public final synthetic p:F

.field public final synthetic q:F

.field public final synthetic r:I

.field public final synthetic s:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/foundation/interaction/InteractionSource;JLandroidx/compose/ui/graphics/Shape;Lll3;Lbm3;ILll3;Lbm3;FFFFFFFFII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lel5;->b:Landroidx/compose/foundation/interaction/InteractionSource;

    iput-wide p2, p0, Lel5;->c:J

    iput-object p4, p0, Lel5;->d:Landroidx/compose/ui/graphics/Shape;

    iput-object p5, p0, Lel5;->e:Lll3;

    iput-object p6, p0, Lel5;->f:Lbm3;

    iput p7, p0, Lel5;->g:I

    iput-object p8, p0, Lel5;->h:Lll3;

    iput-object p9, p0, Lel5;->i:Lbm3;

    iput p10, p0, Lel5;->j:F

    iput p11, p0, Lel5;->k:F

    iput p12, p0, Lel5;->l:F

    iput p13, p0, Lel5;->m:F

    iput p14, p0, Lel5;->n:F

    iput p15, p0, Lel5;->o:F

    move/from16 p1, p16

    iput p1, p0, Lel5;->p:F

    move/from16 p1, p17

    iput p1, p0, Lel5;->q:F

    move/from16 p1, p18

    iput p1, p0, Lel5;->r:I

    move/from16 p1, p19

    iput p1, p0, Lel5;->s:I

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

    iget-object v1, v0, Lel5;->b:Landroidx/compose/foundation/interaction/InteractionSource;

    iget-wide v2, v0, Lel5;->c:J

    iget-object v4, v0, Lel5;->d:Landroidx/compose/ui/graphics/Shape;

    iget-object v5, v0, Lel5;->e:Lll3;

    iget-object v6, v0, Lel5;->f:Lbm3;

    iget v7, v0, Lel5;->g:I

    iget-object v8, v0, Lel5;->h:Lll3;

    iget-object v9, v0, Lel5;->i:Lbm3;

    iget v10, v0, Lel5;->j:F

    iget v11, v0, Lel5;->k:F

    iget v12, v0, Lel5;->l:F

    iget v13, v0, Lel5;->m:F

    iget v14, v0, Lel5;->n:F

    iget v15, v0, Lel5;->o:F

    move-object/from16 v16, v1

    iget v1, v0, Lel5;->p:F

    move/from16 v17, v1

    iget v1, v0, Lel5;->q:F

    move/from16 v18, v1

    iget v1, v0, Lel5;->r:I

    iget v0, v0, Lel5;->s:I

    move/from16 v19, v18

    move/from16 v18, v1

    move-object/from16 v1, v16

    move/from16 v16, v17

    move/from16 v17, v19

    move/from16 v19, v0

    invoke-static/range {v1 .. v21}, Landroidx/compose/material3/NavigationItemKt;->r(Landroidx/compose/foundation/interaction/InteractionSource;JLandroidx/compose/ui/graphics/Shape;Lll3;Lbm3;ILll3;Lbm3;FFFFFFFFIILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object v0

    return-object v0
.end method
