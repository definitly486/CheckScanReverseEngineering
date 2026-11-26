.class public final synthetic Lbl5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Z

.field public final synthetic c:Lll3;

.field public final synthetic d:Lbm3;

.field public final synthetic e:Landroidx/compose/ui/text/TextStyle;

.field public final synthetic f:Landroidx/compose/ui/graphics/Shape;

.field public final synthetic g:F

.field public final synthetic h:F

.field public final synthetic i:F

.field public final synthetic j:F

.field public final synthetic k:F

.field public final synthetic l:F

.field public final synthetic m:Landroidx/compose/material3/NavigationItemColors;

.field public final synthetic n:Landroidx/compose/ui/Modifier;

.field public final synthetic o:Z

.field public final synthetic p:Lbm3;

.field public final synthetic q:I

.field public final synthetic r:Landroidx/compose/foundation/interaction/MutableInteractionSource;

.field public final synthetic s:I

.field public final synthetic t:I


# direct methods
.method public synthetic constructor <init>(ZLll3;Lbm3;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/graphics/Shape;FFFFFFLandroidx/compose/material3/NavigationItemColors;Landroidx/compose/ui/Modifier;ZLbm3;ILandroidx/compose/foundation/interaction/MutableInteractionSource;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lbl5;->b:Z

    iput-object p2, p0, Lbl5;->c:Lll3;

    iput-object p3, p0, Lbl5;->d:Lbm3;

    iput-object p4, p0, Lbl5;->e:Landroidx/compose/ui/text/TextStyle;

    iput-object p5, p0, Lbl5;->f:Landroidx/compose/ui/graphics/Shape;

    iput p6, p0, Lbl5;->g:F

    iput p7, p0, Lbl5;->h:F

    iput p8, p0, Lbl5;->i:F

    iput p9, p0, Lbl5;->j:F

    iput p10, p0, Lbl5;->k:F

    iput p11, p0, Lbl5;->l:F

    iput-object p12, p0, Lbl5;->m:Landroidx/compose/material3/NavigationItemColors;

    iput-object p13, p0, Lbl5;->n:Landroidx/compose/ui/Modifier;

    iput-boolean p14, p0, Lbl5;->o:Z

    iput-object p15, p0, Lbl5;->p:Lbm3;

    move/from16 p1, p16

    iput p1, p0, Lbl5;->q:I

    move-object/from16 p1, p17

    iput-object p1, p0, Lbl5;->r:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    move/from16 p1, p18

    iput p1, p0, Lbl5;->s:I

    move/from16 p1, p19

    iput p1, p0, Lbl5;->t:I

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

    iget-boolean v1, v0, Lbl5;->b:Z

    iget-object v2, v0, Lbl5;->c:Lll3;

    iget-object v3, v0, Lbl5;->d:Lbm3;

    iget-object v4, v0, Lbl5;->e:Landroidx/compose/ui/text/TextStyle;

    iget-object v5, v0, Lbl5;->f:Landroidx/compose/ui/graphics/Shape;

    iget v6, v0, Lbl5;->g:F

    iget v7, v0, Lbl5;->h:F

    iget v8, v0, Lbl5;->i:F

    iget v9, v0, Lbl5;->j:F

    iget v10, v0, Lbl5;->k:F

    iget v11, v0, Lbl5;->l:F

    iget-object v12, v0, Lbl5;->m:Landroidx/compose/material3/NavigationItemColors;

    iget-object v13, v0, Lbl5;->n:Landroidx/compose/ui/Modifier;

    iget-boolean v14, v0, Lbl5;->o:Z

    iget-object v15, v0, Lbl5;->p:Lbm3;

    move/from16 v16, v1

    iget v1, v0, Lbl5;->q:I

    move/from16 v17, v1

    iget-object v1, v0, Lbl5;->r:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    move-object/from16 v18, v1

    iget v1, v0, Lbl5;->s:I

    iget v0, v0, Lbl5;->t:I

    move-object/from16 v19, v18

    move/from16 v18, v1

    move/from16 v1, v16

    move/from16 v16, v17

    move-object/from16 v17, v19

    move/from16 v19, v0

    invoke-static/range {v1 .. v21}, Landroidx/compose/material3/NavigationItemKt;->s(ZLll3;Lbm3;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/graphics/Shape;FFFFFFLandroidx/compose/material3/NavigationItemColors;Landroidx/compose/ui/Modifier;ZLbm3;ILandroidx/compose/foundation/interaction/MutableInteractionSource;IILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object v0

    return-object v0
.end method
