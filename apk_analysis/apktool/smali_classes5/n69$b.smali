.class public final Ln69$b;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ln69;->onCreateWindow(Landroid/webkit/WebView;ZZLandroid/os/Message;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ln69;

.field public final synthetic b:Landroid/webkit/WebView;

.field public final synthetic c:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Ln69;Landroid/webkit/WebView;Landroid/webkit/WebView;)V
    .locals 0

    iput-object p1, p0, Ln69$b;->a:Ln69;

    iput-object p2, p0, Ln69$b;->b:Landroid/webkit/WebView;

    iput-object p3, p0, Ln69$b;->c:Landroid/webkit/WebView;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z
    .locals 1

    if-eqz p2, :cond_0

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p2, p0, Ln69$b;->a:Ln69;

    iget-object p2, p2, Ln69;->a:Ln69$a;

    invoke-interface {p2, p1}, Ln69$a;->d(Ljava/lang/String;)V

    :cond_0
    new-instance p1, Lxz6;

    const/4 p2, 0x2

    iget-object v0, p0, Ln69$b;->c:Landroid/webkit/WebView;

    invoke-direct {p1, v0, p2}, Lxz6;-><init>(Ljava/lang/Object;I)V

    iget-object p0, p0, Ln69$b;->b:Landroid/webkit/WebView;

    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    const/4 p0, 0x1

    return p0
.end method
