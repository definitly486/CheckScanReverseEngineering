.class public final Lcom/warefly/checkscan/presentation/scanner/info/view/ScannerInfoFragment;
.super Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;
.source "SourceFile"

# interfaces
.implements Lcom/warefly/checkscan/presentation/scanner/info/view/ScannerInfoView;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment<",
        "Lcom/warefly/checkscan/scannerml/databinding/FragmentScannerInfoBinding;",
        ">;",
        "Lcom/warefly/checkscan/presentation/scanner/info/view/ScannerInfoView;"
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

.field public final h:Lcl4;

.field public i:Leu1;

.field public presenter:Lcom/warefly/checkscan/presentation/scanner/info/presenter/ScannerInfoPresenter;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lbs6;

    const-class v1, Lcom/warefly/checkscan/presentation/scanner/info/view/ScannerInfoFragment;

    const-string v2, "binding"

    const-string v3, "getBinding()Lcom/warefly/checkscan/scannerml/databinding/FragmentScannerInfoBinding;"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lbs6;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v1, Lx07;->a:La17;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    new-array v1, v1, [Lze4;

    aput-object v0, v1, v4

    sput-object v1, Lcom/warefly/checkscan/presentation/scanner/info/view/ScannerInfoFragment;->j:[Lze4;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;-><init>()V

    const v0, 0x7f0d00ed

    iput v0, p0, Lcom/warefly/checkscan/presentation/scanner/info/view/ScannerInfoFragment;->f:I

    new-instance v0, Lol4;

    const-class v1, Lcom/warefly/checkscan/scannerml/databinding/FragmentScannerInfoBinding;

    invoke-direct {v0, v1}, Lol4;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/warefly/checkscan/presentation/scanner/info/view/ScannerInfoFragment;->g:Lol4;

    sget-object v0, Lpo4;->SYNCHRONIZED:Lpo4;

    new-instance v1, Lcom/warefly/checkscan/presentation/scanner/info/view/ScannerInfoFragment$b;

    invoke-direct {v1, p0}, Lcom/warefly/checkscan/presentation/scanner/info/view/ScannerInfoFragment$b;-><init>(Lcom/warefly/checkscan/presentation/scanner/info/view/ScannerInfoFragment;)V

    invoke-static {v0, v1}, Lnm4;->a(Lpo4;Lll3;)Lcl4;

    move-result-object v0

    iput-object v0, p0, Lcom/warefly/checkscan/presentation/scanner/info/view/ScannerInfoFragment;->h:Lcl4;

    return-void
.end method


# virtual methods
.method public final i()I
    .locals 0

    iget p0, p0, Lcom/warefly/checkscan/presentation/scanner/info/view/ScannerInfoFragment;->f:I

    return p0
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-super {p0, p1, p2}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    sget-object p1, Lcom/warefly/checkscan/presentation/scanner/info/view/ScannerInfoFragment;->j:[Lze4;

    const/4 p2, 0x0

    aget-object v0, p1, p2

    iget-object v1, p0, Lcom/warefly/checkscan/presentation/scanner/info/view/ScannerInfoFragment;->g:Lol4;

    invoke-virtual {v1, p0, v0}, Lol4;->a(Landroidx/fragment/app/Fragment;Lze4;)Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/scannerml/databinding/FragmentScannerInfoBinding;

    iget-object v0, v0, Lcom/warefly/checkscan/scannerml/databinding/FragmentScannerInfoBinding;->rvContent:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Leu1;

    new-instance v3, Lwd7;

    iget-object v4, p0, Lcom/warefly/checkscan/presentation/scanner/info/view/ScannerInfoFragment;->h:Lcl4;

    invoke-interface {v4}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lv05;

    invoke-direct {v3, v4}, Lwd7;-><init>(Lv05;)V

    new-instance v4, Lae7;

    sget-object v5, Lzd7;->c:Lzd7;

    invoke-direct {v4, v5}, Lvd9;-><init>(Ldm3;)V

    const/4 v5, 0x2

    new-array v5, v5, [Lil2;

    aput-object v3, v5, p2

    const/4 v3, 0x1

    aput-object v4, v5, v3

    invoke-direct {v2, v5}, Leu1;-><init>([Lil2;)V

    iput-object v2, p0, Lcom/warefly/checkscan/presentation/scanner/info/view/ScannerInfoFragment;->i:Leu1;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    new-instance v2, Lc58;

    const/16 v3, 0x14

    invoke-direct {v2, v3}, Lc58;-><init>(I)V

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    aget-object p1, p1, p2

    invoke-virtual {v1, p0, p1}, Lol4;->a(Landroidx/fragment/app/Fragment;Lze4;)Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/warefly/checkscan/scannerml/databinding/FragmentScannerInfoBinding;

    iget-object p1, p1, Lcom/warefly/checkscan/scannerml/databinding/FragmentScannerInfoBinding;->toolbar:Lcom/warefly/checkscan/core/ui/databinding/LayoutToolbarBackIconBinding;

    iget-object p2, p1, Lcom/warefly/checkscan/core/ui/databinding/LayoutToolbarBackIconBinding;->btnBack:Landroid/widget/ImageView;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Llb7;

    new-instance v1, Lcom/warefly/checkscan/presentation/scanner/info/view/ScannerInfoFragment$a;

    invoke-direct {v1, p0}, Lcom/warefly/checkscan/presentation/scanner/info/view/ScannerInfoFragment$a;-><init>(Lcom/warefly/checkscan/presentation/scanner/info/view/ScannerInfoFragment;)V

    invoke-direct {v0, v1}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p1, Lcom/warefly/checkscan/core/ui/databinding/LayoutToolbarBackIconBinding;->tvHeader:Landroid/widget/TextView;

    const p2, 0x7f1405a1

    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final providePresenter()Lcom/warefly/checkscan/presentation/scanner/info/presenter/ScannerInfoPresenter;
    .locals 5

    new-instance v0, Lcom/warefly/checkscan/presentation/scanner/info/presenter/ScannerInfoPresenter;

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

    const-class v2, Ls47;

    invoke-static {v2, p0, v4, v4}, Lm2;->c(Ljava/lang/Class;Lze7;Lkv6;Li36;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ls47;

    invoke-direct {v0, v1, p0}, Lcom/warefly/checkscan/presentation/scanner/info/presenter/ScannerInfoPresenter;-><init>(Luf3;Ls47;)V

    return-object v0
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

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/scanner/info/view/ScannerInfoFragment;->i:Leu1;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Leu1;->submitList(Ljava/util/List;)V

    :cond_0
    return-void
.end method
