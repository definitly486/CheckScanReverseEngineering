.class public final Lcom/tapjoy/k0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/tapjoy/TJWebViewActivity;


# direct methods
.method public constructor <init>(Lcom/tapjoy/TJWebViewActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/tapjoy/k0;->a:Lcom/tapjoy/TJWebViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/tapjoy/k0;->a:Lcom/tapjoy/TJWebViewActivity;

    iget-object v0, v0, Lcom/tapjoy/TJWebViewActivity;->g:Lcom/tapjoy/TJAdUnitJSBridge;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lcom/tapjoy/TJAdUnitJSBridge;->closeRequested:Z

    if-eqz v0, :cond_0

    const-string v0, "Did not receive callback from content. Closing ad."

    invoke-static {v0}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/tapjoy/k0;->a:Lcom/tapjoy/TJWebViewActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method
