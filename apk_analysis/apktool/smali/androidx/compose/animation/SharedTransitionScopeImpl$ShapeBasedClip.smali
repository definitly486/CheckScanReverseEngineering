.class final Landroidx/compose/animation/SharedTransitionScopeImpl$ShapeBasedClip;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/animation/SharedTransitionScope$OverlayClip;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/animation/SharedTransitionScopeImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ShapeBasedClip"
.end annotation


# instance fields
.field private final clipShape:Landroidx/compose/ui/graphics/Shape;

.field private final path:Landroidx/compose/ui/graphics/Path;


# direct methods
.method public constructor <init>(Landroidx/compose/ui/graphics/Shape;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/animation/SharedTransitionScopeImpl$ShapeBasedClip;->clipShape:Landroidx/compose/ui/graphics/Shape;

    invoke-static {}, Landroidx/compose/ui/graphics/AndroidPath_androidKt;->Path()Landroidx/compose/ui/graphics/Path;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/animation/SharedTransitionScopeImpl$ShapeBasedClip;->path:Landroidx/compose/ui/graphics/Path;

    return-void
.end method


# virtual methods
.method public getClipPath(Landroidx/compose/animation/SharedTransitionScope$SharedContentState;Landroidx/compose/ui/geometry/Rect;Landroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/unit/Density;)Landroidx/compose/ui/graphics/Path;
    .locals 3

    iget-object p1, p0, Landroidx/compose/animation/SharedTransitionScopeImpl$ShapeBasedClip;->path:Landroidx/compose/ui/graphics/Path;

    invoke-interface {p1}, Landroidx/compose/ui/graphics/Path;->reset()V

    iget-object p1, p0, Landroidx/compose/animation/SharedTransitionScopeImpl$ShapeBasedClip;->path:Landroidx/compose/ui/graphics/Path;

    iget-object v0, p0, Landroidx/compose/animation/SharedTransitionScopeImpl$ShapeBasedClip;->clipShape:Landroidx/compose/ui/graphics/Shape;

    invoke-virtual {p2}, Landroidx/compose/ui/geometry/Rect;->getSize-NH-jbRc()J

    move-result-wide v1

    invoke-interface {v0, v1, v2, p3, p4}, Landroidx/compose/ui/graphics/Shape;->createOutline-Pq9zytI(JLandroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/unit/Density;)Landroidx/compose/ui/graphics/Outline;

    move-result-object p3

    invoke-static {p1, p3}, Landroidx/compose/ui/graphics/OutlineKt;->addOutline(Landroidx/compose/ui/graphics/Path;Landroidx/compose/ui/graphics/Outline;)V

    iget-object p1, p0, Landroidx/compose/animation/SharedTransitionScopeImpl$ShapeBasedClip;->path:Landroidx/compose/ui/graphics/Path;

    invoke-virtual {p2}, Landroidx/compose/ui/geometry/Rect;->getTopLeft-F1C5BW0()J

    move-result-wide p2

    invoke-interface {p1, p2, p3}, Landroidx/compose/ui/graphics/Path;->translate-k-4lQ0M(J)V

    iget-object p0, p0, Landroidx/compose/animation/SharedTransitionScopeImpl$ShapeBasedClip;->path:Landroidx/compose/ui/graphics/Path;

    return-object p0
.end method

.method public final getClipShape()Landroidx/compose/ui/graphics/Shape;
    .locals 0

    iget-object p0, p0, Landroidx/compose/animation/SharedTransitionScopeImpl$ShapeBasedClip;->clipShape:Landroidx/compose/ui/graphics/Shape;

    return-object p0
.end method
