.class public final Lcom/warefly/checkscan/support/presentation/main/presenter/SupportSectionsPresenter;
.super Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;
.source "SourceFile"

# interfaces
.implements Lyf8$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter<",
        "Lcom/warefly/checkscan/support/presentation/main/view/SupportSectionsView;",
        ">;",
        "Lyf8$a;"
    }
.end annotation


# instance fields
.field private final fetchSupportSectionsUseCase:Lm83;

.field private final setSupportQuestionsUseCase:Lkr7;

.field private final supportRouter:Lqf8;


# direct methods
.method public constructor <init>(Lm83;Lkr7;Lqf8;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;-><init>()V

    iput-object p1, p0, Lcom/warefly/checkscan/support/presentation/main/presenter/SupportSectionsPresenter;->fetchSupportSectionsUseCase:Lm83;

    iput-object p2, p0, Lcom/warefly/checkscan/support/presentation/main/presenter/SupportSectionsPresenter;->setSupportQuestionsUseCase:Lkr7;

    iput-object p3, p0, Lcom/warefly/checkscan/support/presentation/main/presenter/SupportSectionsPresenter;->supportRouter:Lqf8;

    return-void
.end method


# virtual methods
.method public final loadContent()V
    .locals 3

    iget-object v0, p0, Lcom/warefly/checkscan/support/presentation/main/presenter/SupportSectionsPresenter;->fetchSupportSectionsUseCase:Lm83;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Ll83;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Ll83;-><init>(Lm83;Le02;)V

    new-instance v0, Ltb7;

    invoke-direct {v0, v1}, Ltb7;-><init>(Lbm3;)V

    invoke-static {v0}, Ls57;->a(Lhd3;)Lde3;

    move-result-object v0

    new-instance v1, Lcom/warefly/checkscan/support/presentation/main/presenter/SupportSectionsPresenter$a;

    invoke-direct {v1, p0, v2}, Lcom/warefly/checkscan/support/presentation/main/presenter/SupportSectionsPresenter$a;-><init>(Lcom/warefly/checkscan/support/presentation/main/presenter/SupportSectionsPresenter;Le02;)V

    new-instance v2, Ldf3;

    invoke-direct {v2, v0, v1}, Ldf3;-><init>(Lhd3;Lbm3;)V

    invoke-virtual {p0, v2}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->launchInPresenter(Lhd3;)Lmb4;

    return-void
.end method

.method public final onBackPressed()V
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/support/presentation/main/presenter/SupportSectionsPresenter;->supportRouter:Lqf8;

    invoke-interface {p0}, Lqf8;->a()V

    return-void
.end method

.method public onFirstViewAttach()V
    .locals 0

    invoke-super {p0}, Lih5;->onFirstViewAttach()V

    invoke-virtual {p0}, Lcom/warefly/checkscan/support/presentation/main/presenter/SupportSectionsPresenter;->loadContent()V

    return-void
.end method

.method public onSectionClicked(Lag8;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/warefly/checkscan/support/presentation/main/presenter/SupportSectionsPresenter;->setSupportQuestionsUseCase:Lkr7;

    iget-object p1, p1, Lag8;->a:Lwf8;

    iget-object v1, p1, Lwf8;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, Lkr7;->a:Llf8;

    invoke-interface {v0, v1}, Llf8;->e(Ljava/util/ArrayList;)V

    iget-object p0, p0, Lcom/warefly/checkscan/support/presentation/main/presenter/SupportSectionsPresenter;->supportRouter:Lqf8;

    iget-object p1, p1, Lwf8;->b:Ljava/lang/String;

    invoke-interface {p0, p1}, Lqf8;->b(Ljava/lang/String;)V

    return-void
.end method
