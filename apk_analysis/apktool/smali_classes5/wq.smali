.class public final synthetic Lwq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/foundation/layout/Arrangement$SpacingAlignmentCalculator;
.implements Lxl3;
.implements Landroidx/activity/result/ActivityResultCallback;
.implements Landroidx/webkit/WebViewCompat$WebViewStartUpCallback;
.implements Lyads/gd5;
.implements Lyads/y85;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lwq;->b:I

    iput-object p1, p0, Lwq;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 0

    .line 10
    iget-object p0, p0, Lwq;->c:Ljava/lang/Object;

    check-cast p0, Lyads/jb4;

    invoke-static {p0}, Lyads/jb4;->a(Lyads/jb4;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public a(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lwq;->c:Ljava/lang/Object;

    check-cast p0, Lyads/pb4;

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, p1}, Lyads/qb4;->a(Lyads/pb4;Ljava/lang/String;)V

    return-void
.end method

.method public align(ILandroidx/compose/ui/unit/LayoutDirection;)I
    .locals 0

    iget-object p0, p0, Lwq;->c:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/ui/Alignment$Horizontal;

    invoke-static {p0, p1, p2}, Landroidx/compose/foundation/layout/Arrangement;->c(Landroidx/compose/ui/Alignment$Horizontal;ILandroidx/compose/ui/unit/LayoutDirection;)I

    move-result p0

    return p0
.end method

.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lwq;->b:I

    iget-object p0, p0, Lwq;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lf68;

    invoke-virtual {p0, p1}, Lf68;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lqq1;

    return-object p0

    :pswitch_0
    check-cast p0, Lhp0;

    invoke-virtual {p0, p1}, Lhp0;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lqq1;

    return-object p0

    :pswitch_1
    check-cast p0, Lsv;

    invoke-virtual {p0, p1}, Lsv;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lc18;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onActivityResult(Ljava/lang/Object;)V
    .locals 2

    iget-object p0, p0, Lwq;->c:Ljava/lang/Object;

    check-cast p0, Lg86;

    check-cast p1, Landroidx/activity/result/ActivityResult;

    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getResultCode()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getData()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lg86;->e:Lcom/warefly/checkscan/presentation/scanner/presenter/ScannerPresenter;

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p1}, Lcom/yalantis/ucrop/UCrop;->getOutput(Landroid/content/Intent;)Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    iget-object p0, p0, Lg86;->d:Lav6;

    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p0, p1}, Lav6;->a(Landroid/graphics/Bitmap;)Lwy0;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    new-instance p0, Li86;

    const/4 p1, 0x2

    invoke-direct {p0, p1, v1}, Lpg8;-><init>(ILe02;)V

    new-instance p1, Ltb7;

    invoke-direct {p1, p0}, Ltb7;-><init>(Lbm3;)V

    move-object p0, p1

    :goto_1
    invoke-interface {v0, p0}, Lg86$a;->onQrCodesDetectedOnCroppedImage(Lhd3;)V

    :cond_1
    return-void
.end method

.method public onSuccess(Landroidx/webkit/WebViewStartUpResult;)V
    .locals 0

    iget-object p0, p0, Lwq;->c:Ljava/lang/Object;

    check-cast p0, Landroidx/webkit/WebViewCompat$WebViewStartUpCallback;

    invoke-static {p0, p1}, Landroidx/webkit/internal/WebViewProviderFactoryAdapter;->e(Landroidx/webkit/WebViewCompat$WebViewStartUpCallback;Landroidx/webkit/WebViewStartUpResult;)V

    return-void
.end method
