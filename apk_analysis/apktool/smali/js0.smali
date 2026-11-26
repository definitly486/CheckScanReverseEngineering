.class public final synthetic Ljs0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Landroidx/compose/ui/geometry/Rect;

.field public final synthetic c:Landroidx/compose/ui/graphics/Outline$Generic;

.field public final synthetic d:Landroidx/compose/ui/graphics/Brush;

.field public final synthetic e:F

.field public final synthetic f:Landroidx/compose/ui/graphics/Path;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/geometry/Rect;Landroidx/compose/ui/graphics/Outline$Generic;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Path;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljs0;->b:Landroidx/compose/ui/geometry/Rect;

    iput-object p2, p0, Ljs0;->c:Landroidx/compose/ui/graphics/Outline$Generic;

    iput-object p3, p0, Ljs0;->d:Landroidx/compose/ui/graphics/Brush;

    iput p4, p0, Ljs0;->e:F

    iput-object p5, p0, Ljs0;->f:Landroidx/compose/ui/graphics/Path;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iget-object v4, p0, Ljs0;->f:Landroidx/compose/ui/graphics/Path;

    move-object v5, p1

    check-cast v5, Landroidx/compose/ui/graphics/drawscope/DrawScope;

    iget-object v0, p0, Ljs0;->b:Landroidx/compose/ui/geometry/Rect;

    iget-object v1, p0, Ljs0;->c:Landroidx/compose/ui/graphics/Outline$Generic;

    iget-object v2, p0, Ljs0;->d:Landroidx/compose/ui/graphics/Brush;

    iget v3, p0, Ljs0;->e:F

    invoke-static/range {v0 .. v5}, Landroidx/compose/foundation/border/BorderLogic;->c(Landroidx/compose/ui/geometry/Rect;Landroidx/compose/ui/graphics/Outline$Generic;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Path;Landroidx/compose/ui/graphics/drawscope/DrawScope;)Lj59;

    move-result-object p0

    return-object p0
.end method
