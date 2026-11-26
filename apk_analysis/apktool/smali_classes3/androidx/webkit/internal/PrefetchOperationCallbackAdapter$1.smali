.class Landroidx/webkit/internal/PrefetchOperationCallbackAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/support_lib_boundary/PrefetchOperationCallbackBoundaryInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/webkit/internal/PrefetchOperationCallbackAdapter;->buildInvocationHandler(Landroidx/webkit/WebViewOutcomeReceiver;)Ljava/lang/reflect/InvocationHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Landroidx/webkit/WebViewOutcomeReceiver;


# direct methods
.method public constructor <init>(Landroidx/webkit/WebViewOutcomeReceiver;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/webkit/internal/PrefetchOperationCallbackAdapter$1;->val$callback:Landroidx/webkit/WebViewOutcomeReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSupportedFeatures()[Ljava/lang/String;
    .locals 0

    const-string p0, "PREFETCH_WITH_CALLBACK_RESULT_V1"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public onFailure(ILjava/lang/String;I)V
    .locals 1

    iget-object p0, p0, Landroidx/webkit/internal/PrefetchOperationCallbackAdapter$1;->val$callback:Landroidx/webkit/WebViewOutcomeReceiver;

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    new-instance p1, Landroidx/webkit/PrefetchNetworkException;

    invoke-direct {p1, p2, p3}, Landroidx/webkit/PrefetchNetworkException;-><init>(Ljava/lang/String;I)V

    invoke-interface {p0, p1}, Landroidx/webkit/WebViewOutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    new-instance p1, Landroidx/webkit/PrefetchException;

    invoke-direct {p1, p2}, Landroidx/webkit/PrefetchException;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, p1}, Landroidx/webkit/WebViewOutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onResult(I)V
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "Given type isn\'t defined."

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    return-void

    :cond_1
    :goto_0
    iget-object p0, p0, Landroidx/webkit/internal/PrefetchOperationCallbackAdapter$1;->val$callback:Landroidx/webkit/WebViewOutcomeReceiver;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Landroidx/webkit/WebViewOutcomeReceiver;->onResult(Ljava/lang/Object;)V

    return-void
.end method

.method public onSuccess()V
    .locals 1

    iget-object p0, p0, Landroidx/webkit/internal/PrefetchOperationCallbackAdapter$1;->val$callback:Landroidx/webkit/WebViewOutcomeReceiver;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Landroidx/webkit/WebViewOutcomeReceiver;->onResult(Ljava/lang/Object;)V

    return-void
.end method
