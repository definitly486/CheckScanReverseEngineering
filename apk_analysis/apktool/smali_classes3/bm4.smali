.class public final synthetic Lbm4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Z

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;

.field public final synthetic f:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/runtime/MutableState;Ljava/util/List;Ljava/util/List;Z)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lbm4;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbm4;->d:Ljava/lang/Object;

    iput-object p2, p0, Lbm4;->e:Ljava/lang/Object;

    iput-object p3, p0, Lbm4;->f:Ljava/lang/Object;

    iput-boolean p4, p0, Lbm4;->c:Z

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/work/ListenableWorker;ZLjava/lang/String;Landroidx/work/impl/WorkerWrapper;)V
    .locals 1

    .line 15
    const/4 v0, 0x1

    iput v0, p0, Lbm4;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbm4;->d:Ljava/lang/Object;

    iput-boolean p2, p0, Lbm4;->c:Z

    iput-object p3, p0, Lbm4;->e:Ljava/lang/Object;

    iput-object p4, p0, Lbm4;->f:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget v0, p0, Lbm4;->b:I

    iget-object v1, p0, Lbm4;->f:Ljava/lang/Object;

    iget-object v2, p0, Lbm4;->e:Ljava/lang/Object;

    iget-boolean v3, p0, Lbm4;->c:Z

    iget-object p0, p0, Lbm4;->d:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Landroidx/work/ListenableWorker;

    check-cast v2, Ljava/lang/String;

    check-cast v1, Landroidx/work/impl/WorkerWrapper;

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {p0, v3, v2, v1, p1}, Landroidx/work/impl/WorkerWrapper;->a(Landroidx/work/ListenableWorker;ZLjava/lang/String;Landroidx/work/impl/WorkerWrapper;Ljava/lang/Throwable;)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p0, Landroidx/compose/runtime/MutableState;

    check-cast v2, Ljava/util/List;

    check-cast v1, Ljava/util/List;

    check-cast p1, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    invoke-static {p0, v2, v1, v3, p1}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureKt;->a(Landroidx/compose/runtime/MutableState;Ljava/util/List;Ljava/util/List;ZLandroidx/compose/ui/layout/Placeable$PlacementScope;)Lj59;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
