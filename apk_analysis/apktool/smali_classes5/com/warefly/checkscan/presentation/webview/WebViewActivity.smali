.class public final Lcom/warefly/checkscan/presentation/webview/WebViewActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/warefly/checkscan/presentation/webview/WebViewActivity$a;
    }
.end annotation


# static fields
.field public static final synthetic f:I


# instance fields
.field public c:Lcom/warefly/checkscan/databinding/LayoutWebviewBinding;

.field public d:Ljava/lang/String;

.field public final e:Lcom/warefly/checkscan/presentation/webview/WebViewActivity$b;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    new-instance v0, Lcom/warefly/checkscan/presentation/webview/WebViewActivity$b;

    invoke-direct {v0, p0}, Lcom/warefly/checkscan/presentation/webview/WebViewActivity$b;-><init>(Lcom/warefly/checkscan/presentation/webview/WebViewActivity;)V

    iput-object v0, p0, Lcom/warefly/checkscan/presentation/webview/WebViewActivity;->e:Lcom/warefly/checkscan/presentation/webview/WebViewActivity$b;

    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 8

    const-string v0, "TOOLBAR_TITLE"

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lcom/warefly/checkscan/databinding/LayoutWebviewBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/warefly/checkscan/databinding/LayoutWebviewBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/webview/WebViewActivity;->c:Lcom/warefly/checkscan/databinding/LayoutWebviewBinding;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/webview/WebViewActivity;->r()Lcom/warefly/checkscan/databinding/LayoutWebviewBinding;

    move-result-object p1

    invoke-virtual {p1}, Lcom/warefly/checkscan/databinding/LayoutWebviewBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(Landroid/view/View;)V

    const/16 v1, 0xf

    const/4 v2, 0x1

    invoke-static {v1, p1, v2}, Loi9;->a(ILandroid/view/View;Z)V

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    move-result-object p1

    iget-object v1, p0, Lcom/warefly/checkscan/presentation/webview/WebViewActivity;->e:Lcom/warefly/checkscan/presentation/webview/WebViewActivity$b;

    invoke-virtual {p1, p0, v1}, Landroidx/activity/OnBackPressedDispatcher;->addCallback(Landroidx/lifecycle/LifecycleOwner;Landroidx/activity/OnBackPressedCallback;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "EVENT_WEBVIEW"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/webview/WebViewActivity;->d:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f1401bf

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    if-eqz p1, :cond_1

    const v3, 0x7f1401c1

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    new-instance v3, Lkd$f$b;

    const-string v4, "UrlIntercept"

    invoke-static {v4, p1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v5, "Bonuses events"

    invoke-direct {v3, v5, v4}, Lkd;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {v3}, Lkd;->a()V

    sget-object v3, Lqr7;->o0:Lqr7$b;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Lqr7;->q0:Lfh8;

    invoke-virtual {v3}, Lfh8;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lqr7;

    invoke-virtual {v3}, Lqr7;->T0()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    filled-new-array {v3, p1}, [Ljava/lang/Object;

    move-result-object p1

    const v3, 0x7f1406b4

    invoke-virtual {p0, v3, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    move-object p1, v1

    :goto_1
    const-string v3, "SIMPLE_URL"

    if-nez p1, :cond_2

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2

    const-string p1, "https://scan.com.ru"

    :cond_2
    sget-object v4, Lk17;->LITERAL:Lk17;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4}, Lk17;->a()I

    move-result v4

    and-int/lit8 v5, v4, 0x2

    if-eqz v5, :cond_3

    or-int/lit8 v4, v4, 0x40

    :cond_3
    const-string v5, "http://"

    invoke-static {v5, v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v5, "https://"

    invoke-virtual {v4, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1, v5}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v4, 0x8

    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/webview/WebViewActivity;->r()Lcom/warefly/checkscan/databinding/LayoutWebviewBinding;

    move-result-object v6

    iget-object v6, v6, Lcom/warefly/checkscan/databinding/LayoutWebviewBinding;->tvLabel:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_4

    :cond_4
    :goto_2
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/webview/WebViewActivity;->r()Lcom/warefly/checkscan/databinding/LayoutWebviewBinding;

    move-result-object v3

    iget-object v3, v3, Lcom/warefly/checkscan/databinding/LayoutWebviewBinding;->tvLabel:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/webview/WebViewActivity;->r()Lcom/warefly/checkscan/databinding/LayoutWebviewBinding;

    move-result-object v3

    iget-object v3, v3, Lcom/warefly/checkscan/databinding/LayoutWebviewBinding;->ivLabel:Landroid/widget/ImageView;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3

    :cond_5
    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/webview/WebViewActivity;->r()Lcom/warefly/checkscan/databinding/LayoutWebviewBinding;

    move-result-object v3

    iget-object v3, v3, Lcom/warefly/checkscan/databinding/LayoutWebviewBinding;->tvLabel:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/webview/WebViewActivity;->r()Lcom/warefly/checkscan/databinding/LayoutWebviewBinding;

    move-result-object v3

    iget-object v3, v3, Lcom/warefly/checkscan/databinding/LayoutWebviewBinding;->ivLabel:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_3
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/webview/WebViewActivity;->r()Lcom/warefly/checkscan/databinding/LayoutWebviewBinding;

    move-result-object v3

    iget-object v3, v3, Lcom/warefly/checkscan/databinding/LayoutWebviewBinding;->tvLabel:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/webview/WebViewActivity;->r()Lcom/warefly/checkscan/databinding/LayoutWebviewBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/warefly/checkscan/databinding/LayoutWebviewBinding;->tvLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    sget-object v0, Lj59;->a:Lj59;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_5

    :goto_4
    new-instance v3, Lk57$a;

    invoke-direct {v3, v0}, Lk57$a;-><init>(Ljava/lang/Throwable;)V

    move-object v0, v3

    :goto_5
    invoke-static {v0}, Lk57;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v3

    if-nez v3, :cond_a

    check-cast v0, Lj59;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/webview/WebViewActivity;->r()Lcom/warefly/checkscan/databinding/LayoutWebviewBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/warefly/checkscan/databinding/LayoutWebviewBinding;->btnBack:Landroid/widget/ImageView;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Llb7;

    new-instance v6, Lh4;

    invoke-direct {v6, p0, v2}, Lh4;-><init>(Ljava/lang/Object;I)V

    invoke-direct {v3, v6}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/webview/WebViewActivity;->r()Lcom/warefly/checkscan/databinding/LayoutWebviewBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/warefly/checkscan/databinding/LayoutWebviewBinding;->btnCloseWeb:Landroid/widget/ImageView;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Llb7;

    new-instance v6, Law6;

    invoke-direct {v6, p0, v2}, Law6;-><init>(Ljava/lang/Object;I)V

    invoke-direct {v3, v6}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/webview/WebViewActivity;->r()Lcom/warefly/checkscan/databinding/LayoutWebviewBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/warefly/checkscan/databinding/LayoutWebviewBinding;->webviewContent:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    invoke-virtual {v3, v2}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    invoke-virtual {v3, v2}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    invoke-virtual {v3, v2}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    invoke-virtual {v3, v2}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    invoke-virtual {v3, v5}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    invoke-virtual {v3, v2}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    const-string v6, "utf-8"

    invoke-virtual {v3, v6}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    const/high16 v6, 0x2000000

    invoke-virtual {v0, v6}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    invoke-virtual {v3, v2}, Landroid/webkit/WebSettings;->setSafeBrowsingEnabled(Z)V

    new-instance v3, Lut0;

    invoke-direct {v3, p0}, Lut0;-><init>(Lcom/warefly/checkscan/presentation/webview/WebViewActivity;)V

    const v6, 0x7f140306

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v3, v6}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Llg9;

    invoke-direct {v3, p0, v0}, Llg9;-><init>(Lcom/warefly/checkscan/presentation/webview/WebViewActivity;Landroid/webkit/WebView;)V

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    new-instance v3, Lmg9;

    invoke-direct {v3, p0}, Lmg9;-><init>(Lcom/warefly/checkscan/presentation/webview/WebViewActivity;)V

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v6, "INFO"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_8

    invoke-static {v3}, Lta8;->M(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/webview/WebViewActivity;->r()Lcom/warefly/checkscan/databinding/LayoutWebviewBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/warefly/checkscan/databinding/LayoutWebviewBinding;->btnInfo:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/webview/WebViewActivity;->r()Lcom/warefly/checkscan/databinding/LayoutWebviewBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/warefly/checkscan/databinding/LayoutWebviewBinding;->btnInfo:Landroid/widget/ImageView;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Llb7;

    new-instance v6, Lng9;

    invoke-direct {v6, v0, v3}, Lng9;-><init>(Landroid/webkit/WebView;Ljava/lang/String;)V

    invoke-direct {v5, v6}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {v1, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_6

    :cond_7
    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/webview/WebViewActivity;->r()Lcom/warefly/checkscan/databinding/LayoutWebviewBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/warefly/checkscan/databinding/LayoutWebviewBinding;->btnInfo:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_6
    sget-object v1, Lj59;->a:Lj59;

    :cond_8
    if-nez v1, :cond_9

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/webview/WebViewActivity;->r()Lcom/warefly/checkscan/databinding/LayoutWebviewBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/warefly/checkscan/databinding/LayoutWebviewBinding;->btnInfo:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_9
    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/webview/WebViewActivity;->r()Lcom/warefly/checkscan/databinding/LayoutWebviewBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/warefly/checkscan/databinding/LayoutWebviewBinding;->btnShare:Landroid/widget/ImageView;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Llb7;

    new-instance v3, Li20;

    invoke-direct {v3, v2, v0, p1}, Li20;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {v1, v3}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {p0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_7

    :cond_a
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v1, Ljg9;

    invoke-direct {v1, p0}, Ljg9;-><init>(Lcom/warefly/checkscan/presentation/webview/WebViewActivity;)V

    const v2, 0x7f14048e

    invoke-virtual {v0, v2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    new-instance v1, Lkg9;

    invoke-direct {v1, p0, p1}, Lkg9;-><init>(Lcom/warefly/checkscan/presentation/webview/WebViewActivity;Ljava/lang/String;)V

    const p0, 0x7f14031d

    invoke-virtual {v0, p0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {v0, v5}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    const p0, 0x7f1406af

    invoke-virtual {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    const p0, 0x7f1406ae

    invoke-virtual {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    :goto_7
    return-void
.end method

.method public final onDestroy()V
    .locals 1

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/webview/WebViewActivity;->r()Lcom/warefly/checkscan/databinding/LayoutWebviewBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/warefly/checkscan/databinding/LayoutWebviewBinding;->webviewContent:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/warefly/checkscan/presentation/webview/WebViewActivity;->c:Lcom/warefly/checkscan/databinding/LayoutWebviewBinding;

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    return-void
.end method

.method public final r()Lcom/warefly/checkscan/databinding/LayoutWebviewBinding;
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/webview/WebViewActivity;->c:Lcom/warefly/checkscan/databinding/LayoutWebviewBinding;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "Required value was null."

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final s(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/webview/WebViewActivity;->r()Lcom/warefly/checkscan/databinding/LayoutWebviewBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/warefly/checkscan/databinding/LayoutWebviewBinding;->pbLoading:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_0
    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/webview/WebViewActivity;->r()Lcom/warefly/checkscan/databinding/LayoutWebviewBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/warefly/checkscan/databinding/LayoutWebviewBinding;->pbLoading:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-eqz v0, :cond_1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/warefly/checkscan/presentation/webview/WebViewActivity;->d:Ljava/lang/String;

    const-string v0, "\'"

    invoke-static {v0, p1, v0}, Lme0;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p2, v0}, Lme0;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const p2, 0x7f140303

    invoke-virtual {p0, p2, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/webview/WebViewActivity;->r()Lcom/warefly/checkscan/databinding/LayoutWebviewBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/warefly/checkscan/databinding/LayoutWebviewBinding;->webviewContent:Landroid/webkit/WebView;

    new-instance p2, Lig9;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1, p2}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    return-void
.end method
