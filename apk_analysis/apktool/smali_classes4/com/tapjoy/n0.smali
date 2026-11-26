.class public final Lcom/tapjoy/n0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Lcom/tapjoy/TJWebViewActivity$BridgeDelegate;


# direct methods
.method public constructor <init>(Lcom/tapjoy/TJWebViewActivity$BridgeDelegate;Z)V
    .locals 0

    iput-object p1, p0, Lcom/tapjoy/n0;->b:Lcom/tapjoy/TJWebViewActivity$BridgeDelegate;

    iput-boolean p2, p0, Lcom/tapjoy/n0;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/tapjoy/n0;->b:Lcom/tapjoy/TJWebViewActivity$BridgeDelegate;

    iget-object v0, v0, Lcom/tapjoy/TJWebViewActivity$BridgeDelegate;->a:Lcom/tapjoy/TJWebViewActivity;

    iget-object v0, v0, Lcom/tapjoy/TJActivity;->c:Lcom/tapjoy/TJCloseButton;

    iget-boolean p0, p0, Lcom/tapjoy/n0;->a:Z

    invoke-virtual {v0, p0}, Landroid/view/View;->setClickable(Z)V

    return-void
.end method
