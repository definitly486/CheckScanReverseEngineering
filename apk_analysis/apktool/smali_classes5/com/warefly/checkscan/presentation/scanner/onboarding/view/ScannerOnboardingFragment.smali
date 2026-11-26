.class public final Lcom/warefly/checkscan/presentation/scanner/onboarding/view/ScannerOnboardingFragment;
.super Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;
.source "SourceFile"

# interfaces
.implements Lcom/warefly/checkscan/presentation/scanner/onboarding/view/ScannerOnboardingView;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment<",
        "Lcom/warefly/checkscan/scannerml/databinding/FragmentScannerOnboardingBinding;",
        ">;",
        "Lcom/warefly/checkscan/presentation/scanner/onboarding/view/ScannerOnboardingView;"
    }
.end annotation


# static fields
.field public static final synthetic h:[Lze4;
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

.field public presenter:Lcom/warefly/checkscan/presentation/scanner/onboarding/presenter/ScannerOnboardingPresenter;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lbs6;

    const-class v1, Lcom/warefly/checkscan/presentation/scanner/onboarding/view/ScannerOnboardingFragment;

    const-string v2, "binding"

    const-string v3, "getBinding()Lcom/warefly/checkscan/scannerml/databinding/FragmentScannerOnboardingBinding;"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lbs6;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v1, Lx07;->a:La17;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    new-array v1, v1, [Lze4;

    aput-object v0, v1, v4

    sput-object v1, Lcom/warefly/checkscan/presentation/scanner/onboarding/view/ScannerOnboardingFragment;->h:[Lze4;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;-><init>()V

    const v0, 0x7f0d00ef

    iput v0, p0, Lcom/warefly/checkscan/presentation/scanner/onboarding/view/ScannerOnboardingFragment;->f:I

    new-instance v0, Lol4;

    const-class v1, Lcom/warefly/checkscan/scannerml/databinding/FragmentScannerOnboardingBinding;

    invoke-direct {v0, v1}, Lol4;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/warefly/checkscan/presentation/scanner/onboarding/view/ScannerOnboardingFragment;->g:Lol4;

    return-void
.end method


# virtual methods
.method public final i()I
    .locals 0

    iget p0, p0, Lcom/warefly/checkscan/presentation/scanner/onboarding/view/ScannerOnboardingFragment;->f:I

    return p0
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-super {p0, p1, p2}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    sget-object p1, Lcom/warefly/checkscan/presentation/scanner/onboarding/view/ScannerOnboardingFragment;->h:[Lze4;

    const/4 p2, 0x0

    aget-object p1, p1, p2

    iget-object p2, p0, Lcom/warefly/checkscan/presentation/scanner/onboarding/view/ScannerOnboardingFragment;->g:Lol4;

    invoke-virtual {p2, p0, p1}, Lol4;->a(Landroidx/fragment/app/Fragment;Lze4;)Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/warefly/checkscan/scannerml/databinding/FragmentScannerOnboardingBinding;

    iget-object p1, p1, Lcom/warefly/checkscan/scannerml/databinding/FragmentScannerOnboardingBinding;->bntAction:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Llb7;

    new-instance v0, Lcom/warefly/checkscan/presentation/scanner/onboarding/view/ScannerOnboardingFragment$a;

    invoke-direct {v0, p0}, Lcom/warefly/checkscan/presentation/scanner/onboarding/view/ScannerOnboardingFragment$a;-><init>(Lcom/warefly/checkscan/presentation/scanner/onboarding/view/ScannerOnboardingFragment;)V

    invoke-direct {p2, v0}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final providePresenter()Lcom/warefly/checkscan/presentation/scanner/onboarding/presenter/ScannerOnboardingPresenter;
    .locals 5

    new-instance v0, Lcom/warefly/checkscan/presentation/scanner/onboarding/presenter/ScannerOnboardingPresenter;

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

    const-class v2, Ljf6;

    invoke-static {v2, p0, v4, v4}, Lm2;->c(Ljava/lang/Class;Lze7;Lkv6;Li36;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljf6;

    invoke-direct {v0, v1, p0}, Lcom/warefly/checkscan/presentation/scanner/onboarding/presenter/ScannerOnboardingPresenter;-><init>(Luf3;Ljf6;)V

    return-object v0
.end method
