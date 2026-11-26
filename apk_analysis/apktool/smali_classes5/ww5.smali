.class public final synthetic Lww5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic b:Lcom/warefly/checkscan/presentation/bonuses/onboardingHowGetCash/page/view/OnboardingHowGetCashPageFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/warefly/checkscan/presentation/bonuses/onboardingHowGetCash/page/view/OnboardingHowGetCashPageFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lww5;->b:Lcom/warefly/checkscan/presentation/bonuses/onboardingHowGetCash/page/view/OnboardingHowGetCashPageFragment;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    iget-object p0, p0, Lww5;->b:Lcom/warefly/checkscan/presentation/bonuses/onboardingHowGetCash/page/view/OnboardingHowGetCashPageFragment;

    iget-object p1, p0, Lcom/warefly/checkscan/presentation/bonuses/onboardingHowGetCash/page/view/OnboardingHowGetCashPageFragment;->presenter:Lcom/warefly/checkscan/presentation/bonuses/onboardingHowGetCash/page/presenter/OnboardingHowGetCashPagePresenter;

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/bonuses/onboardingHowGetCash/page/view/OnboardingHowGetCashPageFragment;->g:Lol4;

    sget-object v1, Lcom/warefly/checkscan/presentation/bonuses/onboardingHowGetCash/page/view/OnboardingHowGetCashPageFragment;->i:[Lze4;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lol4;->a(Landroidx/fragment/app/Fragment;Lze4;)Landroidx/viewbinding/ViewBinding;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/bonusesHowGetCash/databinding/FragmentPageBinding;

    invoke-virtual {p0}, Lcom/warefly/checkscan/bonusesHowGetCash/databinding/FragmentPageBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p0

    invoke-virtual {p1, p2, p0}, Lcom/warefly/checkscan/presentation/bonuses/onboardingHowGetCash/page/presenter/OnboardingHowGetCashPagePresenter;->onScreenClick(Landroid/view/MotionEvent;I)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const-string p0, "presenter"

    invoke-static {p0}, Laa4;->j(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method
