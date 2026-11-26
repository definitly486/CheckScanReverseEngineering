.class public final Lcom/warefly/checkscan/presentation/flows/requests/view/RequestsFlowFragment;
.super Lcom/warefly/checkscan/core/ui/base/architecture/FlowFragment;
.source "SourceFile"

# interfaces
.implements Lcom/warefly/checkscan/presentation/flows/requests/presenter/RequestsView;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/architecture/FlowFragment<",
        "Lcom/warefly/checkscan/core/ui/databinding/LayoutContainerBinding;",
        ">;",
        "Lcom/warefly/checkscan/presentation/flows/requests/presenter/RequestsView;"
    }
.end annotation


# static fields
.field public static final synthetic k:[Lze4;
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

.field public presenter:Lcom/warefly/checkscan/presentation/flows/requests/presenter/RequestsPresenter;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lbs6;

    const-class v1, Lcom/warefly/checkscan/presentation/flows/requests/view/RequestsFlowFragment;

    const-string v2, "binding"

    const-string v3, "getBinding()Lcom/warefly/checkscan/core/ui/databinding/LayoutContainerBinding;"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lbs6;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v1, Lx07;->a:La17;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    new-array v1, v1, [Lze4;

    aput-object v0, v1, v4

    sput-object v1, Lcom/warefly/checkscan/presentation/flows/requests/view/RequestsFlowFragment;->k:[Lze4;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/FlowFragment;-><init>()V

    new-instance v0, Landroidx/navigation/NavArgsLazy;

    const-class v1, Lv37;

    invoke-static {v1}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v1

    new-instance v2, Lcom/warefly/checkscan/presentation/flows/requests/view/RequestsFlowFragment$a;

    invoke-direct {v2, p0}, Lcom/warefly/checkscan/presentation/flows/requests/view/RequestsFlowFragment$a;-><init>(Lcom/warefly/checkscan/presentation/flows/requests/view/RequestsFlowFragment;)V

    invoke-direct {v0, v1, v2}, Landroidx/navigation/NavArgsLazy;-><init>(Lne4;Lll3;)V

    iput-object v0, p0, Lcom/warefly/checkscan/presentation/flows/requests/view/RequestsFlowFragment;->j:Landroidx/navigation/NavArgsLazy;

    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/warefly/checkscan/core/ui/base/architecture/FlowFragment;->onCreate(Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/warefly/checkscan/presentation/flows/requests/view/RequestsFlowFragment;->j:Landroidx/navigation/NavArgsLazy;

    invoke-interface {p1}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv37;

    iget-boolean v0, v0, Lv37;->c:Z

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/flows/requests/view/RequestsFlowFragment;->presenter:Lcom/warefly/checkscan/presentation/flows/requests/presenter/RequestsPresenter;

    const/4 v1, 0x0

    const-string v2, "presenter"

    if-eqz v0, :cond_1

    if-eqz p0, :cond_0

    invoke-interface {p1}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv37;

    iget-wide v0, v0, Lv37;->d:J

    invoke-interface {p1}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lv37;

    iget-object p1, p1, Lv37;->e:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, p1}, Lcom/warefly/checkscan/presentation/flows/requests/presenter/RequestsPresenter;->onScan(JLjava/lang/String;)V

    return-void

    :cond_0
    invoke-static {v2}, Laa4;->j(Ljava/lang/String;)V

    throw v1

    :cond_1
    if-eqz p0, :cond_2

    invoke-interface {p1}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lv37;

    iget-object p1, p1, Lv37;->a:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/presentation/flows/requests/presenter/RequestsPresenter;->onOpened(Ljava/lang/String;)V

    return-void

    :cond_2
    invoke-static {v2}, Laa4;->j(Ljava/lang/String;)V

    throw v1
.end method

.method public final providePresenter()Lcom/warefly/checkscan/presentation/flows/requests/presenter/RequestsPresenter;
    .locals 4

    new-instance v0, Lcom/warefly/checkscan/presentation/flows/requests/presenter/RequestsPresenter;

    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object v1

    const-class v2, Ljf6;

    const/4 v3, 0x0

    invoke-static {v2, v1, v3, v3}, Lm2;->c(Ljava/lang/Class;Lze7;Lkv6;Li36;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljf6;

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/flows/requests/view/RequestsFlowFragment;->j:Landroidx/navigation/NavArgsLazy;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lv37;

    iget-object p0, p0, Lv37;->b:Lvg7;

    invoke-direct {v0, v1, p0}, Lcom/warefly/checkscan/presentation/flows/requests/presenter/RequestsPresenter;-><init>(Ljf6;Lvg7;)V

    return-object v0
.end method
