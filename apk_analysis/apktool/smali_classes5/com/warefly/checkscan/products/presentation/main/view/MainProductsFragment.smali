.class public final Lcom/warefly/checkscan/products/presentation/main/view/MainProductsFragment;
.super Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;
.source "SourceFile"

# interfaces
.implements Lcom/warefly/checkscan/products/presentation/main/view/MainProductsView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/warefly/checkscan/products/presentation/main/view/MainProductsFragment$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment<",
        "Lcom/warefly/checkscan/products/databinding/FragmentMainProductsBinding;",
        ">;",
        "Lcom/warefly/checkscan/products/presentation/main/view/MainProductsView;"
    }
.end annotation


# static fields
.field public static final h:Lcom/warefly/checkscan/products/presentation/main/view/MainProductsFragment$a;

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
.field public final f:I

.field public final g:Lol4;

.field public presenter:Lcom/warefly/checkscan/products/presentation/main/presenter/MainProductsPresenter;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lbs6;

    const-class v1, Lcom/warefly/checkscan/products/presentation/main/view/MainProductsFragment;

    const-string v2, "binding"

    const-string v3, "getBinding()Lcom/warefly/checkscan/products/databinding/FragmentMainProductsBinding;"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lbs6;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v1, Lx07;->a:La17;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    new-array v1, v1, [Lze4;

    aput-object v0, v1, v4

    sput-object v1, Lcom/warefly/checkscan/products/presentation/main/view/MainProductsFragment;->i:[Lze4;

    new-instance v0, Lcom/warefly/checkscan/products/presentation/main/view/MainProductsFragment$a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/warefly/checkscan/products/presentation/main/view/MainProductsFragment;->h:Lcom/warefly/checkscan/products/presentation/main/view/MainProductsFragment$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;-><init>()V

    const v0, 0x7f0d00ca

    iput v0, p0, Lcom/warefly/checkscan/products/presentation/main/view/MainProductsFragment;->f:I

    new-instance v0, Lol4;

    const-class v1, Lcom/warefly/checkscan/products/databinding/FragmentMainProductsBinding;

    invoke-direct {v0, v1}, Lol4;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/warefly/checkscan/products/presentation/main/view/MainProductsFragment;->g:Lol4;

    return-void
.end method


# virtual methods
.method public final i()I
    .locals 0

    iget p0, p0, Lcom/warefly/checkscan/products/presentation/main/view/MainProductsFragment;->f:I

    return p0
.end method

.method public final n()Lcom/warefly/checkscan/products/databinding/FragmentMainProductsBinding;
    .locals 2

    sget-object v0, Lcom/warefly/checkscan/products/presentation/main/view/MainProductsFragment;->i:[Lze4;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/warefly/checkscan/products/presentation/main/view/MainProductsFragment;->g:Lol4;

    invoke-virtual {v1, p0, v0}, Lol4;->a(Landroidx/fragment/app/Fragment;Lze4;)Landroidx/viewbinding/ViewBinding;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/products/databinding/FragmentMainProductsBinding;

    return-object p0
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-super {p0, p1, p2}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const p2, 0x7f1405bf

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    sget-object v0, Lcom/warefly/checkscan/products/presentation/selections/view/SelectionsFragment;->i:Lcom/warefly/checkscan/products/presentation/selections/view/SelectionsFragment$a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/warefly/checkscan/products/presentation/selections/view/SelectionsFragment;

    invoke-direct {v0}, Lcom/warefly/checkscan/products/presentation/selections/view/SelectionsFragment;-><init>()V

    new-instance v1, Lb36;

    invoke-direct {v1, p2, v0}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const p2, 0x7f1404eb

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    sget-object v0, Lcom/warefly/checkscan/products/presentation/products/view/ProductsFragment;->i:Lcom/warefly/checkscan/products/presentation/products/view/ProductsFragment$a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/warefly/checkscan/products/presentation/products/view/ProductsFragment;

    invoke-direct {v0}, Lcom/warefly/checkscan/products/presentation/products/view/ProductsFragment;-><init>()V

    new-instance v1, Lb36;

    invoke-direct {v1, p2, v0}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v0

    invoke-interface {v0}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    new-instance v1, Lcz4;

    invoke-direct {v1, p1, p2, v0}, Lcz4;-><init>(Ljava/util/ArrayList;Landroidx/fragment/app/FragmentManager;Landroidx/lifecycle/Lifecycle;)V

    invoke-virtual {p0}, Lcom/warefly/checkscan/products/presentation/main/view/MainProductsFragment;->n()Lcom/warefly/checkscan/products/databinding/FragmentMainProductsBinding;

    move-result-object p2

    iget-object p2, p2, Lcom/warefly/checkscan/products/databinding/FragmentMainProductsBinding;->vpProducts:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {p2, v1}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    invoke-virtual {p0}, Lcom/warefly/checkscan/products/presentation/main/view/MainProductsFragment;->n()Lcom/warefly/checkscan/products/databinding/FragmentMainProductsBinding;

    move-result-object p2

    iget-object p2, p2, Lcom/warefly/checkscan/products/databinding/FragmentMainProductsBinding;->vpProducts:Landroidx/viewpager2/widget/ViewPager2;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroidx/viewpager2/widget/ViewPager2;->setUserInputEnabled(Z)V

    invoke-virtual {p0}, Lcom/warefly/checkscan/products/presentation/main/view/MainProductsFragment;->n()Lcom/warefly/checkscan/products/databinding/FragmentMainProductsBinding;

    move-result-object p2

    new-instance v0, Lcom/google/android/material/tabs/TabLayoutMediator;

    iget-object v1, p2, Lcom/warefly/checkscan/products/databinding/FragmentMainProductsBinding;->tlProducts:Lcom/google/android/material/tabs/TabLayout;

    iget-object p2, p2, Lcom/warefly/checkscan/products/databinding/FragmentMainProductsBinding;->vpProducts:Landroidx/viewpager2/widget/ViewPager2;

    new-instance v2, Lbz4;

    invoke-direct {v2, p1, p0}, Lbz4;-><init>(Ljava/lang/Iterable;Ljava/lang/Object;)V

    invoke-direct {v0, v1, p2, v2}, Lcom/google/android/material/tabs/TabLayoutMediator;-><init>(Lcom/google/android/material/tabs/TabLayout;Landroidx/viewpager2/widget/ViewPager2;Lcom/google/android/material/tabs/TabLayoutMediator$TabConfigurationStrategy;)V

    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayoutMediator;->attach()V

    return-void
.end method

.method public final providePresenter()Lcom/warefly/checkscan/products/presentation/main/presenter/MainProductsPresenter;
    .locals 3

    new-instance v0, Lcom/warefly/checkscan/products/presentation/main/presenter/MainProductsPresenter;

    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object p0

    const-class v1, Lr86;

    const/4 v2, 0x0

    invoke-static {v1, p0, v2, v2}, Lm2;->c(Ljava/lang/Class;Lze7;Lkv6;Li36;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lr86;

    invoke-direct {v0, p0}, Lcom/warefly/checkscan/products/presentation/main/presenter/MainProductsPresenter;-><init>(Lr86;)V

    return-object v0
.end method

.method public final showPlaceholder(Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/warefly/checkscan/products/presentation/main/view/MainProductsFragment;->n()Lcom/warefly/checkscan/products/databinding/FragmentMainProductsBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/warefly/checkscan/products/databinding/FragmentMainProductsBinding;->incldPlaceholder:Lcom/warefly/checkscan/products/databinding/ProductsPlaceholderLayoutBinding;

    invoke-virtual {p0}, Lcom/warefly/checkscan/products/databinding/ProductsPlaceholderLayoutBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
