.class public final synthetic Ljl7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Ljava/util/ArrayList;

.field public final synthetic c:Landroidx/compose/ui/layout/MeasureScope;

.field public final synthetic d:Landroidx/compose/material3/SegmentedButtonContentMeasurePolicy;

.field public final synthetic e:I

.field public final synthetic f:Ljava/util/ArrayList;

.field public final synthetic g:I


# direct methods
.method public synthetic constructor <init>(Ljava/util/ArrayList;Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/material3/SegmentedButtonContentMeasurePolicy;ILjava/util/ArrayList;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljl7;->b:Ljava/util/ArrayList;

    iput-object p2, p0, Ljl7;->c:Landroidx/compose/ui/layout/MeasureScope;

    iput-object p3, p0, Ljl7;->d:Landroidx/compose/material3/SegmentedButtonContentMeasurePolicy;

    iput p4, p0, Ljl7;->e:I

    iput-object p5, p0, Ljl7;->f:Ljava/util/ArrayList;

    iput p6, p0, Ljl7;->g:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    iget v5, p0, Ljl7;->g:I

    move-object v6, p1

    check-cast v6, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    iget-object v0, p0, Ljl7;->b:Ljava/util/ArrayList;

    iget-object v1, p0, Ljl7;->c:Landroidx/compose/ui/layout/MeasureScope;

    iget-object v2, p0, Ljl7;->d:Landroidx/compose/material3/SegmentedButtonContentMeasurePolicy;

    iget v3, p0, Ljl7;->e:I

    iget-object v4, p0, Ljl7;->f:Ljava/util/ArrayList;

    invoke-static/range {v0 .. v6}, Landroidx/compose/material3/SegmentedButtonContentMeasurePolicy;->a(Ljava/util/ArrayList;Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/material3/SegmentedButtonContentMeasurePolicy;ILjava/util/ArrayList;ILandroidx/compose/ui/layout/Placeable$PlacementScope;)Lj59;

    move-result-object p0

    return-object p0
.end method
