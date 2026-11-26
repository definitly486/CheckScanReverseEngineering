.class public final synthetic Lai8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field public final synthetic b:Lcom/tapjoy/TJSplitWebView;


# direct methods
.method public synthetic constructor <init>(Lcom/tapjoy/TJSplitWebView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lai8;->b:Lcom/tapjoy/TJSplitWebView;

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 0

    iget-object p0, p0, Lai8;->b:Lcom/tapjoy/TJSplitWebView;

    invoke-virtual {p0}, Lcom/tapjoy/TJSplitWebView;->a()V

    return-void
.end method
