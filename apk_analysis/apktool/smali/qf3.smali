.class public final synthetic Lqf3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:[I

.field public final synthetic c:I

.field public final synthetic d:I

.field public final synthetic e:I

.field public final synthetic f:[Landroidx/compose/ui/layout/Placeable;

.field public final synthetic g:Landroidx/compose/foundation/layout/FlowLineMeasurePolicy;

.field public final synthetic h:I

.field public final synthetic i:Landroidx/compose/ui/unit/LayoutDirection;

.field public final synthetic j:I

.field public final synthetic k:[I


# direct methods
.method public synthetic constructor <init>([IIII[Landroidx/compose/ui/layout/Placeable;Landroidx/compose/foundation/layout/FlowLineMeasurePolicy;ILandroidx/compose/ui/unit/LayoutDirection;I[I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lqf3;->b:[I

    iput p2, p0, Lqf3;->c:I

    iput p3, p0, Lqf3;->d:I

    iput p4, p0, Lqf3;->e:I

    iput-object p5, p0, Lqf3;->f:[Landroidx/compose/ui/layout/Placeable;

    iput-object p6, p0, Lqf3;->g:Landroidx/compose/foundation/layout/FlowLineMeasurePolicy;

    iput p7, p0, Lqf3;->h:I

    iput-object p8, p0, Lqf3;->i:Landroidx/compose/ui/unit/LayoutDirection;

    iput p9, p0, Lqf3;->j:I

    iput-object p10, p0, Lqf3;->k:[I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    iget-object v9, p0, Lqf3;->k:[I

    move-object v10, p1

    check-cast v10, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    iget-object v0, p0, Lqf3;->b:[I

    iget v1, p0, Lqf3;->c:I

    iget v2, p0, Lqf3;->d:I

    iget v3, p0, Lqf3;->e:I

    iget-object v4, p0, Lqf3;->f:[Landroidx/compose/ui/layout/Placeable;

    iget-object v5, p0, Lqf3;->g:Landroidx/compose/foundation/layout/FlowLineMeasurePolicy;

    iget v6, p0, Lqf3;->h:I

    iget-object v7, p0, Lqf3;->i:Landroidx/compose/ui/unit/LayoutDirection;

    iget v8, p0, Lqf3;->j:I

    invoke-static/range {v0 .. v10}, Landroidx/compose/foundation/layout/FlowLineMeasurePolicy;->a([IIII[Landroidx/compose/ui/layout/Placeable;Landroidx/compose/foundation/layout/FlowLineMeasurePolicy;ILandroidx/compose/ui/unit/LayoutDirection;I[ILandroidx/compose/ui/layout/Placeable$PlacementScope;)Lj59;

    move-result-object p0

    return-object p0
.end method
