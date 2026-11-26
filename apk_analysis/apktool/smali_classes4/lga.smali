.class public final Llga;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/my/target/e$a;


# direct methods
.method public constructor <init>(Lcom/my/target/e$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llga;->a:Lcom/my/target/e$a;

    return-void
.end method


# virtual methods
.method public VKWebAppClose(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    new-instance p1, Lal;

    const/4 v0, 0x4

    iget-object p0, p0, Llga;->a:Lcom/my/target/e$a;

    invoke-direct {p1, p0, v0}, Lal;-><init>(Ljava/lang/Object;I)V

    invoke-static {p1}, Lw4a;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public VKWebAppCopyText(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    new-instance v0, Ly11;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0, p1}, Ly11;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0}, Lw4a;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public VKWebAppGetCustomSdkUserInfo(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    new-instance v0, Liq2;

    invoke-direct {v0, p0, p1}, Liq2;-><init>(Llga;Ljava/lang/String;)V

    invoke-static {v0}, Lw4a;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public VKWebAppInit(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string p0, "WebFormBridgeHandler"

    const-string p1, "App has been initialized"

    invoke-static {p0, p1}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public VKWebAppSetViewSettings(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    new-instance v0, Lbs4;

    invoke-direct {v0, p0, p1}, Lbs4;-><init>(Llga;Ljava/lang/String;)V

    invoke-static {v0}, Lw4a;->c(Ljava/lang/Runnable;)V

    return-void
.end method
