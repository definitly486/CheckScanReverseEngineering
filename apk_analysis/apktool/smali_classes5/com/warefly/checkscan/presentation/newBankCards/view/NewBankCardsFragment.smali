.class public final Lcom/warefly/checkscan/presentation/newBankCards/view/NewBankCardsFragment;
.super Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;
.source "SourceFile"

# interfaces
.implements Lcom/warefly/checkscan/presentation/newBankCards/view/NewBankCardsView;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment<",
        "Lcom/warefly/checkscan/databinding/FragmentNewBankCardsBinding;",
        ">;",
        "Lcom/warefly/checkscan/presentation/newBankCards/view/NewBankCardsView;"
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
.field public final f:Lcl4;

.field public final g:I

.field public final h:Lol4;

.field public i:Leu1;

.field public presenter:Lcom/warefly/checkscan/presentation/newBankCards/presenter/NewBankCardPresenter;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lbs6;

    const-class v1, Lcom/warefly/checkscan/presentation/newBankCards/view/NewBankCardsFragment;

    const-string v2, "binding"

    const-string v3, "getBinding()Lcom/warefly/checkscan/databinding/FragmentNewBankCardsBinding;"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lbs6;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v1, Lx07;->a:La17;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    new-array v1, v1, [Lze4;

    aput-object v0, v1, v4

    sput-object v1, Lcom/warefly/checkscan/presentation/newBankCards/view/NewBankCardsFragment;->j:[Lze4;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;-><init>()V

    sget-object v0, Lpo4;->SYNCHRONIZED:Lpo4;

    new-instance v1, Lcom/warefly/checkscan/presentation/newBankCards/view/NewBankCardsFragment$b;

    invoke-direct {v1, p0}, Lcom/warefly/checkscan/presentation/newBankCards/view/NewBankCardsFragment$b;-><init>(Lcom/warefly/checkscan/presentation/newBankCards/view/NewBankCardsFragment;)V

    invoke-static {v0, v1}, Lnm4;->a(Lpo4;Lll3;)Lcl4;

    move-result-object v0

    iput-object v0, p0, Lcom/warefly/checkscan/presentation/newBankCards/view/NewBankCardsFragment;->f:Lcl4;

    const v0, 0x7f0d00cc

    iput v0, p0, Lcom/warefly/checkscan/presentation/newBankCards/view/NewBankCardsFragment;->g:I

    new-instance v0, Lol4;

    const-class v1, Lcom/warefly/checkscan/databinding/FragmentNewBankCardsBinding;

    invoke-direct {v0, v1}, Lol4;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/warefly/checkscan/presentation/newBankCards/view/NewBankCardsFragment;->h:Lol4;

    return-void
.end method


# virtual methods
.method public final handleProgress(Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/newBankCards/view/NewBankCardsFragment;->n()Lcom/warefly/checkscan/databinding/FragmentNewBankCardsBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/warefly/checkscan/databinding/FragmentNewBankCardsBinding;->viewLoading:Lcom/warefly/checkscan/design/resources/databinding/LayoutPreviewsLoadingBinding;

    invoke-virtual {p0}, Lcom/warefly/checkscan/design/resources/databinding/LayoutPreviewsLoadingBinding;->getRoot()Landroid/widget/FrameLayout;

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

.method public final i()I
    .locals 0

    iget p0, p0, Lcom/warefly/checkscan/presentation/newBankCards/view/NewBankCardsFragment;->g:I

    return p0
.end method

.method public final n()Lcom/warefly/checkscan/databinding/FragmentNewBankCardsBinding;
    .locals 2

    sget-object v0, Lcom/warefly/checkscan/presentation/newBankCards/view/NewBankCardsFragment;->j:[Lze4;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/warefly/checkscan/presentation/newBankCards/view/NewBankCardsFragment;->h:Lol4;

    invoke-virtual {v1, p0, v0}, Lol4;->a(Landroidx/fragment/app/Fragment;Lze4;)Landroidx/viewbinding/ViewBinding;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/databinding/FragmentNewBankCardsBinding;

    return-object p0
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 9

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-super {p0, p1, p2}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/newBankCards/view/NewBankCardsFragment;->n()Lcom/warefly/checkscan/databinding/FragmentNewBankCardsBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/warefly/checkscan/databinding/FragmentNewBankCardsBinding;->rvCards:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getItemDecorationCount()I

    move-result p2

    const/4 v0, 0x1

    if-ge p2, v0, :cond_0

    new-instance p2, Lc58;

    const/16 v1, 0x8

    invoke-direct {p2, v1}, Lc58;-><init>(I)V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    :cond_0
    new-instance p2, Leu1;

    new-instance v1, Lq90;

    new-instance v2, Lym5;

    iget-object v4, p0, Lcom/warefly/checkscan/presentation/newBankCards/view/NewBankCardsFragment;->presenter:Lcom/warefly/checkscan/presentation/newBankCards/presenter/NewBankCardPresenter;

    if-eqz v4, :cond_1

    const-string v7, "onCardClick(J)V"

    const/4 v8, 0x0

    const/4 v3, 0x1

    const-class v5, Lcom/warefly/checkscan/presentation/newBankCards/presenter/NewBankCardPresenter;

    const-string v6, "onCardClick"

    invoke-direct/range {v2 .. v8}, Lqm3;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {v1, v2}, Lq90;-><init>(Lym5;)V

    new-array v0, v0, [Lil2;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-direct {p2, v0}, Leu1;-><init>([Lil2;)V

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/newBankCards/view/NewBankCardsFragment;->i:Leu1;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/newBankCards/view/NewBankCardsFragment;->n()Lcom/warefly/checkscan/databinding/FragmentNewBankCardsBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/warefly/checkscan/databinding/FragmentNewBankCardsBinding;->toolbar:Lcom/warefly/checkscan/core/ui/databinding/LayoutToolbarBackIconBinding;

    iget-object p2, p1, Lcom/warefly/checkscan/core/ui/databinding/LayoutToolbarBackIconBinding;->tvHeader:Landroid/widget/TextView;

    const v0, 0x7f1406bd

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p1, Lcom/warefly/checkscan/core/ui/databinding/LayoutToolbarBackIconBinding;->btnBack:Landroid/widget/ImageView;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Llb7;

    new-instance v0, Lcom/warefly/checkscan/presentation/newBankCards/view/NewBankCardsFragment$a;

    invoke-direct {v0, p0}, Lcom/warefly/checkscan/presentation/newBankCards/view/NewBankCardsFragment$a;-><init>(Lcom/warefly/checkscan/presentation/newBankCards/view/NewBankCardsFragment;)V

    invoke-direct {p2, v0}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_1
    const-string p0, "presenter"

    invoke-static {p0}, Laa4;->j(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final providePresenter()Lcom/warefly/checkscan/presentation/newBankCards/presenter/NewBankCardPresenter;
    .locals 5

    new-instance v0, Lcom/warefly/checkscan/presentation/newBankCards/presenter/NewBankCardPresenter;

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

    move-result-object p0

    const-class v2, Lp51;

    invoke-static {v2, p0, v4, v4}, Lm2;->c(Ljava/lang/Class;Lze7;Lkv6;Li36;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lp51;

    invoke-direct {v0, v1, p0}, Lcom/warefly/checkscan/presentation/newBankCards/presenter/NewBankCardPresenter;-><init>(Luf3;Lp51;)V

    return-object v0
.end method

.method public final setDescription(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/newBankCards/view/NewBankCardsFragment;->f:Lcl4;

    invoke-interface {v0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv05;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/newBankCards/view/NewBankCardsFragment;->n()Lcom/warefly/checkscan/databinding/FragmentNewBankCardsBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/warefly/checkscan/databinding/FragmentNewBankCardsBinding;->tvDescription:Landroid/widget/TextView;

    invoke-virtual {v0, p0, p1}, Lv05;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    return-void
.end method

.method public final setTitle(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/newBankCards/view/NewBankCardsFragment;->n()Lcom/warefly/checkscan/databinding/FragmentNewBankCardsBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/warefly/checkscan/databinding/FragmentNewBankCardsBinding;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final showBankCardsInfoLoadingError()V
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    const v0, 0x7f14026d

    invoke-static {v0, p0}, Loz1;->i(ILandroid/view/View;)V

    :cond_0
    return-void
.end method

.method public final showData(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lk90;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/newBankCards/view/NewBankCardsFragment;->n()Lcom/warefly/checkscan/databinding/FragmentNewBankCardsBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/warefly/checkscan/databinding/FragmentNewBankCardsBinding;->rvCards:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/newBankCards/view/NewBankCardsFragment;->i:Leu1;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Leu1;->submitList(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public final showNoCards()V
    .locals 2

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/newBankCards/view/NewBankCardsFragment;->n()Lcom/warefly/checkscan/databinding/FragmentNewBankCardsBinding;

    move-result-object p0

    iget-object v0, p0, Lcom/warefly/checkscan/databinding/FragmentNewBankCardsBinding;->tvNoData:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/warefly/checkscan/databinding/FragmentNewBankCardsBinding;->ivNoData:Landroid/widget/ImageView;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
