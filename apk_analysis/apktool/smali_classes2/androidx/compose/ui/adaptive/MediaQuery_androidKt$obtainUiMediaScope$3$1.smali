.class final Landroidx/compose/ui/adaptive/MediaQuery_androidKt$obtainUiMediaScope$3$1;
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
.field final synthetic $scope:Landroidx/compose/ui/adaptive/UiMediaScopeImpl;

.field final synthetic $view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroidx/compose/ui/adaptive/UiMediaScopeImpl;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/ui/adaptive/MediaQuery_androidKt$obtainUiMediaScope$3$1;->$view:Landroid/view/View;

    iput-object p2, p0, Landroidx/compose/ui/adaptive/MediaQuery_androidKt$obtainUiMediaScope$3$1;->$scope:Landroidx/compose/ui/adaptive/UiMediaScopeImpl;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method

.method public static synthetic a(Landroidx/compose/ui/adaptive/UiMediaScopeImpl;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/compose/ui/adaptive/MediaQuery_androidKt$obtainUiMediaScope$3$1;->invoke$lambda$0(Landroidx/compose/ui/adaptive/UiMediaScopeImpl;Landroid/view/View;)V

    return-void
.end method

.method private static final invoke$lambda$0(Landroidx/compose/ui/adaptive/UiMediaScopeImpl;Landroid/view/View;)V
    .locals 0

    invoke-static {p1}, Landroidx/core/view/ViewCompat;->getRootWindowInsets(Landroid/view/View;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object p1

    invoke-static {p1}, Landroidx/compose/ui/adaptive/MediaQuery_androidKt;->access$isImeVisible(Landroidx/core/view/WindowInsetsCompat;)Z

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/compose/ui/adaptive/UiMediaScopeImpl;->setImeVisible(Z)V

    return-void
.end method


# virtual methods
.method public final invoke(Landroidx/compose/runtime/DisposableEffectScope;)Landroidx/compose/runtime/DisposableEffectResult;
    .locals 2

    iget-object p1, p0, Landroidx/compose/ui/adaptive/MediaQuery_androidKt$obtainUiMediaScope$3$1;->$scope:Landroidx/compose/ui/adaptive/UiMediaScopeImpl;

    iget-object v0, p0, Landroidx/compose/ui/adaptive/MediaQuery_androidKt$obtainUiMediaScope$3$1;->$view:Landroid/view/View;

    new-instance v1, Landroidx/compose/ui/adaptive/a;

    invoke-direct {v1, p1, v0}, Landroidx/compose/ui/adaptive/a;-><init>(Landroidx/compose/ui/adaptive/UiMediaScopeImpl;Landroid/view/View;)V

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-object p0, p0, Landroidx/compose/ui/adaptive/MediaQuery_androidKt$obtainUiMediaScope$3$1;->$view:Landroid/view/View;

    new-instance p1, Landroidx/compose/ui/adaptive/MediaQuery_androidKt$obtainUiMediaScope$3$1$invoke$$inlined$onDispose$1;

    invoke-direct {p1, p0, v1}, Landroidx/compose/ui/adaptive/MediaQuery_androidKt$obtainUiMediaScope$3$1$invoke$$inlined$onDispose$1;-><init>(Landroid/view/View;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 24
    check-cast p1, Landroidx/compose/runtime/DisposableEffectScope;

    invoke-virtual {p0, p1}, Landroidx/compose/ui/adaptive/MediaQuery_androidKt$obtainUiMediaScope$3$1;->invoke(Landroidx/compose/runtime/DisposableEffectScope;)Landroidx/compose/runtime/DisposableEffectResult;

    move-result-object p0

    return-object p0
.end method
