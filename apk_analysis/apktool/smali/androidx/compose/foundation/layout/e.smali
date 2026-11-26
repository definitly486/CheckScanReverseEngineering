.class public final synthetic Landroidx/compose/foundation/layout/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:[Landroidx/compose/ui/layout/Placeable;

.field public final synthetic c:Ljava/util/List;

.field public final synthetic d:Landroidx/compose/ui/layout/MeasureScope;

.field public final synthetic e:Lp07;

.field public final synthetic f:Lp07;

.field public final synthetic g:Landroidx/compose/foundation/layout/BoxMeasurePolicy;


# direct methods
.method public synthetic constructor <init>([Landroidx/compose/ui/layout/Placeable;Ljava/util/List;Landroidx/compose/ui/layout/MeasureScope;Lp07;Lp07;Landroidx/compose/foundation/layout/BoxMeasurePolicy;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/layout/e;->b:[Landroidx/compose/ui/layout/Placeable;

    iput-object p2, p0, Landroidx/compose/foundation/layout/e;->c:Ljava/util/List;

    iput-object p3, p0, Landroidx/compose/foundation/layout/e;->d:Landroidx/compose/ui/layout/MeasureScope;

    iput-object p4, p0, Landroidx/compose/foundation/layout/e;->e:Lp07;

    iput-object p5, p0, Landroidx/compose/foundation/layout/e;->f:Lp07;

    iput-object p6, p0, Landroidx/compose/foundation/layout/e;->g:Landroidx/compose/foundation/layout/BoxMeasurePolicy;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    iget-object v5, p0, Landroidx/compose/foundation/layout/e;->g:Landroidx/compose/foundation/layout/BoxMeasurePolicy;

    move-object v6, p1

    check-cast v6, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    iget-object v0, p0, Landroidx/compose/foundation/layout/e;->b:[Landroidx/compose/ui/layout/Placeable;

    iget-object v1, p0, Landroidx/compose/foundation/layout/e;->c:Ljava/util/List;

    iget-object v2, p0, Landroidx/compose/foundation/layout/e;->d:Landroidx/compose/ui/layout/MeasureScope;

    iget-object v3, p0, Landroidx/compose/foundation/layout/e;->e:Lp07;

    iget-object v4, p0, Landroidx/compose/foundation/layout/e;->f:Lp07;

    invoke-static/range {v0 .. v6}, Landroidx/compose/foundation/layout/BoxMeasurePolicy;->c([Landroidx/compose/ui/layout/Placeable;Ljava/util/List;Landroidx/compose/ui/layout/MeasureScope;Lp07;Lp07;Landroidx/compose/foundation/layout/BoxMeasurePolicy;Landroidx/compose/ui/layout/Placeable$PlacementScope;)Lj59;

    move-result-object p0

    return-object p0
.end method
