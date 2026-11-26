.class public Lcom/warefly/checkscan/shared/universalWebView/presentation/view/UniversalWebViewView$$State$ShowErrorCommand;
.super Lwd9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/warefly/checkscan/shared/universalWebView/presentation/view/UniversalWebViewView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShowErrorCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lwd9<",
        "Lcom/warefly/checkscan/shared/universalWebView/presentation/view/UniversalWebViewView;",
        ">;"
    }
.end annotation


# instance fields
.field public final isShow:Z


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/shared/universalWebView/presentation/view/UniversalWebViewView$$State;Z)V
    .locals 1

    const-string p1, "showError"

    const-class v0, Lk9;

    invoke-direct {p0, p1, v0}, Lwd9;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-boolean p2, p0, Lcom/warefly/checkscan/shared/universalWebView/presentation/view/UniversalWebViewView$$State$ShowErrorCommand;->isShow:Z

    return-void
.end method


# virtual methods
.method public apply(Lcom/warefly/checkscan/shared/universalWebView/presentation/view/UniversalWebViewView;)V
    .locals 0

    .line 6
    iget-boolean p0, p0, Lcom/warefly/checkscan/shared/universalWebView/presentation/view/UniversalWebViewView$$State$ShowErrorCommand;->isShow:Z

    invoke-interface {p1, p0}, Lcom/warefly/checkscan/shared/universalWebView/presentation/view/UniversalWebViewView;->showError(Z)V

    return-void
.end method

.method public bridge synthetic apply(Ljh5;)V
    .locals 0

    check-cast p1, Lcom/warefly/checkscan/shared/universalWebView/presentation/view/UniversalWebViewView;

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/shared/universalWebView/presentation/view/UniversalWebViewView$$State$ShowErrorCommand;->apply(Lcom/warefly/checkscan/shared/universalWebView/presentation/view/UniversalWebViewView;)V

    return-void
.end method
