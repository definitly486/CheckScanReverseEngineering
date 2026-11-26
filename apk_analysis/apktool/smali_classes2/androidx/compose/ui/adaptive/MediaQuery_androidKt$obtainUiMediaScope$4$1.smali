.class final Landroidx/compose/ui/adaptive/MediaQuery_androidKt$obtainUiMediaScope$4$1;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/ui/adaptive/MediaQuery_androidKt;->obtainUiMediaScope(Landroid/content/Context;Landroid/view/View;Landroidx/compose/ui/platform/WindowInfo;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/UiMediaScope;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lnl3<",
        "Landroidx/compose/runtime/DisposableEffectScope;",
        "Landroidx/compose/runtime/DisposableEffectResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $context:Landroid/content/Context;

.field final synthetic $scope:Landroidx/compose/ui/adaptive/UiMediaScopeImpl;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/compose/ui/adaptive/UiMediaScopeImpl;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/ui/adaptive/MediaQuery_androidKt$obtainUiMediaScope$4$1;->$context:Landroid/content/Context;

    iput-object p2, p0, Landroidx/compose/ui/adaptive/MediaQuery_androidKt$obtainUiMediaScope$4$1;->$scope:Landroidx/compose/ui/adaptive/UiMediaScopeImpl;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Landroidx/compose/runtime/DisposableEffectScope;)Landroidx/compose/runtime/DisposableEffectResult;
    .locals 3

    new-instance p1, Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.DOCK_EVENT"

    invoke-direct {p1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    new-instance v0, Landroidx/compose/ui/adaptive/MediaQuery_androidKt$obtainUiMediaScope$4$1$receiver$1;

    iget-object v1, p0, Landroidx/compose/ui/adaptive/MediaQuery_androidKt$obtainUiMediaScope$4$1;->$scope:Landroidx/compose/ui/adaptive/UiMediaScopeImpl;

    invoke-direct {v0, v1}, Landroidx/compose/ui/adaptive/MediaQuery_androidKt$obtainUiMediaScope$4$1$receiver$1;-><init>(Landroidx/compose/ui/adaptive/UiMediaScopeImpl;)V

    iget-object v1, p0, Landroidx/compose/ui/adaptive/MediaQuery_androidKt$obtainUiMediaScope$4$1;->$context:Landroid/content/Context;

    const/4 v2, 0x2

    invoke-static {v1, v0, p1, v2}, Landroidx/core/content/ContextCompat;->registerReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    move-result-object p1

    iget-object v1, p0, Landroidx/compose/ui/adaptive/MediaQuery_androidKt$obtainUiMediaScope$4$1;->$scope:Landroidx/compose/ui/adaptive/UiMediaScopeImpl;

    invoke-static {p1}, Landroidx/compose/ui/adaptive/MediaQuery_androidKt;->access$isDocked(Landroid/content/Intent;)Z

    move-result p1

    invoke-virtual {v1, p1}, Landroidx/compose/ui/adaptive/UiMediaScopeImpl;->setDocked(Z)V

    iget-object p0, p0, Landroidx/compose/ui/adaptive/MediaQuery_androidKt$obtainUiMediaScope$4$1;->$context:Landroid/content/Context;

    new-instance p1, Landroidx/compose/ui/adaptive/MediaQuery_androidKt$obtainUiMediaScope$4$1$invoke$$inlined$onDispose$1;

    invoke-direct {p1, p0, v0}, Landroidx/compose/ui/adaptive/MediaQuery_androidKt$obtainUiMediaScope$4$1$invoke$$inlined$onDispose$1;-><init>(Landroid/content/Context;Landroidx/compose/ui/adaptive/MediaQuery_androidKt$obtainUiMediaScope$4$1$receiver$1;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 38
    check-cast p1, Landroidx/compose/runtime/DisposableEffectScope;

    invoke-virtual {p0, p1}, Landroidx/compose/ui/adaptive/MediaQuery_androidKt$obtainUiMediaScope$4$1;->invoke(Landroidx/compose/runtime/DisposableEffectScope;)Landroidx/compose/runtime/DisposableEffectResult;

    move-result-object p0

    return-object p0
.end method
