.class public final synthetic Las1;
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

    iput p2, p0, Las1;->b:I

    iput-object p1, p0, Las1;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Las1;->b:I

    iget-object p0, p0, Las1;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/my/target/h2;

    iget-boolean v0, p0, Lcom/my/target/h2;->a:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p0, "WebViewReachability: !!! Rare bug occurred: call \'webview closed\' without \'webview shown\'"

    invoke-static {v1, p0}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/my/target/h2;->b:Lcom/my/target/e2$e;

    iget-object p0, p0, Lcom/my/target/e2$a;->a:Lao9;

    iget-object p0, p0, Lao9;->a:Ln4a;

    const-string v0, "webviewClosed"

    const/4 v2, 0x2

    invoke-static {p0, v0, v2, v1}, Lcom/my/target/m1;->d(Ln4a;Ljava/lang/String;ILcom/my/target/m1$b;)V

    const-string p0, "WebViewReachability: webview closed"

    invoke-static {v1, p0}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :pswitch_0
    check-cast p0, Lcom/tapjoy/TJConnectListener;

    invoke-static {p0}, Lcom/tapjoy/internal/h1;->b(Lcom/tapjoy/TJConnectListener;)V

    return-void

    :pswitch_1
    check-cast p0, Landroidx/media3/exoplayer/source/preload/PreCacheHelper;

    invoke-static {p0}, Landroidx/media3/exoplayer/source/preload/PreCacheHelper;->a(Landroidx/media3/exoplayer/source/preload/PreCacheHelper;)V

    return-void

    :pswitch_2
    check-cast p0, Landroidx/activity/ComponentDialog;

    invoke-static {p0}, Landroidx/activity/ComponentDialog;->c(Landroidx/activity/ComponentDialog;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
