.class public final synthetic Lw41;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Landroidx/compose/material3/carousel/CarouselPageSize;

.field public final synthetic c:Landroidx/compose/material3/carousel/CarouselState;

.field public final synthetic d:F

.field public final synthetic e:J


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/material3/carousel/CarouselPageSize;Landroidx/compose/material3/carousel/CarouselState;FJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw41;->b:Landroidx/compose/material3/carousel/CarouselPageSize;

    iput-object p2, p0, Lw41;->c:Landroidx/compose/material3/carousel/CarouselState;

    iput p3, p0, Lw41;->d:F

    iput-wide p4, p0, Lw41;->e:J

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iget-wide v3, p0, Lw41;->e:J

    move-object v5, p1

    check-cast v5, Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;

    iget-object v0, p0, Lw41;->b:Landroidx/compose/material3/carousel/CarouselPageSize;

    iget-object v1, p0, Lw41;->c:Landroidx/compose/material3/carousel/CarouselState;

    iget v2, p0, Lw41;->d:F

    invoke-static/range {v0 .. v5}, Landroidx/compose/material3/carousel/CarouselKt;->p(Landroidx/compose/material3/carousel/CarouselPageSize;Landroidx/compose/material3/carousel/CarouselState;FJLandroidx/compose/ui/graphics/drawscope/ContentDrawScope;)Lj59;

    move-result-object p0

    return-object p0
.end method
