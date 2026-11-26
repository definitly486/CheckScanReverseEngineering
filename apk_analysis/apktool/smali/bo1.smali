.class public final synthetic Lbo1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:[Landroidx/compose/ui/layout/Placeable;

.field public final synthetic c:Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

.field public final synthetic d:I

.field public final synthetic e:I

.field public final synthetic f:Landroidx/compose/ui/layout/MeasureScope;

.field public final synthetic g:[I


# direct methods
.method public synthetic constructor <init>([Landroidx/compose/ui/layout/Placeable;Landroidx/compose/foundation/layout/ColumnMeasurePolicy;IILandroidx/compose/ui/layout/MeasureScope;[I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbo1;->b:[Landroidx/compose/ui/layout/Placeable;

    iput-object p2, p0, Lbo1;->c:Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    iput p3, p0, Lbo1;->d:I

    iput p4, p0, Lbo1;->e:I

    iput-object p5, p0, Lbo1;->f:Landroidx/compose/ui/layout/MeasureScope;

    iput-object p6, p0, Lbo1;->g:[I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    iget-object v5, p0, Lbo1;->g:[I

    move-object v6, p1

    check-cast v6, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    iget-object v0, p0, Lbo1;->b:[Landroidx/compose/ui/layout/Placeable;

    iget-object v1, p0, Lbo1;->c:Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    iget v2, p0, Lbo1;->d:I

    iget v3, p0, Lbo1;->e:I

    iget-object v4, p0, Lbo1;->f:Landroidx/compose/ui/layout/MeasureScope;

    invoke-static/range {v0 .. v6}, Landroidx/compose/foundation/layout/ColumnMeasurePolicy;->b([Landroidx/compose/ui/layout/Placeable;Landroidx/compose/foundation/layout/ColumnMeasurePolicy;IILandroidx/compose/ui/layout/MeasureScope;[ILandroidx/compose/ui/layout/Placeable$PlacementScope;)Lj59;

    move-result-object p0

    return-object p0
.end method
