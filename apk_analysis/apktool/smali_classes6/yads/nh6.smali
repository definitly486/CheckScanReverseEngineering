.class public abstract Lyads/nh6;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/lang/Object;)Lyads/hp0;
    .locals 2

    .line 12
    new-instance v0, Lyads/hp0;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lyads/hp0;-><init>(Lnl3;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static final a(I)Z
    .locals 1

    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p0

    const/high16 v0, 0x40000000    # 2.0f

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
