.class public final Lcom/warefly/checkscan/presentation/onboardingOneSlide/imageSlides/ImageSlideFragment;
.super Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/warefly/checkscan/presentation/onboardingOneSlide/imageSlides/ImageSlideFragment$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment<",
        "Lcom/warefly/checkscan/databinding/FragmentOnboardingImageSlideBinding;",
        ">;"
    }
.end annotation


# static fields
.field public static final h:Lcom/warefly/checkscan/presentation/onboardingOneSlide/imageSlides/ImageSlideFragment$a;

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


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lbs6;

    const-class v1, Lcom/warefly/checkscan/presentation/onboardingOneSlide/imageSlides/ImageSlideFragment;

    const-string v2, "binding"

    const-string v3, "getBinding()Lcom/warefly/checkscan/databinding/FragmentOnboardingImageSlideBinding;"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lbs6;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v1, Lx07;->a:La17;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    new-array v1, v1, [Lze4;

    aput-object v0, v1, v4

    sput-object v1, Lcom/warefly/checkscan/presentation/onboardingOneSlide/imageSlides/ImageSlideFragment;->i:[Lze4;

    new-instance v0, Lcom/warefly/checkscan/presentation/onboardingOneSlide/imageSlides/ImageSlideFragment$a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/warefly/checkscan/presentation/onboardingOneSlide/imageSlides/ImageSlideFragment;->h:Lcom/warefly/checkscan/presentation/onboardingOneSlide/imageSlides/ImageSlideFragment$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;-><init>()V

    const v0, 0x7f0d00d2

    iput v0, p0, Lcom/warefly/checkscan/presentation/onboardingOneSlide/imageSlides/ImageSlideFragment;->f:I

    new-instance v0, Lol4;

    const-class v1, Lcom/warefly/checkscan/databinding/FragmentOnboardingImageSlideBinding;

    invoke-direct {v0, v1}, Lol4;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/warefly/checkscan/presentation/onboardingOneSlide/imageSlides/ImageSlideFragment;->g:Lol4;

    return-void
.end method


# virtual methods
.method public final i()I
    .locals 0

    iget p0, p0, Lcom/warefly/checkscan/presentation/onboardingOneSlide/imageSlides/ImageSlideFragment;->f:I

    return p0
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-super {p0, p1, p2}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/bumptech/glide/a;->d(Landroid/content/Context;)Lp37;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    if-eqz p2, :cond_0

    const-string v0, "IMAGE_SLIDE_URL_KEY"

    invoke-virtual {p2, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p2}, Lp37;->h(Ljava/lang/String;)Lh37;

    move-result-object p1

    sget-object p2, Lcom/warefly/checkscan/presentation/onboardingOneSlide/imageSlides/ImageSlideFragment;->i:[Lze4;

    const/4 v0, 0x0

    aget-object p2, p2, v0

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/onboardingOneSlide/imageSlides/ImageSlideFragment;->g:Lol4;

    invoke-virtual {v0, p0, p2}, Lol4;->a(Landroidx/fragment/app/Fragment;Lze4;)Landroidx/viewbinding/ViewBinding;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/databinding/FragmentOnboardingImageSlideBinding;

    iget-object p0, p0, Lcom/warefly/checkscan/databinding/FragmentOnboardingImageSlideBinding;->ivBanner:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Lh37;->L(Landroid/widget/ImageView;)V

    return-void
.end method
