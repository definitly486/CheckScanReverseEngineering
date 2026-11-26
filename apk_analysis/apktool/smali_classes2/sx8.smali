.class public final synthetic Lsx8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Landroidx/compose/material3/TooltipScope;

.field public final synthetic c:Landroidx/compose/ui/Modifier;

.field public final synthetic d:Lbm3;

.field public final synthetic e:Lbm3;

.field public final synthetic f:Landroidx/compose/ui/graphics/Shape;

.field public final synthetic g:F

.field public final synthetic h:Landroidx/compose/ui/graphics/Shape;

.field public final synthetic i:Landroidx/compose/material3/RichTooltipColors;

.field public final synthetic j:F

.field public final synthetic k:F

.field public final synthetic l:Lbm3;

.field public final synthetic m:I

.field public final synthetic n:I

.field public final synthetic o:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/material3/TooltipScope;Landroidx/compose/ui/Modifier;Lbm3;Lbm3;Landroidx/compose/ui/graphics/Shape;FLandroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/RichTooltipColors;FFLbm3;III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsx8;->b:Landroidx/compose/material3/TooltipScope;

    iput-object p2, p0, Lsx8;->c:Landroidx/compose/ui/Modifier;

    iput-object p3, p0, Lsx8;->d:Lbm3;

    iput-object p4, p0, Lsx8;->e:Lbm3;

    iput-object p5, p0, Lsx8;->f:Landroidx/compose/ui/graphics/Shape;

    iput p6, p0, Lsx8;->g:F

    iput-object p7, p0, Lsx8;->h:Landroidx/compose/ui/graphics/Shape;

    iput-object p8, p0, Lsx8;->i:Landroidx/compose/material3/RichTooltipColors;

    iput p9, p0, Lsx8;->j:F

    iput p10, p0, Lsx8;->k:F

    iput-object p11, p0, Lsx8;->l:Lbm3;

    iput p12, p0, Lsx8;->m:I

    iput p13, p0, Lsx8;->n:I

    iput p14, p0, Lsx8;->o:I

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

    iget-object v1, v0, Lsx8;->b:Landroidx/compose/material3/TooltipScope;

    iget-object v2, v0, Lsx8;->c:Landroidx/compose/ui/Modifier;

    iget-object v3, v0, Lsx8;->d:Lbm3;

    iget-object v4, v0, Lsx8;->e:Lbm3;

    iget-object v5, v0, Lsx8;->f:Landroidx/compose/ui/graphics/Shape;

    iget v6, v0, Lsx8;->g:F

    iget-object v7, v0, Lsx8;->h:Landroidx/compose/ui/graphics/Shape;

    iget-object v8, v0, Lsx8;->i:Landroidx/compose/material3/RichTooltipColors;

    iget v9, v0, Lsx8;->j:F

    iget v10, v0, Lsx8;->k:F

    iget-object v11, v0, Lsx8;->l:Lbm3;

    iget v12, v0, Lsx8;->m:I

    iget v13, v0, Lsx8;->n:I

    iget v14, v0, Lsx8;->o:I

    invoke-static/range {v1 .. v16}, Landroidx/compose/material3/TooltipKt;->f(Landroidx/compose/material3/TooltipScope;Landroidx/compose/ui/Modifier;Lbm3;Lbm3;Landroidx/compose/ui/graphics/Shape;FLandroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/RichTooltipColors;FFLbm3;IIILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object v0

    return-object v0
.end method
