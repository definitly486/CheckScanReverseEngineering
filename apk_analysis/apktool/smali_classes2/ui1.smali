.class public final synthetic Lui1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Lll3;

.field public final synthetic c:Lbm3;

.field public final synthetic d:Landroidx/compose/ui/Modifier;

.field public final synthetic e:Z

.field public final synthetic f:Lbm3;

.field public final synthetic g:Lbm3;

.field public final synthetic h:Landroidx/compose/ui/graphics/Shape;

.field public final synthetic i:Landroidx/compose/material3/ChipColors;

.field public final synthetic j:Landroidx/compose/material3/ChipElevation;

.field public final synthetic k:Landroidx/compose/foundation/BorderStroke;

.field public final synthetic l:Landroidx/compose/foundation/interaction/MutableInteractionSource;

.field public final synthetic m:I

.field public final synthetic n:I

.field public final synthetic o:I


# direct methods
.method public synthetic constructor <init>(Lll3;Lbm3;Landroidx/compose/ui/Modifier;ZLbm3;Lbm3;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/ChipColors;Landroidx/compose/material3/ChipElevation;Landroidx/compose/foundation/BorderStroke;Landroidx/compose/foundation/interaction/MutableInteractionSource;III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lui1;->b:Lll3;

    iput-object p2, p0, Lui1;->c:Lbm3;

    iput-object p3, p0, Lui1;->d:Landroidx/compose/ui/Modifier;

    iput-boolean p4, p0, Lui1;->e:Z

    iput-object p5, p0, Lui1;->f:Lbm3;

    iput-object p6, p0, Lui1;->g:Lbm3;

    iput-object p7, p0, Lui1;->h:Landroidx/compose/ui/graphics/Shape;

    iput-object p8, p0, Lui1;->i:Landroidx/compose/material3/ChipColors;

    iput-object p9, p0, Lui1;->j:Landroidx/compose/material3/ChipElevation;

    iput-object p10, p0, Lui1;->k:Landroidx/compose/foundation/BorderStroke;

    iput-object p11, p0, Lui1;->l:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    iput p12, p0, Lui1;->m:I

    iput p13, p0, Lui1;->n:I

    iput p14, p0, Lui1;->o:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v15, p1

    check-cast v15, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v16

    iget-object v1, v0, Lui1;->b:Lll3;

    iget-object v2, v0, Lui1;->c:Lbm3;

    iget-object v3, v0, Lui1;->d:Landroidx/compose/ui/Modifier;

    iget-boolean v4, v0, Lui1;->e:Z

    iget-object v5, v0, Lui1;->f:Lbm3;

    iget-object v6, v0, Lui1;->g:Lbm3;

    iget-object v7, v0, Lui1;->h:Landroidx/compose/ui/graphics/Shape;

    iget-object v8, v0, Lui1;->i:Landroidx/compose/material3/ChipColors;

    iget-object v9, v0, Lui1;->j:Landroidx/compose/material3/ChipElevation;

    iget-object v10, v0, Lui1;->k:Landroidx/compose/foundation/BorderStroke;

    iget-object v11, v0, Lui1;->l:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    iget v12, v0, Lui1;->m:I

    iget v13, v0, Lui1;->n:I

    iget v14, v0, Lui1;->o:I

    invoke-static/range {v1 .. v16}, Landroidx/compose/material3/ChipKt;->h(Lll3;Lbm3;Landroidx/compose/ui/Modifier;ZLbm3;Lbm3;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/ChipColors;Landroidx/compose/material3/ChipElevation;Landroidx/compose/foundation/BorderStroke;Landroidx/compose/foundation/interaction/MutableInteractionSource;IIILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object v0

    return-object v0
.end method
