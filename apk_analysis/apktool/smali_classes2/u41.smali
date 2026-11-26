.class public final synthetic Lu41;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Landroidx/compose/material3/carousel/CarouselState;

.field public final synthetic c:Landroidx/compose/material3/carousel/Strategy;

.field public final synthetic d:I

.field public final synthetic e:Z

.field public final synthetic f:Landroidx/compose/material3/carousel/CarouselItemDrawInfoImpl;

.field public final synthetic g:Landroidx/compose/ui/graphics/Shape;

.field public final synthetic h:Z


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/material3/carousel/CarouselState;Landroidx/compose/material3/carousel/Strategy;IZLandroidx/compose/material3/carousel/CarouselItemDrawInfoImpl;Landroidx/compose/ui/graphics/Shape;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu41;->b:Landroidx/compose/material3/carousel/CarouselState;

    iput-object p2, p0, Lu41;->c:Landroidx/compose/material3/carousel/Strategy;

    iput p3, p0, Lu41;->d:I

    iput-boolean p4, p0, Lu41;->e:Z

    iput-object p5, p0, Lu41;->f:Landroidx/compose/material3/carousel/CarouselItemDrawInfoImpl;

    iput-object p6, p0, Lu41;->g:Landroidx/compose/ui/graphics/Shape;

    iput-boolean p7, p0, Lu41;->h:Z

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    iget-boolean v6, p0, Lu41;->h:Z

    move-object v7, p1

    check-cast v7, Landroidx/compose/ui/graphics/GraphicsLayerScope;

    iget-object v0, p0, Lu41;->b:Landroidx/compose/material3/carousel/CarouselState;

    iget-object v1, p0, Lu41;->c:Landroidx/compose/material3/carousel/Strategy;

    iget v2, p0, Lu41;->d:I

    iget-boolean v3, p0, Lu41;->e:Z

    iget-object v4, p0, Lu41;->f:Landroidx/compose/material3/carousel/CarouselItemDrawInfoImpl;

    iget-object v5, p0, Lu41;->g:Landroidx/compose/ui/graphics/Shape;

    invoke-static/range {v0 .. v7}, Landroidx/compose/material3/carousel/CarouselKt;->m(Landroidx/compose/material3/carousel/CarouselState;Landroidx/compose/material3/carousel/Strategy;IZLandroidx/compose/material3/carousel/CarouselItemDrawInfoImpl;Landroidx/compose/ui/graphics/Shape;ZLandroidx/compose/ui/graphics/GraphicsLayerScope;)Lj59;

    move-result-object p0

    return-object p0
.end method
