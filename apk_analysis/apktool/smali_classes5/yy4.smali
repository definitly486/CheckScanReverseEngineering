.class public final Lyy4;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic f:I

.field public final synthetic g:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/databinding/ItemFilterCategoryBinding;Lzy4;Lvy4;)V
    .locals 0

    const/4 p2, 0x0

    iput p2, p0, Lyy4;->f:I

    iput-object p1, p0, Lyy4;->g:Ljava/lang/Object;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Lcom/warefly/checkscan/products/presentation/shop/view/ShopFragment;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lyy4;->f:I

    .line 10
    iput-object p1, p0, Lyy4;->g:Ljava/lang/Object;

    invoke-direct {p0, v0}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lyy4;->f:I

    iget-object p0, p0, Lyy4;->g:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Lcom/warefly/checkscan/products/presentation/shop/view/ShopFragment;

    invoke-virtual {p0}, Lcom/warefly/checkscan/products/presentation/shop/view/ShopFragment;->o()Lcom/warefly/checkscan/products/presentation/shop/presenter/ShopPresenter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/warefly/checkscan/products/presentation/shop/presenter/ShopPresenter;->onScanClicked()V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :pswitch_0
    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Lcom/warefly/checkscan/databinding/ItemFilterCategoryBinding;

    iget-object p0, p0, Lcom/warefly/checkscan/databinding/ItemFilterCategoryBinding;->checkboxMain:Landroid/widget/CheckBox;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
