.class public final Landroidx/compose/material3/TooltipDefaults$rememberTooltipPositionProvider$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/window/PopupPositionProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material3/TooltipDefaults;->rememberTooltipPositionProvider-kHDZbjc(FLandroidx/compose/runtime/Composer;II)Landroidx/compose/ui/window/PopupPositionProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $tooltipAnchorSpacing:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    iput p1, p0, Landroidx/compose/material3/TooltipDefaults$rememberTooltipPositionProvider$1$1;->$tooltipAnchorSpacing:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public calculatePosition-llwVHH4(Landroidx/compose/ui/unit/IntRect;JLandroidx/compose/ui/unit/LayoutDirection;J)J
    .locals 4

    invoke-virtual {p1}, Landroidx/compose/ui/unit/IntRect;->getLeft()I

    move-result p4

    invoke-virtual {p1}, Landroidx/compose/ui/unit/IntRect;->getWidth()I

    move-result v0

    const/16 v1, 0x20

    shr-long v2, p5, v1

    long-to-int v2, v2

    const/4 v3, 0x2

    invoke-static {v0, v2, v3, p4}, Lk;->b(IIII)I

    move-result p4

    if-gez p4, :cond_0

    invoke-virtual {p1}, Landroidx/compose/ui/unit/IntRect;->getLeft()I

    move-result p4

    goto :goto_0

    :cond_0
    add-int v0, p4, v2

    shr-long/2addr p2, v1

    long-to-int p2, p2

    if-le v0, p2, :cond_1

    invoke-virtual {p1}, Landroidx/compose/ui/unit/IntRect;->getRight()I

    move-result p2

    sub-int p4, p2, v2

    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroidx/compose/ui/unit/IntRect;->getTop()I

    move-result p2

    const-wide v2, 0xffffffffL

    and-long/2addr p5, v2

    long-to-int p3, p5

    sub-int/2addr p2, p3

    iget p3, p0, Landroidx/compose/material3/TooltipDefaults$rememberTooltipPositionProvider$1$1;->$tooltipAnchorSpacing:I

    sub-int/2addr p2, p3

    if-gez p2, :cond_2

    invoke-virtual {p1}, Landroidx/compose/ui/unit/IntRect;->getBottom()I

    move-result p1

    iget p0, p0, Landroidx/compose/material3/TooltipDefaults$rememberTooltipPositionProvider$1$1;->$tooltipAnchorSpacing:I

    add-int p2, p1, p0

    :cond_2
    int-to-long p0, p4

    shl-long/2addr p0, v1

    int-to-long p2, p2

    and-long/2addr p2, v2

    or-long/2addr p0, p2

    invoke-static {p0, p1}, Landroidx/compose/ui/unit/IntOffset;->constructor-impl(J)J

    move-result-wide p0

    return-wide p0
.end method
