.class public final Lcom/warefly/checkscan/presentation/addScreenshots/view/AddScreenshotsFragment;
.super Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;
.source "SourceFile"

# interfaces
.implements Lcom/warefly/checkscan/presentation/addScreenshots/view/AddScreenshotsView;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment<",
        "Lcom/warefly/checkscan/databinding/FragmentAddScreenshotsBinding;",
        ">;",
        "Lcom/warefly/checkscan/presentation/addScreenshots/view/AddScreenshotsView;"
    }
.end annotation


# static fields
.field public static final synthetic n:[Lze4;
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

.field public final j:Landroidx/activity/result/ActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/ActivityResultLauncher<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final k:Landroidx/activity/result/ActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/ActivityResultLauncher<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public l:Lcom/warefly/checkscan/presentation/addScreenshots/bottomSheet/HelpLoadScreenshotBottomSheet;

.field public m:Lcom/warefly/checkscan/core/ui/base/dialogs/LoadingDialog;

.field public presenter:Lcom/warefly/checkscan/presentation/addScreenshots/presenter/AddScreenshotsPresenter;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lbs6;

    const-class v1, Lcom/warefly/checkscan/presentation/addScreenshots/view/AddScreenshotsFragment;

    const-string v2, "binding"

    const-string v3, "getBinding()Lcom/warefly/checkscan/databinding/FragmentAddScreenshotsBinding;"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lbs6;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v1, Lx07;->a:La17;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    new-array v1, v1, [Lze4;

    aput-object v0, v1, v4

    sput-object v1, Lcom/warefly/checkscan/presentation/addScreenshots/view/AddScreenshotsFragment;->n:[Lze4;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;-><init>()V

    const v0, 0x7f0d00a2

    iput v0, p0, Lcom/warefly/checkscan/presentation/addScreenshots/view/AddScreenshotsFragment;->f:I

    new-instance v0, Lol4;

    const-class v1, Lcom/warefly/checkscan/databinding/FragmentAddScreenshotsBinding;

    invoke-direct {v0, v1}, Lol4;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/warefly/checkscan/presentation/addScreenshots/view/AddScreenshotsFragment;->g:Lol4;

    new-instance v0, Landroidx/navigation/NavArgsLazy;

    const-class v1, Ld9;

    invoke-static {v1}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v1

    new-instance v2, Lcom/warefly/checkscan/presentation/addScreenshots/view/AddScreenshotsFragment$j;

    invoke-direct {v2, p0}, Lcom/warefly/checkscan/presentation/addScreenshots/view/AddScreenshotsFragment$j;-><init>(Lcom/warefly/checkscan/presentation/addScreenshots/view/AddScreenshotsFragment;)V

    invoke-direct {v0, v1, v2}, Landroidx/navigation/NavArgsLazy;-><init>(Lne4;Lll3;)V

    iput-object v0, p0, Lcom/warefly/checkscan/presentation/addScreenshots/view/AddScreenshotsFragment;->h:Landroidx/navigation/NavArgsLazy;

    new-instance v0, Lcom/warefly/checkscan/presentation/addScreenshots/view/AddScreenshotsFragment$i;

    invoke-direct {v0, p0}, Lcom/warefly/checkscan/presentation/addScreenshots/view/AddScreenshotsFragment$i;-><init>(Lcom/warefly/checkscan/presentation/addScreenshots/view/AddScreenshotsFragment;)V

    new-instance v1, Lfh8;

    invoke-direct {v1, v0}, Lfh8;-><init>(Lll3;)V

    iput-object v1, p0, Lcom/warefly/checkscan/presentation/addScreenshots/view/AddScreenshotsFragment;->i:Lfh8;

    new-instance v0, Landroidx/activity/result/contract/ActivityResultContracts$GetContent;

    invoke-direct {v0}, Landroidx/activity/result/contract/ActivityResultContracts$GetContent;-><init>()V

    new-instance v1, La9;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, La9;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v0, p0, Lcom/warefly/checkscan/presentation/addScreenshots/view/AddScreenshotsFragment;->j:Landroidx/activity/result/ActivityResultLauncher;

    new-instance v0, Landroidx/activity/result/contract/ActivityResultContracts$GetContent;

    invoke-direct {v0}, Landroidx/activity/result/contract/ActivityResultContracts$GetContent;-><init>()V

    new-instance v1, Lb9;

    invoke-direct {v1, p0, v2}, Lb9;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v0, p0, Lcom/warefly/checkscan/presentation/addScreenshots/view/AddScreenshotsFragment;->k:Landroidx/activity/result/ActivityResultLauncher;

    return-void
.end method


# virtual methods
.method public final getBankScreenshot()V
    .locals 1

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/addScreenshots/view/AddScreenshotsFragment;->j:Landroidx/activity/result/ActivityResultLauncher;

    const-string v0, "image/*"

    invoke-virtual {p0, v0}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    return-void
.end method

.method public final getShopScreenshot()V
    .locals 1

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/addScreenshots/view/AddScreenshotsFragment;->k:Landroidx/activity/result/ActivityResultLauncher;

    const-string v0, "image/*"

    invoke-virtual {p0, v0}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    return-void
.end method

.method public final i()I
    .locals 0

    iget p0, p0, Lcom/warefly/checkscan/presentation/addScreenshots/view/AddScreenshotsFragment;->f:I

    return p0
.end method

.method public final isUploadButtonVisible(Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/addScreenshots/view/AddScreenshotsFragment;->n()Lcom/warefly/checkscan/databinding/FragmentAddScreenshotsBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/warefly/checkscan/databinding/FragmentAddScreenshotsBinding;->btnUpload:Landroidx/appcompat/widget/AppCompatTextView;

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

.method public final n()Lcom/warefly/checkscan/databinding/FragmentAddScreenshotsBinding;
    .locals 2

    sget-object v0, Lcom/warefly/checkscan/presentation/addScreenshots/view/AddScreenshotsFragment;->n:[Lze4;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/warefly/checkscan/presentation/addScreenshots/view/AddScreenshotsFragment;->g:Lol4;

    invoke-virtual {v1, p0, v0}, Lol4;->a(Landroidx/fragment/app/Fragment;Lze4;)Landroidx/viewbinding/ViewBinding;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/databinding/FragmentAddScreenshotsBinding;

    return-object p0
.end method

.method public final o()Lcom/warefly/checkscan/presentation/addScreenshots/presenter/AddScreenshotsPresenter;
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/addScreenshots/view/AddScreenshotsFragment;->presenter:Lcom/warefly/checkscan/presentation/addScreenshots/presenter/AddScreenshotsPresenter;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "presenter"

    invoke-static {p0}, Laa4;->j(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-super {p0, p1, p2}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/addScreenshots/view/AddScreenshotsFragment;->n()Lcom/warefly/checkscan/databinding/FragmentAddScreenshotsBinding;

    move-result-object p1

    iget-object p2, p1, Lcom/warefly/checkscan/databinding/FragmentAddScreenshotsBinding;->toolbar:Lcom/warefly/checkscan/core/ui/databinding/LayoutToolbarBackIconBinding;

    iget-object p2, p2, Lcom/warefly/checkscan/core/ui/databinding/LayoutToolbarBackIconBinding;->tvHeader:Landroid/widget/TextView;

    const v0, 0x7f140032

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p1, Lcom/warefly/checkscan/databinding/FragmentAddScreenshotsBinding;->toolbar:Lcom/warefly/checkscan/core/ui/databinding/LayoutToolbarBackIconBinding;

    iget-object p2, p2, Lcom/warefly/checkscan/core/ui/databinding/LayoutToolbarBackIconBinding;->btnBack:Landroid/widget/ImageView;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Llb7;

    new-instance v1, Lcom/warefly/checkscan/presentation/addScreenshots/view/AddScreenshotsFragment$a;

    invoke-direct {v1, p0}, Lcom/warefly/checkscan/presentation/addScreenshots/view/AddScreenshotsFragment$a;-><init>(Lcom/warefly/checkscan/presentation/addScreenshots/view/AddScreenshotsFragment;)V

    invoke-direct {v0, v1}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p1, Lcom/warefly/checkscan/databinding/FragmentAddScreenshotsBinding;->btnLoadScreenshotBank:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Llb7;

    new-instance v1, Lcom/warefly/checkscan/presentation/addScreenshots/view/AddScreenshotsFragment$b;

    invoke-direct {v1, p0}, Lcom/warefly/checkscan/presentation/addScreenshots/view/AddScreenshotsFragment$b;-><init>(Lcom/warefly/checkscan/presentation/addScreenshots/view/AddScreenshotsFragment;)V

    invoke-direct {v0, v1}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p1, Lcom/warefly/checkscan/databinding/FragmentAddScreenshotsBinding;->btnLoadScreenshotShop:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Llb7;

    new-instance v1, Lcom/warefly/checkscan/presentation/addScreenshots/view/AddScreenshotsFragment$c;

    invoke-direct {v1, p0}, Lcom/warefly/checkscan/presentation/addScreenshots/view/AddScreenshotsFragment$c;-><init>(Lcom/warefly/checkscan/presentation/addScreenshots/view/AddScreenshotsFragment;)V

    invoke-direct {v0, v1}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p1, Lcom/warefly/checkscan/databinding/FragmentAddScreenshotsBinding;->btnScreenshotBank:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Llb7;

    new-instance v1, Lcom/warefly/checkscan/presentation/addScreenshots/view/AddScreenshotsFragment$d;

    invoke-direct {v1, p0}, Lcom/warefly/checkscan/presentation/addScreenshots/view/AddScreenshotsFragment$d;-><init>(Lcom/warefly/checkscan/presentation/addScreenshots/view/AddScreenshotsFragment;)V

    invoke-direct {v0, v1}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p1, Lcom/warefly/checkscan/databinding/FragmentAddScreenshotsBinding;->btnScreenshotShop:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Llb7;

    new-instance v1, Lcom/warefly/checkscan/presentation/addScreenshots/view/AddScreenshotsFragment$e;

    invoke-direct {v1, p0}, Lcom/warefly/checkscan/presentation/addScreenshots/view/AddScreenshotsFragment$e;-><init>(Lcom/warefly/checkscan/presentation/addScreenshots/view/AddScreenshotsFragment;)V

    invoke-direct {v0, v1}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p1, Lcom/warefly/checkscan/databinding/FragmentAddScreenshotsBinding;->tvHelpScreenshots:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Llb7;

    new-instance v1, Lcom/warefly/checkscan/presentation/addScreenshots/view/AddScreenshotsFragment$f;

    invoke-direct {v1, p0}, Lcom/warefly/checkscan/presentation/addScreenshots/view/AddScreenshotsFragment$f;-><init>(Lcom/warefly/checkscan/presentation/addScreenshots/view/AddScreenshotsFragment;)V

    invoke-direct {v0, v1}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p1, Lcom/warefly/checkscan/databinding/FragmentAddScreenshotsBinding;->btnUpload:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Llb7;

    new-instance v0, Lcom/warefly/checkscan/presentation/addScreenshots/view/AddScreenshotsFragment$g;

    invoke-direct {v0, p0}, Lcom/warefly/checkscan/presentation/addScreenshots/view/AddScreenshotsFragment$g;-><init>(Lcom/warefly/checkscan/presentation/addScreenshots/view/AddScreenshotsFragment;)V

    invoke-direct {p2, v0}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final providePresenter()Lcom/warefly/checkscan/presentation/addScreenshots/presenter/AddScreenshotsPresenter;
    .locals 7

    new-instance v0, Lcom/warefly/checkscan/presentation/addScreenshots/presenter/AddScreenshotsPresenter;

    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object v1

    const-class v2, Lp51;

    const/4 v3, 0x0

    invoke-static {v2, v1, v3, v3}, Lm2;->c(Ljava/lang/Class;Lze7;Lkv6;Li36;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lp51;

    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object v2

    const-class v4, Lhy1;

    invoke-static {v4, v2, v3, v3}, Lm2;->c(Ljava/lang/Class;Lze7;Lkv6;Li36;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lhy1;

    invoke-virtual {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;->j()Lba8;

    move-result-object v4

    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object v5

    const-class v6, Luf3;

    invoke-static {v6, v5, v4, v3}, Ln2;->c(Ljava/lang/Class;Lze7;Lba8;Li36;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Luf3;

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/addScreenshots/view/AddScreenshotsFragment;->h:Landroidx/navigation/NavArgsLazy;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ld9;

    iget-wide v4, p0, Ld9;->a:J

    invoke-direct/range {v0 .. v5}, Lcom/warefly/checkscan/presentation/addScreenshots/presenter/AddScreenshotsPresenter;-><init>(Lp51;Lhy1;Luf3;J)V

    return-object v0
.end method

.method public final replaceLoadBankButton(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/addScreenshots/view/AddScreenshotsFragment;->n()Lcom/warefly/checkscan/databinding/FragmentAddScreenshotsBinding;

    move-result-object p0

    iget-object v0, p0, Lcom/warefly/checkscan/databinding/FragmentAddScreenshotsBinding;->btnLoadScreenshotBank:Landroidx/appcompat/widget/AppCompatTextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/warefly/checkscan/databinding/FragmentAddScreenshotsBinding;->btnScreenshotBank:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final replaceLoadShopButton(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/addScreenshots/view/AddScreenshotsFragment;->n()Lcom/warefly/checkscan/databinding/FragmentAddScreenshotsBinding;

    move-result-object v0

    iget-object v1, v0, Lcom/warefly/checkscan/databinding/FragmentAddScreenshotsBinding;->ivShopScreenshot:Lcom/warefly/checkscan/core/ui/SafeImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, v0, Lcom/warefly/checkscan/databinding/FragmentAddScreenshotsBinding;->btnLoadScreenshotShop:Landroidx/appcompat/widget/AppCompatTextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v0, Lcom/warefly/checkscan/databinding/FragmentAddScreenshotsBinding;->btnScreenshotShop:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, v0, Lcom/warefly/checkscan/databinding/FragmentAddScreenshotsBinding;->ivShopScreenshot:Lcom/warefly/checkscan/core/ui/SafeImageView;

    invoke-static {p1}, Lcom/bumptech/glide/a;->e(Landroid/view/View;)Lp37;

    move-result-object p1

    const-class v1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v1}, Lp37;->a(Ljava/lang/Class;)Lh37;

    move-result-object p1

    invoke-virtual {p1, p2}, Lh37;->N(Ljava/lang/Object;)Lh37;

    move-result-object v1

    const-string v2, "android.resource"

    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v1}, Lh37;->H(Lh37;)Lh37;

    move-result-object v1

    :goto_0
    new-instance p1, Lcom/warefly/checkscan/presentation/addScreenshots/view/AddScreenshotsFragment$h;

    invoke-direct {p1, p0, v0}, Lcom/warefly/checkscan/presentation/addScreenshots/view/AddScreenshotsFragment$h;-><init>(Lcom/warefly/checkscan/presentation/addScreenshots/view/AddScreenshotsFragment;Lcom/warefly/checkscan/databinding/FragmentAddScreenshotsBinding;)V

    invoke-virtual {v1, p1}, Lh37;->F(Lo37;)Lh37;

    move-result-object p0

    invoke-virtual {p0}, Lh37;->O()V

    return-void
.end method

.method public final showBankDescription(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/addScreenshots/view/AddScreenshotsFragment;->n()Lcom/warefly/checkscan/databinding/FragmentAddScreenshotsBinding;

    move-result-object p0

    iget-object v0, p0, Lcom/warefly/checkscan/databinding/FragmentAddScreenshotsBinding;->tvScreenshotBankTitle:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/warefly/checkscan/databinding/FragmentAddScreenshotsBinding;->tvScreenshotBankDescription:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final showHelpScreenshotDialog(J)V
    .locals 2

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/addScreenshots/view/AddScreenshotsFragment;->l:Lcom/warefly/checkscan/presentation/addScreenshots/bottomSheet/HelpLoadScreenshotBottomSheet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Lcom/warefly/checkscan/presentation/addScreenshots/bottomSheet/HelpLoadScreenshotBottomSheet;

    invoke-direct {v1, v0, p1, p2}, Lcom/warefly/checkscan/presentation/addScreenshots/bottomSheet/HelpLoadScreenshotBottomSheet;-><init>(Landroid/content/Context;J)V

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    iput-object v1, p0, Lcom/warefly/checkscan/presentation/addScreenshots/view/AddScreenshotsFragment;->l:Lcom/warefly/checkscan/presentation/addScreenshots/bottomSheet/HelpLoadScreenshotBottomSheet;

    :cond_1
    :goto_0
    return-void
.end method

.method public final showLoading(Z)V
    .locals 1

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/addScreenshots/view/AddScreenshotsFragment;->m:Lcom/warefly/checkscan/core/ui/base/dialogs/LoadingDialog;

    if-eqz p1, :cond_1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_2

    sget-object p1, Lcom/warefly/checkscan/core/ui/base/dialogs/LoadingDialog;->d:Lcom/warefly/checkscan/core/ui/base/dialogs/LoadingDialog$a;

    invoke-static {p1}, Lcom/warefly/checkscan/core/ui/base/dialogs/LoadingDialog$a;->b(Lcom/warefly/checkscan/core/ui/base/dialogs/LoadingDialog$a;)Lcom/warefly/checkscan/core/ui/base/dialogs/LoadingDialog;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;->m(Lcom/warefly/checkscan/core/ui/base/dialogs/FullScreenDialog;)V

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/addScreenshots/view/AddScreenshotsFragment;->m:Lcom/warefly/checkscan/core/ui/base/dialogs/LoadingDialog;

    return-void

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    :cond_2
    return-void
.end method

.method public final showShopDescription(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/addScreenshots/view/AddScreenshotsFragment;->n()Lcom/warefly/checkscan/databinding/FragmentAddScreenshotsBinding;

    move-result-object p0

    iget-object v0, p0, Lcom/warefly/checkscan/databinding/FragmentAddScreenshotsBinding;->tvScreenshotShopTitle:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/warefly/checkscan/databinding/FragmentAddScreenshotsBinding;->tvScreenshotShopDescription:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final showShopExampleImage(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/addScreenshots/view/AddScreenshotsFragment;->n()Lcom/warefly/checkscan/databinding/FragmentAddScreenshotsBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/warefly/checkscan/databinding/FragmentAddScreenshotsBinding;->ivShopScreenshot:Lcom/warefly/checkscan/core/ui/SafeImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/addScreenshots/view/AddScreenshotsFragment;->n()Lcom/warefly/checkscan/databinding/FragmentAddScreenshotsBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/warefly/checkscan/databinding/FragmentAddScreenshotsBinding;->ivShopScreenshot:Lcom/warefly/checkscan/core/ui/SafeImageView;

    invoke-static {v0}, Lcom/bumptech/glide/a;->e(Landroid/view/View;)Lp37;

    move-result-object v0

    invoke-virtual {v0, p1}, Lp37;->h(Ljava/lang/String;)Lh37;

    move-result-object p1

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/addScreenshots/view/AddScreenshotsFragment;->n()Lcom/warefly/checkscan/databinding/FragmentAddScreenshotsBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/warefly/checkscan/databinding/FragmentAddScreenshotsBinding;->ivShopScreenshot:Lcom/warefly/checkscan/core/ui/SafeImageView;

    invoke-virtual {p1, p0}, Lh37;->L(Landroid/widget/ImageView;)V

    return-void
.end method

.method public final showSomeError()V
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    const v0, 0x7f140610

    invoke-static {v0, p0}, Loz1;->d(ILandroid/view/View;)V

    :cond_0
    return-void
.end method
