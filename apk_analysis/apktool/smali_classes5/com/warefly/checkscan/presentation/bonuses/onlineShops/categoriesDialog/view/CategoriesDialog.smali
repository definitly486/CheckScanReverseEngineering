.class public final Lcom/warefly/checkscan/presentation/bonuses/onlineShops/categoriesDialog/view/CategoriesDialog;
.super Lcom/warefly/checkscan/core/ui/base/dialogs/BaseBottomSheetDialog;
.source "SourceFile"

# interfaces
.implements Lcom/warefly/checkscan/presentation/bonuses/onlineShops/categoriesDialog/presenter/CategoriesView;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/dialogs/BaseBottomSheetDialog<",
        "Lcom/warefly/checkscan/databinding/CategoriesDialogBinding;",
        ">;",
        "Lcom/warefly/checkscan/presentation/bonuses/onlineShops/categoriesDialog/presenter/CategoriesView;"
    }
.end annotation


# static fields
.field public static final synthetic i:[Lze4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lze4<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final d:I

.field public final e:Lcom/warefly/checkscan/presentation/bonuses/onlineShops/view/OnlineShopsFragment$a;

.field public final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lg81;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Lud9;

.field public h:Lem5;

.field public presenter:Lcom/warefly/checkscan/presentation/bonuses/onlineShops/categoriesDialog/presenter/CategoriesPresenter;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lbs6;

    const-class v1, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/categoriesDialog/view/CategoriesDialog;

    const-string v2, "binding"

    const-string v3, "getBinding()Lcom/warefly/checkscan/databinding/CategoriesDialogBinding;"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lbs6;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v1, Lx07;->a:La17;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    new-array v1, v1, [Lze4;

    aput-object v0, v1, v4

    sput-object v1, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/categoriesDialog/view/CategoriesDialog;->i:[Lze4;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/warefly/checkscan/presentation/bonuses/onlineShops/view/OnlineShopsFragment$a;Ljava/util/List;)V
    .locals 1

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v0, 0x7f150174

    invoke-direct {p0, p1, v0}, Lcom/warefly/checkscan/core/ui/base/dialogs/BaseBottomSheetDialog;-><init>(Landroid/content/Context;I)V

    iput p2, p0, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/categoriesDialog/view/CategoriesDialog;->d:I

    iput-object p3, p0, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/categoriesDialog/view/CategoriesDialog;->e:Lcom/warefly/checkscan/presentation/bonuses/onlineShops/view/OnlineShopsFragment$a;

    iput-object p4, p0, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/categoriesDialog/view/CategoriesDialog;->f:Ljava/util/List;

    new-instance p1, Lud9;

    const-class p2, Lcom/warefly/checkscan/databinding/CategoriesDialogBinding;

    invoke-direct {p1, p2, p0}, Lud9;-><init>(Ljava/lang/Class;Lcom/google/android/material/bottomsheet/BottomSheetDialog;)V

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/categoriesDialog/view/CategoriesDialog;->g:Lud9;

    return-void
.end method


# virtual methods
.method public final checkAllCategories(Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/categoriesDialog/view/CategoriesDialog;->e()Lcom/warefly/checkscan/databinding/CategoriesDialogBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/warefly/checkscan/databinding/CategoriesDialogBinding;->incldAllProductsCategory:Lcom/warefly/checkscan/databinding/ItemOnlineShopsCategoryBinding;

    iget-object p0, p0, Lcom/warefly/checkscan/databinding/ItemOnlineShopsCategoryBinding;->cbCategory:Landroid/widget/CheckBox;

    invoke-virtual {p0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    return-void
.end method

.method public final e()Lcom/warefly/checkscan/databinding/CategoriesDialogBinding;
    .locals 2

    sget-object v0, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/categoriesDialog/view/CategoriesDialog;->i:[Lze4;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/categoriesDialog/view/CategoriesDialog;->g:Lud9;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lud9;->d:Landroidx/viewbinding/ViewBinding;

    check-cast p0, Lcom/warefly/checkscan/databinding/CategoriesDialogBinding;

    return-object p0
.end method

.method public final enableButton(Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/categoriesDialog/view/CategoriesDialog;->e()Lcom/warefly/checkscan/databinding/CategoriesDialogBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/warefly/checkscan/databinding/CategoriesDialogBinding;->btnCheck:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    return-void
.end method

.method public final f()Lcom/warefly/checkscan/presentation/bonuses/onlineShops/categoriesDialog/presenter/CategoriesPresenter;
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/categoriesDialog/view/CategoriesDialog;->presenter:Lcom/warefly/checkscan/presentation/bonuses/onlineShops/categoriesDialog/presenter/CategoriesPresenter;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "presenter"

    invoke-static {p0}, Laa4;->j(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 8

    invoke-super {p0, p1}, Lcom/warefly/checkscan/core/ui/base/dialogs/BaseBottomSheetDialog;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    const v1, 0x7f1501ea

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    :goto_1
    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/categoriesDialog/view/CategoriesDialog;->e()Lcom/warefly/checkscan/databinding/CategoriesDialogBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/warefly/checkscan/databinding/CategoriesDialogBinding;->rvCategories:Landroidx/recyclerview/widget/RecyclerView;

    const/high16 v1, 0x20000

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    new-instance v1, Lem5;

    new-instance v2, Lb71;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lb71;-><init>(Ljava/lang/Object;I)V

    new-instance v4, Lc71;

    invoke-direct {v4, p0, v3}, Lc71;-><init>(Ljava/lang/Object;I)V

    new-instance v5, Ld71;

    invoke-direct {v5, p0, v3}, Ld71;-><init>(Ljava/lang/Object;I)V

    iget-object v6, p0, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/categoriesDialog/view/CategoriesDialog;->f:Ljava/util/List;

    invoke-direct {v1, v6, v2, v4, v5}, Lem5;-><init>(Ljava/util/List;Lnl3;Lnl3;Lnl3;)V

    iput-object v1, p0, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/categoriesDialog/view/CategoriesDialog;->h:Lem5;

    check-cast v6, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lg81;

    iget-object v6, v6, Lg81;->a:Lf81;

    invoke-virtual {v6}, Lf81;->a()I

    move-result v6

    iget v7, p0, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/categoriesDialog/view/CategoriesDialog;->d:I

    if-ne v6, v7, :cond_2

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    invoke-static {v2}, Lqn1;->V(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lg81;

    const/4 v5, 0x1

    if-nez v4, :cond_4

    goto :goto_3

    :cond_4
    iput-boolean v5, v4, Lg81;->b:Z

    :goto_3
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/ListAdapter;->submitList(Ljava/util/List;)V

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/categoriesDialog/view/CategoriesDialog;->e()Lcom/warefly/checkscan/databinding/CategoriesDialogBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/warefly/checkscan/databinding/CategoriesDialogBinding;->incldAllProductsCategory:Lcom/warefly/checkscan/databinding/ItemOnlineShopsCategoryBinding;

    iget-object v0, p1, Lcom/warefly/checkscan/databinding/ItemOnlineShopsCategoryBinding;->cbCategory:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/categoriesDialog/view/CategoriesDialog;->f()Lcom/warefly/checkscan/presentation/bonuses/onlineShops/categoriesDialog/presenter/CategoriesPresenter;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/categoriesDialog/presenter/CategoriesPresenter;->enableButton(Z)V

    iget-object v0, p1, Lcom/warefly/checkscan/databinding/ItemOnlineShopsCategoryBinding;->cbCategory:Landroid/widget/CheckBox;

    new-instance v1, La71;

    invoke-direct {v1, v3, p1, p0}, La71;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/categoriesDialog/view/CategoriesDialog;->e()Lcom/warefly/checkscan/databinding/CategoriesDialogBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/warefly/checkscan/databinding/CategoriesDialogBinding;->btnCheck:Landroid/widget/TextView;

    new-instance v0, Lz61;

    invoke-direct {v0, p0, v3}, Lz61;-><init>(Lcom/warefly/checkscan/core/ui/base/dialogs/BaseBottomSheetDialog;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final providePresenter()Lcom/warefly/checkscan/presentation/bonuses/onlineShops/categoriesDialog/presenter/CategoriesPresenter;
    .locals 1

    new-instance v0, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/categoriesDialog/presenter/CategoriesPresenter;

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/categoriesDialog/view/CategoriesDialog;->e:Lcom/warefly/checkscan/presentation/bonuses/onlineShops/view/OnlineShopsFragment$a;

    invoke-direct {v0, p0}, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/categoriesDialog/presenter/CategoriesPresenter;-><init>(Lbm3;)V

    return-object v0
.end method

.method public final showCategories(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lg81;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/categoriesDialog/view/CategoriesDialog;->h:Lem5;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/ListAdapter;->submitList(Ljava/util/List;)V

    :cond_0
    return-void
.end method
