.class public final Lne5;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/HashMap;

.field public static final b:Ljava/util/HashMap;

.field public static final c:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lne5;->a:Ljava/util/HashMap;

    new-instance v1, Lkq3;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lkq3;-><init>(I)V

    const-class v2, Lcom/warefly/checkscan/products/presentation/flow/presenter/ProductsFlowPresenter;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lj71;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lj71;-><init>(I)V

    const-class v2, Lcom/warefly/checkscan/products/presentation/main/presenter/MainProductsPresenter;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lci6;

    invoke-direct {v1}, Lpe9;-><init>()V

    const-class v2, Lcom/warefly/checkscan/products/presentation/product/presenter/ProductPresenter;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ltj6;

    invoke-direct {v1}, Lpe9;-><init>()V

    const-class v2, Lcom/warefly/checkscan/products/presentation/products/presenter/ProductsPresenter;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ldi1;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ldi1;-><init>(I)V

    const-class v2, Lcom/warefly/checkscan/products/presentation/selections/presenter/SelectionsPresenter;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lls4;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lls4;-><init>(I)V

    const-class v2, Lcom/warefly/checkscan/products/presentation/shop/presenter/ShopPresenter;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lne5;->b:Ljava/util/HashMap;

    new-instance v1, Lcom/warefly/checkscan/products/presentation/flow/view/ProductsFlowFragment$$PresentersBinder;

    invoke-direct {v1}, Lcom/warefly/checkscan/products/presentation/flow/view/ProductsFlowFragment$$PresentersBinder;-><init>()V

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-class v2, Lcom/warefly/checkscan/products/presentation/flow/view/ProductsFlowFragment;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/warefly/checkscan/products/presentation/main/view/MainProductsFragment$$PresentersBinder;

    invoke-direct {v1}, Lcom/warefly/checkscan/products/presentation/main/view/MainProductsFragment$$PresentersBinder;-><init>()V

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-class v2, Lcom/warefly/checkscan/products/presentation/main/view/MainProductsFragment;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/warefly/checkscan/products/presentation/product/view/ProductFragment$$PresentersBinder;

    invoke-direct {v1}, Lcom/warefly/checkscan/products/presentation/product/view/ProductFragment$$PresentersBinder;-><init>()V

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-class v2, Lcom/warefly/checkscan/products/presentation/product/view/ProductFragment;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/warefly/checkscan/products/presentation/products/view/ProductsFragment$$PresentersBinder;

    invoke-direct {v1}, Lcom/warefly/checkscan/products/presentation/products/view/ProductsFragment$$PresentersBinder;-><init>()V

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-class v2, Lcom/warefly/checkscan/products/presentation/products/view/ProductsFragment;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/warefly/checkscan/products/presentation/selections/view/SelectionsFragment$$PresentersBinder;

    invoke-direct {v1}, Lcom/warefly/checkscan/products/presentation/selections/view/SelectionsFragment$$PresentersBinder;-><init>()V

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-class v2, Lcom/warefly/checkscan/products/presentation/selections/view/SelectionsFragment;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/warefly/checkscan/products/presentation/shop/view/ShopFragment$$PresentersBinder;

    invoke-direct {v1}, Lcom/warefly/checkscan/products/presentation/shop/view/ShopFragment$$PresentersBinder;-><init>()V

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-class v2, Lcom/warefly/checkscan/products/presentation/shop/view/ShopFragment;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lne5;->c:Ljava/util/HashMap;

    new-instance v1, Li9;

    invoke-direct {v1}, Li9;-><init>()V

    const-class v2, Li9;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lk9;

    invoke-direct {v1}, Lk9;-><init>()V

    const-class v2, Lk9;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lhx5;

    invoke-direct {v1}, Lhx5;-><init>()V

    const-class v2, Lhx5;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
