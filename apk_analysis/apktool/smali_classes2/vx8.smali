.class public final synthetic Lvx8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Landroidx/compose/material3/TooltipScope;

.field public final synthetic c:Landroidx/compose/ui/Modifier;

.field public final synthetic d:Lbm3;

.field public final synthetic e:Lbm3;

.field public final synthetic f:J

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
.method public synthetic constructor <init>(Landroidx/compose/material3/TooltipScope;Landroidx/compose/ui/Modifier;Lbm3;Lbm3;JFLandroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/RichTooltipColors;FFLbm3;III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lvx8;->b:Landroidx/compose/material3/TooltipScope;

    iput-object p2, p0, Lvx8;->c:Landroidx/compose/ui/Modifier;

    iput-object p3, p0, Lvx8;->d:Lbm3;

    iput-object p4, p0, Lvx8;->e:Lbm3;

    iput-wide p5, p0, Lvx8;->f:J

    iput p7, p0, Lvx8;->g:F

    iput-object p8, p0, Lvx8;->h:Landroidx/compose/ui/graphics/Shape;

    iput-object p9, p0, Lvx8;->i:Landroidx/compose/material3/RichTooltipColors;

    iput p10, p0, Lvx8;->j:F

    iput p11, p0, Lvx8;->k:F

    iput-object p12, p0, Lvx8;->l:Lbm3;

    iput p13, p0, Lvx8;->m:I

    iput p14, p0, Lvx8;->n:I

    iput p15, p0, Lvx8;->o:I

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

    iget-object v1, v0, Lvx8;->b:Landroidx/compose/material3/TooltipScope;

    iget-object v2, v0, Lvx8;->c:Landroidx/compose/ui/Modifier;

    iget-object v3, v0, Lvx8;->d:Lbm3;

    iget-object v4, v0, Lvx8;->e:Lbm3;

    iget-wide v5, v0, Lvx8;->f:J

    iget v7, v0, Lvx8;->g:F

    iget-object v8, v0, Lvx8;->h:Landroidx/compose/ui/graphics/Shape;

    iget-object v9, v0, Lvx8;->i:Landroidx/compose/material3/RichTooltipColors;

    iget v10, v0, Lvx8;->j:F

    iget v11, v0, Lvx8;->k:F

    iget-object v12, v0, Lvx8;->l:Lbm3;

    iget v13, v0, Lvx8;->m:I

    iget v14, v0, Lvx8;->n:I

    iget v15, v0, Lvx8;->o:I

    invoke-static/range {v1 .. v17}, Landroidx/compose/material3/Tooltip_androidKt;->c(Landroidx/compose/material3/TooltipScope;Landroidx/compose/ui/Modifier;Lbm3;Lbm3;JFLandroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/RichTooltipColors;FFLbm3;IIILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object v0

    return-object v0
.end method
