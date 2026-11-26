.class public abstract Lyads/u20;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(D)I
    .locals 2

    const-wide/16 v0, 0x0

    cmpg-double v0, p0, v0

    if-ltz v0, :cond_0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, p0, v0

    if-gtz v0, :cond_0

    const-wide v0, 0x406fe00000000000L    # 255.0

    mul-double/2addr p0, v0

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    add-double/2addr p0, v0

    double-to-int p0, p0

    return p0

    :cond_0
    invoke-static {}, Lmi2;->b()V

    const/4 p0, 0x0

    return p0
.end method
