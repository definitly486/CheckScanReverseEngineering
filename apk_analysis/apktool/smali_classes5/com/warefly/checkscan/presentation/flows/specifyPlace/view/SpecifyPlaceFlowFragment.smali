.class public final Lcom/warefly/checkscan/presentation/flows/specifyPlace/view/SpecifyPlaceFlowFragment;
.super Lcom/warefly/checkscan/core/ui/base/architecture/FlowFragment;
.source "SourceFile"

# interfaces
.implements Lcom/warefly/checkscan/presentation/flows/specifyPlace/presenter/SpecifyPlaceFlowView;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/architecture/FlowFragment<",
        "Lcom/warefly/checkscan/core/ui/databinding/LayoutContainerBinding;",
        ">;",
        "Lcom/warefly/checkscan/presentation/flows/specifyPlace/presenter/SpecifyPlaceFlowView;"
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

.field public presenter:Lcom/warefly/checkscan/presentation/flows/specifyPlace/presenter/SpecifyPlaceFlowPresenter;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lbs6;

    const-class v1, Lcom/warefly/checkscan/presentation/flows/specifyPlace/view/SpecifyPlaceFlowFragment;

    const-string v2, "binding"

    const-string v3, "getBinding()Lcom/warefly/checkscan/core/ui/databinding/LayoutContainerBinding;"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lbs6;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v1, Lx07;->a:La17;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    new-array v1, v1, [Lze4;

    aput-object v0, v1, v4

    sput-object v1, Lcom/warefly/checkscan/presentation/flows/specifyPlace/view/SpecifyPlaceFlowFragment;->k:[Lze4;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/FlowFragment;-><init>()V

    new-instance v0, Landroidx/navigation/NavArgsLazy;

    const-class v1, Lw58;

    invoke-static {v1}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v1

    new-instance v2, Lcom/warefly/checkscan/presentation/flows/specifyPlace/view/SpecifyPlaceFlowFragment$a;

    invoke-direct {v2, p0}, Lcom/warefly/checkscan/presentation/flows/specifyPlace/view/SpecifyPlaceFlowFragment$a;-><init>(Lcom/warefly/checkscan/presentation/flows/specifyPlace/view/SpecifyPlaceFlowFragment;)V

    invoke-direct {v0, v1, v2}, Landroidx/navigation/NavArgsLazy;-><init>(Lne4;Lll3;)V

    iput-object v0, p0, Lcom/warefly/checkscan/presentation/flows/specifyPlace/view/SpecifyPlaceFlowFragment;->j:Landroidx/navigation/NavArgsLazy;

    return-void
.end method


# virtual methods
.method public final k()Z
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/flows/specifyPlace/view/SpecifyPlaceFlowFragment;->presenter:Lcom/warefly/checkscan/presentation/flows/specifyPlace/presenter/SpecifyPlaceFlowPresenter;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/flows/specifyPlace/presenter/SpecifyPlaceFlowPresenter;->onBackClicked()V

    const/4 p0, 0x0

    return p0

    :cond_0
    const-string p0, "presenter"

    invoke-static {p0}, Laa4;->j(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 5

    sget-object v0, Lwc5;->b:Ltc5;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lc;->c:Lc;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lc;->d:Lhg4;

    if-eqz v2, :cond_0

    invoke-static {v0}, Lu96;->h(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v3, v4}, Lhg4;->b(Ljava/util/List;ZZ)V

    sget-object v0, Lj59;->a:Lj59;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    invoke-super {p0, p1}, Lcom/warefly/checkscan/core/ui/base/architecture/FlowFragment;->onCreate(Landroid/os/Bundle;)V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    :try_start_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "KoinApplication has not been started"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit v1

    throw p0
.end method

.method public final onDestroy()V
    .locals 1

    sget-object v0, Lwc5;->b:Ltc5;

    invoke-static {v0}, Lm00;->g(Ltc5;)V

    invoke-super {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/FlowFragment;->onDestroy()V

    return-void
.end method

.method public final providePresenter()Lcom/warefly/checkscan/presentation/flows/specifyPlace/presenter/SpecifyPlaceFlowPresenter;
    .locals 8

    new-instance v0, Lcom/warefly/checkscan/presentation/flows/specifyPlace/presenter/SpecifyPlaceFlowPresenter;

    iget-object v1, p0, Lcom/warefly/checkscan/presentation/flows/specifyPlace/view/SpecifyPlaceFlowFragment;->j:Landroidx/navigation/NavArgsLazy;

    invoke-interface {v1}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lw58;

    iget-object v2, v2, Lw58;->a:Lfi7;

    invoke-interface {v1}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lw58;

    iget-object v3, v3, Lw58;->b:Ljava/lang/String;

    invoke-interface {v1}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lw58;

    iget-wide v4, v1, Lw58;->c:J

    invoke-virtual {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/FlowFragment;->n()Lba8;

    move-result-object v1

    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object p0

    const-class v6, Luf3;

    const/4 v7, 0x0

    invoke-static {v6, p0, v1, v7}, Ln2;->c(Ljava/lang/Class;Lze7;Lba8;Li36;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Luf3;

    move-object v1, v2

    move-object v2, v3

    move-wide v3, v4

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/warefly/checkscan/presentation/flows/specifyPlace/presenter/SpecifyPlaceFlowPresenter;-><init>(Lfi7;Ljava/lang/String;JLuf3;)V

    return-object v0
.end method
