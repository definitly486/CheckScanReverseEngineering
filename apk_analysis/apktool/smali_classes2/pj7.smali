.class public final synthetic Lpj7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldm3;


# instance fields
.field public final synthetic b:Landroidx/compose/ui/graphics/Shape;

.field public final synthetic c:Landroidx/compose/ui/graphics/Shape;

.field public final synthetic d:Landroidx/compose/ui/unit/Density;

.field public final synthetic e:Landroidx/compose/material3/SearchBarState;

.field public final synthetic f:Landroidx/compose/runtime/MutableState;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/graphics/Shape;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/ui/unit/Density;Landroidx/compose/material3/SearchBarState;Landroidx/compose/runtime/MutableState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpj7;->b:Landroidx/compose/ui/graphics/Shape;

    iput-object p2, p0, Lpj7;->c:Landroidx/compose/ui/graphics/Shape;

    iput-object p3, p0, Lpj7;->d:Landroidx/compose/ui/unit/Density;

    iput-object p4, p0, Lpj7;->e:Landroidx/compose/material3/SearchBarState;

    iput-object p5, p0, Lpj7;->f:Landroidx/compose/runtime/MutableState;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    move-object v5, p1

    check-cast v5, Landroidx/compose/ui/graphics/Path;

    move-object v6, p2

    check-cast v6, Landroidx/compose/ui/geometry/Size;

    move-object v7, p3

    check-cast v7, Landroidx/compose/ui/unit/LayoutDirection;

    iget-object v0, p0, Lpj7;->b:Landroidx/compose/ui/graphics/Shape;

    iget-object v1, p0, Lpj7;->c:Landroidx/compose/ui/graphics/Shape;

    iget-object v2, p0, Lpj7;->d:Landroidx/compose/ui/unit/Density;

    iget-object v3, p0, Lpj7;->e:Landroidx/compose/material3/SearchBarState;

    iget-object v4, p0, Lpj7;->f:Landroidx/compose/runtime/MutableState;

    invoke-static/range {v0 .. v7}, Landroidx/compose/material3/SearchBarKt;->y(Landroidx/compose/ui/graphics/Shape;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/ui/unit/Density;Landroidx/compose/material3/SearchBarState;Landroidx/compose/runtime/MutableState;Landroidx/compose/ui/graphics/Path;Landroidx/compose/ui/geometry/Size;Landroidx/compose/ui/unit/LayoutDirection;)Lj59;

    move-result-object p0

    return-object p0
.end method
