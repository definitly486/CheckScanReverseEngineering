.class public final synthetic Luj7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldm3;


# instance fields
.field public final synthetic b:Landroidx/compose/ui/unit/Density;

.field public final synthetic c:Landroidx/compose/animation/core/Animatable;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/unit/Density;Landroidx/compose/animation/core/Animatable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luj7;->b:Landroidx/compose/ui/unit/Density;

    iput-object p2, p0, Luj7;->c:Landroidx/compose/animation/core/Animatable;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Landroidx/compose/ui/graphics/Path;

    check-cast p2, Landroidx/compose/ui/geometry/Size;

    check-cast p3, Landroidx/compose/ui/unit/LayoutDirection;

    iget-object v0, p0, Luj7;->b:Landroidx/compose/ui/unit/Density;

    iget-object p0, p0, Luj7;->c:Landroidx/compose/animation/core/Animatable;

    invoke-static {v0, p0, p1, p2, p3}, Landroidx/compose/material3/SearchBarKt;->m(Landroidx/compose/ui/unit/Density;Landroidx/compose/animation/core/Animatable;Landroidx/compose/ui/graphics/Path;Landroidx/compose/ui/geometry/Size;Landroidx/compose/ui/unit/LayoutDirection;)Lj59;

    move-result-object p0

    return-object p0
.end method
