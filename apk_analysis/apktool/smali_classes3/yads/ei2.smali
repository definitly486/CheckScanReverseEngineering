.class public final Lyads/ei2;
.super Landroidx/recyclerview/widget/LinearSmoothScroller;
.source "SourceFile"


# instance fields
.field public final a:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/LinearSmoothScroller;-><init>(Landroid/content/Context;)V

    const/high16 p1, 0x42480000    # 50.0f

    iput p1, p0, Lyads/ei2;->a:F

    return-void
.end method


# virtual methods
.method public final calculateSpeedPerPixel(Landroid/util/DisplayMetrics;)F
    .locals 0

    iget p0, p0, Lyads/ei2;->a:F

    iget p1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float p1, p1

    div-float/2addr p0, p1

    return p0
.end method

.method public final getHorizontalSnapPreference()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public final getVerticalSnapPreference()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method
