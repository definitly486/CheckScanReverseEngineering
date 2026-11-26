.class public final Lcom/warefly/checkscan/presentation/scanner/view/ScannerFragment;
.super Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;
.source "SourceFile"

# interfaces
.implements Lcom/warefly/checkscan/presentation/scanner/view/ScannerView;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment<",
        "Lcom/warefly/checkscan/scannerml/databinding/FragmentScannerNewBinding;",
        ">;",
        "Lcom/warefly/checkscan/presentation/scanner/view/ScannerView;"
    }
.end annotation


# static fields
.field public static final synthetic o:[Lze4;
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

.field public final j:Lfh8;

.field public k:Lu11;

.field public l:Lg86;

.field public final m:Landroidx/activity/result/ActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/ActivityResultLauncher<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public n:Leu1;

.field public presenter:Lcom/warefly/checkscan/presentation/scanner/presenter/ScannerPresenter;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lbs6;

    const-class v1, Lcom/warefly/checkscan/presentation/scanner/view/ScannerFragment;

    const-string v2, "binding"

    const-string v3, "getBinding()Lcom/warefly/checkscan/scannerml/databinding/FragmentScannerNewBinding;"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lbs6;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v1, Lx07;->a:La17;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    new-array v1, v1, [Lze4;

    aput-object v0, v1, v4

    sput-object v1, Lcom/warefly/checkscan/presentation/scanner/view/ScannerFragment;->o:[Lze4;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;-><init>()V

    const v0, 0x7f0d00ee

    iput v0, p0, Lcom/warefly/checkscan/presentation/scanner/view/ScannerFragment;->f:I

    new-instance v0, Lol4;

    const-class v1, Lcom/warefly/checkscan/scannerml/databinding/FragmentScannerNewBinding;

    invoke-direct {v0, v1}, Lol4;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/warefly/checkscan/presentation/scanner/view/ScannerFragment;->g:Lol4;

    new-instance v0, Landroidx/navigation/NavArgsLazy;

    const-class v1, Lvd7;

    invoke-static {v1}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v1

    new-instance v2, Lcom/warefly/checkscan/presentation/scanner/view/ScannerFragment$q;

    invoke-direct {v2, p0}, Lcom/warefly/checkscan/presentation/scanner/view/ScannerFragment$q;-><init>(Lcom/warefly/checkscan/presentation/scanner/view/ScannerFragment;)V

    invoke-direct {v0, v1, v2}, Landroidx/navigation/NavArgsLazy;-><init>(Lne4;Lll3;)V

    iput-object v0, p0, Lcom/warefly/checkscan/presentation/scanner/view/ScannerFragment;->h:Landroidx/navigation/NavArgsLazy;

    new-instance v0, Lcom/warefly/checkscan/presentation/scanner/view/ScannerFragment$a;

    invoke-direct {v0, p0}, Lcom/warefly/checkscan/presentation/scanner/view/ScannerFragment$a;-><init>(Lcom/warefly/checkscan/presentation/scanner/view/ScannerFragment;)V

    new-instance v1, Lfh8;

    invoke-direct {v1, v0}, Lfh8;-><init>(Lll3;)V

    iput-object v1, p0, Lcom/warefly/checkscan/presentation/scanner/view/ScannerFragment;->i:Lfh8;

    new-instance v0, Lcom/warefly/checkscan/presentation/scanner/view/ScannerFragment$b;

    invoke-direct {v0, p0}, Lcom/warefly/checkscan/presentation/scanner/view/ScannerFragment$b;-><init>(Lcom/warefly/checkscan/presentation/scanner/view/ScannerFragment;)V

    new-instance v1, Lfh8;

    invoke-direct {v1, v0}, Lfh8;-><init>(Lll3;)V

    iput-object v1, p0, Lcom/warefly/checkscan/presentation/scanner/view/ScannerFragment;->j:Lfh8;

    new-instance v0, Landroidx/activity/result/contract/ActivityResultContracts$RequestPermission;

    invoke-direct {v0}, Landroidx/activity/result/contract/ActivityResultContracts$RequestPermission;-><init>()V

    new-instance v1, Lym2;

    invoke-direct {v1, p0}, Lym2;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v0, p0, Lcom/warefly/checkscan/presentation/scanner/view/ScannerFragment;->m:Landroidx/activity/result/ActivityResultLauncher;

    return-void
.end method


# virtual methods
.method public final e(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070863

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    new-instance v2, Lud7;

    invoke-direct {v2, p0, v0, v1}, Lud7;-><init>(Lcom/warefly/checkscan/presentation/scanner/view/ScannerFragment;II)V

    invoke-static {p1, v2}, Landroidx/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    invoke-static {p1}, Landroidx/core/view/ViewCompat;->requestApplyInsets(Landroid/view/View;)V

    return-void
.end method

.method public final handleChequesListVisible(Z)V
    .locals 4

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/scanner/view/ScannerFragment;->n()Lcom/warefly/checkscan/scannerml/databinding/FragmentScannerNewBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/warefly/checkscan/scannerml/databinding/FragmentScannerNewBinding;->rvContent:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/scanner/view/ScannerFragment;->n()Lcom/warefly/checkscan/scannerml/databinding/FragmentScannerNewBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/warefly/checkscan/scannerml/databinding/FragmentScannerNewBinding;->tvChequeInfo:Lcom/warefly/checkscan/scannerml/databinding/ItemChequeWithCountBinding;

    invoke-virtual {p0}, Lcom/warefly/checkscan/scannerml/databinding/ItemChequeWithCountBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final handleErrorMessage(Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/scanner/view/ScannerFragment;->n()Lcom/warefly/checkscan/scannerml/databinding/FragmentScannerNewBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/warefly/checkscan/scannerml/databinding/FragmentScannerNewBinding;->messageError:Lcom/warefly/checkscan/scannerml/databinding/ItemMessageErrorBinding;

    invoke-virtual {p0}, Lcom/warefly/checkscan/scannerml/databinding/ItemMessageErrorBinding;->getRoot()Landroidx/appcompat/widget/AppCompatTextView;

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

.method public final handleMessageVisibility(Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/scanner/view/ScannerFragment;->n()Lcom/warefly/checkscan/scannerml/databinding/FragmentScannerNewBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/warefly/checkscan/scannerml/databinding/FragmentScannerNewBinding;->message:Lcom/warefly/checkscan/scannerml/databinding/ItemMessageBinding;

    invoke-virtual {p0}, Lcom/warefly/checkscan/scannerml/databinding/ItemMessageBinding;->getRoot()Landroidx/appcompat/widget/AppCompatTextView;

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

    iget p0, p0, Lcom/warefly/checkscan/presentation/scanner/view/ScannerFragment;->f:I

    return p0
.end method

.method public final n()Lcom/warefly/checkscan/scannerml/databinding/FragmentScannerNewBinding;
    .locals 2

    sget-object v0, Lcom/warefly/checkscan/presentation/scanner/view/ScannerFragment;->o:[Lze4;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/warefly/checkscan/presentation/scanner/view/ScannerFragment;->g:Lol4;

    invoke-virtual {v1, p0, v0}, Lol4;->a(Landroidx/fragment/app/Fragment;Lze4;)Landroidx/viewbinding/ViewBinding;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/scannerml/databinding/FragmentScannerNewBinding;

    return-object p0
.end method

.method public final o()Lcom/warefly/checkscan/presentation/scanner/presenter/ScannerPresenter;
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/scanner/view/ScannerFragment;->presenter:Lcom/warefly/checkscan/presentation/scanner/presenter/ScannerPresenter;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "presenter"

    invoke-static {p0}, Laa4;->j(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lfh5;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object p1

    const-class v0, Lav6;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1, v1}, Lm2;->c(Ljava/lang/Class;Lze7;Lkv6;Li36;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lav6;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/activity/ComponentActivity;->getActivityResultRegistry()Landroidx/activity/result/ActivityResultRegistry;

    move-result-object v0

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/scanner/view/ScannerFragment;->o()Lcom/warefly/checkscan/presentation/scanner/presenter/ScannerPresenter;

    move-result-object v2

    new-instance v3, Lg86;

    invoke-direct {v3, v0, p0, p1, v2}, Lg86;-><init>(Landroidx/activity/result/ActivityResultRegistry;Lcom/warefly/checkscan/presentation/scanner/view/ScannerFragment;Lav6;Lcom/warefly/checkscan/presentation/scanner/presenter/ScannerPresenter;)V

    iput-object v3, p0, Lcom/warefly/checkscan/presentation/scanner/view/ScannerFragment;->l:Lg86;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/scanner/view/ScannerFragment;->l:Lg86;

    if-eqz p0, :cond_0

    invoke-virtual {p1, p0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    return-void

    :cond_0
    const-string p0, "pickGalleryPictureBehavior"

    invoke-static {p0}, Laa4;->j(Ljava/lang/String;)V

    throw v1
.end method

.method public final onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/scanner/view/ScannerFragment;->k:Lu11;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lu11;->k:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/warefly/checkscan/presentation/scanner/view/ScannerFragment;->k:Lu11;

    invoke-super {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;->onDestroy()V

    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 12

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-super {p0, p1, p2}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    new-instance p1, Lcom/warefly/checkscan/presentation/scanner/view/ScannerFragment$c;

    invoke-direct {p1, p0}, Lcom/warefly/checkscan/presentation/scanner/view/ScannerFragment$c;-><init>(Lcom/warefly/checkscan/presentation/scanner/view/ScannerFragment;)V

    const-string p2, "SCANNER_ONBOARDING_GALLERY_REQUEST_KEY"

    invoke-static {p0, p2, p1}, Landroidx/fragment/app/FragmentKt;->setFragmentResultListener(Landroidx/fragment/app/Fragment;Ljava/lang/String;Lbm3;)V

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/scanner/view/ScannerFragment;->n()Lcom/warefly/checkscan/scannerml/databinding/FragmentScannerNewBinding;

    move-result-object p1

    iget-object p2, p1, Lcom/warefly/checkscan/scannerml/databinding/FragmentScannerNewBinding;->viewPreview:Landroidx/camera/view/PreviewView;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Landroid/view/View;->isLaidOut()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->isLayoutRequested()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v2, p1, Lcom/warefly/checkscan/scannerml/databinding/FragmentScannerNewBinding;->viewPreview:Landroidx/camera/view/PreviewView;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/scanner/view/ScannerFragment;->o()Lcom/warefly/checkscan/presentation/scanner/presenter/ScannerPresenter;

    move-result-object v7

    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object p2

    const-class v0, Lla3;

    const/4 v1, 0x0

    invoke-static {v0, p2, v1, v1}, Lm2;->c(Ljava/lang/Class;Lze7;Lkv6;Li36;)Ljava/lang/Object;

    move-result-object p2

    move-object v9, p2

    check-cast v9, Lla3;

    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object p2

    const-class v0, Llb5;

    invoke-static {v0, p2, v1, v1}, Lm2;->c(Ljava/lang/Class;Lze7;Lkv6;Li36;)Ljava/lang/Object;

    move-result-object p2

    move-object v8, p2

    check-cast v8, Llb5;

    iget-object v10, p1, Lcom/warefly/checkscan/scannerml/databinding/FragmentScannerNewBinding;->ivScannerFrame:Landroid/widget/ImageView;

    new-instance v1, Lu11;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/warefly/checkscan/presentation/scanner/view/ScannerFragment$d;

    invoke-direct {v3, p0}, Lcom/warefly/checkscan/presentation/scanner/view/ScannerFragment$d;-><init>(Lcom/warefly/checkscan/presentation/scanner/view/ScannerFragment;)V

    new-instance v4, Lcom/warefly/checkscan/presentation/scanner/view/ScannerFragment$e;

    invoke-direct {v4, p0}, Lcom/warefly/checkscan/presentation/scanner/view/ScannerFragment$e;-><init>(Lcom/warefly/checkscan/presentation/scanner/view/ScannerFragment;)V

    new-instance v5, Lcom/warefly/checkscan/presentation/scanner/view/ScannerFragment$f;

    invoke-direct {v5, p0}, Lcom/warefly/checkscan/presentation/scanner/view/ScannerFragment$f;-><init>(Lcom/warefly/checkscan/presentation/scanner/view/ScannerFragment;)V

    new-instance v6, Lcom/warefly/checkscan/presentation/scanner/view/ScannerFragment$g;

    invoke-direct {v6, p0, p1}, Lcom/warefly/checkscan/presentation/scanner/view/ScannerFragment$g;-><init>(Lcom/warefly/checkscan/presentation/scanner/view/ScannerFragment;Lcom/warefly/checkscan/scannerml/databinding/FragmentScannerNewBinding;)V

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v11, Lcom/warefly/checkscan/presentation/scanner/view/ScannerFragment$h;->f:Lcom/warefly/checkscan/presentation/scanner/view/ScannerFragment$h;

    invoke-direct/range {v1 .. v11}, Lu11;-><init>(Landroidx/camera/view/PreviewView;Lcom/warefly/checkscan/presentation/scanner/view/ScannerFragment$d;Lcom/warefly/checkscan/presentation/scanner/view/ScannerFragment$e;Lcom/warefly/checkscan/presentation/scanner/view/ScannerFragment$f;Lcom/warefly/checkscan/presentation/scanner/view/ScannerFragment$g;Lcom/warefly/checkscan/presentation/scanner/presenter/ScannerPresenter;Llb5;Lla3;Landroid/view/View;Lnl3;)V

    iput-object v1, p0, Lcom/warefly/checkscan/presentation/scanner/view/ScannerFragment;->k:Lu11;

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/warefly/checkscan/presentation/scanner/view/ScannerFragment$i;

    invoke-direct {v0, p0, p1}, Lcom/warefly/checkscan/presentation/scanner/view/ScannerFragment$i;-><init>(Lcom/warefly/checkscan/presentation/scanner/view/ScannerFragment;Lcom/warefly/checkscan/scannerml/databinding/FragmentScannerNewBinding;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :goto_0
    iget-object p2, p1, Lcom/warefly/checkscan/scannerml/databinding/FragmentScannerNewBinding;->ivClose:Landroid/widget/ImageView;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Llb7;

    new-instance v1, Lcom/warefly/checkscan/presentation/scanner/view/ScannerFragment$j;

    invoke-direct {v1, p0}, Lcom/warefly/checkscan/presentation/scanner/view/ScannerFragment$j;-><init>(Lcom/warefly/checkscan/presentation/scanner/view/ScannerFragment;)V

    invoke-direct {v0, v1}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p1, Lcom/warefly/checkscan/scannerml/databinding/FragmentScannerNewBinding;->ivInfo:Landroid/widget/ImageView;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Llb7;

    new-instance v1, Lcom/warefly/checkscan/presentation/scanner/view/ScannerFragment$k;

    invoke-direct {v1, p0}, Lcom/warefly/checkscan/presentation/scanner/view/ScannerFragment$k;-><init>(Lcom/warefly/checkscan/presentation/scanner/view/ScannerFragment;)V

    invoke-direct {v0, v1}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p1, Lcom/warefly/checkscan/scannerml/databinding/FragmentScannerNewBinding;->ivGallery:Landroid/widget/ImageView;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Llb7;

    new-instance v1, Lcom/warefly/checkscan/presentation/scanner/view/ScannerFragment$l;

    invoke-direct {v1, p0}, Lcom/warefly/checkscan/presentation/scanner/view/ScannerFragment$l;-><init>(Lcom/warefly/checkscan/presentation/scanner/view/ScannerFragment;)V

    invoke-direct {v0, v1}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p1, Lcom/warefly/checkscan/scannerml/databinding/FragmentScannerNewBinding;->btnManual:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Llb7;

    new-instance v1, Lcom/warefly/checkscan/presentation/scanner/view/ScannerFragment$m;

    invoke-direct {v1, p0}, Lcom/warefly/checkscan/presentation/scanner/view/ScannerFragment$m;-><init>(Lcom/warefly/checkscan/presentation/scanner/view/ScannerFragment;)V

    invoke-direct {v0, v1}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p1, Lcom/warefly/checkscan/scannerml/databinding/FragmentScannerNewBinding;->ivFlash:Landroid/widget/ImageView;

    new-instance v0, Ltd7;

    invoke-direct {v0, p0}, Ltd7;-><init>(Lcom/warefly/checkscan/presentation/scanner/view/ScannerFragment;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p1, Lcom/warefly/checkscan/scannerml/databinding/FragmentScannerNewBinding;->btnLoad:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Llb7;

    new-instance v1, Lcom/warefly/checkscan/presentation/scanner/view/ScannerFragment$n;

    invoke-direct {v1, p0}, Lcom/warefly/checkscan/presentation/scanner/view/ScannerFragment$n;-><init>(Lcom/warefly/checkscan/presentation/scanner/view/ScannerFragment;)V

    invoke-direct {v0, v1}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p1, Lcom/warefly/checkscan/scannerml/databinding/FragmentScannerNewBinding;->tvChequeInfo:Lcom/warefly/checkscan/scannerml/databinding/ItemChequeWithCountBinding;

    invoke-virtual {p2}, Lcom/warefly/checkscan/scannerml/databinding/ItemChequeWithCountBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Llb7;

    new-instance v1, Lcom/warefly/checkscan/presentation/scanner/view/ScannerFragment$o;

    invoke-direct {v1, p0}, Lcom/warefly/checkscan/presentation/scanner/view/ScannerFragment$o;-><init>(Lcom/warefly/checkscan/presentation/scanner/view/ScannerFragment;)V

    invoke-direct {v0, v1}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p1, Lcom/warefly/checkscan/scannerml/databinding/FragmentScannerNewBinding;->ivBrandlink:Landroid/widget/ImageView;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Llb7;

    new-instance v0, Lcom/warefly/checkscan/presentation/scanner/view/ScannerFragment$p;

    invoke-direct {v0, p0}, Lcom/warefly/checkscan/presentation/scanner/view/ScannerFragment$p;-><init>(Lcom/warefly/checkscan/presentation/scanner/view/ScannerFragment;)V

    invoke-direct {p2, v0}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/scanner/view/ScannerFragment;->n()Lcom/warefly/checkscan/scannerml/databinding/FragmentScannerNewBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/warefly/checkscan/scannerml/databinding/FragmentScannerNewBinding;->rvContent:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p2, Leu1;

    new-instance v0, Lph1;

    sget-object v1, Loh1;->c:Loh1;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lph1;-><init>(Ldm3;I)V

    const/4 v1, 0x1

    new-array v1, v1, [Lil2;

    aput-object v0, v1, v2

    invoke-direct {p2, v1}, Leu1;-><init>([Lil2;)V

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/scanner/view/ScannerFragment;->n:Leu1;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    new-instance p0, Lqw3;

    const/16 p2, 0x8

    invoke-direct {p0, v2, p2}, Lqw3;-><init>(II)V

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    return-void
.end method

.method public final openGallery()V
    .locals 1

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/scanner/view/ScannerFragment;->l:Lg86;

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    :try_start_0
    iget-object p0, p0, Lg86;->f:Landroidx/activity/result/ActivityResultLauncher;

    if-eqz p0, :cond_0

    sget-object v0, Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$ImageOnly;->INSTANCE:Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$ImageOnly;

    invoke-static {v0}, Landroidx/activity/result/PickVisualMediaRequestKt;->PickVisualMediaRequest(Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$VisualMediaType;)Landroidx/activity/result/PickVisualMediaRequest;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    sget-object p0, Lj59;->a:Lj59;

    return-void

    :cond_0
    const-string p0, "pickFromGallery"

    invoke-static {p0}, Laa4;->j(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void

    :cond_1
    const-string p0, "pickGalleryPictureBehavior"

    invoke-static {p0}, Laa4;->j(Ljava/lang/String;)V

    throw v0
.end method

.method public final providePresenter()Lcom/warefly/checkscan/presentation/scanner/presenter/ScannerPresenter;
    .locals 8

    new-instance v0, Lcom/warefly/checkscan/presentation/scanner/presenter/ScannerPresenter;

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

    const-class v3, Ls47;

    invoke-static {v3, v2, v4, v4}, Lm2;->c(Ljava/lang/Class;Lze7;Lkv6;Li36;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ls47;

    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object v3

    const-class v5, Ljf6;

    invoke-static {v5, v3, v4, v4}, Lm2;->c(Ljava/lang/Class;Lze7;Lkv6;Li36;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljf6;

    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object v5

    const-class v6, Lyg1;

    invoke-static {v6, v5, v4, v4}, Lm2;->c(Ljava/lang/Class;Lze7;Lkv6;Li36;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lyg1;

    iget-object v6, p0, Lcom/warefly/checkscan/presentation/scanner/view/ScannerFragment;->h:Landroidx/navigation/NavArgsLazy;

    invoke-interface {v6}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lvd7;

    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object p0

    const-class v7, Lic8;

    invoke-static {v7, p0, v4, v4}, Lm2;->c(Ljava/lang/Class;Lze7;Lkv6;Li36;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lic8;

    move-object v4, v5

    move-object v5, v6

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Lcom/warefly/checkscan/presentation/scanner/presenter/ScannerPresenter;-><init>(Luf3;Ls47;Ljf6;Lyg1;Lvd7;Lic8;)V

    return-object v0
.end method

.method public final setCheques(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lkh1;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/scanner/view/ScannerFragment;->n:Leu1;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Leu1;->submitList(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public final setLoadButtonText(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/scanner/view/ScannerFragment;->n()Lcom/warefly/checkscan/scannerml/databinding/FragmentScannerNewBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/warefly/checkscan/scannerml/databinding/FragmentScannerNewBinding;->btnLoad:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final showBrandlinkButton()V
    .locals 1

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/scanner/view/ScannerFragment;->n()Lcom/warefly/checkscan/scannerml/databinding/FragmentScannerNewBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/warefly/checkscan/scannerml/databinding/FragmentScannerNewBinding;->ivBrandlink:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public final showCropError()V
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    const v0, 0x7f140651

    invoke-static {v0, p0}, Loz1;->d(ILandroid/view/View;)V

    :cond_0
    return-void
.end method

.method public final showLastChequeInfo(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/scanner/view/ScannerFragment;->n()Lcom/warefly/checkscan/scannerml/databinding/FragmentScannerNewBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/warefly/checkscan/scannerml/databinding/FragmentScannerNewBinding;->tvChequeInfo:Lcom/warefly/checkscan/scannerml/databinding/ItemChequeWithCountBinding;

    .line 36
    iget-object v0, p0, Lcom/warefly/checkscan/scannerml/databinding/ItemChequeWithCountBinding;->tvTitle:Landroidx/appcompat/widget/AppCompatTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 37
    iget-object v0, p0, Lcom/warefly/checkscan/scannerml/databinding/ItemChequeWithCountBinding;->tvCount:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 38
    iget-object p0, p0, Lcom/warefly/checkscan/scannerml/databinding/ItemChequeWithCountBinding;->tvTitle:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final showLastChequeInfo(Ljava/lang/String;I)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/scanner/view/ScannerFragment;->n()Lcom/warefly/checkscan/scannerml/databinding/FragmentScannerNewBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/warefly/checkscan/scannerml/databinding/FragmentScannerNewBinding;->tvChequeInfo:Lcom/warefly/checkscan/scannerml/databinding/ItemChequeWithCountBinding;

    iget-object v0, p0, Lcom/warefly/checkscan/scannerml/databinding/ItemChequeWithCountBinding;->tvTitle:Landroidx/appcompat/widget/AppCompatTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/warefly/checkscan/scannerml/databinding/ItemChequeWithCountBinding;->tvCount:Landroid/widget/TextView;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lcom/warefly/checkscan/scannerml/databinding/ItemChequeWithCountBinding;->tvCount:Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/warefly/checkscan/scannerml/databinding/ItemChequeWithCountBinding;->tvTitle:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final showLoadButton()V
    .locals 1

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/scanner/view/ScannerFragment;->n()Lcom/warefly/checkscan/scannerml/databinding/FragmentScannerNewBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/warefly/checkscan/scannerml/databinding/FragmentScannerNewBinding;->btnLoad:Landroidx/appcompat/widget/AppCompatTextView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final vibrate()V
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    if-eqz p0, :cond_0

    const-wide/16 v0, 0x32

    invoke-static {p0, v0, v1}, Lr7;->a(Landroid/app/Activity;J)V

    :cond_0
    return-void
.end method
