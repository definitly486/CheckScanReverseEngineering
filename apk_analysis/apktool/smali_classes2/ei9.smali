.class public final synthetic Lei9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Lll3;

.field public final synthetic c:Landroidx/compose/material3/ModalWideNavigationRailProperties;

.field public final synthetic d:Lnl3;

.field public final synthetic e:Lll3;

.field public final synthetic f:Landroidx/compose/material3/RailPredictiveBackState;

.field public final synthetic g:Lbm3;

.field public final synthetic h:I


# direct methods
.method public synthetic constructor <init>(Lll3;Landroidx/compose/material3/ModalWideNavigationRailProperties;Lnl3;Lll3;Landroidx/compose/material3/RailPredictiveBackState;Lbm3;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lei9;->b:Lll3;

    iput-object p2, p0, Lei9;->c:Landroidx/compose/material3/ModalWideNavigationRailProperties;

    iput-object p3, p0, Lei9;->d:Lnl3;

    iput-object p4, p0, Lei9;->e:Lll3;

    iput-object p5, p0, Lei9;->f:Landroidx/compose/material3/RailPredictiveBackState;

    iput-object p6, p0, Lei9;->g:Lbm3;

    iput p7, p0, Lei9;->h:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    move-object v7, p1

    check-cast v7, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iget-object v0, p0, Lei9;->b:Lll3;

    iget-object v1, p0, Lei9;->c:Landroidx/compose/material3/ModalWideNavigationRailProperties;

    iget-object v2, p0, Lei9;->d:Lnl3;

    iget-object v3, p0, Lei9;->e:Lll3;

    iget-object v4, p0, Lei9;->f:Landroidx/compose/material3/RailPredictiveBackState;

    iget-object v5, p0, Lei9;->g:Lbm3;

    iget v6, p0, Lei9;->h:I

    invoke-static/range {v0 .. v8}, Landroidx/compose/material3/WideNavigationRail_androidKt;->a(Lll3;Landroidx/compose/material3/ModalWideNavigationRailProperties;Lnl3;Lll3;Landroidx/compose/material3/RailPredictiveBackState;Lbm3;ILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method
