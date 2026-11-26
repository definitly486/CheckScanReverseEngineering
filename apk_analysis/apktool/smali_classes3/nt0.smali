.class public final synthetic Lnt0;
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

    iput p1, p0, Lnt0;->b:I

    iput-object p2, p0, Lnt0;->c:Ljava/lang/Object;

    iput-object p3, p0, Lnt0;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lnt0;->b:I

    iget-object v1, p0, Lnt0;->d:Ljava/lang/Object;

    iget-object p0, p0, Lnt0;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Landroidx/paging/LoadStateAdapter;

    check-cast v1, Landroidx/paging/LoadStateAdapter;

    check-cast p1, Landroidx/paging/LoadType;

    check-cast p2, Landroidx/paging/LoadState;

    invoke-static {p0, v1, p1, p2}, Landroidx/paging/PagedListAdapter;->b(Landroidx/paging/LoadStateAdapter;Landroidx/paging/LoadStateAdapter;Landroidx/paging/LoadType;Landroidx/paging/LoadState;)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p0, Landroidx/compose/ui/layout/MeasurePolicy;

    check-cast v1, Ldm3;

    check-cast p1, Landroidx/compose/ui/layout/SubcomposeMeasureScope;

    check-cast p2, Landroidx/compose/ui/unit/Constraints;

    invoke-static {p0, v1, p1, p2}, Landroidx/compose/foundation/layout/BoxWithConstraintsKt;->c(Landroidx/compose/ui/layout/MeasurePolicy;Ldm3;Landroidx/compose/ui/layout/SubcomposeMeasureScope;Landroidx/compose/ui/unit/Constraints;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
