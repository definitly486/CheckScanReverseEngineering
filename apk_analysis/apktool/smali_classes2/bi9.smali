.class public final synthetic Lbi9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Landroidx/compose/animation/core/Animatable;

.field public final synthetic c:Landroidx/compose/material3/ModalWideNavigationRailState;

.field public final synthetic d:Landroidx/compose/material3/RailPredictiveBackState;

.field public final synthetic e:Z


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/animation/core/Animatable;Landroidx/compose/material3/ModalWideNavigationRailState;Landroidx/compose/material3/RailPredictiveBackState;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbi9;->b:Landroidx/compose/animation/core/Animatable;

    iput-object p2, p0, Lbi9;->c:Landroidx/compose/material3/ModalWideNavigationRailState;

    iput-object p3, p0, Lbi9;->d:Landroidx/compose/material3/RailPredictiveBackState;

    iput-boolean p4, p0, Lbi9;->e:Z

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-boolean v0, p0, Lbi9;->e:Z

    check-cast p1, Landroidx/compose/ui/graphics/GraphicsLayerScope;

    iget-object v1, p0, Lbi9;->b:Landroidx/compose/animation/core/Animatable;

    iget-object v2, p0, Lbi9;->c:Landroidx/compose/material3/ModalWideNavigationRailState;

    iget-object p0, p0, Lbi9;->d:Landroidx/compose/material3/RailPredictiveBackState;

    invoke-static {v1, v2, p0, v0, p1}, Landroidx/compose/material3/WideNavigationRailKt;->i(Landroidx/compose/animation/core/Animatable;Landroidx/compose/material3/ModalWideNavigationRailState;Landroidx/compose/material3/RailPredictiveBackState;ZLandroidx/compose/ui/graphics/GraphicsLayerScope;)Lj59;

    move-result-object p0

    return-object p0
.end method
