.class public final Lcom/warefly/checkscan/auth/presentation/main/dialogs/AgreementDialog;
.super Lcom/warefly/checkscan/core/ui/base/dialogs/FullScreenDialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/warefly/checkscan/auth/presentation/main/dialogs/AgreementDialog$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/dialogs/FullScreenDialog<",
        "Lcom/warefly/checkscan/auth/databinding/FullscreenDialogAgreementBinding;",
        ">;"
    }
.end annotation


# static fields
.field public static final d:Lcom/warefly/checkscan/auth/presentation/main/dialogs/AgreementDialog$a;

.field public static final synthetic e:[Lze4;
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


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lbs6;

    const-class v1, Lcom/warefly/checkscan/auth/presentation/main/dialogs/AgreementDialog;

    const-string v2, "binding"

    const-string v3, "getBinding()Lcom/warefly/checkscan/auth/databinding/FullscreenDialogAgreementBinding;"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lbs6;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v1, Lx07;->a:La17;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    new-array v1, v1, [Lze4;

    aput-object v0, v1, v4

    sput-object v1, Lcom/warefly/checkscan/auth/presentation/main/dialogs/AgreementDialog;->e:[Lze4;

    new-instance v0, Lcom/warefly/checkscan/auth/presentation/main/dialogs/AgreementDialog$a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/warefly/checkscan/auth/presentation/main/dialogs/AgreementDialog;->d:Lcom/warefly/checkscan/auth/presentation/main/dialogs/AgreementDialog$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const v0, 0x7f0d0104

    invoke-direct {p0, v0}, Lcom/warefly/checkscan/core/ui/base/dialogs/FullScreenDialog;-><init>(I)V

    new-instance v0, Lgl4;

    const-class v1, Lcom/warefly/checkscan/auth/databinding/FullscreenDialogAgreementBinding;

    invoke-direct {v0, v1}, Lgl4;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/warefly/checkscan/auth/presentation/main/dialogs/AgreementDialog;->c:Lgl4;

    return-void
.end method


# virtual methods
.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-super {p0, p1, p2}, Lcom/warefly/checkscan/core/ui/base/dialogs/FullScreenDialog;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    sget-object p1, Lcom/warefly/checkscan/auth/presentation/main/dialogs/AgreementDialog;->e:[Lze4;

    const/4 p2, 0x0

    aget-object p1, p1, p2

    iget-object p2, p0, Lcom/warefly/checkscan/auth/presentation/main/dialogs/AgreementDialog;->c:Lgl4;

    invoke-virtual {p2, p0, p1}, Lgl4;->a(Landroidx/fragment/app/DialogFragment;Lze4;)Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/warefly/checkscan/auth/databinding/FullscreenDialogAgreementBinding;

    iget-object p2, p1, Lcom/warefly/checkscan/auth/databinding/FullscreenDialogAgreementBinding;->wvAgreement:Landroid/webkit/WebView;

    invoke-virtual {p2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    new-instance v0, Lcom/warefly/checkscan/auth/presentation/main/dialogs/AgreementDialog$b;

    invoke-direct {v0, p1}, Lcom/warefly/checkscan/auth/presentation/main/dialogs/AgreementDialog$b;-><init>(Lcom/warefly/checkscan/auth/databinding/FullscreenDialogAgreementBinding;)V

    invoke-virtual {p2, v0}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    iget-object p2, p1, Lcom/warefly/checkscan/auth/databinding/FullscreenDialogAgreementBinding;->wvAgreement:Landroid/webkit/WebView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "URL_KEY"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    const-string v0, ""

    :cond_1
    invoke-virtual {p2, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    iget-object p1, p1, Lcom/warefly/checkscan/auth/databinding/FullscreenDialogAgreementBinding;->btnClose:Landroid/widget/ImageView;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Llb7;

    new-instance v0, Lcom/warefly/checkscan/auth/presentation/main/dialogs/AgreementDialog$c;

    invoke-direct {v0, p0}, Lcom/warefly/checkscan/auth/presentation/main/dialogs/AgreementDialog$c;-><init>(Lcom/warefly/checkscan/auth/presentation/main/dialogs/AgreementDialog;)V

    invoke-direct {p2, v0}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
