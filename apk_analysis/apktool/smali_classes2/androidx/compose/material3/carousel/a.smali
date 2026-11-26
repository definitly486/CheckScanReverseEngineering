.class public final synthetic Landroidx/compose/material3/carousel/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lll3;


# instance fields
.field public final synthetic b:Landroidx/compose/material3/carousel/CarouselPageSize;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/material3/carousel/CarouselPageSize;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/material3/carousel/a;->b:Landroidx/compose/material3/carousel/CarouselPageSize;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroidx/compose/material3/carousel/a;->b:Landroidx/compose/material3/carousel/CarouselPageSize;

    invoke-static {p0}, Landroidx/compose/material3/carousel/CarouselKt$Carousel$2;->a(Landroidx/compose/material3/carousel/CarouselPageSize;)Landroidx/compose/material3/carousel/Strategy;

    move-result-object p0

    return-object p0
.end method
