.class public final Lcom/warefly/checkscan/presentation/bonuses/view/chooseRegion/view/ChooseRegionFragment;
.super Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;
.source "SourceFile"

# interfaces
.implements Lcom/warefly/checkscan/presentation/bonuses/view/chooseRegion/presenter/ChooseRegionView;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment<",
        "Lcom/warefly/checkscan/databinding/FragmentChooseRegionBinding;",
        ">;",
        "Lcom/warefly/checkscan/presentation/bonuses/view/chooseRegion/presenter/ChooseRegionView;"
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

.field public i:Ljz7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljz7<",
            "Ll17;",
            "Lcom/warefly/checkscan/databinding/ItemFilterBasicBinding;",
            ">;"
        }
    .end annotation
.end field

.field public presenter:Lcom/warefly/checkscan/presentation/bonuses/view/chooseRegion/presenter/ChooseRegionPresenter;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lbs6;

    const-class v1, Lcom/warefly/checkscan/presentation/bonuses/view/chooseRegion/view/ChooseRegionFragment;

    const-string v2, "binding"

    const-string v3, "getBinding()Lcom/warefly/checkscan/databinding/FragmentChooseRegionBinding;"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lbs6;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v1, Lx07;->a:La17;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    new-array v1, v1, [Lze4;

    aput-object v0, v1, v4

    sput-object v1, Lcom/warefly/checkscan/presentation/bonuses/view/chooseRegion/view/ChooseRegionFragment;->j:[Lze4;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;-><init>()V

    const v0, 0x7f0d00b9

    iput v0, p0, Lcom/warefly/checkscan/presentation/bonuses/view/chooseRegion/view/ChooseRegionFragment;->f:I

    new-instance v0, Lol4;

    const-class v1, Lcom/warefly/checkscan/databinding/FragmentChooseRegionBinding;

    invoke-direct {v0, v1}, Lol4;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/warefly/checkscan/presentation/bonuses/view/chooseRegion/view/ChooseRegionFragment;->g:Lol4;

    new-instance v0, Landroidx/navigation/NavArgsLazy;

    const-class v1, Ljj1;

    invoke-static {v1}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v1

    new-instance v2, Lcom/warefly/checkscan/presentation/bonuses/view/chooseRegion/view/ChooseRegionFragment$f;

    invoke-direct {v2, p0}, Lcom/warefly/checkscan/presentation/bonuses/view/chooseRegion/view/ChooseRegionFragment$f;-><init>(Lcom/warefly/checkscan/presentation/bonuses/view/chooseRegion/view/ChooseRegionFragment;)V

    invoke-direct {v0, v1, v2}, Landroidx/navigation/NavArgsLazy;-><init>(Lne4;Lll3;)V

    iput-object v0, p0, Lcom/warefly/checkscan/presentation/bonuses/view/chooseRegion/view/ChooseRegionFragment;->h:Landroidx/navigation/NavArgsLazy;

    return-void
.end method


# virtual methods
.method public final i()I
    .locals 0

    iget p0, p0, Lcom/warefly/checkscan/presentation/bonuses/view/chooseRegion/view/ChooseRegionFragment;->f:I

    return p0
.end method

.method public final k()Z
    .locals 0

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/bonuses/view/chooseRegion/view/ChooseRegionFragment;->n()Lcom/warefly/checkscan/presentation/bonuses/view/chooseRegion/presenter/ChooseRegionPresenter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/bonuses/view/chooseRegion/presenter/ChooseRegionPresenter;->onBackPressed()V

    const/4 p0, 0x0

    return p0
.end method

.method public final n()Lcom/warefly/checkscan/presentation/bonuses/view/chooseRegion/presenter/ChooseRegionPresenter;
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/bonuses/view/chooseRegion/view/ChooseRegionFragment;->presenter:Lcom/warefly/checkscan/presentation/bonuses/view/chooseRegion/presenter/ChooseRegionPresenter;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "presenter"

    invoke-static {p0}, Laa4;->j(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 10

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-super {p0, p1, p2}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    sget-object p1, Lcom/warefly/checkscan/presentation/bonuses/view/chooseRegion/view/ChooseRegionFragment;->j:[Lze4;

    const/4 p2, 0x0

    aget-object v0, p1, p2

    iget-object v1, p0, Lcom/warefly/checkscan/presentation/bonuses/view/chooseRegion/view/ChooseRegionFragment;->g:Lol4;

    invoke-virtual {v1, p0, v0}, Lol4;->a(Landroidx/fragment/app/Fragment;Lze4;)Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/databinding/FragmentChooseRegionBinding;

    iget-object v2, v0, Lcom/warefly/checkscan/databinding/FragmentChooseRegionBinding;->toolbar:Lcom/warefly/checkscan/databinding/LayoutToolbarSimpleTitleBinding;

    iget-object v3, v2, Lcom/warefly/checkscan/databinding/LayoutToolbarSimpleTitleBinding;->ivBtnBack:Landroid/widget/ImageView;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Llb7;

    new-instance v5, Lcom/warefly/checkscan/presentation/bonuses/view/chooseRegion/view/ChooseRegionFragment$c;

    invoke-direct {v5, p0}, Lcom/warefly/checkscan/presentation/bonuses/view/chooseRegion/view/ChooseRegionFragment$c;-><init>(Lcom/warefly/checkscan/presentation/bonuses/view/chooseRegion/view/ChooseRegionFragment;)V

    invoke-direct {v4, v5}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, v2, Lcom/warefly/checkscan/databinding/LayoutToolbarSimpleTitleBinding;->tvTitle:Landroid/widget/TextView;

    const v3, 0x7f140124

    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    aget-object p1, p1, p2

    invoke-virtual {v1, p0, p1}, Lol4;->a(Landroidx/fragment/app/Fragment;Lze4;)Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/warefly/checkscan/databinding/FragmentChooseRegionBinding;

    iget-object p1, p1, Lcom/warefly/checkscan/databinding/FragmentChooseRegionBinding;->rvRegions:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    new-instance v3, Ljz7;

    new-instance v6, Lrb;

    const/4 v1, 0x2

    invoke-direct {v6, p0, v1}, Lrb;-><init>(Ljava/lang/Object;I)V

    sget-object v8, Lij1;->f:Lij1;

    const/4 v9, 0x2

    const v4, 0x7f0d013a

    const/4 v5, 0x0

    sget-object v7, Lhj1;->f:Lhj1;

    invoke-direct/range {v3 .. v9}, Ljz7;-><init>(ILjava/util/List;Lrb;Lnl3;Ldm3;I)V

    iput-object v3, p0, Lcom/warefly/checkscan/presentation/bonuses/view/chooseRegion/view/ChooseRegionFragment;->i:Ljz7;

    invoke-virtual {p1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    new-instance p2, Lgj1;

    invoke-direct {p2, p0}, Lgj1;-><init>(Lcom/warefly/checkscan/presentation/bonuses/view/chooseRegion/view/ChooseRegionFragment;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object p1, v0, Lcom/warefly/checkscan/databinding/FragmentChooseRegionBinding;->btnRemoveSearch:Landroid/widget/ImageView;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Llb7;

    new-instance v1, Lcom/warefly/checkscan/presentation/bonuses/view/chooseRegion/view/ChooseRegionFragment$b;

    invoke-direct {v1, v0}, Lcom/warefly/checkscan/presentation/bonuses/view/chooseRegion/view/ChooseRegionFragment$b;-><init>(Lcom/warefly/checkscan/databinding/FragmentChooseRegionBinding;)V

    invoke-direct {p2, v1}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p1, Lkk7;

    new-instance p2, Lcom/warefly/checkscan/presentation/bonuses/view/chooseRegion/view/ChooseRegionFragment$a;

    invoke-direct {p2, p0, v0}, Lcom/warefly/checkscan/presentation/bonuses/view/chooseRegion/view/ChooseRegionFragment$a;-><init>(Lcom/warefly/checkscan/presentation/bonuses/view/chooseRegion/view/ChooseRegionFragment;Lcom/warefly/checkscan/databinding/FragmentChooseRegionBinding;)V

    invoke-direct {p1, p2}, Lkk7;-><init>(Lcom/warefly/checkscan/presentation/bonuses/view/chooseRegion/view/ChooseRegionFragment$a;)V

    iget-object p0, v0, Lcom/warefly/checkscan/databinding/FragmentChooseRegionBinding;->etSearch:Landroidx/appcompat/widget/AppCompatEditText;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method public final providePresenter()Lcom/warefly/checkscan/presentation/bonuses/view/chooseRegion/presenter/ChooseRegionPresenter;
    .locals 7

    new-instance v0, Lcom/warefly/checkscan/presentation/bonuses/view/chooseRegion/presenter/ChooseRegionPresenter;

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

    const-class v3, Lp61;

    invoke-static {v3, v2, v4, v4}, Lm2;->c(Ljava/lang/Class;Lze7;Lkv6;Li36;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lp61;

    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object v3

    const-class v5, Lc4;

    invoke-static {v5, v3, v4, v4}, Lm2;->c(Ljava/lang/Class;Lze7;Lkv6;Li36;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc4;

    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object v5

    const-class v6, Ljf6;

    invoke-static {v6, v5, v4, v4}, Lm2;->c(Ljava/lang/Class;Lze7;Lkv6;Li36;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljf6;

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/bonuses/view/chooseRegion/view/ChooseRegionFragment;->h:Landroidx/navigation/NavArgsLazy;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljj1;

    iget-object v5, p0, Ljj1;->a:Lfl3;

    invoke-direct/range {v0 .. v5}, Lcom/warefly/checkscan/presentation/bonuses/view/chooseRegion/presenter/ChooseRegionPresenter;-><init>(Luf3;Lp61;Lc4;Ljf6;Lfl3;)V

    return-object v0
.end method

.method public final showSelectedRegion(Ll17;)V
    .locals 4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/warefly/checkscan/presentation/bonuses/view/chooseRegion/view/ChooseRegionFragment;->j:[Lze4;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v2, p0, Lcom/warefly/checkscan/presentation/bonuses/view/chooseRegion/view/ChooseRegionFragment;->g:Lol4;

    invoke-virtual {v2, p0, v0}, Lol4;->a(Landroidx/fragment/app/Fragment;Lze4;)Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/databinding/FragmentChooseRegionBinding;

    iget-object v2, v0, Lcom/warefly/checkscan/databinding/FragmentChooseRegionBinding;->tvSelectedRegion:Landroid/widget/TextView;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, v0, Lcom/warefly/checkscan/databinding/FragmentChooseRegionBinding;->ivSelected:Landroid/widget/ImageView;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v0, Lcom/warefly/checkscan/databinding/FragmentChooseRegionBinding;->tvSelectedRegion:Landroid/widget/TextView;

    invoke-virtual {p1}, Ll17;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/warefly/checkscan/databinding/FragmentChooseRegionBinding;->ivSelected:Landroid/widget/ImageView;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Llb7;

    new-instance v3, Lcom/warefly/checkscan/presentation/bonuses/view/chooseRegion/view/ChooseRegionFragment$d;

    invoke-direct {v3, p0, p1}, Lcom/warefly/checkscan/presentation/bonuses/view/chooseRegion/view/ChooseRegionFragment$d;-><init>(Lcom/warefly/checkscan/presentation/bonuses/view/chooseRegion/view/ChooseRegionFragment;Ll17;)V

    invoke-direct {v2, v3}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v0, Lcom/warefly/checkscan/databinding/FragmentChooseRegionBinding;->tvSelectedRegion:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Llb7;

    new-instance v2, Lcom/warefly/checkscan/presentation/bonuses/view/chooseRegion/view/ChooseRegionFragment$e;

    invoke-direct {v2, p0, p1}, Lcom/warefly/checkscan/presentation/bonuses/view/chooseRegion/view/ChooseRegionFragment$e;-><init>(Lcom/warefly/checkscan/presentation/bonuses/view/chooseRegion/view/ChooseRegionFragment;Ll17;)V

    invoke-direct {v1, v2}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final showSuggestions(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ll17;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/bonuses/view/chooseRegion/view/ChooseRegionFragment;->i:Ljz7;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Ljz7;->b(Ljava/util/List;)V

    :cond_0
    return-void
.end method
