.class public final synthetic Lhd6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Landroid/view/View;

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Landroid/view/View;Ljava/lang/Object;I)V
    .locals 0

    iput p4, p0, Lhd6;->b:I

    iput-object p1, p0, Lhd6;->c:Ljava/lang/Object;

    iput-object p2, p0, Lhd6;->d:Landroid/view/View;

    iput-object p3, p0, Lhd6;->e:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Lhd6;->b:I

    iget-object v1, p0, Lhd6;->e:Ljava/lang/Object;

    iget-object v2, p0, Lhd6;->d:Landroid/view/View;

    iget-object p0, p0, Lhd6;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Landroidx/webkit/WebViewRenderProcessClient;

    check-cast v2, Landroid/webkit/WebView;

    check-cast v1, Landroidx/webkit/WebViewRenderProcess;

    invoke-static {p0, v2, v1}, Landroidx/webkit/internal/WebViewRenderProcessClientAdapter;->b(Landroidx/webkit/WebViewRenderProcessClient;Landroid/webkit/WebView;Landroidx/webkit/WebViewRenderProcess;)V

    return-void

    :pswitch_0
    check-cast p0, Lod6;

    check-cast v1, Landroid/view/Window;

    :try_start_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static {p0, v0, v2}, Lod6;->g(Lod6;Ljava/lang/ref/WeakReference;Ljava/lang/ref/WeakReference;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object p0, p0, Lod6;->c:Lta6;

    iget-object p0, p0, Lnb6;->v:Lic6;

    const-string v1, "Session Replay generateSnapshot failed: "

    const/16 v2, 0x2e

    invoke-static {v1, v0, v2, p0}, Lsg;->f(Ljava/lang/String;Ljava/lang/Throwable;CLic6;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
