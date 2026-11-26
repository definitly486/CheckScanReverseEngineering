.class public final synthetic Llj5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lll3;


# instance fields
.field public final synthetic b:Landroidx/compose/material3/DrawerState;

.field public final synthetic c:Landroidx/compose/ui/unit/Density;

.field public final synthetic d:Landroidx/compose/animation/core/FiniteAnimationSpec;

.field public final synthetic e:Landroidx/compose/animation/core/FiniteAnimationSpec;

.field public final synthetic f:Landroidx/compose/animation/core/FiniteAnimationSpec;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/material3/DrawerState;Landroidx/compose/ui/unit/Density;Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/animation/core/FiniteAnimationSpec;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llj5;->b:Landroidx/compose/material3/DrawerState;

    iput-object p2, p0, Llj5;->c:Landroidx/compose/ui/unit/Density;

    iput-object p3, p0, Llj5;->d:Landroidx/compose/animation/core/FiniteAnimationSpec;

    iput-object p4, p0, Llj5;->e:Landroidx/compose/animation/core/FiniteAnimationSpec;

    iput-object p5, p0, Llj5;->f:Landroidx/compose/animation/core/FiniteAnimationSpec;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Llj5;->e:Landroidx/compose/animation/core/FiniteAnimationSpec;

    iget-object v1, p0, Llj5;->f:Landroidx/compose/animation/core/FiniteAnimationSpec;

    iget-object v2, p0, Llj5;->b:Landroidx/compose/material3/DrawerState;

    iget-object v3, p0, Llj5;->c:Landroidx/compose/ui/unit/Density;

    iget-object p0, p0, Llj5;->d:Landroidx/compose/animation/core/FiniteAnimationSpec;

    invoke-static {v2, v3, p0, v0, v1}, Landroidx/compose/material3/NavigationDrawerKt;->p(Landroidx/compose/material3/DrawerState;Landroidx/compose/ui/unit/Density;Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/animation/core/FiniteAnimationSpec;)Lj59;

    move-result-object p0

    return-object p0
.end method
