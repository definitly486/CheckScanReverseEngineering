.class public final Lcom/warefly/checkscan/presentation/offerCard/view/CardOfferLandingFragment;
.super Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;
.source "SourceFile"

# interfaces
.implements Lcom/warefly/checkscan/presentation/offerCard/view/CardOfferLandingView;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment<",
        "Lcom/warefly/checkscan/databinding/FragmentCardOfferLandingBinding;",
        ">;",
        "Lcom/warefly/checkscan/presentation/offerCard/view/CardOfferLandingView;"
    }
.end annotation


# static fields
.field public static final synthetic k:[Lze4;
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

.field public final i:Lfh8;

.field public j:Leu1;

.field public presenter:Lcom/warefly/checkscan/presentation/offerCard/presenter/CardOfferLandingPresenter;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lbs6;

    const-class v1, Lcom/warefly/checkscan/presentation/offerCard/view/CardOfferLandingFragment;

    const-string v2, "binding"

    const-string v3, "getBinding()Lcom/warefly/checkscan/databinding/FragmentCardOfferLandingBinding;"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lbs6;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v1, Lx07;->a:La17;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    new-array v1, v1, [Lze4;

    aput-object v0, v1, v4

    sput-object v1, Lcom/warefly/checkscan/presentation/offerCard/view/CardOfferLandingFragment;->k:[Lze4;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;-><init>()V

    const v0, 0x7f0d00b0

    iput v0, p0, Lcom/warefly/checkscan/presentation/offerCard/view/CardOfferLandingFragment;->f:I

    new-instance v0, Lol4;

    const-class v1, Lcom/warefly/checkscan/databinding/FragmentCardOfferLandingBinding;

    invoke-direct {v0, v1}, Lol4;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/warefly/checkscan/presentation/offerCard/view/CardOfferLandingFragment;->g:Lol4;

    new-instance v0, Landroidx/navigation/NavArgsLazy;

    const-class v1, Lz31;

    invoke-static {v1}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v1

    new-instance v2, Lcom/warefly/checkscan/presentation/offerCard/view/CardOfferLandingFragment$e;

    invoke-direct {v2, p0}, Lcom/warefly/checkscan/presentation/offerCard/view/CardOfferLandingFragment$e;-><init>(Lcom/warefly/checkscan/presentation/offerCard/view/CardOfferLandingFragment;)V

    invoke-direct {v0, v1, v2}, Landroidx/navigation/NavArgsLazy;-><init>(Lne4;Lll3;)V

    iput-object v0, p0, Lcom/warefly/checkscan/presentation/offerCard/view/CardOfferLandingFragment;->h:Landroidx/navigation/NavArgsLazy;

    new-instance v0, Lcom/warefly/checkscan/presentation/offerCard/view/CardOfferLandingFragment$a;

    invoke-direct {v0, p0}, Lcom/warefly/checkscan/presentation/offerCard/view/CardOfferLandingFragment$a;-><init>(Lcom/warefly/checkscan/presentation/offerCard/view/CardOfferLandingFragment;)V

    new-instance v1, Lfh8;

    invoke-direct {v1, v0}, Lfh8;-><init>(Lll3;)V

    iput-object v1, p0, Lcom/warefly/checkscan/presentation/offerCard/view/CardOfferLandingFragment;->i:Lfh8;

    return-void
.end method


# virtual methods
.method public final i()I
    .locals 0

    iget p0, p0, Lcom/warefly/checkscan/presentation/offerCard/view/CardOfferLandingFragment;->f:I

    return p0
.end method

.method public final n()Lcom/warefly/checkscan/databinding/FragmentCardOfferLandingBinding;
    .locals 2

    sget-object v0, Lcom/warefly/checkscan/presentation/offerCard/view/CardOfferLandingFragment;->k:[Lze4;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/warefly/checkscan/presentation/offerCard/view/CardOfferLandingFragment;->g:Lol4;

    invoke-virtual {v1, p0, v0}, Lol4;->a(Landroidx/fragment/app/Fragment;Lze4;)Landroidx/viewbinding/ViewBinding;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/databinding/FragmentCardOfferLandingBinding;

    return-object p0
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 12

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-super {p0, p1, p2}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/offerCard/view/CardOfferLandingFragment;->n()Lcom/warefly/checkscan/databinding/FragmentCardOfferLandingBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/warefly/checkscan/databinding/FragmentCardOfferLandingBinding;->rvContent:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p2, Leu1;

    new-instance v0, Lfa0;

    sget-object v1, Lys5;->c:Lys5;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lfa0;-><init>(Ldm3;I)V

    new-instance v1, Lqt5;

    sget-object v3, Lpt5;->c:Lpt5;

    invoke-direct {v1, v3}, Lvd9;-><init>(Ldm3;)V

    new-instance v3, Lab0;

    sget-object v4, Ljt5;->c:Ljt5;

    invoke-direct {v3, v4, v2}, Lab0;-><init>(Ldm3;I)V

    new-instance v4, Lit5;

    sget-object v5, Lht5;->c:Lht5;

    invoke-direct {v4, v5}, Lvd9;-><init>(Ldm3;)V

    new-instance v5, Lgt5;

    sget-object v6, Lft5;->c:Lft5;

    invoke-direct {v5, v6}, Lvd9;-><init>(Ldm3;)V

    new-instance v6, Lat5;

    sget-object v7, Lzs5;->c:Lzs5;

    invoke-direct {v6, v7}, Lvd9;-><init>(Ldm3;)V

    new-instance v7, Lct5;

    sget-object v8, Lbt5;->c:Lbt5;

    invoke-direct {v7, v8}, Lvd9;-><init>(Ldm3;)V

    new-instance v8, Lhb0;

    sget-object v9, Llt5;->c:Llt5;

    invoke-direct {v8, v9, v2}, Lhb0;-><init>(Ldm3;I)V

    new-instance v9, Lr10;

    sget-object v10, Ljs4;->c:Ljs4;

    invoke-direct {v9, v10, v2}, Lr10;-><init>(Ldm3;I)V

    const/16 v10, 0x9

    new-array v10, v10, [Lil2;

    const/4 v11, 0x0

    aput-object v0, v10, v11

    aput-object v1, v10, v2

    const/4 v0, 0x2

    aput-object v3, v10, v0

    const/4 v0, 0x3

    aput-object v4, v10, v0

    const/4 v0, 0x4

    aput-object v5, v10, v0

    const/4 v0, 0x5

    aput-object v6, v10, v0

    const/4 v0, 0x6

    aput-object v7, v10, v0

    const/4 v0, 0x7

    aput-object v8, v10, v0

    const/16 v0, 0x8

    aput-object v9, v10, v0

    invoke-direct {p2, v10}, Leu1;-><init>([Lil2;)V

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/offerCard/view/CardOfferLandingFragment;->j:Leu1;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object p1, p0, Lcom/warefly/checkscan/presentation/offerCard/view/CardOfferLandingFragment;->j:Leu1;

    if-eqz p1, :cond_1

    new-instance p2, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    if-ge v11, v0, :cond_0

    new-instance v1, Lot5;

    invoke-direct {v1}, Lot5;-><init>()V

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p2}, Leu1;->submitList(Ljava/util/List;)V

    :cond_1
    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/offerCard/view/CardOfferLandingFragment;->n()Lcom/warefly/checkscan/databinding/FragmentCardOfferLandingBinding;

    move-result-object p1

    iget-object p2, p1, Lcom/warefly/checkscan/databinding/FragmentCardOfferLandingBinding;->btnIssueCard:Landroid/widget/TextView;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Llb7;

    new-instance v1, Lcom/warefly/checkscan/presentation/offerCard/view/CardOfferLandingFragment$b;

    invoke-direct {v1, p0}, Lcom/warefly/checkscan/presentation/offerCard/view/CardOfferLandingFragment$b;-><init>(Lcom/warefly/checkscan/presentation/offerCard/view/CardOfferLandingFragment;)V

    invoke-direct {v0, v1}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p1, Lcom/warefly/checkscan/databinding/FragmentCardOfferLandingBinding;->btnBack:Landroid/widget/ImageView;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Llb7;

    new-instance v0, Lcom/warefly/checkscan/presentation/offerCard/view/CardOfferLandingFragment$c;

    invoke-direct {v0, p0}, Lcom/warefly/checkscan/presentation/offerCard/view/CardOfferLandingFragment$c;-><init>(Lcom/warefly/checkscan/presentation/offerCard/view/CardOfferLandingFragment;)V

    invoke-direct {p2, v0}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final providePresenter()Lcom/warefly/checkscan/presentation/offerCard/presenter/CardOfferLandingPresenter;
    .locals 5

    invoke-virtual {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;->j()Lba8;

    move-result-object v0

    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object v1

    const-class v2, Luf3;

    const/4 v3, 0x0

    invoke-static {v2, v1, v0, v3}, Ln2;->c(Ljava/lang/Class;Lze7;Lba8;Li36;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Luf3;

    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object v1

    const-class v2, Lca0;

    invoke-static {v2, v1, v3, v3}, Lm2;->c(Ljava/lang/Class;Lze7;Lkv6;Li36;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lca0;

    iget-object v2, p0, Lcom/warefly/checkscan/presentation/offerCard/view/CardOfferLandingFragment;->h:Landroidx/navigation/NavArgsLazy;

    invoke-interface {v2}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lz31;

    iget-boolean v2, v2, Lz31;->a:Z

    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object p0

    const-class v4, Ljf6;

    invoke-static {v4, p0, v3, v3}, Lm2;->c(Ljava/lang/Class;Lze7;Lkv6;Li36;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljf6;

    new-instance v3, Lcom/warefly/checkscan/presentation/offerCard/presenter/CardOfferLandingPresenter;

    invoke-direct {v3, v1, v2, v0, p0}, Lcom/warefly/checkscan/presentation/offerCard/presenter/CardOfferLandingPresenter;-><init>(Lca0;ZLuf3;Ljf6;)V

    return-object v3
.end method

.method public final showData(Lnt5;)V
    .locals 14

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/offerCard/view/CardOfferLandingFragment;->n()Lcom/warefly/checkscan/databinding/FragmentCardOfferLandingBinding;

    move-result-object v0

    iget-object v1, v0, Lcom/warefly/checkscan/databinding/FragmentCardOfferLandingBinding;->ivBanner:Lcom/warefly/checkscan/core/ui/SafeImageView;

    invoke-static {v1}, Lcom/bumptech/glide/a;->e(Landroid/view/View;)Lp37;

    move-result-object v1

    iget-object v2, p1, Lnt5;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lp37;->h(Ljava/lang/String;)Lh37;

    move-result-object v1

    new-instance v2, Lcom/warefly/checkscan/presentation/offerCard/view/CardOfferLandingFragment$d;

    invoke-direct {v2, v0, p0}, Lcom/warefly/checkscan/presentation/offerCard/view/CardOfferLandingFragment$d;-><init>(Lcom/warefly/checkscan/databinding/FragmentCardOfferLandingBinding;Lcom/warefly/checkscan/presentation/offerCard/view/CardOfferLandingFragment;)V

    invoke-virtual {v1, v2}, Lh37;->F(Lo37;)Lh37;

    move-result-object v1

    invoke-virtual {v1}, Lh37;->O()V

    iget-object v1, v0, Lcom/warefly/checkscan/databinding/FragmentCardOfferLandingBinding;->btnIssueCard:Landroid/widget/TextView;

    iget-object v2, p1, Lnt5;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v0, Lcom/warefly/checkscan/databinding/FragmentCardOfferLandingBinding;->layoutButtonIssueCard:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/offerCard/view/CardOfferLandingFragment;->j:Leu1;

    if-eqz v0, :cond_0

    iget-object p1, p1, Lnt5;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Leu1;->submitList(Ljava/util/List;)V

    :cond_0
    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/offerCard/view/CardOfferLandingFragment;->n()Lcom/warefly/checkscan/databinding/FragmentCardOfferLandingBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/warefly/checkscan/databinding/FragmentCardOfferLandingBinding;->rvContent:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getItemDecorationCount()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecorationAt(I)V

    :cond_1
    new-instance v0, Lcd9;

    new-instance v2, Lcd9$a;

    const/16 v3, 0x8

    invoke-static {v3}, Lpl2;->e(I)I

    move-result v3

    iget-object v4, p0, Lcom/warefly/checkscan/presentation/offerCard/view/CardOfferLandingFragment;->j:Leu1;

    const/4 v5, -0x1

    if-eqz v4, :cond_2

    iget-object v4, v4, Leu1;->i:Lm8;

    const-class v6, Lxs5;

    invoke-virtual {v4, v6}, Lm8;->d(Ljava/lang/Class;)I

    move-result v4

    goto :goto_0

    :cond_2
    move v4, v5

    :goto_0
    invoke-direct {v2, v3, v4}, Lcd9$a;-><init>(II)V

    new-instance v3, Lcd9$a;

    const/16 v4, 0x34

    invoke-static {v4}, Lpl2;->e(I)I

    move-result v6

    iget-object v7, p0, Lcom/warefly/checkscan/presentation/offerCard/view/CardOfferLandingFragment;->j:Leu1;

    if-eqz v7, :cond_3

    iget-object v7, v7, Leu1;->i:Lm8;

    const-class v8, Lgw8;

    invoke-virtual {v7, v8}, Lm8;->d(Ljava/lang/Class;)I

    move-result v7

    goto :goto_1

    :cond_3
    move v7, v5

    :goto_1
    invoke-direct {v3, v6, v7}, Lcd9$a;-><init>(II)V

    move v6, v4

    new-instance v4, Lcd9$a;

    const/16 v7, 0x10

    invoke-static {v7}, Lpl2;->e(I)I

    move-result v8

    iget-object v9, p0, Lcom/warefly/checkscan/presentation/offerCard/view/CardOfferLandingFragment;->j:Leu1;

    if-eqz v9, :cond_4

    iget-object v9, v9, Leu1;->i:Lm8;

    const-class v10, Lkt5;

    invoke-virtual {v9, v10}, Lm8;->d(Ljava/lang/Class;)I

    move-result v9

    goto :goto_2

    :cond_4
    move v9, v5

    :goto_2
    invoke-direct {v4, v8, v9}, Lcd9$a;-><init>(II)V

    move v8, v5

    new-instance v5, Lcd9$a;

    invoke-static {v7}, Lpl2;->e(I)I

    move-result v9

    iget-object v10, p0, Lcom/warefly/checkscan/presentation/offerCard/view/CardOfferLandingFragment;->j:Leu1;

    if-eqz v10, :cond_5

    iget-object v10, v10, Leu1;->i:Lm8;

    const-class v11, Lzs8;

    invoke-virtual {v10, v11}, Lm8;->d(Ljava/lang/Class;)I

    move-result v10

    goto :goto_3

    :cond_5
    move v10, v8

    :goto_3
    invoke-direct {v5, v9, v10}, Lcd9$a;-><init>(II)V

    move v9, v6

    new-instance v6, Lcd9$a;

    const/16 v10, 0xc

    invoke-static {v10}, Lpl2;->e(I)I

    move-result v10

    iget-object v11, p0, Lcom/warefly/checkscan/presentation/offerCard/view/CardOfferLandingFragment;->j:Leu1;

    if-eqz v11, :cond_6

    iget-object v11, v11, Leu1;->i:Lm8;

    const-class v12, Lhq8;

    invoke-virtual {v11, v12}, Lm8;->d(Ljava/lang/Class;)I

    move-result v11

    goto :goto_4

    :cond_6
    move v11, v8

    :goto_4
    invoke-direct {v6, v10, v11}, Lcd9$a;-><init>(II)V

    move v10, v7

    new-instance v7, Lcd9$a;

    invoke-static {v10}, Lpl2;->e(I)I

    move-result v11

    iget-object v12, p0, Lcom/warefly/checkscan/presentation/offerCard/view/CardOfferLandingFragment;->j:Leu1;

    if-eqz v12, :cond_7

    iget-object v12, v12, Leu1;->i:Lm8;

    const-class v13, Let5;

    invoke-virtual {v12, v13}, Lm8;->d(Ljava/lang/Class;)I

    move-result v12

    goto :goto_5

    :cond_7
    move v12, v8

    :goto_5
    invoke-direct {v7, v11, v12}, Lcd9$a;-><init>(II)V

    move v11, v8

    new-instance v8, Lcd9$a;

    invoke-static {v10}, Lpl2;->e(I)I

    move-result v10

    iget-object v12, p0, Lcom/warefly/checkscan/presentation/offerCard/view/CardOfferLandingFragment;->j:Leu1;

    if-eqz v12, :cond_8

    iget-object v12, v12, Leu1;->i:Lm8;

    const-class v13, Ldt5;

    invoke-virtual {v12, v13}, Lm8;->d(Ljava/lang/Class;)I

    move-result v12

    goto :goto_6

    :cond_8
    move v12, v11

    :goto_6
    invoke-direct {v8, v10, v12}, Lcd9$a;-><init>(II)V

    move v10, v9

    new-instance v9, Lcd9$a;

    invoke-static {v10}, Lpl2;->e(I)I

    move-result v10

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/offerCard/view/CardOfferLandingFragment;->j:Leu1;

    if-eqz p0, :cond_9

    iget-object p0, p0, Leu1;->i:Lm8;

    const-class v11, Lmt5;

    invoke-virtual {p0, v11}, Lm8;->d(Ljava/lang/Class;)I

    move-result p0

    goto :goto_7

    :cond_9
    move p0, v11

    :goto_7
    invoke-direct {v9, v10, p0}, Lcd9$a;-><init>(II)V

    filled-new-array/range {v2 .. v9}, [Lcd9$a;

    move-result-object p0

    invoke-static {p0}, Lu96;->i([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Lcd9;-><init>(Ljava/util/List;)V

    invoke-virtual {p1, v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;I)V

    return-void
.end method

.method public final showSomeError()V
    .locals 1

    const v0, 0x7f140610

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0, v0}, Loz1;->e(Landroid/view/View;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
