.class public final Lcom/warefly/checkscan/presentation/rebindCard/presenter/RebindCardPresenter;
.super Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter<",
        "Lcom/warefly/checkscan/presentation/rebindCard/view/RebindCardView;",
        ">;"
    }
.end annotation


# instance fields
.field private final cashBackInteractor:Lp51;


# direct methods
.method public constructor <init>(Lp51;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;-><init>()V

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/rebindCard/presenter/RebindCardPresenter;->cashBackInteractor:Lp51;

    return-void
.end method


# virtual methods
.method public final onCloseClick()Lj59;
    .locals 0

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/rebindCard/view/RebindCardView;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/warefly/checkscan/presentation/rebindCard/view/RebindCardView;->dismissDialog()V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final onRebindClick()V
    .locals 4

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/rebindCard/presenter/RebindCardPresenter;->cashBackInteractor:Lp51;

    iget-object v0, v0, Lp51;->a:Lu51;

    invoke-interface {v0}, Lu51;->i()Lhi0;

    move-result-object v0

    sget-object v1, Lne7;->c:Lhe7;

    invoke-virtual {v0, v1}, Ltq5;->g(Lhe7;)Lxr5;

    move-result-object v0

    invoke-static {}, Lrj;->a()Lju3;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltq5;->e(Lhe7;)Lqr5;

    move-result-object v0

    new-instance v1, Lcom/warefly/checkscan/presentation/rebindCard/presenter/RebindCardPresenter$a;

    invoke-direct {v1, p0}, Lcom/warefly/checkscan/presentation/rebindCard/presenter/RebindCardPresenter$a;-><init>(Lcom/warefly/checkscan/presentation/rebindCard/presenter/RebindCardPresenter;)V

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, Lyb8;->h(Lqr5;Lcom/warefly/checkscan/presentation/queue/presenter/QueuePresenter$d;Lnl3;I)Lhh4;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v3, v1, v3}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->disposeOnDestroy$default(Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;Lcp2;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method
