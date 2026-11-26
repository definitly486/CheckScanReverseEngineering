.class public final Lnt9;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/my/target/dl;


# direct methods
.method public constructor <init>(Lcom/my/target/dl;)V
    .locals 0

    iput-object p1, p0, Lnt9;->a:Lcom/my/target/dl;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 0

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    iget-object p0, p0, Lnt9;->a:Lcom/my/target/dl;

    iget-object p0, p0, Lcom/my/target/dl;->e:Landroid/widget/TextView;

    invoke-static {p2}, Lcom/my/target/dl;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p0, 0x1

    return p0
.end method
