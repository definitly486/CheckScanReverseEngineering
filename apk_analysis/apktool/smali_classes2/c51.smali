.class public final synthetic Lc51;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldm3;


# instance fields
.field public final synthetic b:Lll3;

.field public final synthetic c:Landroidx/compose/material3/carousel/CarouselState;

.field public final synthetic d:I

.field public final synthetic e:Landroidx/compose/material3/carousel/CarouselItemDrawInfoImpl;

.field public final synthetic f:Landroidx/compose/ui/graphics/Shape;


# direct methods
.method public synthetic constructor <init>(Lll3;Landroidx/compose/material3/carousel/CarouselState;ILandroidx/compose/material3/carousel/CarouselItemDrawInfoImpl;Landroidx/compose/ui/graphics/Shape;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc51;->b:Lll3;

    iput-object p2, p0, Lc51;->c:Landroidx/compose/material3/carousel/CarouselState;

    iput p3, p0, Lc51;->d:I

    iput-object p4, p0, Lc51;->e:Landroidx/compose/material3/carousel/CarouselItemDrawInfoImpl;

    iput-object p5, p0, Lc51;->f:Landroidx/compose/ui/graphics/Shape;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    move-object v5, p1

    check-cast v5, Landroidx/compose/ui/layout/MeasureScope;

    move-object v6, p2

    check-cast v6, Landroidx/compose/ui/layout/Measurable;

    move-object v7, p3

    check-cast v7, Landroidx/compose/ui/unit/Constraints;

    iget-object v0, p0, Lc51;->b:Lll3;

    iget-object v1, p0, Lc51;->c:Landroidx/compose/material3/carousel/CarouselState;

    iget v2, p0, Lc51;->d:I

    iget-object v3, p0, Lc51;->e:Landroidx/compose/material3/carousel/CarouselItemDrawInfoImpl;

    iget-object v4, p0, Lc51;->f:Landroidx/compose/ui/graphics/Shape;

    invoke-static/range {v0 .. v7}, Landroidx/compose/material3/carousel/CarouselKt;->d(Lll3;Landroidx/compose/material3/carousel/CarouselState;ILandroidx/compose/material3/carousel/CarouselItemDrawInfoImpl;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Measurable;Landroidx/compose/ui/unit/Constraints;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object p0

    return-object p0
.end method
