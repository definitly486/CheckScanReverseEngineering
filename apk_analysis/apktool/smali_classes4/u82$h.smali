.class public final Lu82$h;
.super Lu82;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu82;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "h"
.end annotation


# virtual methods
.method public final a(II)Z
    .locals 1

    add-int p0, p1, p2

    const/4 v0, 0x1

    and-int/2addr p0, v0

    mul-int/2addr p1, p2

    rem-int/lit8 p1, p1, 0x3

    add-int/2addr p1, p0

    and-int/lit8 p0, p1, 0x1

    if-nez p0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
