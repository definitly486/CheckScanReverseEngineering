.class public final Lcom/warefly/checkscan/presentation/bonuses/onboardingHowGetCash/page/view/OnboardingHowGetCashPageFragment;
.super Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;
.source "SourceFile"

# interfaces
.implements Lcom/warefly/checkscan/presentation/bonuses/onboardingHowGetCash/page/view/OnboardingHowGetCashPageView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/warefly/checkscan/presentation/bonuses/onboardingHowGetCash/page/view/OnboardingHowGetCashPageFragment$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment<",
        "Lcom/warefly/checkscan/bonusesHowGetCash/databinding/FragmentPageBinding;",
        ">;",
        "Lcom/warefly/checkscan/presentation/bonuses/onboardingHowGetCash/page/view/OnboardingHowGetCashPageView;"
    }
.end annotation


# static fields
.field public static final h:Lcom/warefly/checkscan/presentation/bonuses/onboardingHowGetCash/page/view/OnboardingHowGetCashPageFragment$a;

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

.field public presenter:Lcom/warefly/checkscan/presentation/bonuses/onboardingHowGetCash/page/presenter/OnboardingHowGetCashPagePresenter;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lbs6;

    const-class v1, Lcom/warefly/checkscan/presentation/bonuses/onboardingHowGetCash/page/view/OnboardingHowGetCashPageFragment;

    const-string v2, "binding"

    const-string v3, "getBinding()Lcom/warefly/checkscan/bonusesHowGetCash/databinding/FragmentPageBinding;"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lbs6;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v1, Lx07;->a:La17;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    new-array v1, v1, [Lze4;

    aput-object v0, v1, v4

    sput-object v1, Lcom/warefly/checkscan/presentation/bonuses/onboardingHowGetCash/page/view/OnboardingHowGetCashPageFragment;->i:[Lze4;

    new-instance v0, Lcom/warefly/checkscan/presentation/bonuses/onboardingHowGetCash/page/view/OnboardingHowGetCashPageFragment$a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/warefly/checkscan/presentation/bonuses/onboardingHowGetCash/page/view/OnboardingHowGetCashPageFragment;->h:Lcom/warefly/checkscan/presentation/bonuses/onboardingHowGetCash/page/view/OnboardingHowGetCashPageFragment$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;-><init>()V

    const v0, 0x7f0d00d8

    iput v0, p0, Lcom/warefly/checkscan/presentation/bonuses/onboardingHowGetCash/page/view/OnboardingHowGetCashPageFragment;->f:I

    new-instance v0, Lol4;

    const-class v1, Lcom/warefly/checkscan/bonusesHowGetCash/databinding/FragmentPageBinding;

    invoke-direct {v0, v1}, Lol4;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/warefly/checkscan/presentation/bonuses/onboardingHowGetCash/page/view/OnboardingHowGetCashPageFragment;->g:Lol4;

    return-void
.end method


# virtual methods
.method public final i()I
    .locals 0

    iget p0, p0, Lcom/warefly/checkscan/presentation/bonuses/onboardingHowGetCash/page/view/OnboardingHowGetCashPageFragment;->f:I

    return p0
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-super {p0, p1, p2}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    sget-object p1, Lcom/warefly/checkscan/presentation/bonuses/onboardingHowGetCash/page/view/OnboardingHowGetCashPageFragment;->i:[Lze4;

    const/4 p2, 0x0

    aget-object p1, p1, p2

    iget-object p2, p0, Lcom/warefly/checkscan/presentation/bonuses/onboardingHowGetCash/page/view/OnboardingHowGetCashPageFragment;->g:Lol4;

    invoke-virtual {p2, p0, p1}, Lol4;->a(Landroidx/fragment/app/Fragment;Lze4;)Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/warefly/checkscan/bonusesHowGetCash/databinding/FragmentPageBinding;

    invoke-virtual {p1}, Lcom/warefly/checkscan/bonusesHowGetCash/databinding/FragmentPageBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p1

    new-instance p2, Lww5;

    invoke-direct {p2, p0}, Lww5;-><init>(Lcom/warefly/checkscan/presentation/bonuses/onboardingHowGetCash/page/view/OnboardingHowGetCashPageFragment;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public final providePresenter()Lcom/warefly/checkscan/presentation/bonuses/onboardingHowGetCash/page/presenter/OnboardingHowGetCashPagePresenter;
    .locals 4

    new-instance v0, Lcom/warefly/checkscan/presentation/bonuses/onboardingHowGetCash/page/presenter/OnboardingHowGetCashPagePresenter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "page"

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    :goto_0
    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object p0

    const-class v2, Lvw5;

    const/4 v3, 0x0

    invoke-static {v2, p0, v3, v3}, Lm2;->c(Ljava/lang/Class;Lze7;Lkv6;Li36;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lvw5;

    invoke-direct {v0, v1, p0}, Lcom/warefly/checkscan/presentation/bonuses/onboardingHowGetCash/page/presenter/OnboardingHowGetCashPagePresenter;-><init>(ILvw5;)V

    return-object v0
.end method

.method public final showContent(Lq16;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/warefly/checkscan/presentation/bonuses/onboardingHowGetCash/page/view/OnboardingHowGetCashPageFragment;->i:[Lze4;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/warefly/checkscan/presentation/bonuses/onboardingHowGetCash/page/view/OnboardingHowGetCashPageFragment;->g:Lol4;

    invoke-virtual {v1, p0, v0}, Lol4;->a(Landroidx/fragment/app/Fragment;Lze4;)Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/bonusesHowGetCash/databinding/FragmentPageBinding;

    iget-object v1, v0, Lcom/warefly/checkscan/bonusesHowGetCash/databinding/FragmentPageBinding;->ivPlaceholder:Landroid/widget/ImageView;

    iget v2, p1, Lq16;->b:I

    invoke-static {v0, v2}, Loz1;->b(Landroidx/viewbinding/ViewBinding;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, v0, Lcom/warefly/checkscan/bonusesHowGetCash/databinding/FragmentPageBinding;->tvPlaceholder:Landroidx/appcompat/widget/AppCompatTextView;

    iget p1, p1, Lq16;->a:I

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
