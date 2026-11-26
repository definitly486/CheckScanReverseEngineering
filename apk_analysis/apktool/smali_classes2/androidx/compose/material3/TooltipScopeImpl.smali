.class public final Landroidx/compose/material3/TooltipScopeImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/material3/TooltipScope;


# static fields
.field public static final $stable:I


# instance fields
.field private final getAnchorBounds:Lll3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lll3<",
            "Landroidx/compose/ui/layout/LayoutCoordinates;",
            ">;"
        }
    .end annotation
.end field

.field private final positionProvider:Landroidx/compose/ui/window/PopupPositionProvider;


# direct methods
.method public constructor <init>(Lll3;Landroidx/compose/ui/window/PopupPositionProvider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lll3<",
            "+",
            "Landroidx/compose/ui/layout/LayoutCoordinates;",
            ">;",
            "Landroidx/compose/ui/window/PopupPositionProvider;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/material3/TooltipScopeImpl;->getAnchorBounds:Lll3;

    iput-object p2, p0, Landroidx/compose/material3/TooltipScopeImpl;->positionProvider:Landroidx/compose/ui/window/PopupPositionProvider;

    return-void
.end method

.method public static synthetic a(Lbm3;Landroidx/compose/material3/TooltipScopeImpl;Landroidx/compose/ui/draw/CacheDrawScope;)Landroidx/compose/ui/draw/DrawResult;
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/compose/material3/TooltipScopeImpl;->drawCaret$lambda$0(Lbm3;Landroidx/compose/material3/TooltipScopeImpl;Landroidx/compose/ui/draw/CacheDrawScope;)Landroidx/compose/ui/draw/DrawResult;

    move-result-object p0

    return-object p0
.end method

.method private static final drawCaret$lambda$0(Lbm3;Landroidx/compose/material3/TooltipScopeImpl;Landroidx/compose/ui/draw/CacheDrawScope;)Landroidx/compose/ui/draw/DrawResult;
    .locals 0

    iget-object p1, p1, Landroidx/compose/material3/TooltipScopeImpl;->getAnchorBounds:Lll3;

    invoke-interface {p1}, Lll3;->invoke()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p2, p1}, Lbm3;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/draw/DrawResult;

    return-object p0
.end method


# virtual methods
.method public synthetic drawCaret(Landroidx/compose/ui/Modifier;Lbm3;)Landroidx/compose/ui/Modifier;
    .locals 2
    .annotation runtime Lul2;
    .end annotation

    new-instance v0, Lux8;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p2, p0}, Lux8;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-static {p1, v0}, Landroidx/compose/ui/draw/DrawModifierKt;->drawWithCache(Landroidx/compose/ui/Modifier;Lnl3;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method

.method public final getGetAnchorBounds()Lll3;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lll3<",
            "Landroidx/compose/ui/layout/LayoutCoordinates;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/material3/TooltipScopeImpl;->getAnchorBounds:Lll3;

    return-object p0
.end method

.method public final getPositionProvider()Landroidx/compose/ui/window/PopupPositionProvider;
    .locals 0

    iget-object p0, p0, Landroidx/compose/material3/TooltipScopeImpl;->positionProvider:Landroidx/compose/ui/window/PopupPositionProvider;

    return-object p0
.end method

.method public obtainAnchorBounds(Landroidx/compose/ui/layout/MeasureScope;)Landroidx/compose/ui/layout/LayoutCoordinates;
    .locals 0

    iget-object p0, p0, Landroidx/compose/material3/TooltipScopeImpl;->getAnchorBounds:Lll3;

    invoke-interface {p0}, Lll3;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/layout/LayoutCoordinates;

    return-object p0
.end method

.method public obtainPositionProvider()Landroidx/compose/ui/window/PopupPositionProvider;
    .locals 0

    iget-object p0, p0, Landroidx/compose/material3/TooltipScopeImpl;->positionProvider:Landroidx/compose/ui/window/PopupPositionProvider;

    return-object p0
.end method
