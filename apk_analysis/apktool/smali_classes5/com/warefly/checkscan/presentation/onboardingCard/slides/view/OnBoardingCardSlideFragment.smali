.class public final Lcom/warefly/checkscan/presentation/onboardingCard/slides/view/OnBoardingCardSlideFragment;
.super Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;
.source "SourceFile"

# interfaces
.implements Lcom/warefly/checkscan/presentation/onboardingCard/slides/view/OnboardingCardSlideView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/warefly/checkscan/presentation/onboardingCard/slides/view/OnBoardingCardSlideFragment$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment<",
        "Lcom/warefly/checkscan/databinding/FragmentOnboardingCardSlideBinding;",
        ">;",
        "Lcom/warefly/checkscan/presentation/onboardingCard/slides/view/OnboardingCardSlideView;"
    }
.end annotation


# static fields
.field public static final h:Lcom/warefly/checkscan/presentation/onboardingCard/slides/view/OnBoardingCardSlideFragment$a;

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

.field public presenter:Lcom/warefly/checkscan/presentation/onboardingCard/slides/presenter/OnBoardingCardSlidePresenter;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lbs6;

    const-class v1, Lcom/warefly/checkscan/presentation/onboardingCard/slides/view/OnBoardingCardSlideFragment;

    const-string v2, "binding"

    const-string v3, "getBinding()Lcom/warefly/checkscan/databinding/FragmentOnboardingCardSlideBinding;"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lbs6;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v1, Lx07;->a:La17;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    new-array v1, v1, [Lze4;

    aput-object v0, v1, v4

    sput-object v1, Lcom/warefly/checkscan/presentation/onboardingCard/slides/view/OnBoardingCardSlideFragment;->i:[Lze4;

    new-instance v0, Lcom/warefly/checkscan/presentation/onboardingCard/slides/view/OnBoardingCardSlideFragment$a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/warefly/checkscan/presentation/onboardingCard/slides/view/OnBoardingCardSlideFragment;->h:Lcom/warefly/checkscan/presentation/onboardingCard/slides/view/OnBoardingCardSlideFragment$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;-><init>()V

    const v0, 0x7f0d00d0

    iput v0, p0, Lcom/warefly/checkscan/presentation/onboardingCard/slides/view/OnBoardingCardSlideFragment;->f:I

    new-instance v0, Lol4;

    const-class v1, Lcom/warefly/checkscan/databinding/FragmentOnboardingCardSlideBinding;

    invoke-direct {v0, v1}, Lol4;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/warefly/checkscan/presentation/onboardingCard/slides/view/OnBoardingCardSlideFragment;->g:Lol4;

    return-void
.end method


# virtual methods
.method public final i()I
    .locals 0

    iget p0, p0, Lcom/warefly/checkscan/presentation/onboardingCard/slides/view/OnBoardingCardSlideFragment;->f:I

    return p0
.end method

.method public final providePresenter()Lcom/warefly/checkscan/presentation/onboardingCard/slides/presenter/OnBoardingCardSlidePresenter;
    .locals 5

    new-instance v0, Lcom/warefly/checkscan/presentation/onboardingCard/slides/presenter/OnBoardingCardSlidePresenter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "SLIDE_KEY"

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    goto :goto_0

    :cond_0
    const-wide/high16 v1, -0x8000000000000000L

    :goto_0
    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object p0

    const-class v3, Luw5;

    const/4 v4, 0x0

    invoke-static {v3, p0, v4, v4}, Lm2;->c(Ljava/lang/Class;Lze7;Lkv6;Li36;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Luw5;

    invoke-direct {v0, v1, v2, p0}, Lcom/warefly/checkscan/presentation/onboardingCard/slides/presenter/OnBoardingCardSlidePresenter;-><init>(JLuw5;)V

    return-object v0
.end method

.method public final showContent(Lzj3;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/warefly/checkscan/presentation/onboardingCard/slides/view/OnBoardingCardSlideFragment;->i:[Lze4;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/warefly/checkscan/presentation/onboardingCard/slides/view/OnBoardingCardSlideFragment;->g:Lol4;

    invoke-virtual {v1, p0, v0}, Lol4;->a(Landroidx/fragment/app/Fragment;Lze4;)Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/databinding/FragmentOnboardingCardSlideBinding;

    iget-object v1, v0, Lcom/warefly/checkscan/databinding/FragmentOnboardingCardSlideBinding;->ivPlaceholder:Landroid/widget/ImageView;

    invoke-static {v1}, Lcom/bumptech/glide/a;->e(Landroid/view/View;)Lp37;

    move-result-object v1

    iget-object v2, p1, Lzj3;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lp37;->h(Ljava/lang/String;)Lh37;

    move-result-object v1

    iget-object v2, v0, Lcom/warefly/checkscan/databinding/FragmentOnboardingCardSlideBinding;->ivPlaceholder:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Lh37;->L(Landroid/widget/ImageView;)V

    iget-object v1, v0, Lcom/warefly/checkscan/databinding/FragmentOnboardingCardSlideBinding;->tvTitle:Landroidx/appcompat/widget/AppCompatTextView;

    iget-object v2, p1, Lzj3;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/warefly/checkscan/databinding/FragmentOnboardingCardSlideBinding;->tvDescription:Landroidx/appcompat/widget/AppCompatTextView;

    iget-object v2, p1, Lzj3;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/warefly/checkscan/databinding/FragmentOnboardingCardSlideBinding;->btnAction:Landroidx/appcompat/widget/AppCompatTextView;

    iget-object v2, p1, Lzj3;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v0, Lcom/warefly/checkscan/databinding/FragmentOnboardingCardSlideBinding;->btnAction:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Llb7;

    new-instance v2, Lcom/warefly/checkscan/presentation/onboardingCard/slides/view/OnBoardingCardSlideFragment$b;

    invoke-direct {v2, p0, p1}, Lcom/warefly/checkscan/presentation/onboardingCard/slides/view/OnBoardingCardSlideFragment$b;-><init>(Lcom/warefly/checkscan/presentation/onboardingCard/slides/view/OnBoardingCardSlideFragment;Lzj3;)V

    invoke-direct {v1, v2}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
