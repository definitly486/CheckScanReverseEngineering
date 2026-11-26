.class public final synthetic Lv17;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/OnFailureListener;
.implements Landroidx/webkit/WebViewCompat$WebViewStartUpCallback;


# instance fields
.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lv17;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Exception;)V
    .locals 0

    iget-object p0, p0, Lv17;->b:Ljava/lang/Object;

    check-cast p0, Lcom/google/firebase/perf/config/RemoteConfigManager;

    invoke-static {p0, p1}, Lcom/google/firebase/perf/config/RemoteConfigManager;->a(Lcom/google/firebase/perf/config/RemoteConfigManager;Ljava/lang/Exception;)V

    return-void
.end method

.method public onSuccess(Landroidx/webkit/WebViewStartUpResult;)V
    .locals 0

    iget-object p0, p0, Lv17;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/webkit/WebViewOutcomeReceiver;

    invoke-interface {p0, p1}, Landroidx/webkit/WebViewOutcomeReceiver;->onResult(Ljava/lang/Object;)V

    return-void
.end method
