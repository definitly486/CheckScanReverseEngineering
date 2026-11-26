.class public final synthetic Lp87;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:[Landroidx/compose/ui/layout/Placeable;

.field public final synthetic c:Landroidx/compose/foundation/layout/RowMeasurePolicy;

.field public final synthetic d:I

.field public final synthetic e:I

.field public final synthetic f:[I


# direct methods
.method public synthetic constructor <init>([Landroidx/compose/ui/layout/Placeable;Landroidx/compose/foundation/layout/RowMeasurePolicy;II[I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp87;->b:[Landroidx/compose/ui/layout/Placeable;

    iput-object p2, p0, Lp87;->c:Landroidx/compose/foundation/layout/RowMeasurePolicy;

    iput p3, p0, Lp87;->d:I

    iput p4, p0, Lp87;->e:I

    iput-object p5, p0, Lp87;->f:[I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iget-object v4, p0, Lp87;->f:[I

    move-object v5, p1

    check-cast v5, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    iget-object v0, p0, Lp87;->b:[Landroidx/compose/ui/layout/Placeable;

    iget-object v1, p0, Lp87;->c:Landroidx/compose/foundation/layout/RowMeasurePolicy;

    iget v2, p0, Lp87;->d:I

    iget v3, p0, Lp87;->e:I

    invoke-static/range {v0 .. v5}, Landroidx/compose/foundation/layout/RowMeasurePolicy;->b([Landroidx/compose/ui/layout/Placeable;Landroidx/compose/foundation/layout/RowMeasurePolicy;II[ILandroidx/compose/ui/layout/Placeable$PlacementScope;)Lj59;

    move-result-object p0

    return-object p0
.end method
