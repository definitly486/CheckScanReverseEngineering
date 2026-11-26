.class public final synthetic Lw28;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:F

.field public final synthetic c:Landroidx/compose/material3/RangeSliderState;

.field public final synthetic d:J

.field public final synthetic e:J

.field public final synthetic f:J

.field public final synthetic g:J

.field public final synthetic h:F

.field public final synthetic i:F

.field public final synthetic j:Lbm3;

.field public final synthetic k:Ldm3;


# direct methods
.method public synthetic constructor <init>(FLandroidx/compose/material3/RangeSliderState;JJJJFFLbm3;Ldm3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lw28;->b:F

    iput-object p2, p0, Lw28;->c:Landroidx/compose/material3/RangeSliderState;

    iput-wide p3, p0, Lw28;->d:J

    iput-wide p5, p0, Lw28;->e:J

    iput-wide p7, p0, Lw28;->f:J

    iput-wide p9, p0, Lw28;->g:J

    iput p11, p0, Lw28;->h:F

    iput p12, p0, Lw28;->i:F

    iput-object p13, p0, Lw28;->j:Lbm3;

    iput-object p14, p0, Lw28;->k:Ldm3;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    move-object/from16 v0, p0

    iget-object v13, v0, Lw28;->k:Ldm3;

    move-object/from16 v14, p1

    check-cast v14, Landroidx/compose/ui/graphics/drawscope/DrawScope;

    iget v1, v0, Lw28;->b:F

    move v2, v1

    iget-object v1, v0, Lw28;->c:Landroidx/compose/material3/RangeSliderState;

    move v4, v2

    iget-wide v2, v0, Lw28;->d:J

    move v6, v4

    iget-wide v4, v0, Lw28;->e:J

    move v8, v6

    iget-wide v6, v0, Lw28;->f:J

    move v10, v8

    iget-wide v8, v0, Lw28;->g:J

    move v11, v10

    iget v10, v0, Lw28;->h:F

    move v12, v11

    iget v11, v0, Lw28;->i:F

    iget-object v0, v0, Lw28;->j:Lbm3;

    move v15, v12

    move-object v12, v0

    move v0, v15

    invoke-static/range {v0 .. v14}, Landroidx/compose/material3/SliderDefaults;->i(FLandroidx/compose/material3/RangeSliderState;JJJJFFLbm3;Ldm3;Landroidx/compose/ui/graphics/drawscope/DrawScope;)Lj59;

    move-result-object v0

    return-object v0
.end method
