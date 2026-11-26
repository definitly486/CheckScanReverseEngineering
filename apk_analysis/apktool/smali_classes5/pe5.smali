.class public final Lpe5;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/HashMap;

.field public static final b:Ljava/util/HashMap;

.field public static final c:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lpe5;->a:Ljava/util/HashMap;

    new-instance v1, Lp69;

    invoke-direct {v1}, Lpe9;-><init>()V

    const-class v2, Lcom/warefly/checkscan/shared/universalWebView/presentation/flow/presenter/UniversalWebViewFlowPresenter;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ls69;

    invoke-direct {v1}, Lpe9;-><init>()V

    const-class v2, Lcom/warefly/checkscan/shared/universalWebView/presentation/presenter/UniversalWebViewPresenter;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lpe5;->b:Ljava/util/HashMap;

    new-instance v1, Lcom/warefly/checkscan/shared/universalWebView/presentation/flow/view/UniversalWebViewFlowFragment$$PresentersBinder;

    invoke-direct {v1}, Lcom/warefly/checkscan/shared/universalWebView/presentation/flow/view/UniversalWebViewFlowFragment$$PresentersBinder;-><init>()V

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-class v2, Lcom/warefly/checkscan/shared/universalWebView/presentation/flow/view/UniversalWebViewFlowFragment;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/warefly/checkscan/shared/universalWebView/presentation/view/UniversalWebViewFragment$$PresentersBinder;

    invoke-direct {v1}, Lcom/warefly/checkscan/shared/universalWebView/presentation/view/UniversalWebViewFragment$$PresentersBinder;-><init>()V

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-class v2, Lcom/warefly/checkscan/shared/universalWebView/presentation/view/UniversalWebViewFragment;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lpe5;->c:Ljava/util/HashMap;

    new-instance v1, Li9;

    invoke-direct {v1}, Li9;-><init>()V

    const-class v2, Li9;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lk9;

    invoke-direct {v1}, Lk9;-><init>()V

    const-class v2, Lk9;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lhx5;

    invoke-direct {v1}, Lhx5;-><init>()V

    const-class v2, Lhx5;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
