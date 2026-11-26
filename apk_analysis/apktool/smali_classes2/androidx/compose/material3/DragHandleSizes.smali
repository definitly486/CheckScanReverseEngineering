.class public final Landroidx/compose/material3/DragHandleSizes;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final $stable:I


# instance fields
.field private final draggedSize:J

.field private final pressedSize:J

.field private final size:J


# direct methods
.method private constructor <init>(JJJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroidx/compose/material3/DragHandleSizes;->size:J

    iput-wide p3, p0, Landroidx/compose/material3/DragHandleSizes;->pressedSize:J

    iput-wide p5, p0, Landroidx/compose/material3/DragHandleSizes;->draggedSize:J

    return-void
.end method

.method public synthetic constructor <init>(JJJLjh2;)V
    .locals 0

    .line 10
    invoke-direct/range {p0 .. p6}, Landroidx/compose/material3/DragHandleSizes;-><init>(JJJ)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_5

    instance-of v2, p1, Landroidx/compose/material3/DragHandleSizes;

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    iget-wide v2, p0, Landroidx/compose/material3/DragHandleSizes;->size:J

    check-cast p1, Landroidx/compose/material3/DragHandleSizes;

    iget-wide v4, p1, Landroidx/compose/material3/DragHandleSizes;->size:J

    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/unit/DpSize;->equals-impl0(JJ)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    :cond_2
    iget-wide v2, p0, Landroidx/compose/material3/DragHandleSizes;->pressedSize:J

    iget-wide v4, p1, Landroidx/compose/material3/DragHandleSizes;->pressedSize:J

    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/unit/DpSize;->equals-impl0(JJ)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    iget-wide v2, p0, Landroidx/compose/material3/DragHandleSizes;->draggedSize:J

    iget-wide p0, p1, Landroidx/compose/material3/DragHandleSizes;->draggedSize:J

    invoke-static {v2, v3, p0, p1}, Landroidx/compose/ui/unit/DpSize;->equals-impl0(JJ)Z

    move-result p0

    if-nez p0, :cond_4

    return v1

    :cond_4
    return v0

    :cond_5
    :goto_0
    return v1
.end method

.method public final getDraggedSize-MYxV2XQ()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/material3/DragHandleSizes;->draggedSize:J

    return-wide v0
.end method

.method public final getPressedSize-MYxV2XQ()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/material3/DragHandleSizes;->pressedSize:J

    return-wide v0
.end method

.method public final getSize-MYxV2XQ()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/material3/DragHandleSizes;->size:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 4

    iget-wide v0, p0, Landroidx/compose/material3/DragHandleSizes;->size:J

    invoke-static {v0, v1}, Landroidx/compose/ui/unit/DpSize;->hashCode-impl(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Landroidx/compose/material3/DragHandleSizes;->pressedSize:J

    invoke-static {v1, v2}, Landroidx/compose/ui/unit/DpSize;->hashCode-impl(J)I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-wide v2, p0, Landroidx/compose/material3/DragHandleSizes;->draggedSize:J

    invoke-static {v2, v3}, Landroidx/compose/ui/unit/DpSize;->hashCode-impl(J)I

    move-result p0

    add-int/2addr p0, v1

    return p0
.end method
