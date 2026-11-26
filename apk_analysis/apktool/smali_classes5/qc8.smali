.class public final Lqc8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Llk3;


# static fields
.field public static final a:Lqc8;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lqc8;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lqc8;->a:Lqc8;

    return-void
.end method


# virtual methods
.method public final a(Landroidx/fragment/app/FragmentFactory;)Landroidx/fragment/app/Fragment;
    .locals 0

    sget-object p0, Lcom/warefly/checkscan/subscriptionLanding/presentation/flow/subscriptionLanding/view/SubscriptionLandingFlowFragment;->j:Lcom/warefly/checkscan/subscriptionLanding/presentation/flow/subscriptionLanding/view/SubscriptionLandingFlowFragment$a;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/warefly/checkscan/subscriptionLanding/presentation/flow/subscriptionLanding/view/SubscriptionLandingFlowFragment;

    invoke-direct {p0}, Lcom/warefly/checkscan/subscriptionLanding/presentation/flow/subscriptionLanding/view/SubscriptionLandingFlowFragment;-><init>()V

    return-object p0
.end method

.method public final b()Ljava/lang/String;
    .locals 0

    const-class p0, Lqc8;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
