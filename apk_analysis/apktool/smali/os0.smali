.class public final synthetic Los0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Z

.field public final synthetic c:Landroidx/compose/ui/graphics/Brush;

.field public final synthetic d:J

.field public final synthetic e:F

.field public final synthetic f:F

.field public final synthetic g:J

.field public final synthetic h:J

.field public final synthetic i:Landroidx/compose/ui/graphics/drawscope/Stroke;


# direct methods
.method public synthetic constructor <init>(ZLandroidx/compose/ui/graphics/Brush;JFFJJLandroidx/compose/ui/graphics/drawscope/Stroke;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Los0;->b:Z

    iput-object p2, p0, Los0;->c:Landroidx/compose/ui/graphics/Brush;

    iput-wide p3, p0, Los0;->d:J

    iput p5, p0, Los0;->e:F

    iput p6, p0, Los0;->f:F

    iput-wide p7, p0, Los0;->g:J

    iput-wide p9, p0, Los0;->h:J

    iput-object p11, p0, Los0;->i:Landroidx/compose/ui/graphics/drawscope/Stroke;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    iget-object v10, p0, Los0;->i:Landroidx/compose/ui/graphics/drawscope/Stroke;

    move-object v11, p1

    check-cast v11, Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;

    iget-boolean v0, p0, Los0;->b:Z

    iget-object v1, p0, Los0;->c:Landroidx/compose/ui/graphics/Brush;

    iget-wide v2, p0, Los0;->d:J

    iget v4, p0, Los0;->e:F

    iget v5, p0, Los0;->f:F

    iget-wide v6, p0, Los0;->g:J

    iget-wide v8, p0, Los0;->h:J

    invoke-static/range {v0 .. v11}, Landroidx/compose/foundation/BorderModifierNode;->d(ZLandroidx/compose/ui/graphics/Brush;JFFJJLandroidx/compose/ui/graphics/drawscope/Stroke;Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;)Lj59;

    move-result-object p0

    return-object p0
.end method
