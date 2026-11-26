.class public final synthetic Lu20;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;
.implements Lcom/my/target/b1$a;
.implements Lxl3;
.implements Landroidx/arch/core/util/Function;
.implements Landroidx/webkit/WebViewCompat$WebViewStartUpCallback;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lu20;->b:I

    iput-object p1, p0, Lu20;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lvha;Lj8a;)V
    .locals 0

    iget-object p0, p0, Lu20;->c:Ljava/lang/Object;

    check-cast p0, Lkd0;

    check-cast p1, Lkia;

    invoke-virtual {p0, p1, p2}, Lkd0;->a(Lkia;Lj8a;)V

    return-void
.end method

.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lu20;->b:I

    iget-object p0, p0, Lu20;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Landroidx/arch/core/util/Function;

    check-cast p1, Ljava/util/List;

    invoke-static {p0, p1}, Landroidx/paging/PageKeyedDataSource;->f(Landroidx/arch/core/util/Function;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p0, Lvf1;

    invoke-virtual {p0, p1}, Lvf1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public onRefresh()V
    .locals 1

    iget-object p0, p0, Lu20;->c:Ljava/lang/Object;

    check-cast p0, Lcom/warefly/checkscan/presentation/balance/main/view/BalanceFragment;

    sget-object v0, Lcom/warefly/checkscan/presentation/balance/main/view/BalanceFragment;->u:Lcom/warefly/checkscan/presentation/balance/main/view/BalanceFragment$a;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/balance/main/view/BalanceFragment;->r()Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter;->refreshBlocks(Z)V

    return-void
.end method

.method public onSuccess(Landroidx/webkit/WebViewStartUpResult;)V
    .locals 0

    iget-object p0, p0, Lu20;->c:Ljava/lang/Object;

    check-cast p0, Landroidx/webkit/WebViewCompat$WebViewStartUpCallback;

    invoke-static {p0, p1}, Landroidx/webkit/WebViewCompat;->e(Landroidx/webkit/WebViewCompat$WebViewStartUpCallback;Landroidx/webkit/WebViewStartUpResult;)V

    return-void
.end method
