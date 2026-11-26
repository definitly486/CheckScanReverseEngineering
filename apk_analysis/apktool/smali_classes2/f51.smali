.class public final synthetic Lf51;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Landroidx/compose/ui/layout/Placeable;

.field public final synthetic c:F

.field public final synthetic d:Landroidx/compose/material3/carousel/CarouselState;

.field public final synthetic e:Landroidx/compose/material3/carousel/Strategy;

.field public final synthetic f:I

.field public final synthetic g:Z

.field public final synthetic h:Landroidx/compose/material3/carousel/CarouselItemDrawInfoImpl;

.field public final synthetic i:Landroidx/compose/ui/graphics/Shape;

.field public final synthetic j:Z


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/layout/Placeable;FLandroidx/compose/material3/carousel/CarouselState;Landroidx/compose/material3/carousel/Strategy;IZLandroidx/compose/material3/carousel/CarouselItemDrawInfoImpl;Landroidx/compose/ui/graphics/Shape;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf51;->b:Landroidx/compose/ui/layout/Placeable;

    iput p2, p0, Lf51;->c:F

    iput-object p3, p0, Lf51;->d:Landroidx/compose/material3/carousel/CarouselState;

    iput-object p4, p0, Lf51;->e:Landroidx/compose/material3/carousel/Strategy;

    iput p5, p0, Lf51;->f:I

    iput-boolean p6, p0, Lf51;->g:Z

    iput-object p7, p0, Lf51;->h:Landroidx/compose/material3/carousel/CarouselItemDrawInfoImpl;

    iput-object p8, p0, Lf51;->i:Landroidx/compose/ui/graphics/Shape;

    iput-boolean p9, p0, Lf51;->j:Z

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    iget-boolean v8, p0, Lf51;->j:Z

    move-object v9, p1

    check-cast v9, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    iget-object v0, p0, Lf51;->b:Landroidx/compose/ui/layout/Placeable;

    iget v1, p0, Lf51;->c:F

    iget-object v2, p0, Lf51;->d:Landroidx/compose/material3/carousel/CarouselState;

    iget-object v3, p0, Lf51;->e:Landroidx/compose/material3/carousel/Strategy;

    iget v4, p0, Lf51;->f:I

    iget-boolean v5, p0, Lf51;->g:Z

    iget-object v6, p0, Lf51;->h:Landroidx/compose/material3/carousel/CarouselItemDrawInfoImpl;

    iget-object v7, p0, Lf51;->i:Landroidx/compose/ui/graphics/Shape;

    invoke-static/range {v0 .. v9}, Landroidx/compose/material3/carousel/CarouselKt;->g(Landroidx/compose/ui/layout/Placeable;FLandroidx/compose/material3/carousel/CarouselState;Landroidx/compose/material3/carousel/Strategy;IZLandroidx/compose/material3/carousel/CarouselItemDrawInfoImpl;Landroidx/compose/ui/graphics/Shape;ZLandroidx/compose/ui/layout/Placeable$PlacementScope;)Lj59;

    move-result-object p0

    return-object p0
.end method
