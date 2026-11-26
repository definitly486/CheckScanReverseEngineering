.class public final synthetic Lci9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Landroidx/compose/ui/layout/MeasureScope;

.field public final synthetic d:Lr07;

.field public final synthetic e:Ljava/util/List;

.field public final synthetic f:Landroidx/compose/foundation/layout/Arrangement$Vertical;

.field public final synthetic g:Landroidx/compose/runtime/State;


# direct methods
.method public synthetic constructor <init>(ILandroidx/compose/ui/layout/MeasureScope;Lr07;Ljava/util/ArrayList;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/runtime/State;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lci9;->b:I

    iput-object p2, p0, Lci9;->c:Landroidx/compose/ui/layout/MeasureScope;

    iput-object p3, p0, Lci9;->d:Lr07;

    iput-object p4, p0, Lci9;->e:Ljava/util/List;

    iput-object p5, p0, Lci9;->f:Landroidx/compose/foundation/layout/Arrangement$Vertical;

    iput-object p6, p0, Lci9;->g:Landroidx/compose/runtime/State;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    iget-object v5, p0, Lci9;->g:Landroidx/compose/runtime/State;

    move-object v6, p1

    check-cast v6, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    iget v0, p0, Lci9;->b:I

    iget-object v1, p0, Lci9;->c:Landroidx/compose/ui/layout/MeasureScope;

    iget-object v2, p0, Lci9;->d:Lr07;

    iget-object v3, p0, Lci9;->e:Ljava/util/List;

    iget-object v4, p0, Lci9;->f:Landroidx/compose/foundation/layout/Arrangement$Vertical;

    invoke-static/range {v0 .. v6}, Landroidx/compose/material3/WideNavigationRailKt$WideNavigationRailLayout$1$2;->a(ILandroidx/compose/ui/layout/MeasureScope;Lr07;Ljava/util/List;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/runtime/State;Landroidx/compose/ui/layout/Placeable$PlacementScope;)Lj59;

    move-result-object p0

    return-object p0
.end method
