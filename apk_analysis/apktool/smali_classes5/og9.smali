.class public final synthetic Log9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/webkit/ValueCallback;


# instance fields
.field public final synthetic a:Lcom/warefly/checkscan/presentation/electrocheque/view/WebViewFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/warefly/checkscan/presentation/electrocheque/view/WebViewFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Log9;->a:Lcom/warefly/checkscan/presentation/electrocheque/view/WebViewFragment;

    return-void
.end method


# virtual methods
.method public final onReceiveValue(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Ljava/lang/String;

    sget-object v0, Lcom/warefly/checkscan/presentation/electrocheque/view/WebViewFragment;->h:[Lze4;

    const-string v0, "null"

    invoke-static {p1, v0}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Log9;->a:Lcom/warefly/checkscan/presentation/electrocheque/view/WebViewFragment;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/electrocheque/view/WebViewFragment;->o()Lcom/warefly/checkscan/presentation/electrocheque/presenter/WebViewFragmentPresenter;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "\""

    const-string v1, ""

    invoke-static {p1, v0, v1}, Lra8;->y(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/presentation/electrocheque/presenter/WebViewFragmentPresenter;->loadReceipts(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
