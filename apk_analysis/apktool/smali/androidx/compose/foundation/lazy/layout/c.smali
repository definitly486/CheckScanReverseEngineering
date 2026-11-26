.class public final synthetic Landroidx/compose/foundation/lazy/layout/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;

.field public final synthetic c:J


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/lazy/layout/c;->b:Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;

    iput-wide p2, p0, Landroidx/compose/foundation/lazy/layout/c;->c:J

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-wide v0, p0, Landroidx/compose/foundation/lazy/layout/c;->c:J

    check-cast p1, Landroidx/compose/animation/core/Animatable;

    iget-object p0, p0, Landroidx/compose/foundation/lazy/layout/c;->b:Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;

    invoke-static {p0, v0, v1, p1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation$animatePlacementDelta$1;->g(Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;JLandroidx/compose/animation/core/Animatable;)Lj59;

    move-result-object p0

    return-object p0
.end method
