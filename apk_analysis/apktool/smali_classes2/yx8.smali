.class public final synthetic Lyx8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Landroidx/compose/material3/TooltipScope;

.field public final synthetic c:Landroidx/compose/ui/Modifier;

.field public final synthetic d:J

.field public final synthetic e:F

.field public final synthetic f:Landroidx/compose/ui/graphics/Shape;

.field public final synthetic g:J

.field public final synthetic h:J

.field public final synthetic i:F

.field public final synthetic j:F

.field public final synthetic k:Lbm3;

.field public final synthetic l:I

.field public final synthetic m:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/material3/TooltipScope;Landroidx/compose/ui/Modifier;JFLandroidx/compose/ui/graphics/Shape;JJFFLbm3;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyx8;->b:Landroidx/compose/material3/TooltipScope;

    iput-object p2, p0, Lyx8;->c:Landroidx/compose/ui/Modifier;

    iput-wide p3, p0, Lyx8;->d:J

    iput p5, p0, Lyx8;->e:F

    iput-object p6, p0, Lyx8;->f:Landroidx/compose/ui/graphics/Shape;

    iput-wide p7, p0, Lyx8;->g:J

    iput-wide p9, p0, Lyx8;->h:J

    iput p11, p0, Lyx8;->i:F

    iput p12, p0, Lyx8;->j:F

    iput-object p13, p0, Lyx8;->k:Lbm3;

    iput p14, p0, Lyx8;->l:I

    iput p15, p0, Lyx8;->m:I

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

    iget-object v1, v0, Lyx8;->b:Landroidx/compose/material3/TooltipScope;

    iget-object v2, v0, Lyx8;->c:Landroidx/compose/ui/Modifier;

    iget-wide v3, v0, Lyx8;->d:J

    iget v5, v0, Lyx8;->e:F

    iget-object v6, v0, Lyx8;->f:Landroidx/compose/ui/graphics/Shape;

    iget-wide v7, v0, Lyx8;->g:J

    iget-wide v9, v0, Lyx8;->h:J

    iget v11, v0, Lyx8;->i:F

    iget v12, v0, Lyx8;->j:F

    iget-object v13, v0, Lyx8;->k:Lbm3;

    iget v14, v0, Lyx8;->l:I

    iget v15, v0, Lyx8;->m:I

    invoke-static/range {v1 .. v17}, Landroidx/compose/material3/Tooltip_androidKt;->d(Landroidx/compose/material3/TooltipScope;Landroidx/compose/ui/Modifier;JFLandroidx/compose/ui/graphics/Shape;JJFFLbm3;IILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object v0

    return-object v0
.end method
