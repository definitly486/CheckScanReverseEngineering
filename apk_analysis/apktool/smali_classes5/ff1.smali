.class public final synthetic Lff1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw08;
.implements Landroidx/core/view/accessibility/AccessibilityViewCommand;
.implements Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;
.implements Lcom/google/android/gms/tasks/OnSuccessListener;
.implements Lmi0;
.implements Landroidx/media3/container/ReorderingBufferQueue$OutputConsumer;
.implements Lcom/my/target/c1$a;


# instance fields
.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lff1;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Loz7$a;)V
    .locals 5

    iget-object p0, p0, Lff1;->b:Ljava/lang/Object;

    check-cast p0, Lkf1;

    invoke-virtual {p0}, Lkf1;->u()Lkf1$a;

    move-result-object v0

    invoke-virtual {v0}, Lkf1$a;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    new-instance p0, Lj57;

    invoke-direct {p0, v2}, Lj57;-><init>(Lxb0;)V

    invoke-virtual {p1, p0}, Loz7$a;->onSuccess(Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-virtual {v0}, Lkf1$a;->a()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-virtual {v0}, Lkf1$a;->b()I

    move-result v3

    const/4 v4, 0x1

    if-ltz v3, :cond_1

    if-ge v3, v1, :cond_1

    invoke-virtual {v0}, Lkf1$a;->a()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0}, Lkf1$a;->b()I

    move-result v3

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lxb0;

    invoke-virtual {v0}, Lkf1$a;->b()I

    move-result v3

    add-int/2addr v3, v4

    invoke-virtual {v0, v3}, Lkf1$a;->e(I)V

    invoke-static {p0, v2, v0, v4}, Lkf1;->w(Lkf1;Lkf1$b;Lkf1$a;I)V

    new-instance p0, Lj57;

    invoke-direct {p0, v1}, Lj57;-><init>(Lxb0;)V

    invoke-virtual {p1, p0}, Loz7$a;->onSuccess(Ljava/lang/Object;)V

    return-void

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lkf1$a;->e(I)V

    invoke-static {p0, v2, v0, v4}, Lkf1;->w(Lkf1;Lkf1$b;Lkf1$a;I)V

    new-instance p0, Lj57;

    invoke-direct {p0, v2}, Lj57;-><init>(Lxb0;)V

    invoke-virtual {p1, p0}, Loz7$a;->onSuccess(Ljava/lang/Object;)V

    return-void
.end method

.method public consume(JLandroidx/media3/common/util/ParsableByteArray;)V
    .locals 0

    iget-object p0, p0, Lff1;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/media3/extractor/ts/SeiReader;

    invoke-static {p0, p1, p2, p3}, Landroidx/media3/extractor/ts/SeiReader;->a(Landroidx/media3/extractor/ts/SeiReader;JLandroidx/media3/common/util/ParsableByteArray;)V

    return-void
.end method

.method public d(Le6a;)V
    .locals 1

    iget-object p0, p0, Lff1;->b:Ljava/lang/Object;

    check-cast p0, Lcom/my/target/o4;

    sget v0, Lcom/my/target/o4;->p:I

    iput-object p1, p0, Lcom/my/target/o4;->m:Le6a;

    return-void
.end method

.method public get()J
    .locals 2

    iget-object p0, p0, Lff1;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/media3/common/Player;

    invoke-interface {p0}, Landroidx/media3/common/Player;->getContentBufferedPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lff1;->b:Ljava/lang/Object;

    check-cast p0, Lob5$a;

    invoke-virtual {p0, p1}, Lob5$a;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public perform(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityViewCommand$CommandArguments;)Z
    .locals 0

    iget-object p0, p0, Lff1;->b:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/material/bottomsheet/BottomSheetDragHandleView;

    invoke-static {p0, p1, p2}, Lcom/google/android/material/bottomsheet/BottomSheetDragHandleView;->a(Lcom/google/android/material/bottomsheet/BottomSheetDragHandleView;Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityViewCommand$CommandArguments;)Z

    move-result p0

    return p0
.end method

.method public test(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lff1;->b:Ljava/lang/Object;

    check-cast p0, Lcom/warefly/checkscan/presentation/queue/presenter/QueuePresenter$b;

    invoke-static {p0, p1, p2}, Lcom/warefly/checkscan/presentation/queue/presenter/QueuePresenter;->e(Lcom/warefly/checkscan/presentation/queue/presenter/QueuePresenter$b;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
