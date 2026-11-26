.class public final Llg9$a;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lll3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llg9;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lll3<",
        "Lj59;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lcom/warefly/checkscan/presentation/webview/WebViewActivity;

.field public final synthetic g:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/webview/WebViewActivity;Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Llg9$a;->f:Lcom/warefly/checkscan/presentation/webview/WebViewActivity;

    iput-object p2, p0, Llg9$a;->g:Landroid/content/Intent;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Llg9$a;->f:Lcom/warefly/checkscan/presentation/webview/WebViewActivity;

    iget-object p0, p0, Llg9$a;->g:Landroid/content/Intent;

    invoke-virtual {v0, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
