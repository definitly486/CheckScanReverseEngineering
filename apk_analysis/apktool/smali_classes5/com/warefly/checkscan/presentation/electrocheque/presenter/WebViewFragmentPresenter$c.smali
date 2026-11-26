.class public final Lcom/warefly/checkscan/presentation/electrocheque/presenter/WebViewFragmentPresenter$c;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/presentation/electrocheque/presenter/WebViewFragmentPresenter;->getUrl()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lnl3<",
        "Ljava/lang/String;",
        "Lj59;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lcom/warefly/checkscan/presentation/electrocheque/presenter/WebViewFragmentPresenter;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/electrocheque/presenter/WebViewFragmentPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/electrocheque/presenter/WebViewFragmentPresenter$c;->f:Lcom/warefly/checkscan/presentation/electrocheque/presenter/WebViewFragmentPresenter;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p1, Ljava/lang/String;

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/electrocheque/presenter/WebViewFragmentPresenter$c;->f:Lcom/warefly/checkscan/presentation/electrocheque/presenter/WebViewFragmentPresenter;

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/presentation/electrocheque/presenter/WebViewFragmentView;

    const-string v1, ""

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "<body>"

    invoke-static {p1, v2, v1}, Lra8;->y(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "</body>"

    invoke-static {p1, v2, v1}, Lra8;->y(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/warefly/checkscan/presentation/electrocheque/presenter/WebViewFragmentView;->loadUrl(Ljava/lang/String;)V

    :cond_0
    invoke-static {p0}, Lcom/warefly/checkscan/presentation/electrocheque/presenter/WebViewFragmentPresenter;->access$getAccountInteractor$p(Lcom/warefly/checkscan/presentation/electrocheque/presenter/WebViewFragmentPresenter;)Lc4;

    move-result-object p1

    iget-object p1, p1, Lc4;->a:Ljf6;

    invoke-interface {p1}, Ljf6;->U0()Ljava/lang/String;

    move-result-object p1

    const-string v0, "+"

    invoke-static {p1, v0, v1}, Lra8;->y(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/warefly/checkscan/presentation/electrocheque/presenter/WebViewFragmentPresenter;->access$bindUser(Lcom/warefly/checkscan/presentation/electrocheque/presenter/WebViewFragmentPresenter;Ljava/lang/String;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
