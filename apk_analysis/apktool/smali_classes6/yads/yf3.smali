.class public abstract Lyads/yf3;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()F
    .locals 2

    instance-of v0, p0, Lyads/xf3;

    if-eqz v0, :cond_0

    check-cast p0, Lyads/xf3;

    iget p0, p0, Lyads/xf3;->b:F

    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-float p0, v0

    return p0

    :cond_0
    instance-of v0, p0, Lyads/wf3;

    if-eqz v0, :cond_1

    check-cast p0, Lyads/wf3;

    iget p0, p0, Lyads/wf3;->a:F

    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr p0, v0

    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-float p0, v0

    return p0

    :cond_1
    invoke-static {}, Lme0;->e()V

    const/4 p0, 0x0

    return p0
.end method

.method public final b()F
    .locals 2

    instance-of v0, p0, Lyads/xf3;

    if-eqz v0, :cond_0

    check-cast p0, Lyads/xf3;

    iget p0, p0, Lyads/xf3;->a:F

    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-float p0, v0

    return p0

    :cond_0
    instance-of v0, p0, Lyads/wf3;

    if-eqz v0, :cond_1

    check-cast p0, Lyads/wf3;

    iget p0, p0, Lyads/wf3;->a:F

    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr p0, v0

    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-float p0, v0

    return p0

    :cond_1
    invoke-static {}, Lme0;->e()V

    const/4 p0, 0x0

    return p0
.end method
