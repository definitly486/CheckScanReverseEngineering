.class public final synthetic Lxk5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Z

.field public final synthetic c:Lll3;

.field public final synthetic d:Lbm3;

.field public final synthetic e:Landroidx/compose/ui/graphics/Shape;

.field public final synthetic f:F

.field public final synthetic g:Landroidx/compose/ui/text/TextStyle;

.field public final synthetic h:Landroidx/compose/ui/text/TextStyle;

.field public final synthetic i:F

.field public final synthetic j:F

.field public final synthetic k:F

.field public final synthetic l:F

.field public final synthetic m:F

.field public final synthetic n:F

.field public final synthetic o:F

.field public final synthetic p:F

.field public final synthetic q:Landroidx/compose/material3/NavigationItemColors;

.field public final synthetic r:Landroidx/compose/ui/Modifier;

.field public final synthetic s:Z

.field public final synthetic t:Lbm3;

.field public final synthetic u:I

.field public final synthetic v:Landroidx/compose/foundation/interaction/MutableInteractionSource;

.field public final synthetic w:I

.field public final synthetic x:I

.field public final synthetic y:I


# direct methods
.method public synthetic constructor <init>(ZLll3;Lbm3;Landroidx/compose/ui/graphics/Shape;FLandroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;FFFFFFFFLandroidx/compose/material3/NavigationItemColors;Landroidx/compose/ui/Modifier;ZLbm3;ILandroidx/compose/foundation/interaction/MutableInteractionSource;III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lxk5;->b:Z

    iput-object p2, p0, Lxk5;->c:Lll3;

    iput-object p3, p0, Lxk5;->d:Lbm3;

    iput-object p4, p0, Lxk5;->e:Landroidx/compose/ui/graphics/Shape;

    iput p5, p0, Lxk5;->f:F

    iput-object p6, p0, Lxk5;->g:Landroidx/compose/ui/text/TextStyle;

    iput-object p7, p0, Lxk5;->h:Landroidx/compose/ui/text/TextStyle;

    iput p8, p0, Lxk5;->i:F

    iput p9, p0, Lxk5;->j:F

    iput p10, p0, Lxk5;->k:F

    iput p11, p0, Lxk5;->l:F

    iput p12, p0, Lxk5;->m:F

    iput p13, p0, Lxk5;->n:F

    iput p14, p0, Lxk5;->o:F

    iput p15, p0, Lxk5;->p:F

    move-object/from16 p1, p16

    iput-object p1, p0, Lxk5;->q:Landroidx/compose/material3/NavigationItemColors;

    move-object/from16 p1, p17

    iput-object p1, p0, Lxk5;->r:Landroidx/compose/ui/Modifier;

    move/from16 p1, p18

    iput-boolean p1, p0, Lxk5;->s:Z

    move-object/from16 p1, p19

    iput-object p1, p0, Lxk5;->t:Lbm3;

    move/from16 p1, p20

    iput p1, p0, Lxk5;->u:I

    move-object/from16 p1, p21

    iput-object p1, p0, Lxk5;->v:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    move/from16 p1, p22

    iput p1, p0, Lxk5;->w:I

    move/from16 p1, p23

    iput p1, p0, Lxk5;->x:I

    move/from16 p1, p24

    iput p1, p0, Lxk5;->y:I

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

    iget-boolean v1, v0, Lxk5;->b:Z

    iget-object v2, v0, Lxk5;->c:Lll3;

    iget-object v3, v0, Lxk5;->d:Lbm3;

    iget-object v4, v0, Lxk5;->e:Landroidx/compose/ui/graphics/Shape;

    iget v5, v0, Lxk5;->f:F

    iget-object v6, v0, Lxk5;->g:Landroidx/compose/ui/text/TextStyle;

    iget-object v7, v0, Lxk5;->h:Landroidx/compose/ui/text/TextStyle;

    iget v8, v0, Lxk5;->i:F

    iget v9, v0, Lxk5;->j:F

    iget v10, v0, Lxk5;->k:F

    iget v11, v0, Lxk5;->l:F

    iget v12, v0, Lxk5;->m:F

    iget v13, v0, Lxk5;->n:F

    iget v14, v0, Lxk5;->o:F

    iget v15, v0, Lxk5;->p:F

    move/from16 v16, v1

    iget-object v1, v0, Lxk5;->q:Landroidx/compose/material3/NavigationItemColors;

    move-object/from16 v17, v1

    iget-object v1, v0, Lxk5;->r:Landroidx/compose/ui/Modifier;

    move-object/from16 v18, v1

    iget-boolean v1, v0, Lxk5;->s:Z

    move/from16 v19, v1

    iget-object v1, v0, Lxk5;->t:Lbm3;

    move-object/from16 v20, v1

    iget v1, v0, Lxk5;->u:I

    move/from16 v21, v1

    iget-object v1, v0, Lxk5;->v:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    move-object/from16 v22, v1

    iget v1, v0, Lxk5;->w:I

    move/from16 v23, v1

    iget v1, v0, Lxk5;->x:I

    iget v0, v0, Lxk5;->y:I

    move/from16 v24, v23

    move/from16 v23, v1

    move/from16 v1, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v18

    move/from16 v18, v19

    move-object/from16 v19, v20

    move/from16 v20, v21

    move-object/from16 v21, v22

    move/from16 v22, v24

    move/from16 v24, v0

    invoke-static/range {v1 .. v26}, Landroidx/compose/material3/NavigationItemKt;->q(ZLll3;Lbm3;Landroidx/compose/ui/graphics/Shape;FLandroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;FFFFFFFFLandroidx/compose/material3/NavigationItemColors;Landroidx/compose/ui/Modifier;ZLbm3;ILandroidx/compose/foundation/interaction/MutableInteractionSource;IIILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object v0

    return-object v0
.end method
