.class public final synthetic Lso;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Landroidx/compose/ui/Modifier;

.field public final synthetic c:Lbm3;

.field public final synthetic d:Landroidx/compose/ui/text/TextStyle;

.field public final synthetic e:F

.field public final synthetic f:Lbm3;

.field public final synthetic g:Landroidx/compose/ui/text/TextStyle;

.field public final synthetic h:Lbm3;

.field public final synthetic i:Landroidx/compose/ui/text/TextStyle;

.field public final synthetic j:Lbm3;

.field public final synthetic k:Landroidx/compose/ui/text/TextStyle;

.field public final synthetic l:Landroidx/compose/ui/Alignment$Horizontal;

.field public final synthetic m:Lbm3;

.field public final synthetic n:Ldm3;

.field public final synthetic o:F

.field public final synthetic p:F

.field public final synthetic q:Landroidx/compose/foundation/layout/WindowInsets;

.field public final synthetic r:Landroidx/compose/material3/TopAppBarColors;

.field public final synthetic s:Landroidx/compose/material3/TopAppBarScrollBehavior;

.field public final synthetic t:I

.field public final synthetic u:I

.field public final synthetic v:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;Lbm3;Landroidx/compose/ui/text/TextStyle;FLbm3;Landroidx/compose/ui/text/TextStyle;Lbm3;Landroidx/compose/ui/text/TextStyle;Lbm3;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/Alignment$Horizontal;Lbm3;Ldm3;FFLandroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/material3/TopAppBarColors;Landroidx/compose/material3/TopAppBarScrollBehavior;III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lso;->b:Landroidx/compose/ui/Modifier;

    iput-object p2, p0, Lso;->c:Lbm3;

    iput-object p3, p0, Lso;->d:Landroidx/compose/ui/text/TextStyle;

    iput p4, p0, Lso;->e:F

    iput-object p5, p0, Lso;->f:Lbm3;

    iput-object p6, p0, Lso;->g:Landroidx/compose/ui/text/TextStyle;

    iput-object p7, p0, Lso;->h:Lbm3;

    iput-object p8, p0, Lso;->i:Landroidx/compose/ui/text/TextStyle;

    iput-object p9, p0, Lso;->j:Lbm3;

    iput-object p10, p0, Lso;->k:Landroidx/compose/ui/text/TextStyle;

    iput-object p11, p0, Lso;->l:Landroidx/compose/ui/Alignment$Horizontal;

    iput-object p12, p0, Lso;->m:Lbm3;

    iput-object p13, p0, Lso;->n:Ldm3;

    iput p14, p0, Lso;->o:F

    iput p15, p0, Lso;->p:F

    move-object/from16 p1, p16

    iput-object p1, p0, Lso;->q:Landroidx/compose/foundation/layout/WindowInsets;

    move-object/from16 p1, p17

    iput-object p1, p0, Lso;->r:Landroidx/compose/material3/TopAppBarColors;

    move-object/from16 p1, p18

    iput-object p1, p0, Lso;->s:Landroidx/compose/material3/TopAppBarScrollBehavior;

    move/from16 p1, p19

    iput p1, p0, Lso;->t:I

    move/from16 p1, p20

    iput p1, p0, Lso;->u:I

    move/from16 p1, p21

    iput p1, p0, Lso;->v:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v22, p1

    check-cast v22, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v23

    iget-object v1, v0, Lso;->b:Landroidx/compose/ui/Modifier;

    iget-object v2, v0, Lso;->c:Lbm3;

    iget-object v3, v0, Lso;->d:Landroidx/compose/ui/text/TextStyle;

    iget v4, v0, Lso;->e:F

    iget-object v5, v0, Lso;->f:Lbm3;

    iget-object v6, v0, Lso;->g:Landroidx/compose/ui/text/TextStyle;

    iget-object v7, v0, Lso;->h:Lbm3;

    iget-object v8, v0, Lso;->i:Landroidx/compose/ui/text/TextStyle;

    iget-object v9, v0, Lso;->j:Lbm3;

    iget-object v10, v0, Lso;->k:Landroidx/compose/ui/text/TextStyle;

    iget-object v11, v0, Lso;->l:Landroidx/compose/ui/Alignment$Horizontal;

    iget-object v12, v0, Lso;->m:Lbm3;

    iget-object v13, v0, Lso;->n:Ldm3;

    iget v14, v0, Lso;->o:F

    iget v15, v0, Lso;->p:F

    move-object/from16 v16, v1

    iget-object v1, v0, Lso;->q:Landroidx/compose/foundation/layout/WindowInsets;

    move-object/from16 v17, v1

    iget-object v1, v0, Lso;->r:Landroidx/compose/material3/TopAppBarColors;

    move-object/from16 v18, v1

    iget-object v1, v0, Lso;->s:Landroidx/compose/material3/TopAppBarScrollBehavior;

    move-object/from16 v19, v1

    iget v1, v0, Lso;->t:I

    move/from16 v20, v1

    iget v1, v0, Lso;->u:I

    iget v0, v0, Lso;->v:I

    move/from16 v21, v20

    move/from16 v20, v1

    move-object/from16 v1, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v18

    move-object/from16 v18, v19

    move/from16 v19, v21

    move/from16 v21, v0

    invoke-static/range {v1 .. v23}, Landroidx/compose/material3/AppBarKt;->C(Landroidx/compose/ui/Modifier;Lbm3;Landroidx/compose/ui/text/TextStyle;FLbm3;Landroidx/compose/ui/text/TextStyle;Lbm3;Landroidx/compose/ui/text/TextStyle;Lbm3;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/Alignment$Horizontal;Lbm3;Ldm3;FFLandroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/material3/TopAppBarColors;Landroidx/compose/material3/TopAppBarScrollBehavior;IIILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object v0

    return-object v0
.end method
