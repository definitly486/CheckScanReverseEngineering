.class public final Lcom/tapjoy/l0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lcom/tapjoy/TJTaskHandler;

.field public final synthetic c:Lcom/tapjoy/TJWebViewActivity$BridgeDelegate;


# direct methods
.method public constructor <init>(Lcom/tapjoy/TJWebViewActivity$BridgeDelegate;Ljava/lang/String;Lcom/tapjoy/TJTaskHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/tapjoy/l0;->c:Lcom/tapjoy/TJWebViewActivity$BridgeDelegate;

    iput-object p2, p0, Lcom/tapjoy/l0;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/tapjoy/l0;->b:Lcom/tapjoy/TJTaskHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/tapjoy/l0;->c:Lcom/tapjoy/TJWebViewActivity$BridgeDelegate;

    iget-object v0, v0, Lcom/tapjoy/TJWebViewActivity$BridgeDelegate;->a:Lcom/tapjoy/TJWebViewActivity;

    iget-object v0, v0, Lcom/tapjoy/TJWebViewActivity;->e:Landroid/view/View;

    iget-object v1, p0, Lcom/tapjoy/l0;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object p0, p0, Lcom/tapjoy/l0;->b:Lcom/tapjoy/TJTaskHandler;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p0, v0}, Lcom/tapjoy/TJTaskHandler;->onComplete(Ljava/lang/Object;)V

    return-void
.end method
