.class public final Landroidx/compose/foundation/text/input/internal/IntIntervalTreeKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final LeftVisited:I = 0x1

.field public static final RightVisited:I = 0x2

.field public static final TreeColorBlack:I = 0x1

.field public static final TreeColorDeleted:I = 0x2

.field public static final TreeColorRed:I

.field public static final Unvisited:I


# direct methods
.method public static final intersect(IIII)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p0, p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    if-ne p2, p3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v0

    :goto_1
    or-int/2addr v2, v3

    if-ne p0, p2, :cond_2

    move v3, v1

    goto :goto_2

    :cond_2
    move v3, v0

    :goto_2
    and-int/2addr v2, v3

    if-ge p0, p3, :cond_3

    move p0, v1

    goto :goto_3

    :cond_3
    move p0, v0

    :goto_3
    if-ge p2, p1, :cond_4

    move v0, v1

    :cond_4
    and-int/2addr p0, v0

    or-int/2addr p0, v2

    return p0
.end method
