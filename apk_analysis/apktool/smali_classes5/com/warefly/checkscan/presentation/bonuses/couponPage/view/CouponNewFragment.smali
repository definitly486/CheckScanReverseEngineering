.class public final Lcom/warefly/checkscan/presentation/bonuses/couponPage/view/CouponNewFragment;
.super Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;
.source "SourceFile"

# interfaces
.implements Lcom/warefly/checkscan/presentation/bonuses/couponPage/view/CouponNewView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/warefly/checkscan/presentation/bonuses/couponPage/view/CouponNewFragment$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment<",
        "Lcom/warefly/checkscan/databinding/FragmentCouponNewBinding;",
        ">;",
        "Lcom/warefly/checkscan/presentation/bonuses/couponPage/view/CouponNewView;"
    }
.end annotation


# static fields
.field public static final synthetic m:[Lze4;
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

.field public final h:Landroidx/navigation/NavArgsLazy;

.field public i:Los7;

.field public j:Lcom/warefly/checkscan/core/ui/base/dialogs/LoadingDialog;

.field public k:Leu1;

.field public l:Leu1;

.field public presenter:Lcom/warefly/checkscan/presentation/bonuses/couponPage/presenter/CouponNewPresenter;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lbs6;

    const-class v1, Lcom/warefly/checkscan/presentation/bonuses/couponPage/view/CouponNewFragment;

    const-string v2, "binding"

    const-string v3, "getBinding()Lcom/warefly/checkscan/databinding/FragmentCouponNewBinding;"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lbs6;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v1, Lx07;->a:La17;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    new-array v1, v1, [Lze4;

    aput-object v0, v1, v4

    sput-object v1, Lcom/warefly/checkscan/presentation/bonuses/couponPage/view/CouponNewFragment;->m:[Lze4;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;-><init>()V

    const v0, 0x7f0d00bd

    iput v0, p0, Lcom/warefly/checkscan/presentation/bonuses/couponPage/view/CouponNewFragment;->f:I

    new-instance v0, Lol4;

    const-class v1, Lcom/warefly/checkscan/databinding/FragmentCouponNewBinding;

    invoke-direct {v0, v1}, Lol4;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/warefly/checkscan/presentation/bonuses/couponPage/view/CouponNewFragment;->g:Lol4;

    new-instance v0, Landroidx/navigation/NavArgsLazy;

    const-class v1, Lu32;

    invoke-static {v1}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v1

    new-instance v2, Lcom/warefly/checkscan/presentation/bonuses/couponPage/view/CouponNewFragment$l;

    invoke-direct {v2, p0}, Lcom/warefly/checkscan/presentation/bonuses/couponPage/view/CouponNewFragment$l;-><init>(Lcom/warefly/checkscan/presentation/bonuses/couponPage/view/CouponNewFragment;)V

    invoke-direct {v0, v1, v2}, Landroidx/navigation/NavArgsLazy;-><init>(Lne4;Lll3;)V

    iput-object v0, p0, Lcom/warefly/checkscan/presentation/bonuses/couponPage/view/CouponNewFragment;->h:Landroidx/navigation/NavArgsLazy;

    return-void
.end method


# virtual methods
.method public final copyCode(Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v1, Landroid/content/ClipboardManager;

    const v2, 0x7f140163

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0d0344

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lcom/warefly/checkscan/databinding/SnackbarCouponBinding;->bind(Landroid/view/View;)Lcom/warefly/checkscan/databinding/SnackbarCouponBinding;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, Lcom/warefly/checkscan/databinding/SnackbarCouponBinding;->tvMessage:Landroid/widget/TextView;

    const v1, 0x7f140519

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Landroid/widget/Toast;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method

.method public final i()I
    .locals 0

    iget p0, p0, Lcom/warefly/checkscan/presentation/bonuses/couponPage/view/CouponNewFragment;->f:I

    return p0
.end method

.method public final k()Z
    .locals 0

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/bonuses/couponPage/view/CouponNewFragment;->o()Lcom/warefly/checkscan/presentation/bonuses/couponPage/presenter/CouponNewPresenter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/bonuses/couponPage/presenter/CouponNewPresenter;->onBackClick()V

    const/4 p0, 0x0

    return p0
.end method

.method public final n()Lcom/warefly/checkscan/databinding/FragmentCouponNewBinding;
    .locals 2

    sget-object v0, Lcom/warefly/checkscan/presentation/bonuses/couponPage/view/CouponNewFragment;->m:[Lze4;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/warefly/checkscan/presentation/bonuses/couponPage/view/CouponNewFragment;->g:Lol4;

    invoke-virtual {v1, p0, v0}, Lol4;->a(Landroidx/fragment/app/Fragment;Lze4;)Landroidx/viewbinding/ViewBinding;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/databinding/FragmentCouponNewBinding;

    return-object p0
.end method

.method public final o()Lcom/warefly/checkscan/presentation/bonuses/couponPage/presenter/CouponNewPresenter;
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/bonuses/couponPage/view/CouponNewFragment;->presenter:Lcom/warefly/checkscan/presentation/bonuses/couponPage/presenter/CouponNewPresenter;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "presenter"

    invoke-static {p0}, Laa4;->j(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 20

    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-super/range {p0 .. p2}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {v0}, Lcom/warefly/checkscan/presentation/bonuses/couponPage/view/CouponNewFragment;->n()Lcom/warefly/checkscan/databinding/FragmentCouponNewBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/warefly/checkscan/databinding/FragmentCouponNewBinding;->viewToolbar:Lcom/warefly/checkscan/databinding/LayoutTextToolbarBinding;

    iget-object v2, v1, Lcom/warefly/checkscan/databinding/LayoutTextToolbarBinding;->btnShare:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, v1, Lcom/warefly/checkscan/databinding/LayoutTextToolbarBinding;->btnFave:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, v1, Lcom/warefly/checkscan/databinding/LayoutTextToolbarBinding;->btnFave:Landroid/widget/ImageView;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Llb7;

    new-instance v5, Lcom/warefly/checkscan/presentation/bonuses/couponPage/view/CouponNewFragment$b;

    invoke-direct {v5, v0, v1}, Lcom/warefly/checkscan/presentation/bonuses/couponPage/view/CouponNewFragment$b;-><init>(Lcom/warefly/checkscan/presentation/bonuses/couponPage/view/CouponNewFragment;Lcom/warefly/checkscan/databinding/LayoutTextToolbarBinding;)V

    invoke-direct {v4, v5}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, v1, Lcom/warefly/checkscan/databinding/LayoutTextToolbarBinding;->btnBack:Landroid/widget/ImageView;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Llb7;

    new-instance v4, Lcom/warefly/checkscan/presentation/bonuses/couponPage/view/CouponNewFragment$c;

    invoke-direct {v4, v0}, Lcom/warefly/checkscan/presentation/bonuses/couponPage/view/CouponNewFragment$c;-><init>(Lcom/warefly/checkscan/presentation/bonuses/couponPage/view/CouponNewFragment;)V

    invoke-direct {v2, v4}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0}, Lcom/warefly/checkscan/presentation/bonuses/couponPage/view/CouponNewFragment;->n()Lcom/warefly/checkscan/databinding/FragmentCouponNewBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/warefly/checkscan/databinding/FragmentCouponNewBinding;->nestedScroll:Landroidx/core/widget/NestedScrollView;

    new-instance v2, Lo32;

    invoke-direct {v2, v0}, Lo32;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroidx/core/widget/NestedScrollView;->setOnScrollChangeListener(Landroidx/core/widget/NestedScrollView$OnScrollChangeListener;)V

    invoke-virtual {v0}, Lcom/warefly/checkscan/presentation/bonuses/couponPage/view/CouponNewFragment;->n()Lcom/warefly/checkscan/databinding/FragmentCouponNewBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/warefly/checkscan/databinding/FragmentCouponNewBinding;->layoutPopularProducts:Lcom/warefly/checkscan/databinding/ItemAdmitadPopularProductsBinding;

    iget-object v1, v1, Lcom/warefly/checkscan/databinding/ItemAdmitadPopularProductsBinding;->rvHotItems:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Leu1;

    new-instance v4, Lzw3;

    new-instance v5, Lp32;

    invoke-direct {v5, v0}, Lp32;-><init>(Lcom/warefly/checkscan/presentation/bonuses/couponPage/view/CouponNewFragment;)V

    new-instance v6, Lq32;

    invoke-virtual {v0}, Lcom/warefly/checkscan/presentation/bonuses/couponPage/view/CouponNewFragment;->o()Lcom/warefly/checkscan/presentation/bonuses/couponPage/presenter/CouponNewPresenter;

    move-result-object v8

    const-string v11, "onHotItemOrderClick(Ljava/lang/String;Ljava/lang/String;)V"

    const/4 v12, 0x0

    const/4 v7, 0x2

    const-class v16, Lcom/warefly/checkscan/presentation/bonuses/couponPage/presenter/CouponNewPresenter;

    const-string v10, "onHotItemOrderClick"

    move-object/from16 v9, v16

    invoke-direct/range {v6 .. v12}, Lqm3;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v13, Lr32;

    invoke-virtual {v0}, Lcom/warefly/checkscan/presentation/bonuses/couponPage/view/CouponNewFragment;->o()Lcom/warefly/checkscan/presentation/bonuses/couponPage/presenter/CouponNewPresenter;

    move-result-object v15

    const-string v18, "onAdultConfirmedClick()V"

    const/16 v19, 0x0

    const/4 v14, 0x0

    const-string v17, "onAdultConfirmedClick"

    invoke-direct/range {v13 .. v19}, Lqm3;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {v4, v5, v6, v13}, Lzw3;-><init>(Ldm3;Lbm3;Lll3;)V

    const/4 v5, 0x1

    new-array v6, v5, [Lil2;

    aput-object v4, v6, v3

    invoke-direct {v2, v6}, Leu1;-><init>([Lil2;)V

    iput-object v2, v0, Lcom/warefly/checkscan/presentation/bonuses/couponPage/view/CouponNewFragment;->l:Leu1;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    new-instance v2, Law5;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v4, Landroidx/recyclerview/widget/LinearLayoutManager;

    new-instance v6, Ls32;

    invoke-direct {v6, v0}, Ls32;-><init>(Lcom/warefly/checkscan/presentation/bonuses/couponPage/view/CouponNewFragment;)V

    invoke-direct {v2, v4, v6}, Law5;-><init>(Landroidx/recyclerview/widget/LinearLayoutManager;Lll3;)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    invoke-virtual {v0}, Lcom/warefly/checkscan/presentation/bonuses/couponPage/view/CouponNewFragment;->o()Lcom/warefly/checkscan/presentation/bonuses/couponPage/presenter/CouponNewPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/warefly/checkscan/presentation/bonuses/couponPage/presenter/CouponNewPresenter;->initHotsPaginator()V

    invoke-virtual {v0}, Lcom/warefly/checkscan/presentation/bonuses/couponPage/view/CouponNewFragment;->n()Lcom/warefly/checkscan/databinding/FragmentCouponNewBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/warefly/checkscan/databinding/FragmentCouponNewBinding;->layoutGetCashbackInfo:Lcom/warefly/checkscan/databinding/ItemAdmitadGetCashbackDescriptionBinding;

    iget-object v1, v1, Lcom/warefly/checkscan/databinding/ItemAdmitadGetCashbackDescriptionBinding;->rvSteps:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Leu1;

    new-instance v4, Lv88;

    invoke-direct {v4}, Lv88;-><init>()V

    new-array v5, v5, [Lil2;

    aput-object v4, v5, v3

    invoke-direct {v2, v5}, Leu1;-><init>([Lil2;)V

    iput-object v2, v0, Lcom/warefly/checkscan/presentation/bonuses/couponPage/view/CouponNewFragment;->k:Leu1;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    new-instance v2, Lfq4;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v2, v4}, Lfq4;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    invoke-virtual {v0}, Lcom/warefly/checkscan/presentation/bonuses/couponPage/view/CouponNewFragment;->n()Lcom/warefly/checkscan/databinding/FragmentCouponNewBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/warefly/checkscan/databinding/FragmentCouponNewBinding;->layoutDescription:Lcom/warefly/checkscan/databinding/ItemAdmitadNewDescriptionBinding;

    iget-object v1, v1, Lcom/warefly/checkscan/databinding/ItemAdmitadNewDescriptionBinding;->btnGoToOperations:Landroid/widget/TextView;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Llb7;

    new-instance v4, Lt32;

    invoke-direct {v4, v0, v3}, Lt32;-><init>(Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;I)V

    invoke-direct {v2, v4}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final openCouponUrl(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0, p1}, Li72;->b(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final openHotItemUrl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    sget v1, Lcom/warefly/checkscan/presentation/webview/WebViewActivity;->f:I

    const/16 v1, 0xc

    invoke-static {v0, v1, p1, p2}, Lcom/warefly/checkscan/presentation/webview/WebViewActivity$a;->a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public final providePresenter()Lcom/warefly/checkscan/presentation/bonuses/couponPage/presenter/CouponNewPresenter;
    .locals 8

    new-instance v0, Lcom/warefly/checkscan/presentation/bonuses/couponPage/presenter/CouponNewPresenter;

    iget-object v1, p0, Lcom/warefly/checkscan/presentation/bonuses/couponPage/view/CouponNewFragment;->h:Landroidx/navigation/NavArgsLazy;

    invoke-interface {v1}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lu32;

    iget-wide v1, v1, Lu32;->a:J

    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object v3

    const-class v4, Lq42;

    const/4 v5, 0x0

    invoke-static {v4, v3, v5, v5}, Lm2;->c(Ljava/lang/Class;Lze7;Lkv6;Li36;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lq42;

    invoke-virtual {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;->j()Lba8;

    move-result-object v4

    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object v6

    const-class v7, Luf3;

    invoke-static {v7, v6, v4, v5}, Ln2;->c(Ljava/lang/Class;Lze7;Lba8;Li36;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Luf3;

    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object p0

    const-class v6, Ljf6;

    invoke-static {v6, p0, v5, v5}, Lm2;->c(Ljava/lang/Class;Lze7;Lkv6;Li36;)Ljava/lang/Object;

    move-result-object p0

    move-object v5, p0

    check-cast v5, Ljf6;

    invoke-direct/range {v0 .. v5}, Lcom/warefly/checkscan/presentation/bonuses/couponPage/presenter/CouponNewPresenter;-><init>(JLq42;Luf3;Ljf6;)V

    return-object v0
.end method

.method public final setCouponInfo(Lm32;)V
    .locals 10

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/bonuses/couponPage/view/CouponNewFragment;->n()Lcom/warefly/checkscan/databinding/FragmentCouponNewBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/warefly/checkscan/databinding/FragmentCouponNewBinding;->layoutTitle:Lcom/warefly/checkscan/databinding/ItemCouponNewBinding;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bumptech/glide/a;->b(Landroid/content/Context;)Lq37;

    move-result-object v1

    invoke-virtual {v1, p0}, Lq37;->d(Landroidx/fragment/app/Fragment;)Lp37;

    move-result-object v1

    iget-object v2, p1, Lm32;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lp37;->h(Ljava/lang/String;)Lh37;

    move-result-object v1

    iget-object v2, v0, Lcom/warefly/checkscan/databinding/ItemCouponNewBinding;->ivBanner:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Lh37;->L(Landroid/widget/ImageView;)V

    iget-object v1, p1, Lm32;->f:Lj32;

    if-eqz v1, :cond_0

    iget-object v2, v1, Lj32;->a:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v3, v0, Lcom/warefly/checkscan/databinding/ItemCouponNewBinding;->btnCopyCode:Lcom/warefly/checkscan/core/ui/LoadingButton;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/bonuses/couponPage/view/CouponNewFragment;->n()Lcom/warefly/checkscan/databinding/FragmentCouponNewBinding;

    move-result-object v3

    iget-object v3, v3, Lcom/warefly/checkscan/databinding/FragmentCouponNewBinding;->btnGoShop:Lcom/warefly/checkscan/core/ui/LoadingButton;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v2, p1, Lm32;->d:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v3, v0, Lcom/warefly/checkscan/databinding/ItemCouponNewBinding;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v2, p1, Lm32;->e:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v3, v0, Lcom/warefly/checkscan/databinding/ItemCouponNewBinding;->tvDescription:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    iget-object v2, p1, Lm32;->b:Lh32;

    if-eqz v2, :cond_7

    iget-object v3, v2, Lh32;->a:Ljava/lang/String;

    iget-object v4, v0, Lcom/warefly/checkscan/databinding/ItemCouponNewBinding;->tvExpiration:Landroid/widget/TextView;

    if-eqz v3, :cond_6

    invoke-static {v3}, Lta8;->M(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, v2, Lh32;->b:Ljava/lang/String;

    if-eqz v3, :cond_4

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_4
    iget-object v2, v2, Lh32;->c:Ljava/lang/String;

    if-eqz v2, :cond_5

    invoke-virtual {v4}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {v3}, Landroidx/core/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-static {v3, v2}, Landroidx/core/graphics/drawable/DrawableCompat;->setTint(Landroid/graphics/drawable/Drawable;I)V

    :cond_5
    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_6
    :goto_0
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v2, 0x8

    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_7
    :goto_1
    iget-object v2, p1, Lm32;->h:Lb54;

    const/4 v3, 0x0

    if-eqz v2, :cond_9

    iget-object v4, v0, Lcom/warefly/checkscan/databinding/ItemCouponNewBinding;->btnCopyCode:Lcom/warefly/checkscan/core/ui/LoadingButton;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/bonuses/couponPage/view/CouponNewFragment;->n()Lcom/warefly/checkscan/databinding/FragmentCouponNewBinding;

    move-result-object v5

    iget-object v5, v5, Lcom/warefly/checkscan/databinding/FragmentCouponNewBinding;->btnGoShop:Lcom/warefly/checkscan/core/ui/LoadingButton;

    filled-new-array {v4, v5}, [Lcom/warefly/checkscan/core/ui/LoadingButton;

    move-result-object v4

    invoke-static {v4}, Lu96;->i([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    check-cast v4, Ljava/lang/Iterable;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/warefly/checkscan/core/ui/LoadingButton;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Llb7;

    new-instance v7, Lcom/warefly/checkscan/presentation/bonuses/couponPage/view/CouponNewFragment$f;

    invoke-direct {v7, p0, v2, p1}, Lcom/warefly/checkscan/presentation/bonuses/couponPage/view/CouponNewFragment$f;-><init>(Lcom/warefly/checkscan/presentation/bonuses/couponPage/view/CouponNewFragment;Lb54;Lm32;)V

    invoke-direct {v6, v7}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    :cond_8
    sget-object v2, Lj59;->a:Lj59;

    goto :goto_3

    :cond_9
    move-object v2, v3

    :goto_3
    if-nez v2, :cond_e

    if-eqz v1, :cond_a

    iget-object v3, v1, Lj32;->c:Lg32;

    :cond_a
    if-nez v3, :cond_b

    const/4 v1, -0x1

    goto :goto_4

    :cond_b
    sget-object v1, Lcom/warefly/checkscan/presentation/bonuses/couponPage/view/CouponNewFragment$a;->a:[I

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    :goto_4
    const/4 v2, 0x1

    if-eq v1, v2, :cond_d

    const/4 v2, 0x2

    if-eq v1, v2, :cond_c

    goto :goto_6

    :cond_c
    iget-object v0, v0, Lcom/warefly/checkscan/databinding/ItemCouponNewBinding;->btnCopyCode:Lcom/warefly/checkscan/core/ui/LoadingButton;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/bonuses/couponPage/view/CouponNewFragment;->n()Lcom/warefly/checkscan/databinding/FragmentCouponNewBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/warefly/checkscan/databinding/FragmentCouponNewBinding;->btnGoShop:Lcom/warefly/checkscan/core/ui/LoadingButton;

    filled-new-array {v0, v1}, [Lcom/warefly/checkscan/core/ui/LoadingButton;

    move-result-object v0

    invoke-static {v0}, Lu96;->i([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/warefly/checkscan/core/ui/LoadingButton;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Llb7;

    new-instance v3, Lcom/warefly/checkscan/presentation/bonuses/couponPage/view/CouponNewFragment$h;

    invoke-direct {v3, p0}, Lcom/warefly/checkscan/presentation/bonuses/couponPage/view/CouponNewFragment$h;-><init>(Lcom/warefly/checkscan/presentation/bonuses/couponPage/view/CouponNewFragment;)V

    invoke-direct {v2, v3}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_5

    :cond_d
    iget-object v0, v0, Lcom/warefly/checkscan/databinding/ItemCouponNewBinding;->btnCopyCode:Lcom/warefly/checkscan/core/ui/LoadingButton;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Llb7;

    new-instance v2, Lcom/warefly/checkscan/presentation/bonuses/couponPage/view/CouponNewFragment$g;

    invoke-direct {v2, p0, p1}, Lcom/warefly/checkscan/presentation/bonuses/couponPage/view/CouponNewFragment$g;-><init>(Lcom/warefly/checkscan/presentation/bonuses/couponPage/view/CouponNewFragment;Lm32;)V

    invoke-direct {v1, v2}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_e
    :goto_6
    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/bonuses/couponPage/view/CouponNewFragment;->n()Lcom/warefly/checkscan/databinding/FragmentCouponNewBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/warefly/checkscan/databinding/FragmentCouponNewBinding;->viewToolbar:Lcom/warefly/checkscan/databinding/LayoutTextToolbarBinding;

    iget-object v1, v0, Lcom/warefly/checkscan/databinding/LayoutTextToolbarBinding;->tvToolbarTitle:Landroid/widget/TextView;

    iget-object v2, p1, Lm32;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v0, Lcom/warefly/checkscan/databinding/LayoutTextToolbarBinding;->btnFave:Landroid/widget/ImageView;

    iget-boolean v1, p1, Lm32;->g:Z

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    new-instance v0, Los7;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/bonuses/couponPage/view/CouponNewFragment;->n()Lcom/warefly/checkscan/databinding/FragmentCouponNewBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/warefly/checkscan/databinding/FragmentCouponNewBinding;->viewToolbar:Lcom/warefly/checkscan/databinding/LayoutTextToolbarBinding;

    iget-object v1, v1, Lcom/warefly/checkscan/databinding/LayoutTextToolbarBinding;->btnShare:Landroid/widget/ImageView;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/warefly/checkscan/presentation/bonuses/couponPage/view/CouponNewFragment$d;

    invoke-direct {v2, p0, p1}, Lcom/warefly/checkscan/presentation/bonuses/couponPage/view/CouponNewFragment$d;-><init>(Lcom/warefly/checkscan/presentation/bonuses/couponPage/view/CouponNewFragment;Lm32;)V

    new-instance v3, Lcom/warefly/checkscan/presentation/bonuses/couponPage/view/CouponNewFragment$e;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/bonuses/couponPage/view/CouponNewFragment;->o()Lcom/warefly/checkscan/presentation/bonuses/couponPage/presenter/CouponNewPresenter;

    move-result-object v5

    const-string v8, "showLoadingDialog(Z)V"

    const/4 v9, 0x0

    const/4 v4, 0x1

    const-class v6, Lcom/warefly/checkscan/presentation/bonuses/couponPage/presenter/CouponNewPresenter;

    const-string v7, "showLoadingDialog"

    invoke-direct/range {v3 .. v9}, Lqm3;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {v0, v1, v3, v2}, Los7;-><init>(Landroid/view/View;Lnl3;Lll3;)V

    iput-object v0, p0, Lcom/warefly/checkscan/presentation/bonuses/couponPage/view/CouponNewFragment;->i:Los7;

    return-void
.end method

.method public final setDescriptionInfo(Landroid/text/Spanned;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/bonuses/couponPage/view/CouponNewFragment;->n()Lcom/warefly/checkscan/databinding/FragmentCouponNewBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/warefly/checkscan/databinding/FragmentCouponNewBinding;->layoutDescription:Lcom/warefly/checkscan/databinding/ItemAdmitadNewDescriptionBinding;

    iget-object v0, p0, Lcom/warefly/checkscan/databinding/ItemAdmitadNewDescriptionBinding;->tvDescription:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    iget-object v0, p0, Lcom/warefly/checkscan/databinding/ItemAdmitadNewDescriptionBinding;->tvDescription:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/warefly/checkscan/databinding/ItemAdmitadNewDescriptionBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final setFloatingButtonVisibility(Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/bonuses/couponPage/view/CouponNewFragment;->n()Lcom/warefly/checkscan/databinding/FragmentCouponNewBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/warefly/checkscan/databinding/FragmentCouponNewBinding;->btnGoShop:Lcom/warefly/checkscan/core/ui/LoadingButton;

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

.method public final setHotItemsInfo(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lyw3;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/bonuses/couponPage/view/CouponNewFragment;->n()Lcom/warefly/checkscan/databinding/FragmentCouponNewBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/warefly/checkscan/databinding/FragmentCouponNewBinding;->layoutPopularProducts:Lcom/warefly/checkscan/databinding/ItemAdmitadPopularProductsBinding;

    invoke-virtual {v0}, Lcom/warefly/checkscan/databinding/ItemAdmitadPopularProductsBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/bonuses/couponPage/view/CouponNewFragment;->l:Leu1;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Leu1;->submitList(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public final setStepsInfo(Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lla8;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/bonuses/couponPage/view/CouponNewFragment;->n()Lcom/warefly/checkscan/databinding/FragmentCouponNewBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/warefly/checkscan/databinding/FragmentCouponNewBinding;->layoutGetCashbackInfo:Lcom/warefly/checkscan/databinding/ItemAdmitadGetCashbackDescriptionBinding;

    iget-object v1, v0, Lcom/warefly/checkscan/databinding/ItemAdmitadGetCashbackDescriptionBinding;->tvAdmitadGetCashbackTitle:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Lcom/warefly/checkscan/databinding/ItemAdmitadGetCashbackDescriptionBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/bonuses/couponPage/view/CouponNewFragment;->k:Leu1;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p2}, Leu1;->submitList(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public final shareCard(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    invoke-static {p1, p2, p3, p4}, Lm2;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/bonuses/couponPage/view/CouponNewFragment;->i:Los7;

    if-eqz v0, :cond_0

    const v1, 0x7f1400bc

    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p0, v1, p3}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Lcom/warefly/checkscan/presentation/bonuses/couponPage/view/CouponNewFragment$i;

    invoke-direct {v5, p0}, Lcom/warefly/checkscan/presentation/bonuses/couponPage/view/CouponNewFragment$i;-><init>(Lcom/warefly/checkscan/presentation/bonuses/couponPage/view/CouponNewFragment;)V

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Los7;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lll3;)Lrx1;

    move-result-object p1

    const-string p2, "ShareCard"

    invoke-virtual {p0, p1, p2}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;->f(Lcp2;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final showActionButtonLoading(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/bonuses/couponPage/view/CouponNewFragment;->n()Lcom/warefly/checkscan/databinding/FragmentCouponNewBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/warefly/checkscan/databinding/FragmentCouponNewBinding;->layoutTitle:Lcom/warefly/checkscan/databinding/ItemCouponNewBinding;

    iget-object v0, v0, Lcom/warefly/checkscan/databinding/ItemCouponNewBinding;->btnCopyCode:Lcom/warefly/checkscan/core/ui/LoadingButton;

    invoke-virtual {v0, p1}, Lcom/warefly/checkscan/core/ui/LoadingButton;->setLoading(Z)V

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/bonuses/couponPage/view/CouponNewFragment;->n()Lcom/warefly/checkscan/databinding/FragmentCouponNewBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/warefly/checkscan/databinding/FragmentCouponNewBinding;->btnGoShop:Lcom/warefly/checkscan/core/ui/LoadingButton;

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/core/ui/LoadingButton;->setLoading(Z)V

    return-void
.end method

.method public final showBarCode(Ljava/lang/String;)V
    .locals 9

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/bonuses/couponPage/view/CouponNewFragment;->n()Lcom/warefly/checkscan/databinding/FragmentCouponNewBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/warefly/checkscan/databinding/FragmentCouponNewBinding;->layoutTitle:Lcom/warefly/checkscan/databinding/ItemCouponNewBinding;

    iget-object p0, p0, Lcom/warefly/checkscan/databinding/ItemCouponNewBinding;->viewBarcode:Lcom/warefly/checkscan/databinding/LayoutBarcodeBinding;

    iget-object v0, p0, Lcom/warefly/checkscan/databinding/LayoutBarcodeBinding;->ivBarcode:Landroid/widget/ImageView;

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    sget-object v3, Lqc0;->CODE_128:Lqc0;

    invoke-static {p1, v3}, Ltm1;->a(Ljava/lang/String;Lqc0;)Lqi0;

    move-result-object v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    const/16 v5, 0x12c

    const/16 v6, 0x32

    invoke-static {v5, v6, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    move v4, v1

    :goto_0
    if-ge v4, v5, :cond_2

    move v7, v1

    :goto_1
    if-ge v7, v6, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3, v4, v7}, Lqi0;->c(II)Z

    move-result v8

    if-eqz v8, :cond_0

    const/high16 v8, -0x1000000

    goto :goto_2

    :cond_0
    const/4 v8, -0x1

    :goto_2
    invoke-virtual {v2, v4, v7, v8}, Landroid/graphics/Bitmap;->setPixel(III)V
    :try_end_0
    .catch Lcom/google/zxing/WriterException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :catch_0
    move-exception v3

    goto :goto_3

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :goto_3
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/warefly/checkscan/databinding/LayoutBarcodeBinding;->tvBarcode:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/warefly/checkscan/databinding/LayoutBarcodeBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final showFavoriteStatus(Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/bonuses/couponPage/view/CouponNewFragment;->n()Lcom/warefly/checkscan/databinding/FragmentCouponNewBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/warefly/checkscan/databinding/FragmentCouponNewBinding;->viewToolbar:Lcom/warefly/checkscan/databinding/LayoutTextToolbarBinding;

    iget-object p0, p0, Lcom/warefly/checkscan/databinding/LayoutTextToolbarBinding;->btnFave:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setSelected(Z)V

    return-void
.end method

.method public final showFavoriteStatusIsChanged(ZZ)V
    .locals 0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    if-eqz p0, :cond_1

    if-eqz p2, :cond_0

    new-instance p2, Lcom/warefly/checkscan/presentation/bonuses/behaviors/AddedToFavesDialog;

    invoke-direct {p2, p0, p1}, Lcom/warefly/checkscan/presentation/bonuses/behaviors/AddedToFavesDialog;-><init>(Landroid/content/Context;Z)V

    invoke-virtual {p2}, Landroid/app/Dialog;->show()V

    return-void

    :cond_0
    new-instance p2, Lcom/warefly/checkscan/presentation/bonuses/behaviors/RemovedFromFavesDialog;

    invoke-direct {p2, p0, p1}, Lcom/warefly/checkscan/presentation/bonuses/behaviors/RemovedFromFavesDialog;-><init>(Landroid/content/Context;Z)V

    invoke-virtual {p2}, Landroid/app/Dialog;->show()V

    :cond_1
    return-void
.end method

.method public final showImageCode(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/bonuses/couponPage/view/CouponNewFragment;->n()Lcom/warefly/checkscan/databinding/FragmentCouponNewBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/warefly/checkscan/databinding/FragmentCouponNewBinding;->layoutTitle:Lcom/warefly/checkscan/databinding/ItemCouponNewBinding;

    iget-object p0, p0, Lcom/warefly/checkscan/databinding/ItemCouponNewBinding;->ivImageCode:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-static {p0}, Lcom/bumptech/glide/a;->e(Landroid/view/View;)Lp37;

    move-result-object v0

    new-instance v1, Ls37;

    invoke-direct {v1}, Ls37;-><init>()V

    sget-object v2, Lld2;->PREFER_ARGB_8888:Lld2;

    invoke-static {v2}, Lr96;->b(Ljava/lang/Object;)V

    sget-object v3, Lvq2;->f:Lqz5;

    invoke-virtual {v1, v3, v2}, Lee0;->w(Lqz5;Ljava/lang/Object;)Lee0;

    move-result-object v1

    sget-object v3, Ldq3;->a:Lqz5;

    invoke-virtual {v1, v3, v2}, Lee0;->w(Lqz5;Ljava/lang/Object;)Lee0;

    move-result-object v1

    check-cast v1, Ls37;

    monitor-enter v0

    :try_start_0
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v2, v0, Lp37;->k:Ls37;

    invoke-virtual {v2, v1}, Lee0;->b(Lee0;)Lee0;

    move-result-object v1

    check-cast v1, Ls37;

    iput-object v1, v0, Lp37;->k:Ls37;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v0

    invoke-virtual {v0, p1}, Lp37;->h(Ljava/lang/String;)Lh37;

    move-result-object p1

    invoke-static {}, Lqs2;->h()Lqs2;

    move-result-object v0

    invoke-virtual {p1, v0}, Lh37;->P(Lqs2;)Lh37;

    move-result-object p1

    invoke-virtual {p1, p0}, Lh37;->L(Landroid/widget/ImageView;)V

    if-eqz p2, :cond_0

    new-instance p1, Llb7;

    new-instance v0, Lcom/warefly/checkscan/presentation/bonuses/couponPage/view/CouponNewFragment$j;

    invoke-direct {v0, p0, p2}, Lcom/warefly/checkscan/presentation/bonuses/couponPage/view/CouponNewFragment$j;-><init>(Landroid/widget/ImageView;Ljava/lang/String;)V

    invoke-direct {p1, v0}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0

    :goto_0
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0

    :catchall_1
    move-exception p0

    goto :goto_0
.end method

.method public final showLoading(Z)V
    .locals 4

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/bonuses/couponPage/view/CouponNewFragment;->n()Lcom/warefly/checkscan/databinding/FragmentCouponNewBinding;

    move-result-object p0

    iget-object v0, p0, Lcom/warefly/checkscan/databinding/FragmentCouponNewBinding;->allBlocks:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-nez p1, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/warefly/checkscan/databinding/FragmentCouponNewBinding;->viewLoading:Lcom/warefly/checkscan/databinding/LayoutPartnerLoadingPlaceholderBinding;

    invoke-virtual {p0}, Lcom/warefly/checkscan/databinding/LayoutPartnerLoadingPlaceholderBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p1, :cond_1

    move v1, v2

    :cond_1
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final showLoadingDialog(Z)V
    .locals 1

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/bonuses/couponPage/view/CouponNewFragment;->j:Lcom/warefly/checkscan/core/ui/base/dialogs/LoadingDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    :cond_0
    if-eqz p1, :cond_1

    sget-object p1, Lcom/warefly/checkscan/core/ui/base/dialogs/LoadingDialog;->d:Lcom/warefly/checkscan/core/ui/base/dialogs/LoadingDialog$a;

    invoke-static {p1}, Lcom/warefly/checkscan/core/ui/base/dialogs/LoadingDialog$a;->b(Lcom/warefly/checkscan/core/ui/base/dialogs/LoadingDialog$a;)Lcom/warefly/checkscan/core/ui/base/dialogs/LoadingDialog;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;->m(Lcom/warefly/checkscan/core/ui/base/dialogs/FullScreenDialog;)V

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/bonuses/couponPage/view/CouponNewFragment;->j:Lcom/warefly/checkscan/core/ui/base/dialogs/LoadingDialog;

    :cond_1
    return-void
.end method

.method public final showPromocode(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/bonuses/couponPage/view/CouponNewFragment;->n()Lcom/warefly/checkscan/databinding/FragmentCouponNewBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/warefly/checkscan/databinding/FragmentCouponNewBinding;->layoutTitle:Lcom/warefly/checkscan/databinding/ItemCouponNewBinding;

    iget-object p0, p0, Lcom/warefly/checkscan/databinding/ItemCouponNewBinding;->layoutPromocode:Lcom/warefly/checkscan/databinding/ItemCouponPromocodeBinding;

    invoke-virtual {p0}, Lcom/warefly/checkscan/databinding/ItemCouponPromocodeBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final showPromocodeCopied(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/bonuses/couponPage/view/CouponNewFragment;->n()Lcom/warefly/checkscan/databinding/FragmentCouponNewBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/warefly/checkscan/databinding/FragmentCouponNewBinding;->layoutTitle:Lcom/warefly/checkscan/databinding/ItemCouponNewBinding;

    iget-object v0, v0, Lcom/warefly/checkscan/databinding/ItemCouponNewBinding;->layoutPromocode:Lcom/warefly/checkscan/databinding/ItemCouponPromocodeBinding;

    new-instance v1, Landroid/view/animation/AlphaAnimation;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    new-instance v2, Lcom/warefly/checkscan/presentation/bonuses/couponPage/view/CouponNewFragment$k;

    invoke-direct {v2, p0, p1, p2, v0}, Lcom/warefly/checkscan/presentation/bonuses/couponPage/view/CouponNewFragment$k;-><init>(Lcom/warefly/checkscan/presentation/bonuses/couponPage/view/CouponNewFragment;Ljava/lang/String;Ljava/lang/String;Lcom/warefly/checkscan/databinding/ItemCouponPromocodeBinding;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object p0, v0, Lcom/warefly/checkscan/databinding/ItemCouponPromocodeBinding;->tvPromocode:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public final showQrCode(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/bonuses/couponPage/view/CouponNewFragment;->n()Lcom/warefly/checkscan/databinding/FragmentCouponNewBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/warefly/checkscan/databinding/FragmentCouponNewBinding;->layoutTitle:Lcom/warefly/checkscan/databinding/ItemCouponNewBinding;

    iget-object p0, p0, Lcom/warefly/checkscan/databinding/ItemCouponNewBinding;->ivQrCode:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    const/16 v0, 0xc8

    invoke-static {v0, p1}, Lfv6;->a(ILjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public final showRedirectDialog(Lsy8;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    if-eqz p0, :cond_0

    new-instance v0, Lcom/warefly/checkscan/presentation/bonuses/shopPage/redirectDialog/view/RedirectDialog;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/warefly/checkscan/presentation/bonuses/shopPage/redirectDialog/view/RedirectDialog;-><init>(Landroid/content/Context;Lsy8;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_0
    return-void
.end method

.method public final showRequestInfoError()V
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    const v0, 0x7f140271

    invoke-static {v0, p0}, Loz1;->g(ILandroid/view/View;)V

    :cond_0
    return-void
.end method
