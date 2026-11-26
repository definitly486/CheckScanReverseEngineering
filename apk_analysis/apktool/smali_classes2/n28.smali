.class public final synthetic Ln28;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:F

.field public final synthetic c:Landroidx/compose/material3/SliderState;

.field public final synthetic d:J

.field public final synthetic e:J

.field public final synthetic f:J

.field public final synthetic g:J

.field public final synthetic h:F

.field public final synthetic i:F

.field public final synthetic j:Lbm3;

.field public final synthetic k:Ldm3;

.field public final synthetic l:Z

.field public final synthetic m:Z


# direct methods
.method public synthetic constructor <init>(FLandroidx/compose/material3/SliderState;JJJJFFLbm3;Ldm3;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Ln28;->b:F

    iput-object p2, p0, Ln28;->c:Landroidx/compose/material3/SliderState;

    iput-wide p3, p0, Ln28;->d:J

    iput-wide p5, p0, Ln28;->e:J

    iput-wide p7, p0, Ln28;->f:J

    iput-wide p9, p0, Ln28;->g:J

    iput p11, p0, Ln28;->h:F

    iput p12, p0, Ln28;->i:F

    iput-object p13, p0, Ln28;->j:Lbm3;

    iput-object p14, p0, Ln28;->k:Ldm3;

    iput-boolean p15, p0, Ln28;->l:Z

    move/from16 p1, p16

    iput-boolean p1, p0, Ln28;->m:Z

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v0, p0

    iget-boolean v1, v0, Ln28;->m:Z

    move-object/from16 v17, p1

    check-cast v17, Landroidx/compose/ui/graphics/drawscope/DrawScope;

    move/from16 v16, v1

    iget v1, v0, Ln28;->b:F

    iget-object v2, v0, Ln28;->c:Landroidx/compose/material3/SliderState;

    iget-wide v3, v0, Ln28;->d:J

    iget-wide v5, v0, Ln28;->e:J

    iget-wide v7, v0, Ln28;->f:J

    iget-wide v9, v0, Ln28;->g:J

    iget v11, v0, Ln28;->h:F

    iget v12, v0, Ln28;->i:F

    iget-object v13, v0, Ln28;->j:Lbm3;

    iget-object v14, v0, Ln28;->k:Ldm3;

    iget-boolean v15, v0, Ln28;->l:Z

    invoke-static/range {v1 .. v17}, Landroidx/compose/material3/SliderDefaults;->c(FLandroidx/compose/material3/SliderState;JJJJFFLbm3;Ldm3;ZZLandroidx/compose/ui/graphics/drawscope/DrawScope;)Lj59;

    move-result-object v0

    return-object v0
.end method
