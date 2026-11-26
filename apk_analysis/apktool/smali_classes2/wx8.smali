.class public final synthetic Lwx8;
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

.field public final synthetic g:Landroidx/compose/ui/graphics/Shape;

.field public final synthetic h:Landroidx/compose/material3/RichTooltipColors;

.field public final synthetic i:F

.field public final synthetic j:F

.field public final synthetic k:Lbm3;

.field public final synthetic l:I

.field public final synthetic m:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/material3/TooltipScope;Landroidx/compose/ui/Modifier;Lbm3;Lbm3;JLandroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/RichTooltipColors;FFLbm3;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lwx8;->b:Landroidx/compose/material3/TooltipScope;

    iput-object p2, p0, Lwx8;->c:Landroidx/compose/ui/Modifier;

    iput-object p3, p0, Lwx8;->d:Lbm3;

    iput-object p4, p0, Lwx8;->e:Lbm3;

    iput-wide p5, p0, Lwx8;->f:J

    iput-object p7, p0, Lwx8;->g:Landroidx/compose/ui/graphics/Shape;

    iput-object p8, p0, Lwx8;->h:Landroidx/compose/material3/RichTooltipColors;

    iput p9, p0, Lwx8;->i:F

    iput p10, p0, Lwx8;->j:F

    iput-object p11, p0, Lwx8;->k:Lbm3;

    iput p12, p0, Lwx8;->l:I

    iput p13, p0, Lwx8;->m:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v13, p1

    check-cast v13, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v14

    iget-object v1, v0, Lwx8;->b:Landroidx/compose/material3/TooltipScope;

    move-object v2, v1

    iget-object v1, v0, Lwx8;->c:Landroidx/compose/ui/Modifier;

    move-object v3, v2

    iget-object v2, v0, Lwx8;->d:Lbm3;

    move-object v4, v3

    iget-object v3, v0, Lwx8;->e:Lbm3;

    move-object v6, v4

    iget-wide v4, v0, Lwx8;->f:J

    move-object v7, v6

    iget-object v6, v0, Lwx8;->g:Landroidx/compose/ui/graphics/Shape;

    move-object v8, v7

    iget-object v7, v0, Lwx8;->h:Landroidx/compose/material3/RichTooltipColors;

    move-object v9, v8

    iget v8, v0, Lwx8;->i:F

    move-object v10, v9

    iget v9, v0, Lwx8;->j:F

    move-object v11, v10

    iget-object v10, v0, Lwx8;->k:Lbm3;

    move-object v12, v11

    iget v11, v0, Lwx8;->l:I

    iget v0, v0, Lwx8;->m:I

    move-object v15, v12

    move v12, v0

    move-object v0, v15

    invoke-static/range {v0 .. v14}, Landroidx/compose/material3/Tooltip_androidKt;->b(Landroidx/compose/material3/TooltipScope;Landroidx/compose/ui/Modifier;Lbm3;Lbm3;JLandroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/RichTooltipColors;FFLbm3;IILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object v0

    return-object v0
.end method
