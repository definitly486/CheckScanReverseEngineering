.class public final Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/dialogs/WithdrawalBankDialog;
.super Lcom/warefly/checkscan/core/ui/base/dialogs/FullScreenDialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/dialogs/WithdrawalBankDialog$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/dialogs/FullScreenDialog<",
        "Lcom/warefly/checkscan/databinding/DialogWithdrawalBankBinding;",
        ">;"
    }
.end annotation


# static fields
.field public static final f:Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/dialogs/WithdrawalBankDialog$a;

.field public static final synthetic g:[Lze4;
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
.field public final c:Lgl4;

.field public final d:Len2;

.field public e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lbs6;

    const-class v1, Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/dialogs/WithdrawalBankDialog;

    const-string v2, "binding"

    const-string v3, "getBinding()Lcom/warefly/checkscan/databinding/DialogWithdrawalBankBinding;"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lbs6;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v1, Lx07;->a:La17;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    new-array v1, v1, [Lze4;

    aput-object v0, v1, v4

    sput-object v1, Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/dialogs/WithdrawalBankDialog;->g:[Lze4;

    new-instance v0, Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/dialogs/WithdrawalBankDialog$a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/dialogs/WithdrawalBankDialog;->f:Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/dialogs/WithdrawalBankDialog$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const v0, 0x7f0d009d

    invoke-direct {p0, v0}, Lcom/warefly/checkscan/core/ui/base/dialogs/FullScreenDialog;-><init>(I)V

    new-instance v0, Lgl4;

    const-class v1, Lcom/warefly/checkscan/databinding/DialogWithdrawalBankBinding;

    invoke-direct {v0, v1}, Lgl4;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/dialogs/WithdrawalBankDialog;->c:Lgl4;

    new-instance v0, Len2;

    instance-of v1, p0, Log4;

    const-class v2, Ls47;

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move-object v1, p0

    check-cast v1, Log4;

    invoke-interface {v1}, Log4;->getScope()Lze7;

    move-result-object v1

    invoke-static {v2, v1, v3, v3}, Lm2;->c(Ljava/lang/Class;Lze7;Lkv6;Li36;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljg4;->b()Lhg4;

    move-result-object v1

    iget-object v1, v1, Lhg4;->c:Lbf7;

    iget-object v1, v1, Lbf7;->d:Lze7;

    invoke-static {v2}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v2

    invoke-virtual {v1, v2, v3, v3}, Lze7;->e(Lzk1;Li36;Lkv6;)Ljava/lang/Object;

    move-result-object v1

    :goto_0
    check-cast v1, Ls47;

    invoke-direct {v0, v1}, Len2;-><init>(Ls47;)V

    iput-object v0, p0, Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/dialogs/WithdrawalBankDialog;->d:Len2;

    return-void
.end method


# virtual methods
.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-super {p0, p1, p2}, Lcom/warefly/checkscan/core/ui/base/dialogs/FullScreenDialog;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string p2, "WithdrawalBankDialog_URL_KEY"

    invoke-virtual {p1, p2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    sget-object p2, Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/dialogs/WithdrawalBankDialog;->g:[Lze4;

    const/4 v0, 0x0

    aget-object p2, p2, v0

    iget-object v1, p0, Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/dialogs/WithdrawalBankDialog;->c:Lgl4;

    invoke-virtual {v1, p0, p2}, Lgl4;->a(Landroidx/fragment/app/DialogFragment;Lze4;)Landroidx/viewbinding/ViewBinding;

    move-result-object p2

    check-cast p2, Lcom/warefly/checkscan/databinding/DialogWithdrawalBankBinding;

    iget-object v1, p2, Lcom/warefly/checkscan/databinding/DialogWithdrawalBankBinding;->layoutRoot:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v2, 0x10

    invoke-static {v2, v1}, Lle9;->d(ILandroid/view/View;)V

    iget-object v1, p2, Lcom/warefly/checkscan/databinding/DialogWithdrawalBankBinding;->btnClose:Landroid/widget/ImageView;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Llb7;

    new-instance v3, Li30;

    const/4 v4, 0x3

    invoke-direct {v3, p0, v4}, Li30;-><init>(Ljava/lang/Object;I)V

    invoke-direct {v2, v3}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p2, Lcom/warefly/checkscan/databinding/DialogWithdrawalBankBinding;->incldTryAgain:Lcom/warefly/checkscan/databinding/LayoutTryAgainBinding;

    iget-object v1, v1, Lcom/warefly/checkscan/databinding/LayoutTryAgainBinding;->btnTryAgain:Landroid/widget/TextView;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Llb7;

    new-instance v3, Lei6;

    const/4 v4, 0x1

    invoke-direct {v3, v4, p2, p1}, Lei6;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {v2, v3}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p2, Lcom/warefly/checkscan/databinding/DialogWithdrawalBankBinding;->webViewContent:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    invoke-virtual {v2, v4}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    invoke-virtual {v2, v4}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    invoke-virtual {v2, v4}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    invoke-virtual {v2, v4}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    invoke-virtual {v2, v0}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    invoke-virtual {v2, v4}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    const-string v0, "utf-8"

    invoke-virtual {v2, v0}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/dialogs/WithdrawalBankDialog;->d:Len2;

    invoke-virtual {v0}, Len2;->a()Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v0

    new-instance v2, Lbj9;

    invoke-direct {v2, p2, p0, v0}, Lbj9;-><init>(Lcom/warefly/checkscan/databinding/DialogWithdrawalBankBinding;Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/dialogs/WithdrawalBankDialog;Ljavax/net/ssl/TrustManagerFactory;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    invoke-virtual {v1, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/Exception;

    const-string p1, "Url param can not be null in WithdrawalBankDialog"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0
.end method
