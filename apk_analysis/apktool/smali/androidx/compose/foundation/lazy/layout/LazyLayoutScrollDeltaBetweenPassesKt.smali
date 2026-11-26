.class public final Landroidx/compose/foundation/lazy/layout/LazyLayoutScrollDeltaBetweenPassesKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DeltaThresholdForScrollAnimation:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    sput v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutScrollDeltaBetweenPassesKt;->DeltaThresholdForScrollAnimation:F

    return-void
.end method

.method public static final synthetic access$getDeltaThresholdForScrollAnimation$p()F
    .locals 1

    sget v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutScrollDeltaBetweenPassesKt;->DeltaThresholdForScrollAnimation:F

    return v0
.end method
