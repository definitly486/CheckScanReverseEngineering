.class public final Lcom/warefly/checkscan/presentation/gift/view/GiftFragment;
.super Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;
.source "SourceFile"

# interfaces
.implements Lcom/warefly/checkscan/presentation/gift/view/GiftView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/warefly/checkscan/presentation/gift/view/GiftFragment$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment<",
        "Lcom/warefly/checkscan/gift/databinding/FragmentGiftBinding;",
        ">;",
        "Lcom/warefly/checkscan/presentation/gift/view/GiftView;"
    }
.end annotation


# static fields
.field public static final h:Lcom/warefly/checkscan/presentation/gift/view/GiftFragment$a;

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

.field public presenter:Lcom/warefly/checkscan/presentation/gift/presenter/GiftPresenter;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lbs6;

    const-class v1, Lcom/warefly/checkscan/presentation/gift/view/GiftFragment;

    const-string v2, "binding"

    const-string v3, "getBinding()Lcom/warefly/checkscan/gift/databinding/FragmentGiftBinding;"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lbs6;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v1, Lx07;->a:La17;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    new-array v1, v1, [Lze4;

    aput-object v0, v1, v4

    sput-object v1, Lcom/warefly/checkscan/presentation/gift/view/GiftFragment;->i:[Lze4;

    new-instance v0, Lcom/warefly/checkscan/presentation/gift/view/GiftFragment$a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/warefly/checkscan/presentation/gift/view/GiftFragment;->h:Lcom/warefly/checkscan/presentation/gift/view/GiftFragment$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;-><init>()V

    const v0, 0x7f0d00c5

    iput v0, p0, Lcom/warefly/checkscan/presentation/gift/view/GiftFragment;->f:I

    new-instance v0, Lol4;

    const-class v1, Lcom/warefly/checkscan/gift/databinding/FragmentGiftBinding;

    invoke-direct {v0, v1}, Lol4;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/warefly/checkscan/presentation/gift/view/GiftFragment;->g:Lol4;

    return-void
.end method


# virtual methods
.method public final i()I
    .locals 0

    iget p0, p0, Lcom/warefly/checkscan/presentation/gift/view/GiftFragment;->f:I

    return p0
.end method

.method public final k()Z
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/gift/view/GiftFragment;->presenter:Lcom/warefly/checkscan/presentation/gift/presenter/GiftPresenter;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/gift/presenter/GiftPresenter;->onBackPressed()V

    const/4 p0, 0x0

    return p0

    :cond_0
    const-string p0, "presenter"

    invoke-static {p0}, Laa4;->j(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final n()Lcom/warefly/checkscan/gift/databinding/FragmentGiftBinding;
    .locals 2

    sget-object v0, Lcom/warefly/checkscan/presentation/gift/view/GiftFragment;->i:[Lze4;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/warefly/checkscan/presentation/gift/view/GiftFragment;->g:Lol4;

    invoke-virtual {v1, p0, v0}, Lol4;->a(Landroidx/fragment/app/Fragment;Lze4;)Landroidx/viewbinding/ViewBinding;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/gift/databinding/FragmentGiftBinding;

    return-object p0
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-super {p0, p1, p2}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/gift/view/GiftFragment;->n()Lcom/warefly/checkscan/gift/databinding/FragmentGiftBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/warefly/checkscan/gift/databinding/FragmentGiftBinding;->incldError:Lcom/warefly/checkscan/core/ui/databinding/LayoutSimpleTryAgainBinding;

    iget-object p1, p1, Lcom/warefly/checkscan/core/ui/databinding/LayoutSimpleTryAgainBinding;->btnTryAgain:Landroid/widget/TextView;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Llb7;

    new-instance v0, Lcom/warefly/checkscan/presentation/gift/view/GiftFragment$b;

    invoke-direct {v0, p0}, Lcom/warefly/checkscan/presentation/gift/view/GiftFragment$b;-><init>(Lcom/warefly/checkscan/presentation/gift/view/GiftFragment;)V

    invoke-direct {p2, v0}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final providePresenter()Lcom/warefly/checkscan/presentation/gift/presenter/GiftPresenter;
    .locals 6

    new-instance v0, Lcom/warefly/checkscan/presentation/gift/presenter/GiftPresenter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "GIFT_KEY"

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object v2

    const-class v3, Ljq3;

    const/4 v4, 0x0

    invoke-static {v3, v2, v4, v4}, Lm2;->c(Ljava/lang/Class;Lze7;Lkv6;Li36;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljq3;

    invoke-virtual {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;->j()Lba8;

    move-result-object v3

    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object p0

    const-class v5, Luf3;

    invoke-static {v5, p0, v3, v4}, Ln2;->c(Ljava/lang/Class;Lze7;Lba8;Li36;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Luf3;

    invoke-direct {v0, v1, v2, p0}, Lcom/warefly/checkscan/presentation/gift/presenter/GiftPresenter;-><init>(ILjq3;Luf3;)V

    return-object v0
.end method

.method public final showError(Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/gift/view/GiftFragment;->n()Lcom/warefly/checkscan/gift/databinding/FragmentGiftBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/warefly/checkscan/gift/databinding/FragmentGiftBinding;->incldError:Lcom/warefly/checkscan/core/ui/databinding/LayoutSimpleTryAgainBinding;

    invoke-virtual {p0}, Lcom/warefly/checkscan/core/ui/databinding/LayoutSimpleTryAgainBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

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

.method public final showGiftInfo(Lhq3;)V
    .locals 6

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/gift/view/GiftFragment;->n()Lcom/warefly/checkscan/gift/databinding/FragmentGiftBinding;

    move-result-object v0

    iget-object v1, v0, Lcom/warefly/checkscan/gift/databinding/FragmentGiftBinding;->tvTitle:Landroid/widget/TextView;

    iget-object v2, p1, Lhq3;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/warefly/checkscan/gift/databinding/FragmentGiftBinding;->tvDescription:Landroid/widget/TextView;

    iget-object v2, p1, Lhq3;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bumptech/glide/a;->d(Landroid/content/Context;)Lp37;

    move-result-object v1

    iget-object v2, p1, Lhq3;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lp37;->h(Ljava/lang/String;)Lh37;

    move-result-object v1

    invoke-static {}, Lqs2;->h()Lqs2;

    move-result-object v2

    invoke-virtual {v1, v2}, Lh37;->P(Lqs2;)Lh37;

    move-result-object v1

    iget-object v2, v0, Lcom/warefly/checkscan/gift/databinding/FragmentGiftBinding;->ivImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Lh37;->L(Landroid/widget/ImageView;)V

    iget-object v1, p1, Lhq3;->d:Lhq3$a;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v3, v0, Lcom/warefly/checkscan/gift/databinding/FragmentGiftBinding;->btnAction:Landroid/widget/TextView;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, v1, Lhq3$a;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v4, Llb7;

    new-instance v5, Lcom/warefly/checkscan/presentation/gift/view/GiftFragment$c;

    invoke-direct {v5, p0, v1}, Lcom/warefly/checkscan/presentation/gift/view/GiftFragment$c;-><init>(Lcom/warefly/checkscan/presentation/gift/view/GiftFragment;Lhq3$a;)V

    invoke-direct {v4, v5}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    iget-object p1, p1, Lhq3;->e:Lhq3$a;

    if-eqz p1, :cond_1

    iget-object v1, v0, Lcom/warefly/checkscan/gift/databinding/FragmentGiftBinding;->btnSecondaryAction:Landroid/widget/TextView;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p1, Lhq3$a;->a:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v0, Lcom/warefly/checkscan/gift/databinding/FragmentGiftBinding;->spaceBetweenButtons:Landroid/widget/Space;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    new-instance v0, Llb7;

    new-instance v2, Lcom/warefly/checkscan/presentation/gift/view/GiftFragment$d;

    invoke-direct {v2, p0, p1}, Lcom/warefly/checkscan/presentation/gift/view/GiftFragment$d;-><init>(Lcom/warefly/checkscan/presentation/gift/view/GiftFragment;Lhq3$a;)V

    invoke-direct {v0, v2}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method public final showLoading(Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/gift/view/GiftFragment;->n()Lcom/warefly/checkscan/gift/databinding/FragmentGiftBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/warefly/checkscan/gift/databinding/FragmentGiftBinding;->incldLoading:Lcom/warefly/checkscan/core/ui/databinding/LayoutSpinnerLoadingBinding;

    invoke-virtual {p0}, Lcom/warefly/checkscan/core/ui/databinding/LayoutSpinnerLoadingBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

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
