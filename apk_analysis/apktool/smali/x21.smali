.class public final synthetic Lx21;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lll3;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, Lx21;->b:I

    iput-object p2, p0, Lx21;->c:Ljava/lang/Object;

    iput-object p3, p0, Lx21;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lx21;->b:I

    iget-object v1, p0, Lx21;->d:Ljava/lang/Object;

    iget-object p0, p0, Lx21;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Landroidx/compose/runtime/State;

    check-cast v1, Landroidx/compose/foundation/lazy/grid/LazyGridState;

    invoke-static {p0, v1}, Landroidx/compose/foundation/lazy/grid/LazyGridItemProviderKt;->b(Landroidx/compose/runtime/State;Landroidx/compose/foundation/lazy/grid/LazyGridState;)Landroidx/compose/foundation/lazy/grid/LazyGridItemProviderImpl;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p0, Ly22;

    check-cast v1, Landroidx/compose/material3/ModalWideNavigationRailOverrideScope;

    invoke-static {p0, v1}, Landroidx/compose/material3/DefaultModalWideNavigationRailOverride;->g(Ly22;Landroidx/compose/material3/ModalWideNavigationRailOverrideScope;)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p0, Landroidx/work/impl/WorkManagerImpl;

    check-cast v1, Ljava/util/UUID;

    invoke-static {p0, v1}, Landroidx/work/impl/utils/CancelWorkRunnable;->c(Landroidx/work/impl/WorkManagerImpl;Ljava/util/UUID;)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
