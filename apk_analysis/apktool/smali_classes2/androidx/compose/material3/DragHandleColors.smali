.class public final Landroidx/compose/material3/DragHandleColors;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final $stable:I


# instance fields
.field private final color:J

.field private final draggedColor:J

.field private final pressedColor:J


# direct methods
.method private constructor <init>(JJJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroidx/compose/material3/DragHandleColors;->color:J

    iput-wide p3, p0, Landroidx/compose/material3/DragHandleColors;->pressedColor:J

    iput-wide p5, p0, Landroidx/compose/material3/DragHandleColors;->draggedColor:J

    return-void
.end method

.method public synthetic constructor <init>(JJJLjh2;)V
    .locals 0

    .line 10
    invoke-direct/range {p0 .. p6}, Landroidx/compose/material3/DragHandleColors;-><init>(JJJ)V

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

    instance-of v2, p1, Landroidx/compose/material3/DragHandleColors;

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    iget-wide v2, p0, Landroidx/compose/material3/DragHandleColors;->color:J

    check-cast p1, Landroidx/compose/material3/DragHandleColors;

    iget-wide v4, p1, Landroidx/compose/material3/DragHandleColors;->color:J

    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    :cond_2
    iget-wide v2, p0, Landroidx/compose/material3/DragHandleColors;->pressedColor:J

    iget-wide v4, p1, Landroidx/compose/material3/DragHandleColors;->pressedColor:J

    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    iget-wide v2, p0, Landroidx/compose/material3/DragHandleColors;->draggedColor:J

    iget-wide p0, p1, Landroidx/compose/material3/DragHandleColors;->draggedColor:J

    invoke-static {v2, v3, p0, p1}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result p0

    if-nez p0, :cond_4

    return v1

    :cond_4
    return v0

    :cond_5
    :goto_0
    return v1
.end method

.method public final getColor-0d7_KjU()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/material3/DragHandleColors;->color:J

    return-wide v0
.end method

.method public final getDraggedColor-0d7_KjU()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/material3/DragHandleColors;->draggedColor:J

    return-wide v0
.end method

.method public final getPressedColor-0d7_KjU()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/material3/DragHandleColors;->pressedColor:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 4

    iget-wide v0, p0, Landroidx/compose/material3/DragHandleColors;->color:J

    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/Color;->hashCode-impl(J)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-wide v2, p0, Landroidx/compose/material3/DragHandleColors;->pressedColor:J

    invoke-static {v0, v1, v2, v3}, Lr01;->b(IIJ)I

    move-result v0

    iget-wide v1, p0, Landroidx/compose/material3/DragHandleColors;->draggedColor:J

    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->hashCode-impl(J)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method
