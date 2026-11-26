.class public final synthetic Lm97;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lm97;->b:I

    iput-object p1, p0, Lm97;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget v0, p0, Lm97;->b:I

    iget-object p0, p0, Lm97;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/my/target/h2;

    iget-object v0, p0, Lcom/my/target/h2;->b:Lcom/my/target/e2$e;

    iget-object v0, v0, Lcom/my/target/e2$a;->a:Lao9;

    iget-object v0, v0, Lao9;->a:Ln4a;

    const-string v1, "webviewShown"

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/my/target/m1;->d(Ln4a;Ljava/lang/String;ILcom/my/target/m1$b;)V

    const-string v0, "WebViewReachability: webview shown"

    invoke-static {v3, v0}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/my/target/h2;->a:Z

    return-void

    :pswitch_0
    check-cast p0, Lcom/tapjoy/TapjoyConnectCore;

    invoke-virtual {p0}, Lcom/tapjoy/TapjoyConnectCore;->c()V

    return-void

    :pswitch_1
    check-cast p0, Lcp2;

    invoke-interface {p0}, Lcp2;->dispose()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
