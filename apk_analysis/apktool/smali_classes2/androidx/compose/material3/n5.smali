.class public final synthetic Landroidx/compose/material3/n5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Landroidx/compose/animation/core/Animatable;

.field public final synthetic c:Landroidx/compose/material3/RailPredictiveBackState;

.field public final synthetic d:Z


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/animation/core/Animatable;Landroidx/compose/material3/RailPredictiveBackState;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/material3/n5;->b:Landroidx/compose/animation/core/Animatable;

    iput-object p2, p0, Landroidx/compose/material3/n5;->c:Landroidx/compose/material3/RailPredictiveBackState;

    iput-boolean p3, p0, Landroidx/compose/material3/n5;->d:Z

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-boolean v0, p0, Landroidx/compose/material3/n5;->d:Z

    check-cast p1, Landroidx/compose/ui/graphics/GraphicsLayerScope;

    iget-object v1, p0, Landroidx/compose/material3/n5;->b:Landroidx/compose/animation/core/Animatable;

    iget-object p0, p0, Landroidx/compose/material3/n5;->c:Landroidx/compose/material3/RailPredictiveBackState;

    invoke-static {v1, p0, v0, p1}, Landroidx/compose/material3/WideNavigationRailKt$ModalWideNavigationRailContent$5;->a(Landroidx/compose/animation/core/Animatable;Landroidx/compose/material3/RailPredictiveBackState;ZLandroidx/compose/ui/graphics/GraphicsLayerScope;)Lj59;

    move-result-object p0

    return-object p0
.end method
