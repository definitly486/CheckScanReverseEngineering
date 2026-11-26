.class public final Landroidx/compose/foundation/gestures/TransformEvent$TransformDelta;
.super Landroidx/compose/foundation/gestures/TransformEvent;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/foundation/gestures/TransformEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TransformDelta"
.end annotation


# static fields
.field public static final $stable:I


# instance fields
.field private final centroid:J

.field private final panChange:J

.field private final rotationChange:F

.field private final zoomChange:F


# direct methods
.method private constructor <init>(JFJF)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/compose/foundation/gestures/TransformEvent;-><init>(Ljh2;)V

    iput-wide p1, p0, Landroidx/compose/foundation/gestures/TransformEvent$TransformDelta;->centroid:J

    iput p3, p0, Landroidx/compose/foundation/gestures/TransformEvent$TransformDelta;->zoomChange:F

    iput-wide p4, p0, Landroidx/compose/foundation/gestures/TransformEvent$TransformDelta;->panChange:J

    iput p6, p0, Landroidx/compose/foundation/gestures/TransformEvent$TransformDelta;->rotationChange:F

    return-void
.end method

.method public synthetic constructor <init>(JFJFLjh2;)V
    .locals 0

    .line 13
    invoke-direct/range {p0 .. p6}, Landroidx/compose/foundation/gestures/TransformEvent$TransformDelta;-><init>(JFJF)V

    return-void
.end method


# virtual methods
.method public final getCentroid-F1C5BW0()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/foundation/gestures/TransformEvent$TransformDelta;->centroid:J

    return-wide v0
.end method

.method public final getPanChange-F1C5BW0()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/foundation/gestures/TransformEvent$TransformDelta;->panChange:J

    return-wide v0
.end method

.method public final getRotationChange()F
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/gestures/TransformEvent$TransformDelta;->rotationChange:F

    return p0
.end method

.method public final getZoomChange()F
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/gestures/TransformEvent$TransformDelta;->zoomChange:F

    return p0
.end method
