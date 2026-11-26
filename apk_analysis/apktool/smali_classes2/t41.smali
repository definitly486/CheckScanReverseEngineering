.class public final synthetic Lt41;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldm3;


# instance fields
.field public final synthetic b:Landroidx/compose/material3/carousel/CarouselItemScopeImpl;

.field public final synthetic c:Landroidx/compose/ui/graphics/Shape;

.field public final synthetic d:Landroidx/compose/ui/unit/Density;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/material3/carousel/CarouselItemScopeImpl;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/ui/unit/Density;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt41;->b:Landroidx/compose/material3/carousel/CarouselItemScopeImpl;

    iput-object p2, p0, Lt41;->c:Landroidx/compose/ui/graphics/Shape;

    iput-object p3, p0, Lt41;->d:Landroidx/compose/ui/unit/Density;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    move-object v3, p1

    check-cast v3, Landroidx/compose/ui/graphics/Path;

    move-object v4, p2

    check-cast v4, Landroidx/compose/ui/geometry/Size;

    move-object v5, p3

    check-cast v5, Landroidx/compose/ui/unit/LayoutDirection;

    iget-object v0, p0, Lt41;->b:Landroidx/compose/material3/carousel/CarouselItemScopeImpl;

    iget-object v1, p0, Lt41;->c:Landroidx/compose/ui/graphics/Shape;

    iget-object v2, p0, Lt41;->d:Landroidx/compose/ui/unit/Density;

    invoke-static/range {v0 .. v5}, Landroidx/compose/material3/carousel/CarouselItemScopeImpl;->a(Landroidx/compose/material3/carousel/CarouselItemScopeImpl;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/graphics/Path;Landroidx/compose/ui/geometry/Size;Landroidx/compose/ui/unit/LayoutDirection;)Lj59;

    move-result-object p0

    return-object p0
.end method
