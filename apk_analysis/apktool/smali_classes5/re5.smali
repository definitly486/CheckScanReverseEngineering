.class public final Lre5;
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

    sput-object v0, Lre5;->a:Ljava/util/HashMap;

    new-instance v1, La88;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, La88;-><init>(I)V

    const-class v2, Lcom/warefly/checkscan/support/presentation/flow/presenter/SupportFlowPresenter;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Llj4;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Llj4;-><init>(I)V

    const-class v2, Lcom/warefly/checkscan/support/presentation/form/presenter/SupportFormPresenter;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Li61;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Li61;-><init>(I)V

    const-class v2, Lcom/warefly/checkscan/support/presentation/main/presenter/SupportSectionsPresenter;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lh9;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lh9;-><init>(I)V

    const-class v2, Lcom/warefly/checkscan/support/presentation/questions/presenter/SupportQuestionsPresenter;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lre5;->b:Ljava/util/HashMap;

    new-instance v1, Lcom/warefly/checkscan/support/presentation/flow/view/SupportFlowFragment$$PresentersBinder;

    invoke-direct {v1}, Lcom/warefly/checkscan/support/presentation/flow/view/SupportFlowFragment$$PresentersBinder;-><init>()V

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-class v2, Lcom/warefly/checkscan/support/presentation/flow/view/SupportFlowFragment;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/warefly/checkscan/support/presentation/form/view/SupportFormFragment$$PresentersBinder;

    invoke-direct {v1}, Lcom/warefly/checkscan/support/presentation/form/view/SupportFormFragment$$PresentersBinder;-><init>()V

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-class v2, Lcom/warefly/checkscan/support/presentation/form/view/SupportFormFragment;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/warefly/checkscan/support/presentation/main/view/SupportSectionsFragment$$PresentersBinder;

    invoke-direct {v1}, Lcom/warefly/checkscan/support/presentation/main/view/SupportSectionsFragment$$PresentersBinder;-><init>()V

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-class v2, Lcom/warefly/checkscan/support/presentation/main/view/SupportSectionsFragment;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/warefly/checkscan/support/presentation/questions/view/SupportQuestionsFragment$$PresentersBinder;

    invoke-direct {v1}, Lcom/warefly/checkscan/support/presentation/questions/view/SupportQuestionsFragment$$PresentersBinder;-><init>()V

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-class v2, Lcom/warefly/checkscan/support/presentation/questions/view/SupportQuestionsFragment;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lre5;->c:Ljava/util/HashMap;

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
