.class public final synthetic Lkg9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic b:Lcom/warefly/checkscan/presentation/webview/WebViewActivity;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/warefly/checkscan/presentation/webview/WebViewActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkg9;->b:Lcom/warefly/checkscan/presentation/webview/WebViewActivity;

    iput-object p2, p0, Lkg9;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    sget p1, Lcom/warefly/checkscan/presentation/webview/WebViewActivity;->f:I

    iget-object p1, p0, Lkg9;->b:Lcom/warefly/checkscan/presentation/webview/WebViewActivity;

    iget-object p0, p0, Lkg9;->c:Ljava/lang/String;

    invoke-static {p1, p0}, Li72;->b(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
