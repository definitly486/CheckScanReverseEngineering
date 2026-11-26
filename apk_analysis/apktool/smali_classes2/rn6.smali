.class public final synthetic Lrn6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Landroidx/compose/runtime/State;

.field public final synthetic c:I

.field public final synthetic d:F

.field public final synthetic e:F

.field public final synthetic f:Landroidx/compose/runtime/State;

.field public final synthetic g:Landroidx/compose/runtime/State;

.field public final synthetic h:J

.field public final synthetic i:Landroidx/compose/ui/graphics/drawscope/Stroke;

.field public final synthetic j:J


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/runtime/State;IFFLandroidx/compose/runtime/State;Landroidx/compose/runtime/State;JLandroidx/compose/ui/graphics/drawscope/Stroke;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lrn6;->b:Landroidx/compose/runtime/State;

    iput p2, p0, Lrn6;->c:I

    iput p3, p0, Lrn6;->d:F

    iput p4, p0, Lrn6;->e:F

    iput-object p5, p0, Lrn6;->f:Landroidx/compose/runtime/State;

    iput-object p6, p0, Lrn6;->g:Landroidx/compose/runtime/State;

    iput-wide p7, p0, Lrn6;->h:J

    iput-object p9, p0, Lrn6;->i:Landroidx/compose/ui/graphics/drawscope/Stroke;

    iput-wide p10, p0, Lrn6;->j:J

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    iget-wide v9, p0, Lrn6;->j:J

    move-object v11, p1

    check-cast v11, Landroidx/compose/ui/graphics/drawscope/DrawScope;

    iget-object v0, p0, Lrn6;->b:Landroidx/compose/runtime/State;

    iget v1, p0, Lrn6;->c:I

    iget v2, p0, Lrn6;->d:F

    iget v3, p0, Lrn6;->e:F

    iget-object v4, p0, Lrn6;->f:Landroidx/compose/runtime/State;

    iget-object v5, p0, Lrn6;->g:Landroidx/compose/runtime/State;

    iget-wide v6, p0, Lrn6;->h:J

    iget-object v8, p0, Lrn6;->i:Landroidx/compose/ui/graphics/drawscope/Stroke;

    invoke-static/range {v0 .. v11}, Landroidx/compose/material3/ProgressIndicatorKt;->m(Landroidx/compose/runtime/State;IFFLandroidx/compose/runtime/State;Landroidx/compose/runtime/State;JLandroidx/compose/ui/graphics/drawscope/Stroke;JLandroidx/compose/ui/graphics/drawscope/DrawScope;)Lj59;

    move-result-object p0

    return-object p0
.end method
