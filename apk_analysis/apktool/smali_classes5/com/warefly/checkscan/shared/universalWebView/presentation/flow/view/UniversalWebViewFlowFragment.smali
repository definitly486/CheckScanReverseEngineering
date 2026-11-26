.class public final Lcom/warefly/checkscan/shared/universalWebView/presentation/flow/view/UniversalWebViewFlowFragment;
.super Lcom/warefly/checkscan/core/ui/base/architecture/FlowFragment;
.source "SourceFile"

# interfaces
.implements Lcom/warefly/checkscan/shared/universalWebView/presentation/flow/view/UniversalWebViewFlowView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/warefly/checkscan/shared/universalWebView/presentation/flow/view/UniversalWebViewFlowFragment$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/architecture/FlowFragment<",
        "Lcom/warefly/checkscan/core/ui/databinding/LayoutContainerBinding;",
        ">;",
        "Lcom/warefly/checkscan/shared/universalWebView/presentation/flow/view/UniversalWebViewFlowView;"
    }
.end annotation


# static fields
.field public static final k:Lcom/warefly/checkscan/shared/universalWebView/presentation/flow/view/UniversalWebViewFlowFragment$a;

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
.field public final j:Lfh8;

.field public presenter:Lcom/warefly/checkscan/shared/universalWebView/presentation/flow/presenter/UniversalWebViewFlowPresenter;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lbs6;

    const-class v1, Lcom/warefly/checkscan/shared/universalWebView/presentation/flow/view/UniversalWebViewFlowFragment;

    const-string v2, "binding"

    const-string v3, "getBinding()Lcom/warefly/checkscan/core/ui/databinding/LayoutContainerBinding;"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lbs6;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v1, Lx07;->a:La17;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    new-array v1, v1, [Lze4;

    aput-object v0, v1, v4

    sput-object v1, Lcom/warefly/checkscan/shared/universalWebView/presentation/flow/view/UniversalWebViewFlowFragment;->l:[Lze4;

    new-instance v0, Lcom/warefly/checkscan/shared/universalWebView/presentation/flow/view/UniversalWebViewFlowFragment$a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/warefly/checkscan/shared/universalWebView/presentation/flow/view/UniversalWebViewFlowFragment;->k:Lcom/warefly/checkscan/shared/universalWebView/presentation/flow/view/UniversalWebViewFlowFragment$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/FlowFragment;-><init>()V

    new-instance v0, Lcom/warefly/checkscan/shared/universalWebView/presentation/flow/view/UniversalWebViewFlowFragment$b;

    invoke-direct {v0, p0}, Lcom/warefly/checkscan/shared/universalWebView/presentation/flow/view/UniversalWebViewFlowFragment$b;-><init>(Lcom/warefly/checkscan/shared/universalWebView/presentation/flow/view/UniversalWebViewFlowFragment;)V

    new-instance v1, Lfh8;

    invoke-direct {v1, v0}, Lfh8;-><init>(Lll3;)V

    iput-object v1, p0, Lcom/warefly/checkscan/shared/universalWebView/presentation/flow/view/UniversalWebViewFlowFragment;->j:Lfh8;

    return-void
.end method


# virtual methods
.method public final providePresenter()Lcom/warefly/checkscan/shared/universalWebView/presentation/flow/presenter/UniversalWebViewFlowPresenter;
    .locals 1

    new-instance v0, Lcom/warefly/checkscan/shared/universalWebView/presentation/flow/presenter/UniversalWebViewFlowPresenter;

    iget-object p0, p0, Lcom/warefly/checkscan/shared/universalWebView/presentation/flow/view/UniversalWebViewFlowFragment;->j:Lfh8;

    invoke-virtual {p0}, Lfh8;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/shared/universalWebView/presentation/UniversalWebViewArgs;

    invoke-direct {v0, p0}, Lcom/warefly/checkscan/shared/universalWebView/presentation/flow/presenter/UniversalWebViewFlowPresenter;-><init>(Lcom/warefly/checkscan/shared/universalWebView/presentation/UniversalWebViewArgs;)V

    return-object v0
.end method
