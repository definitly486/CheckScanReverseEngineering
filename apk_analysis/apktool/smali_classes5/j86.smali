.class public final Lj86;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# annotations
.annotation runtime Lbd2;
    c = "com.warefly.checkscan.scanner.presentation.crop.PickGalleryPictureToCropBehavior$resolvePictureToCrop$1"
    f = "PickGalleryPictureToCropBehavior.kt"
    l = {}
    m = "invokeSuspend"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lpg8;",
        "Lbm3<",
        "Landroid/net/Uri;",
        "Le02<",
        "-",
        "Lj59;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public synthetic l:Ljava/lang/Object;

.field public final synthetic m:Lg86;


# direct methods
.method public constructor <init>(Lg86;Le02;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg86;",
            "Le02<",
            "-",
            "Lj86;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lj86;->m:Lg86;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lpg8;-><init>(ILe02;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Le02;)Le02;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Le02<",
            "*>;)",
            "Le02<",
            "Lj59;",
            ">;"
        }
    .end annotation

    new-instance v0, Lj86;

    iget-object p0, p0, Lj86;->m:Lg86;

    invoke-direct {v0, p0, p2}, Lj86;-><init>(Lg86;Le02;)V

    iput-object p1, v0, Lj86;->l:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroid/net/Uri;

    check-cast p2, Le02;

    invoke-virtual {p0, p1, p2}, Lj86;->create(Ljava/lang/Object;Le02;)Le02;

    move-result-object p0

    check-cast p0, Lj86;

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Lj86;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lj86;->l:Ljava/lang/Object;

    check-cast p1, Landroid/net/Uri;

    iget-object p0, p0, Lj86;->m:Lg86;

    iget-object v0, p0, Lg86;->c:Lcom/warefly/checkscan/presentation/scanner/view/ScannerFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "qr_code_to_crop"

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v4, v3}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->deleteOnExit()V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/yalantis/ucrop/UCrop;->of(Landroid/net/Uri;Landroid/net/Uri;)Lcom/yalantis/ucrop/UCrop;

    move-result-object p1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {p1, v2, v2}, Lcom/yalantis/ucrop/UCrop;->withAspectRatio(FF)Lcom/yalantis/ucrop/UCrop;

    move-result-object p1

    const/16 v2, 0x320

    invoke-virtual {p1, v2, v2}, Lcom/yalantis/ucrop/UCrop;->withMaxResultSize(II)Lcom/yalantis/ucrop/UCrop;

    move-result-object p1

    new-instance v2, Lcom/yalantis/ucrop/UCrop$Options;

    invoke-direct {v2}, Lcom/yalantis/ucrop/UCrop$Options;-><init>()V

    const v3, 0x7f060052

    invoke-static {v1, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/yalantis/ucrop/UCrop$Options;->setToolbarColor(I)V

    const v5, 0x7f060061

    invoke-static {v1, v5}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/yalantis/ucrop/UCrop$Options;->setStatusBarColor(I)V

    invoke-static {v1, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/yalantis/ucrop/UCrop$Options;->setActiveControlsWidgetColor(I)V

    const v3, 0x7f14064f

    invoke-virtual {v0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/yalantis/ucrop/UCrop$Options;->setToolbarTitle(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Lcom/yalantis/ucrop/UCrop;->withOptions(Lcom/yalantis/ucrop/UCrop$Options;)Lcom/yalantis/ucrop/UCrop;

    move-result-object p1

    iget-object p0, p0, Lg86;->g:Landroidx/activity/result/ActivityResultLauncher;

    if-eqz p0, :cond_1

    invoke-virtual {p1, v1, p0}, Lcom/yalantis/ucrop/UCrop;->start(Landroid/content/Context;Landroidx/activity/result/ActivityResultLauncher;)V

    :goto_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :cond_1
    const-string p0, "intentActivityResult"

    invoke-static {p0}, Laa4;->j(Ljava/lang/String;)V

    throw v4
.end method
