.class public final Landroidx/compose/ui/input/pointer/util/VelocityTracker;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private final platformVelocityTracker:Landroidx/compose/ui/input/pointer/util/PlatformVelocityTracker;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroidx/compose/ui/input/pointer/util/PlatformVelocityTracker_androidKt;->PlatformVelocityTracker()Landroidx/compose/ui/input/pointer/util/PlatformVelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/ui/input/pointer/util/VelocityTracker;->platformVelocityTracker:Landroidx/compose/ui/input/pointer/util/PlatformVelocityTracker;

    return-void
.end method


# virtual methods
.method public final addPosition-Uv8p0NA(JJ)V
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/input/pointer/util/VelocityTracker;->platformVelocityTracker:Landroidx/compose/ui/input/pointer/util/PlatformVelocityTracker;

    invoke-interface {p0, p1, p2, p3, p4}, Landroidx/compose/ui/input/pointer/util/PlatformVelocityTracker;->addPosition-Uv8p0NA(JJ)V

    return-void
.end method

.method public final calculateVelocity-9UxMQ8M()J
    .locals 2

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    invoke-static {v0, v0}, Landroidx/compose/ui/unit/VelocityKt;->Velocity(FF)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroidx/compose/ui/input/pointer/util/VelocityTracker;->calculateVelocity-AH228Gc(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final calculateVelocity-AH228Gc(J)J
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/input/pointer/util/VelocityTracker;->platformVelocityTracker:Landroidx/compose/ui/input/pointer/util/PlatformVelocityTracker;

    invoke-interface {p0, p1, p2}, Landroidx/compose/ui/input/pointer/util/PlatformVelocityTracker;->calculateVelocity-AH228Gc(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public final getPlatformVelocityTracker$ui()Landroidx/compose/ui/input/pointer/util/PlatformVelocityTracker;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/input/pointer/util/VelocityTracker;->platformVelocityTracker:Landroidx/compose/ui/input/pointer/util/PlatformVelocityTracker;

    return-object p0
.end method

.method public final resetTracking()V
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/input/pointer/util/VelocityTracker;->platformVelocityTracker:Landroidx/compose/ui/input/pointer/util/PlatformVelocityTracker;

    invoke-interface {p0}, Landroidx/compose/ui/input/pointer/util/PlatformVelocityTracker;->resetTracking()V

    return-void
.end method
