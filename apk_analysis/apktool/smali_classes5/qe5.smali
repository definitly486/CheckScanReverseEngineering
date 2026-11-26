.class public final Lqe5;
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

    sput-object v0, Lqe5;->a:Ljava/util/HashMap;

    new-instance v1, Lzw5;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lzw5;-><init>(I)V

    const-class v2, Lcom/warefly/checkscan/subscriptionLanding/presentation/flow/subscriptionLanding/presenter/SubscriptionLandingFlowPresenter;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Llj4;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Llj4;-><init>(I)V

    const-class v2, Lcom/warefly/checkscan/subscriptionLanding/presentation/landing/presenter/LandingPresenter;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lqe5;->b:Ljava/util/HashMap;

    new-instance v1, Lcom/warefly/checkscan/subscriptionLanding/presentation/flow/subscriptionLanding/view/SubscriptionLandingFlowFragment$$PresentersBinder;

    invoke-direct {v1}, Lcom/warefly/checkscan/subscriptionLanding/presentation/flow/subscriptionLanding/view/SubscriptionLandingFlowFragment$$PresentersBinder;-><init>()V

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-class v2, Lcom/warefly/checkscan/subscriptionLanding/presentation/flow/subscriptionLanding/view/SubscriptionLandingFlowFragment;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/warefly/checkscan/subscriptionLanding/presentation/landing/view/LandingFragment$$PresentersBinder;

    invoke-direct {v1}, Lcom/warefly/checkscan/subscriptionLanding/presentation/landing/view/LandingFragment$$PresentersBinder;-><init>()V

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-class v2, Lcom/warefly/checkscan/subscriptionLanding/presentation/landing/view/LandingFragment;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lqe5;->c:Ljava/util/HashMap;

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
