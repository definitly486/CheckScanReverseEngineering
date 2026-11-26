.class public final Landroidx/camera/viewfinder/core/ZoomGestureDetector$ZoomEvent$Move;
.super Landroidx/camera/viewfinder/core/ZoomGestureDetector$ZoomEvent;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/viewfinder/core/ZoomGestureDetector$ZoomEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Move"
.end annotation


# instance fields
.field private final incrementalScaleFactor:F


# direct methods
.method public constructor <init>(JIIF)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Landroidx/camera/viewfinder/core/ZoomGestureDetector$ZoomEvent;-><init>(JIILjh2;)V

    iput p5, v0, Landroidx/camera/viewfinder/core/ZoomGestureDetector$ZoomEvent$Move;->incrementalScaleFactor:F

    return-void
.end method


# virtual methods
.method public final getIncrementalScaleFactor()F
    .locals 0

    iget p0, p0, Landroidx/camera/viewfinder/core/ZoomGestureDetector$ZoomEvent$Move;->incrementalScaleFactor:F

    return p0
.end method
