.class public final synthetic Lck7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Landroidx/compose/animation/core/Animatable;

.field public final synthetic c:Landroidx/compose/runtime/MutableFloatState;

.field public final synthetic d:Landroidx/compose/runtime/MutableState;

.field public final synthetic e:Landroidx/compose/runtime/MutableState;

.field public final synthetic f:Landroidx/compose/ui/Modifier;

.field public final synthetic g:Lbm3;

.field public final synthetic h:Landroidx/compose/ui/graphics/Shape;

.field public final synthetic i:Landroidx/compose/material3/SearchBarColors;

.field public final synthetic j:F

.field public final synthetic k:F

.field public final synthetic l:Landroidx/compose/foundation/layout/WindowInsets;

.field public final synthetic m:Ldm3;

.field public final synthetic n:I

.field public final synthetic o:I

.field public final synthetic p:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/animation/core/Animatable;Landroidx/compose/runtime/MutableFloatState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/ui/Modifier;Lbm3;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/SearchBarColors;FFLandroidx/compose/foundation/layout/WindowInsets;Ldm3;III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lck7;->b:Landroidx/compose/animation/core/Animatable;

    iput-object p2, p0, Lck7;->c:Landroidx/compose/runtime/MutableFloatState;

    iput-object p3, p0, Lck7;->d:Landroidx/compose/runtime/MutableState;

    iput-object p4, p0, Lck7;->e:Landroidx/compose/runtime/MutableState;

    iput-object p5, p0, Lck7;->f:Landroidx/compose/ui/Modifier;

    iput-object p6, p0, Lck7;->g:Lbm3;

    iput-object p7, p0, Lck7;->h:Landroidx/compose/ui/graphics/Shape;

    iput-object p8, p0, Lck7;->i:Landroidx/compose/material3/SearchBarColors;

    iput p9, p0, Lck7;->j:F

    iput p10, p0, Lck7;->k:F

    iput-object p11, p0, Lck7;->l:Landroidx/compose/foundation/layout/WindowInsets;

    iput-object p12, p0, Lck7;->m:Ldm3;

    iput p13, p0, Lck7;->n:I

    iput p14, p0, Lck7;->o:I

    iput p15, p0, Lck7;->p:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v16, p1

    check-cast v16, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v17

    iget-object v1, v0, Lck7;->b:Landroidx/compose/animation/core/Animatable;

    iget-object v2, v0, Lck7;->c:Landroidx/compose/runtime/MutableFloatState;

    iget-object v3, v0, Lck7;->d:Landroidx/compose/runtime/MutableState;

    iget-object v4, v0, Lck7;->e:Landroidx/compose/runtime/MutableState;

    iget-object v5, v0, Lck7;->f:Landroidx/compose/ui/Modifier;

    iget-object v6, v0, Lck7;->g:Lbm3;

    iget-object v7, v0, Lck7;->h:Landroidx/compose/ui/graphics/Shape;

    iget-object v8, v0, Lck7;->i:Landroidx/compose/material3/SearchBarColors;

    iget v9, v0, Lck7;->j:F

    iget v10, v0, Lck7;->k:F

    iget-object v11, v0, Lck7;->l:Landroidx/compose/foundation/layout/WindowInsets;

    iget-object v12, v0, Lck7;->m:Ldm3;

    iget v13, v0, Lck7;->n:I

    iget v14, v0, Lck7;->o:I

    iget v15, v0, Lck7;->p:I

    invoke-static/range {v1 .. v17}, Landroidx/compose/material3/SearchBarKt;->k(Landroidx/compose/animation/core/Animatable;Landroidx/compose/runtime/MutableFloatState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/ui/Modifier;Lbm3;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/SearchBarColors;FFLandroidx/compose/foundation/layout/WindowInsets;Ldm3;IIILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object v0

    return-object v0
.end method
