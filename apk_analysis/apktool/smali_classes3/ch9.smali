.class public final synthetic Lch9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Landroidx/webkit/WebViewRenderProcessClient;

.field public final synthetic c:Landroid/webkit/WebView;

.field public final synthetic d:Landroidx/webkit/WebViewRenderProcess;


# direct methods
.method public synthetic constructor <init>(Landroidx/webkit/WebViewRenderProcessClient;Landroid/webkit/WebView;Landroidx/webkit/internal/WebViewRenderProcessImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lch9;->b:Landroidx/webkit/WebViewRenderProcessClient;

    iput-object p2, p0, Lch9;->c:Landroid/webkit/WebView;

    iput-object p3, p0, Lch9;->d:Landroidx/webkit/WebViewRenderProcess;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lch9;->c:Landroid/webkit/WebView;

    iget-object v1, p0, Lch9;->d:Landroidx/webkit/WebViewRenderProcess;

    iget-object p0, p0, Lch9;->b:Landroidx/webkit/WebViewRenderProcessClient;

    invoke-static {p0, v0, v1}, Landroidx/webkit/internal/WebViewRenderProcessClientAdapter;->a(Landroidx/webkit/WebViewRenderProcessClient;Landroid/webkit/WebView;Landroidx/webkit/WebViewRenderProcess;)V

    return-void
.end method
