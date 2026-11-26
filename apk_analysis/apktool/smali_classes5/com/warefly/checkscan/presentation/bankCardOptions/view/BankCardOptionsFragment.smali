.class public final Lcom/warefly/checkscan/presentation/bankCardOptions/view/BankCardOptionsFragment;
.super Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;
.source "SourceFile"

# interfaces
.implements Lcom/warefly/checkscan/presentation/bankCardOptions/presenter/BankCardsOptionsView;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment<",
        "Lcom/warefly/checkscan/databinding/FragmentBankCardOptionsBinding;",
        ">;",
        "Lcom/warefly/checkscan/presentation/bankCardOptions/presenter/BankCardsOptionsView;"
    }
.end annotation


# static fields
.field public static final synthetic j:[Lze4;
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

.field public final i:Lcom/warefly/checkscan/presentation/bankCardOptions/view/BankCardOptionsFragment$a;

.field public presenter:Lcom/warefly/checkscan/presentation/bankCardOptions/presenter/BankCardOptionsPresenter;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lbs6;

    const-class v1, Lcom/warefly/checkscan/presentation/bankCardOptions/view/BankCardOptionsFragment;

    const-string v2, "binding"

    const-string v3, "getBinding()Lcom/warefly/checkscan/databinding/FragmentBankCardOptionsBinding;"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lbs6;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v1, Lx07;->a:La17;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    new-array v1, v1, [Lze4;

    aput-object v0, v1, v4

    sput-object v1, Lcom/warefly/checkscan/presentation/bankCardOptions/view/BankCardOptionsFragment;->j:[Lze4;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;-><init>()V

    const v0, 0x7f0d00a8

    iput v0, p0, Lcom/warefly/checkscan/presentation/bankCardOptions/view/BankCardOptionsFragment;->f:I

    new-instance v0, Lol4;

    const-class v1, Lcom/warefly/checkscan/databinding/FragmentBankCardOptionsBinding;

    invoke-direct {v0, v1}, Lol4;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/warefly/checkscan/presentation/bankCardOptions/view/BankCardOptionsFragment;->g:Lol4;

    new-instance v0, Landroidx/navigation/NavArgsLazy;

    const-class v1, Lc90;

    invoke-static {v1}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v1

    new-instance v2, Lcom/warefly/checkscan/presentation/bankCardOptions/view/BankCardOptionsFragment$d;

    invoke-direct {v2, p0}, Lcom/warefly/checkscan/presentation/bankCardOptions/view/BankCardOptionsFragment$d;-><init>(Lcom/warefly/checkscan/presentation/bankCardOptions/view/BankCardOptionsFragment;)V

    invoke-direct {v0, v1, v2}, Landroidx/navigation/NavArgsLazy;-><init>(Lne4;Lll3;)V

    iput-object v0, p0, Lcom/warefly/checkscan/presentation/bankCardOptions/view/BankCardOptionsFragment;->h:Landroidx/navigation/NavArgsLazy;

    new-instance v0, Lcom/warefly/checkscan/presentation/bankCardOptions/view/BankCardOptionsFragment$a;

    invoke-direct {v0, p0}, Lcom/warefly/checkscan/presentation/bankCardOptions/view/BankCardOptionsFragment$a;-><init>(Lcom/warefly/checkscan/presentation/bankCardOptions/view/BankCardOptionsFragment;)V

    iput-object v0, p0, Lcom/warefly/checkscan/presentation/bankCardOptions/view/BankCardOptionsFragment;->i:Lcom/warefly/checkscan/presentation/bankCardOptions/view/BankCardOptionsFragment$a;

    return-void
.end method


# virtual methods
.method public final i()I
    .locals 0

    iget p0, p0, Lcom/warefly/checkscan/presentation/bankCardOptions/view/BankCardOptionsFragment;->f:I

    return p0
.end method

.method public final k()Z
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/bankCardOptions/view/BankCardOptionsFragment;->presenter:Lcom/warefly/checkscan/presentation/bankCardOptions/presenter/BankCardOptionsPresenter;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/bankCardOptions/presenter/BankCardOptionsPresenter;->onBackPressed()V

    const/4 p0, 0x0

    return p0

    :cond_0
    const-string p0, "presenter"

    invoke-static {p0}, Laa4;->j(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-super {p0, p1, p2}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    sget-object p1, Lcom/warefly/checkscan/presentation/bankCardOptions/view/BankCardOptionsFragment;->j:[Lze4;

    const/4 p2, 0x0

    aget-object p1, p1, p2

    iget-object p2, p0, Lcom/warefly/checkscan/presentation/bankCardOptions/view/BankCardOptionsFragment;->g:Lol4;

    invoke-virtual {p2, p0, p1}, Lol4;->a(Landroidx/fragment/app/Fragment;Lze4;)Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/warefly/checkscan/databinding/FragmentBankCardOptionsBinding;

    iget-object p1, p1, Lcom/warefly/checkscan/databinding/FragmentBankCardOptionsBinding;->toolbar:Lcom/warefly/checkscan/databinding/LayoutToolbarSimpleTitleBinding;

    iget-object p1, p1, Lcom/warefly/checkscan/databinding/LayoutToolbarSimpleTitleBinding;->ivBtnBack:Landroid/widget/ImageView;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Llb7;

    new-instance v0, Lcom/warefly/checkscan/presentation/bankCardOptions/view/BankCardOptionsFragment$b;

    invoke-direct {v0, p0}, Lcom/warefly/checkscan/presentation/bankCardOptions/view/BankCardOptionsFragment$b;-><init>(Lcom/warefly/checkscan/presentation/bankCardOptions/view/BankCardOptionsFragment;)V

    invoke-direct {p2, v0}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/bankCardOptions/view/BankCardOptionsFragment;->presenter:Lcom/warefly/checkscan/presentation/bankCardOptions/presenter/BankCardOptionsPresenter;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/bankCardOptions/presenter/BankCardOptionsPresenter;->showBankCardOptionsInfo()V

    return-void

    :cond_0
    const-string p0, "presenter"

    invoke-static {p0}, Laa4;->j(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final openOption(Lt90$a;)V
    .locals 5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lkd$a$b$a;

    invoke-virtual {p1}, Lt90$a;->a()J

    move-result-wide v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "BANK_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "_ORDER_CARD"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Bank cards"

    invoke-static {v2, v1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "Account"

    invoke-direct {v0, v2, v1}, Lkd;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {v0}, Lkd;->a()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    sget v1, Lcom/warefly/checkscan/presentation/webview/WebViewActivity;->f:I

    invoke-virtual {p1}, Lt90$a;->b()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    const/16 v2, 0x10

    invoke-static {v0, v2, p1, v1}, Lcom/warefly/checkscan/presentation/webview/WebViewActivity$a;->a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public final providePresenter()Lcom/warefly/checkscan/presentation/bankCardOptions/presenter/BankCardOptionsPresenter;
    .locals 5

    new-instance v0, Lcom/warefly/checkscan/presentation/bankCardOptions/presenter/BankCardOptionsPresenter;

    invoke-virtual {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;->j()Lba8;

    move-result-object v1

    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object v2

    const-class v3, Luf3;

    const/4 v4, 0x0

    invoke-static {v3, v2, v1, v4}, Ln2;->c(Ljava/lang/Class;Lze7;Lba8;Li36;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Luf3;

    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object v2

    const-class v3, Lp51;

    invoke-static {v3, v2, v4, v4}, Lm2;->c(Ljava/lang/Class;Lze7;Lkv6;Li36;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lp51;

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/bankCardOptions/view/BankCardOptionsFragment;->h:Landroidx/navigation/NavArgsLazy;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lc90;

    iget-wide v3, p0, Lc90;->a:J

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/warefly/checkscan/presentation/bankCardOptions/presenter/BankCardOptionsPresenter;-><init>(Luf3;Lp51;J)V

    return-object v0
.end method

.method public final showBankCardOptionsInfoLoadingError()V
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    const v0, 0x7f14026c

    invoke-static {v0, p0}, Loz1;->i(ILandroid/view/View;)V

    :cond_0
    return-void
.end method

.method public final showLoading(Z)V
    .locals 3

    sget-object v0, Lcom/warefly/checkscan/presentation/bankCardOptions/view/BankCardOptionsFragment;->j:[Lze4;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v2, p0, Lcom/warefly/checkscan/presentation/bankCardOptions/view/BankCardOptionsFragment;->g:Lol4;

    invoke-virtual {v2, p0, v0}, Lol4;->a(Landroidx/fragment/app/Fragment;Lze4;)Landroidx/viewbinding/ViewBinding;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/databinding/FragmentBankCardOptionsBinding;

    iget-object p0, p0, Lcom/warefly/checkscan/databinding/FragmentBankCardOptionsBinding;->pbLoading:Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final showOptions(Lt90;)V
    .locals 11

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/warefly/checkscan/presentation/bankCardOptions/view/BankCardOptionsFragment;->j:[Lze4;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v2, p0, Lcom/warefly/checkscan/presentation/bankCardOptions/view/BankCardOptionsFragment;->g:Lol4;

    invoke-virtual {v2, p0, v0}, Lol4;->a(Landroidx/fragment/app/Fragment;Lze4;)Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/databinding/FragmentBankCardOptionsBinding;

    iget-object v2, v0, Lcom/warefly/checkscan/databinding/FragmentBankCardOptionsBinding;->toolbar:Lcom/warefly/checkscan/databinding/LayoutToolbarSimpleTitleBinding;

    iget-object v2, v2, Lcom/warefly/checkscan/databinding/LayoutToolbarSimpleTitleBinding;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {p1}, Lt90;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v0, Lcom/warefly/checkscan/databinding/FragmentBankCardOptionsBinding;->rvBankOptions:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    new-instance v4, Ljz7;

    invoke-virtual {p1}, Lt90;->f()Ljava/util/List;

    move-result-object v6

    iget-object v9, p0, Lcom/warefly/checkscan/presentation/bankCardOptions/view/BankCardOptionsFragment;->i:Lcom/warefly/checkscan/presentation/bankCardOptions/view/BankCardOptionsFragment$a;

    const/4 v10, 0x4

    const v5, 0x7f0d011f

    const/4 v7, 0x0

    sget-object v8, Lcom/warefly/checkscan/presentation/bankCardOptions/view/BankCardOptionsFragment$c;->f:Lcom/warefly/checkscan/presentation/bankCardOptions/view/BankCardOptionsFragment$c;

    invoke-direct/range {v4 .. v10}, Ljz7;-><init>(ILjava/util/List;Lrb;Lnl3;Ldm3;I)V

    invoke-virtual {v0, v4}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
