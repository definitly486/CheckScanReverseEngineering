.class public final Landroidx/compose/material3/DefaultTooltipCaretShape;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/graphics/Shape;


# static fields
.field public static final $stable:I


# instance fields
.field private final caretSize:J


# direct methods
.method private constructor <init>(J)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroidx/compose/material3/DefaultTooltipCaretShape;->caretSize:J

    return-void
.end method

.method public synthetic constructor <init>(JILjh2;)V
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    sget-object p1, Landroidx/compose/material3/TooltipDefaults;->INSTANCE:Landroidx/compose/material3/TooltipDefaults;

    invoke-virtual {p1}, Landroidx/compose/material3/TooltipDefaults;->getCaretSize-MYxV2XQ()J

    move-result-wide p1

    :cond_0
    const/4 p3, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/material3/DefaultTooltipCaretShape;-><init>(JLjh2;)V

    return-void
.end method

.method public synthetic constructor <init>(JLjh2;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1, p2}, Landroidx/compose/material3/DefaultTooltipCaretShape;-><init>(J)V

    return-void
.end method


# virtual methods
.method public createOutline-Pq9zytI(JLandroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/unit/Density;)Landroidx/compose/ui/graphics/Outline;
    .locals 2

    invoke-static {}, Landroidx/compose/ui/graphics/AndroidPath_androidKt;->Path()Landroidx/compose/ui/graphics/Path;

    move-result-object p1

    iget-wide p2, p0, Landroidx/compose/material3/DefaultTooltipCaretShape;->caretSize:J

    invoke-static {p2, p3}, Landroidx/compose/ui/unit/DpSize;->getWidth-D9Ej5fM(J)F

    move-result p2

    invoke-interface {p4, p2}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    move-result p2

    iget-wide v0, p0, Landroidx/compose/material3/DefaultTooltipCaretShape;->caretSize:J

    invoke-static {v0, v1}, Landroidx/compose/ui/unit/DpSize;->getHeight-D9Ej5fM(J)F

    move-result p0

    invoke-interface {p4, p0}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    move-result p0

    const/4 p3, 0x0

    invoke-interface {p1, p3, p3}, Landroidx/compose/ui/graphics/Path;->moveTo(FF)V

    const/high16 p4, 0x40000000    # 2.0f

    div-float v0, p2, p4

    invoke-interface {p1, v0, p3}, Landroidx/compose/ui/graphics/Path;->lineTo(FF)V

    invoke-interface {p1, p3, p0}, Landroidx/compose/ui/graphics/Path;->lineTo(FF)V

    neg-float p0, p2

    div-float/2addr p0, p4

    invoke-interface {p1, p0, p3}, Landroidx/compose/ui/graphics/Path;->lineTo(FF)V

    invoke-interface {p1}, Landroidx/compose/ui/graphics/Path;->close()V

    new-instance p0, Landroidx/compose/ui/graphics/Outline$Generic;

    invoke-direct {p0, p1}, Landroidx/compose/ui/graphics/Outline$Generic;-><init>(Landroidx/compose/ui/graphics/Path;)V

    return-object p0
.end method

.method public final getCaretSize-MYxV2XQ()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/material3/DefaultTooltipCaretShape;->caretSize:J

    return-wide v0
.end method
