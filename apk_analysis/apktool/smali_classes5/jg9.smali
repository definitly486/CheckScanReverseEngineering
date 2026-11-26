.class public final synthetic Ljg9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic b:Lcom/warefly/checkscan/presentation/webview/WebViewActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/warefly/checkscan/presentation/webview/WebViewActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljg9;->b:Lcom/warefly/checkscan/presentation/webview/WebViewActivity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    sget p1, Lcom/warefly/checkscan/presentation/webview/WebViewActivity;->f:I

    new-instance p1, Landroid/content/Intent;

    const p2, 0x7f1406ad

    iget-object p0, p0, Ljg9;->b:Lcom/warefly/checkscan/presentation/webview/WebViewActivity;

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {p1, v0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
