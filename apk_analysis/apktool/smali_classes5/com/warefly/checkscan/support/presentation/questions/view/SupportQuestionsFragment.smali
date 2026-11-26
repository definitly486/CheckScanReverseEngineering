.class public final Lcom/warefly/checkscan/support/presentation/questions/view/SupportQuestionsFragment;
.super Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;
.source "SourceFile"

# interfaces
.implements Lcom/warefly/checkscan/support/presentation/questions/view/SupportQuestionsView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/warefly/checkscan/support/presentation/questions/view/SupportQuestionsFragment$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment<",
        "Lcom/warefly/checkscan/support/databinding/FragmentSupportQuestionsBinding;",
        ">;",
        "Lcom/warefly/checkscan/support/presentation/questions/view/SupportQuestionsView;"
    }
.end annotation


# static fields
.field public static final i:Lcom/warefly/checkscan/support/presentation/questions/view/SupportQuestionsFragment$a;

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

.field public h:Leu1;

.field public presenter:Lcom/warefly/checkscan/support/presentation/questions/presenter/SupportQuestionsPresenter;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lbs6;

    const-class v1, Lcom/warefly/checkscan/support/presentation/questions/view/SupportQuestionsFragment;

    const-string v2, "binding"

    const-string v3, "getBinding()Lcom/warefly/checkscan/support/databinding/FragmentSupportQuestionsBinding;"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lbs6;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v1, Lx07;->a:La17;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    new-array v1, v1, [Lze4;

    aput-object v0, v1, v4

    sput-object v1, Lcom/warefly/checkscan/support/presentation/questions/view/SupportQuestionsFragment;->j:[Lze4;

    new-instance v0, Lcom/warefly/checkscan/support/presentation/questions/view/SupportQuestionsFragment$a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/warefly/checkscan/support/presentation/questions/view/SupportQuestionsFragment;->i:Lcom/warefly/checkscan/support/presentation/questions/view/SupportQuestionsFragment$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;-><init>()V

    const v0, 0x7f0d00fb

    iput v0, p0, Lcom/warefly/checkscan/support/presentation/questions/view/SupportQuestionsFragment;->f:I

    new-instance v0, Lol4;

    const-class v1, Lcom/warefly/checkscan/support/databinding/FragmentSupportQuestionsBinding;

    invoke-direct {v0, v1}, Lol4;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/warefly/checkscan/support/presentation/questions/view/SupportQuestionsFragment;->g:Lol4;

    return-void
.end method


# virtual methods
.method public final i()I
    .locals 0

    iget p0, p0, Lcom/warefly/checkscan/support/presentation/questions/view/SupportQuestionsFragment;->f:I

    return p0
.end method

.method public final k()Z
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/support/presentation/questions/view/SupportQuestionsFragment;->presenter:Lcom/warefly/checkscan/support/presentation/questions/presenter/SupportQuestionsPresenter;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/warefly/checkscan/support/presentation/questions/presenter/SupportQuestionsPresenter;->onBackClicked()V

    const/4 p0, 0x0

    return p0

    :cond_0
    const-string p0, "presenter"

    invoke-static {p0}, Laa4;->j(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-super {p0, p1, p2}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    sget-object p1, Lcom/warefly/checkscan/support/presentation/questions/view/SupportQuestionsFragment;->j:[Lze4;

    const/4 p2, 0x0

    aget-object v0, p1, p2

    iget-object v1, p0, Lcom/warefly/checkscan/support/presentation/questions/view/SupportQuestionsFragment;->g:Lol4;

    invoke-virtual {v1, p0, v0}, Lol4;->a(Landroidx/fragment/app/Fragment;Lze4;)Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/support/databinding/FragmentSupportQuestionsBinding;

    iget-object v0, v0, Lcom/warefly/checkscan/support/databinding/FragmentSupportQuestionsBinding;->incldToolbar:Lcom/warefly/checkscan/core/ui/databinding/LayoutToolbarTitle18TransparentBinding;

    iget-object v0, v0, Lcom/warefly/checkscan/core/ui/databinding/LayoutToolbarTitle18TransparentBinding;->ivBtnBack:Landroid/widget/ImageView;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Llb7;

    new-instance v3, Lkf8;

    invoke-direct {v3, p0}, Lkf8;-><init>(Lcom/warefly/checkscan/support/presentation/questions/view/SupportQuestionsFragment;)V

    invoke-direct {v2, v3}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    aget-object p1, p1, p2

    invoke-virtual {v1, p0, p1}, Lol4;->a(Landroidx/fragment/app/Fragment;Lze4;)Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/warefly/checkscan/support/databinding/FragmentSupportQuestionsBinding;

    iget-object p1, p1, Lcom/warefly/checkscan/support/databinding/FragmentSupportQuestionsBinding;->rvContent:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Leu1;

    new-instance v1, Lhf8;

    iget-object v2, p0, Lcom/warefly/checkscan/support/presentation/questions/view/SupportQuestionsFragment;->presenter:Lcom/warefly/checkscan/support/presentation/questions/presenter/SupportQuestionsPresenter;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-direct {v1, v2}, Lhf8;-><init>(Lcom/warefly/checkscan/support/presentation/questions/presenter/SupportQuestionsPresenter;)V

    const/4 v2, 0x1

    new-array v4, v2, [Lil2;

    aput-object v1, v4, p2

    invoke-direct {v0, v4}, Leu1;-><init>([Lil2;)V

    iput-object v0, p0, Lcom/warefly/checkscan/support/presentation/questions/view/SupportQuestionsFragment;->h:Leu1;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0, v2, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    new-instance p0, Lfy8;

    const/16 v0, 0x8

    invoke-direct {p0, v0, p2}, Lfy8;-><init>(IZ)V

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    invoke-virtual {p1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    return-void

    :cond_0
    const-string p0, "presenter"

    invoke-static {p0}, Laa4;->j(Ljava/lang/String;)V

    throw v3
.end method

.method public final providePresenter()Lcom/warefly/checkscan/support/presentation/questions/presenter/SupportQuestionsPresenter;
    .locals 5

    new-instance v0, Lcom/warefly/checkscan/support/presentation/questions/presenter/SupportQuestionsPresenter;

    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object v1

    const-class v2, Lk83;

    const/4 v3, 0x0

    invoke-static {v2, v1, v3, v3}, Lm2;->c(Ljava/lang/Class;Lze7;Lkv6;Li36;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lk83;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v4, "TOOLBAR_TEXT_KEY"

    invoke-virtual {v2, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object p0

    const-class v4, Lqf8;

    invoke-static {v4, p0, v3, v3}, Lm2;->c(Ljava/lang/Class;Lze7;Lkv6;Li36;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lqf8;

    invoke-direct {v0, v1, v2, p0}, Lcom/warefly/checkscan/support/presentation/questions/presenter/SupportQuestionsPresenter;-><init>(Lk83;Ljava/lang/String;Lqf8;)V

    return-object v0
.end method

.method public final setToolbarText(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/warefly/checkscan/support/presentation/questions/view/SupportQuestionsFragment;->j:[Lze4;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/warefly/checkscan/support/presentation/questions/view/SupportQuestionsFragment;->g:Lol4;

    invoke-virtual {v1, p0, v0}, Lol4;->a(Landroidx/fragment/app/Fragment;Lze4;)Landroidx/viewbinding/ViewBinding;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/support/databinding/FragmentSupportQuestionsBinding;

    iget-object p0, p0, Lcom/warefly/checkscan/support/databinding/FragmentSupportQuestionsBinding;->incldToolbar:Lcom/warefly/checkscan/core/ui/databinding/LayoutToolbarTitle18TransparentBinding;

    iget-object p0, p0, Lcom/warefly/checkscan/core/ui/databinding/LayoutToolbarTitle18TransparentBinding;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final showContent(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lpz3;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/warefly/checkscan/support/presentation/questions/view/SupportQuestionsFragment;->h:Leu1;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Leu1;->submitList(Ljava/util/List;)V

    :cond_0
    return-void
.end method
