.class final Landroidx/compose/animation/BoundsAnimation$animate$2;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/animation/BoundsAnimation;->animate(Landroidx/compose/ui/geometry/Rect;Landroidx/compose/ui/geometry/Rect;Landroidx/compose/animation/BoundsTransform;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lnl3<",
        "Ljava/lang/Boolean;",
        "Landroidx/compose/ui/geometry/Rect;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $currentBounds:Landroidx/compose/ui/geometry/Rect;

.field final synthetic $targetBounds:Landroidx/compose/ui/geometry/Rect;

.field final synthetic this$0:Landroidx/compose/animation/BoundsAnimation;


# direct methods
.method public constructor <init>(Landroidx/compose/animation/BoundsAnimation;Landroidx/compose/ui/geometry/Rect;Landroidx/compose/ui/geometry/Rect;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/animation/BoundsAnimation$animate$2;->this$0:Landroidx/compose/animation/BoundsAnimation;

    iput-object p2, p0, Landroidx/compose/animation/BoundsAnimation$animate$2;->$targetBounds:Landroidx/compose/ui/geometry/Rect;

    iput-object p3, p0, Landroidx/compose/animation/BoundsAnimation$animate$2;->$currentBounds:Landroidx/compose/ui/geometry/Rect;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Z)Landroidx/compose/ui/geometry/Rect;
    .locals 1

    iget-object v0, p0, Landroidx/compose/animation/BoundsAnimation$animate$2;->this$0:Landroidx/compose/animation/BoundsAnimation;

    invoke-virtual {v0}, Landroidx/compose/animation/BoundsAnimation;->getTransition()Landroidx/compose/animation/core/Transition;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/animation/core/Transition;->getTargetState()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Landroidx/compose/animation/BoundsAnimation$animate$2;->$targetBounds:Landroidx/compose/ui/geometry/Rect;

    return-object p0

    :cond_0
    iget-object p0, p0, Landroidx/compose/animation/BoundsAnimation$animate$2;->$currentBounds:Landroidx/compose/ui/geometry/Rect;

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 24
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/compose/animation/BoundsAnimation$animate$2;->invoke(Z)Landroidx/compose/ui/geometry/Rect;

    move-result-object p0

    return-object p0
.end method
