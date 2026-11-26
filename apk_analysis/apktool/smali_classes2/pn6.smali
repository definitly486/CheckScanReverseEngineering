.class public final synthetic Lpn6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Lll3;

.field public final synthetic c:I

.field public final synthetic d:F

.field public final synthetic e:F

.field public final synthetic f:J

.field public final synthetic g:Landroidx/compose/ui/graphics/drawscope/Stroke;

.field public final synthetic h:J


# direct methods
.method public synthetic constructor <init>(Lll3;IFFJLandroidx/compose/ui/graphics/drawscope/Stroke;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpn6;->b:Lll3;

    iput p2, p0, Lpn6;->c:I

    iput p3, p0, Lpn6;->d:F

    iput p4, p0, Lpn6;->e:F

    iput-wide p5, p0, Lpn6;->f:J

    iput-object p7, p0, Lpn6;->g:Landroidx/compose/ui/graphics/drawscope/Stroke;

    iput-wide p8, p0, Lpn6;->h:J

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    iget-wide v7, p0, Lpn6;->h:J

    move-object v9, p1

    check-cast v9, Landroidx/compose/ui/graphics/drawscope/DrawScope;

    iget-object v0, p0, Lpn6;->b:Lll3;

    iget v1, p0, Lpn6;->c:I

    iget v2, p0, Lpn6;->d:F

    iget v3, p0, Lpn6;->e:F

    iget-wide v4, p0, Lpn6;->f:J

    iget-object v6, p0, Lpn6;->g:Landroidx/compose/ui/graphics/drawscope/Stroke;

    invoke-static/range {v0 .. v9}, Landroidx/compose/material3/ProgressIndicatorKt;->v(Lll3;IFFJLandroidx/compose/ui/graphics/drawscope/Stroke;JLandroidx/compose/ui/graphics/drawscope/DrawScope;)Lj59;

    move-result-object p0

    return-object p0
.end method
