.class public final synthetic Luo3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, Luo3;->b:I

    iput-object p2, p0, Luo3;->c:Ljava/lang/Object;

    iput-object p3, p0, Luo3;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Luo3;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Luo3;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/foundation/lazy/grid/GridCells;

    iget-object p0, p0, Luo3;->d:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    check-cast p1, Landroidx/compose/ui/unit/Density;

    check-cast p2, Landroidx/compose/ui/unit/Constraints;

    invoke-static {v0, p0, p1, p2}, Landroidx/compose/foundation/lazy/grid/LazyGridDslKt;->f(Landroidx/compose/foundation/lazy/grid/GridCells;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/unit/Constraints;)Landroidx/compose/foundation/lazy/grid/LazyGridSlots;

    move-result-object p0

    return-object p0

    :pswitch_0
    iget-object v0, p0, Luo3;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/runtime/MovableContent;

    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iget-object p0, p0, Luo3;->d:Ljava/lang/Object;

    invoke-static {v0, p0, p1, p2}, Landroidx/compose/runtime/GapComposer;->a(Landroidx/compose/runtime/MovableContent;Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
