.class final Landroidx/compose/ui/draw/CacheDrawScope$record$1$1;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/ui/draw/CacheDrawScope;->record-TdoYBX4(Landroidx/compose/ui/graphics/layer/GraphicsLayer;Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/unit/LayoutDirection;JLnl3;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lnl3<",
        "Landroidx/compose/ui/graphics/drawscope/DrawScope;",
        "Lj59;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $block:Lnl3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnl3<",
            "Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;",
            "Lj59;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $density:Landroidx/compose/ui/unit/Density;

.field final synthetic $layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

.field final synthetic $prevDensity:Landroidx/compose/ui/unit/Density;

.field final synthetic $prevLayoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

.field final synthetic $scope:Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;


# direct methods
.method public constructor <init>(Lnl3;Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/unit/LayoutDirection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnl3<",
            "-",
            "Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;",
            "Lj59;",
            ">;",
            "Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;",
            "Landroidx/compose/ui/unit/Density;",
            "Landroidx/compose/ui/unit/LayoutDirection;",
            "Landroidx/compose/ui/unit/Density;",
            "Landroidx/compose/ui/unit/LayoutDirection;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/ui/draw/CacheDrawScope$record$1$1;->$block:Lnl3;

    iput-object p2, p0, Landroidx/compose/ui/draw/CacheDrawScope$record$1$1;->$scope:Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;

    iput-object p3, p0, Landroidx/compose/ui/draw/CacheDrawScope$record$1$1;->$density:Landroidx/compose/ui/unit/Density;

    iput-object p4, p0, Landroidx/compose/ui/draw/CacheDrawScope$record$1$1;->$layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    iput-object p5, p0, Landroidx/compose/ui/draw/CacheDrawScope$record$1$1;->$prevDensity:Landroidx/compose/ui/unit/Density;

    iput-object p6, p0, Landroidx/compose/ui/draw/CacheDrawScope$record$1$1;->$prevLayoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 52
    check-cast p1, Landroidx/compose/ui/graphics/drawscope/DrawScope;

    invoke-virtual {p0, p1}, Landroidx/compose/ui/draw/CacheDrawScope$record$1$1;->invoke(Landroidx/compose/ui/graphics/drawscope/DrawScope;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public final invoke(Landroidx/compose/ui/graphics/drawscope/DrawScope;)V
    .locals 3

    invoke-interface {p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getDrawContext()Landroidx/compose/ui/graphics/drawscope/DrawContext;

    move-result-object v0

    iget-object v1, p0, Landroidx/compose/ui/draw/CacheDrawScope$record$1$1;->$density:Landroidx/compose/ui/unit/Density;

    iget-object v2, p0, Landroidx/compose/ui/draw/CacheDrawScope$record$1$1;->$layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    invoke-interface {v0, v1}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->setDensity(Landroidx/compose/ui/unit/Density;)V

    invoke-interface {v0, v2}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->setLayoutDirection(Landroidx/compose/ui/unit/LayoutDirection;)V

    :try_start_0
    iget-object v0, p0, Landroidx/compose/ui/draw/CacheDrawScope$record$1$1;->$block:Lnl3;

    iget-object v1, p0, Landroidx/compose/ui/draw/CacheDrawScope$record$1$1;->$scope:Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;

    invoke-interface {v0, v1}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getDrawContext()Landroidx/compose/ui/graphics/drawscope/DrawContext;

    move-result-object p1

    iget-object v0, p0, Landroidx/compose/ui/draw/CacheDrawScope$record$1$1;->$prevDensity:Landroidx/compose/ui/unit/Density;

    iget-object p0, p0, Landroidx/compose/ui/draw/CacheDrawScope$record$1$1;->$prevLayoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    invoke-interface {p1, v0}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->setDensity(Landroidx/compose/ui/unit/Density;)V

    invoke-interface {p1, p0}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->setLayoutDirection(Landroidx/compose/ui/unit/LayoutDirection;)V

    return-void

    :catchall_0
    move-exception v0

    invoke-interface {p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getDrawContext()Landroidx/compose/ui/graphics/drawscope/DrawContext;

    move-result-object p1

    iget-object v1, p0, Landroidx/compose/ui/draw/CacheDrawScope$record$1$1;->$prevDensity:Landroidx/compose/ui/unit/Density;

    iget-object p0, p0, Landroidx/compose/ui/draw/CacheDrawScope$record$1$1;->$prevLayoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    invoke-interface {p1, v1}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->setDensity(Landroidx/compose/ui/unit/Density;)V

    invoke-interface {p1, p0}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->setLayoutDirection(Landroidx/compose/ui/unit/LayoutDirection;)V

    throw v0
.end method
