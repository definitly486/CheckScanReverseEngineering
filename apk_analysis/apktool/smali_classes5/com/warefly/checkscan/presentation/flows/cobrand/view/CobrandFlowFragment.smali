.class public final Lcom/warefly/checkscan/presentation/flows/cobrand/view/CobrandFlowFragment;
.super Lcom/warefly/checkscan/core/ui/base/architecture/FlowFragment;
.source "SourceFile"

# interfaces
.implements Lcom/warefly/checkscan/presentation/flows/cobrand/view/CobrandView;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/architecture/FlowFragment<",
        "Lcom/warefly/checkscan/core/ui/databinding/LoadingLayoutContainerBinding;",
        ">;",
        "Lcom/warefly/checkscan/presentation/flows/cobrand/view/CobrandView;"
    }
.end annotation


# static fields
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
.field public final j:Landroidx/navigation/NavArgsLazy;

.field public final k:I

.field public presenter:Lcom/warefly/checkscan/presentation/flows/cobrand/presenter/CobrandPresenter;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lbs6;

    const-class v1, Lcom/warefly/checkscan/presentation/flows/cobrand/view/CobrandFlowFragment;

    const-string v2, "binding"

    const-string v3, "getBinding()Lcom/warefly/checkscan/core/ui/databinding/LoadingLayoutContainerBinding;"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lbs6;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v1, Lx07;->a:La17;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    new-array v1, v1, [Lze4;

    aput-object v0, v1, v4

    sput-object v1, Lcom/warefly/checkscan/presentation/flows/cobrand/view/CobrandFlowFragment;->l:[Lze4;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/FlowFragment;-><init>()V

    new-instance v0, Landroidx/navigation/NavArgsLazy;

    const-class v1, Lqm1;

    invoke-static {v1}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v1

    new-instance v2, Lcom/warefly/checkscan/presentation/flows/cobrand/view/CobrandFlowFragment$a;

    invoke-direct {v2, p0}, Lcom/warefly/checkscan/presentation/flows/cobrand/view/CobrandFlowFragment$a;-><init>(Lcom/warefly/checkscan/presentation/flows/cobrand/view/CobrandFlowFragment;)V

    invoke-direct {v0, v1, v2}, Landroidx/navigation/NavArgsLazy;-><init>(Lne4;Lll3;)V

    iput-object v0, p0, Lcom/warefly/checkscan/presentation/flows/cobrand/view/CobrandFlowFragment;->j:Landroidx/navigation/NavArgsLazy;

    const v0, 0x7f0d02b0

    iput v0, p0, Lcom/warefly/checkscan/presentation/flows/cobrand/view/CobrandFlowFragment;->k:I

    return-void
.end method


# virtual methods
.method public final i()I
    .locals 0

    iget p0, p0, Lcom/warefly/checkscan/presentation/flows/cobrand/view/CobrandFlowFragment;->k:I

    return p0
.end method

.method public final providePresenter()Lcom/warefly/checkscan/presentation/flows/cobrand/presenter/CobrandPresenter;
    .locals 7

    new-instance v0, Lcom/warefly/checkscan/presentation/flows/cobrand/presenter/CobrandPresenter;

    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object v1

    const-class v2, Lp51;

    const/4 v3, 0x0

    invoke-static {v2, v1, v3, v3}, Lm2;->c(Ljava/lang/Class;Lze7;Lkv6;Li36;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lp51;

    iget-object v2, p0, Lcom/warefly/checkscan/presentation/flows/cobrand/view/CobrandFlowFragment;->j:Landroidx/navigation/NavArgsLazy;

    invoke-interface {v2}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lqm1;

    iget-object v2, v2, Lqm1;->a:Ljava/lang/String;

    const-string v4, "cobrand-create-card"

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v2, Lcom/warefly/checkscan/presentation/Deeplink$d$b;->c:Lcom/warefly/checkscan/presentation/Deeplink$d$b;

    goto :goto_0

    :cond_0
    const-string v4, "cobrand-about"

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/warefly/checkscan/presentation/Deeplink$d$a;->c:Lcom/warefly/checkscan/presentation/Deeplink$d$a;

    goto :goto_0

    :cond_1
    move-object v2, v3

    :goto_0
    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object v4

    const-class v5, Ljf6;

    invoke-static {v5, v4, v3, v3}, Lm2;->c(Ljava/lang/Class;Lze7;Lkv6;Li36;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljf6;

    invoke-virtual {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/FlowFragment;->n()Lba8;

    move-result-object v5

    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object p0

    const-class v6, Luf3;

    invoke-static {v6, p0, v5, v3}, Ln2;->c(Ljava/lang/Class;Lze7;Lba8;Li36;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Luf3;

    invoke-direct {v0, v1, v2, v4, p0}, Lcom/warefly/checkscan/presentation/flows/cobrand/presenter/CobrandPresenter;-><init>(Lp51;Lcom/warefly/checkscan/presentation/Deeplink$d;Ljf6;Luf3;)V

    return-object v0
.end method
