.class public final Lcom/warefly/checkscan/presentation/upridWeb/veiw/UpridWebFullScreenDialog$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/presentation/upridWeb/veiw/UpridWebFullScreenDialog;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/warefly/checkscan/presentation/upridWeb/veiw/UpridWebFullScreenDialog;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/upridWeb/veiw/UpridWebFullScreenDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/upridWeb/veiw/UpridWebFullScreenDialog$c;->a:Lcom/warefly/checkscan/presentation/upridWeb/veiw/UpridWebFullScreenDialog;

    return-void
.end method


# virtual methods
.method public final share(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/upridWeb/veiw/UpridWebFullScreenDialog$c;->a:Lcom/warefly/checkscan/presentation/upridWeb/veiw/UpridWebFullScreenDialog;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/upridWeb/veiw/UpridWebFullScreenDialog;->e()Lcom/warefly/checkscan/databinding/FragmentUpridWebBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/warefly/checkscan/databinding/FragmentUpridWebBinding;->topWebView:Landroid/webkit/WebView;

    new-instance v1, Lht8;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p0, p1}, Lht8;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
