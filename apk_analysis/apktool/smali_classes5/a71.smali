.class public final synthetic La71;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, La71;->b:I

    iput-object p2, p0, La71;->c:Ljava/lang/Object;

    iput-object p3, p0, La71;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget v0, p0, La71;->b:I

    iget-object v1, p0, La71;->d:Ljava/lang/Object;

    iget-object p0, p0, La71;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/my/target/xj;

    check-cast v1, Lcom/my/target/f1$a;

    sget v0, Lcom/my/target/xj;->t:I

    iget-object v0, p0, Lcom/my/target/xj;->q:Lcom/my/target/yj;

    invoke-virtual {v0}, Lcom/my/target/yj;->getVideoControlView()Lcom/my/target/zj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/my/target/zj;->getVideoControlButton()Lcom/my/target/e6;

    move-result-object v0

    if-ne p1, v0, :cond_0

    invoke-virtual {v1}, Lcom/my/target/f1$a;->c()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/my/target/xj;->q:Lcom/my/target/yj;

    invoke-virtual {p0}, Lcom/my/target/yj;->getVideoControlView()Lcom/my/target/zj;

    move-result-object p0

    invoke-virtual {p0}, Lcom/my/target/zj;->getSoundControlButton()Lcom/my/target/e6;

    move-result-object p0

    if-ne p1, p0, :cond_1

    invoke-virtual {v1}, Lcom/my/target/f1$a;->d()V

    :cond_1
    :goto_0
    return-void

    :pswitch_0
    check-cast p0, Lcom/warefly/checkscan/databinding/ItemOnlineShopsCategoryBinding;

    check-cast v1, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/categoriesDialog/view/CategoriesDialog;

    sget-object p1, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/categoriesDialog/view/CategoriesDialog;->i:[Lze4;

    iget-object p0, p0, Lcom/warefly/checkscan/databinding/ItemOnlineShopsCategoryBinding;->cbCategory:Landroid/widget/CheckBox;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    iget-object p0, v1, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/categoriesDialog/view/CategoriesDialog;->f:Ljava/util/List;

    move-object p1, p0

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg81;

    iput-boolean v2, v0, Lg81;->b:Z

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/categoriesDialog/view/CategoriesDialog;->f()Lcom/warefly/checkscan/presentation/bonuses/onlineShops/categoriesDialog/presenter/CategoriesPresenter;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/categoriesDialog/presenter/CategoriesPresenter;->enableButton(Z)V

    iget-object p1, v1, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/categoriesDialog/view/CategoriesDialog;->h:Lem5;

    if-eqz p1, :cond_3

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/ListAdapter;->submitList(Ljava/util/List;)V

    :cond_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
