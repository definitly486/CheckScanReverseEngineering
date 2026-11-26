.class public final Lcom/warefly/checkscan/insuranceShowcase/presentation/flow/showcase/view/InsuranceFlowFragment;
.super Lcom/warefly/checkscan/core/ui/base/architecture/FlowFragment;
.source "SourceFile"

# interfaces
.implements Lcom/warefly/checkscan/insuranceShowcase/presentation/flow/showcase/view/InsuranceFlowView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/warefly/checkscan/insuranceShowcase/presentation/flow/showcase/view/InsuranceFlowFragment$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/architecture/FlowFragment<",
        "Lcom/warefly/checkscan/core/ui/databinding/LoadingLayoutContainerBinding;",
        ">;",
        "Lcom/warefly/checkscan/insuranceShowcase/presentation/flow/showcase/view/InsuranceFlowView;"
    }
.end annotation


# static fields
.field public static final k:Lcom/warefly/checkscan/insuranceShowcase/presentation/flow/showcase/view/InsuranceFlowFragment$a;

.field public static final synthetic l:[Lze4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lze4<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final j:I

.field public presenter:Lcom/warefly/checkscan/insuranceShowcase/presentation/flow/showcase/presenter/InsuranceFlowPresenter;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lbs6;

    const-class v1, Lcom/warefly/checkscan/insuranceShowcase/presentation/flow/showcase/view/InsuranceFlowFragment;

    const-string v2, "binding"

    const-string v3, "getBinding()Lcom/warefly/checkscan/core/ui/databinding/LoadingLayoutContainerBinding;"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lbs6;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v1, Lx07;->a:La17;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    new-array v1, v1, [Lze4;

    aput-object v0, v1, v4

    sput-object v1, Lcom/warefly/checkscan/insuranceShowcase/presentation/flow/showcase/view/InsuranceFlowFragment;->l:[Lze4;

    new-instance v0, Lcom/warefly/checkscan/insuranceShowcase/presentation/flow/showcase/view/InsuranceFlowFragment$a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/warefly/checkscan/insuranceShowcase/presentation/flow/showcase/view/InsuranceFlowFragment;->k:Lcom/warefly/checkscan/insuranceShowcase/presentation/flow/showcase/view/InsuranceFlowFragment$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/FlowFragment;-><init>()V

    const v0, 0x7f0d02b0

    iput v0, p0, Lcom/warefly/checkscan/insuranceShowcase/presentation/flow/showcase/view/InsuranceFlowFragment;->j:I

    return-void
.end method


# virtual methods
.method public final i()I
    .locals 0

    iget p0, p0, Lcom/warefly/checkscan/insuranceShowcase/presentation/flow/showcase/view/InsuranceFlowFragment;->j:I

    return p0
.end method

.method public final providePresenter()Lcom/warefly/checkscan/insuranceShowcase/presentation/flow/showcase/presenter/InsuranceFlowPresenter;
    .locals 0

    new-instance p0, Lcom/warefly/checkscan/insuranceShowcase/presentation/flow/showcase/presenter/InsuranceFlowPresenter;

    invoke-direct {p0}, Lcom/warefly/checkscan/insuranceShowcase/presentation/flow/showcase/presenter/InsuranceFlowPresenter;-><init>()V

    return-object p0
.end method
