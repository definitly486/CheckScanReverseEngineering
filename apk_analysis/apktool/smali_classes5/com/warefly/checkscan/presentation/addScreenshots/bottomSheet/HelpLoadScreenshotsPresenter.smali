.class public final Lcom/warefly/checkscan/presentation/addScreenshots/bottomSheet/HelpLoadScreenshotsPresenter;
.super Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter<",
        "Lcom/warefly/checkscan/presentation/addScreenshots/bottomSheet/HelpLoadScreenshotsView;",
        ">;"
    }
.end annotation


# instance fields
.field private final cashBackInteractor:Lp51;

.field private final id:J


# direct methods
.method public constructor <init>(Lp51;J)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;-><init>()V

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/addScreenshots/bottomSheet/HelpLoadScreenshotsPresenter;->cashBackInteractor:Lp51;

    iput-wide p2, p0, Lcom/warefly/checkscan/presentation/addScreenshots/bottomSheet/HelpLoadScreenshotsPresenter;->id:J

    return-void
.end method


# virtual methods
.method public onFirstViewAttach()V
    .locals 3

    invoke-super {p0}, Lih5;->onFirstViewAttach()V

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/addScreenshots/bottomSheet/HelpLoadScreenshotsPresenter;->cashBackInteractor:Lp51;

    iget-wide v1, p0, Lcom/warefly/checkscan/presentation/addScreenshots/bottomSheet/HelpLoadScreenshotsPresenter;->id:J

    iget-object v0, v0, Lp51;->a:Lu51;

    invoke-interface {v0, v1, v2}, Lu51;->c(J)Lmz7;

    move-result-object v0

    sget-object v1, Lne7;->c:Lhe7;

    invoke-virtual {v0, v1}, Lmz7;->i(Lhe7;)Le18;

    move-result-object v0

    invoke-static {}, Lrj;->a()Lju3;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmz7;->f(Lhe7;)Lr08;

    move-result-object v0

    new-instance v1, Lcom/warefly/checkscan/presentation/addScreenshots/bottomSheet/HelpLoadScreenshotsPresenter$a;

    invoke-direct {v1, p0}, Lcom/warefly/checkscan/presentation/addScreenshots/bottomSheet/HelpLoadScreenshotsPresenter$a;-><init>(Lcom/warefly/checkscan/presentation/addScreenshots/bottomSheet/HelpLoadScreenshotsPresenter;)V

    new-instance v2, Lcom/warefly/checkscan/presentation/addScreenshots/bottomSheet/HelpLoadScreenshotsPresenter$b;

    invoke-direct {v2, p0}, Lcom/warefly/checkscan/presentation/addScreenshots/bottomSheet/HelpLoadScreenshotsPresenter$b;-><init>(Lcom/warefly/checkscan/presentation/addScreenshots/bottomSheet/HelpLoadScreenshotsPresenter;)V

    invoke-static {v0, v1, v2}, Lyb8;->d(Lmz7;Lnl3;Lnl3;)Lrx1;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {p0, v0, v1, v2, v1}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->disposeOnDestroy$default(Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;Lcp2;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method
