.class public final Lcom/warefly/checkscan/support/presentation/questions/presenter/SupportQuestionsPresenter;
.super Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;
.source "SourceFile"

# interfaces
.implements Lsv6;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter<",
        "Lcom/warefly/checkscan/support/presentation/questions/view/SupportQuestionsView;",
        ">;",
        "Lsv6;"
    }
.end annotation


# instance fields
.field private final router:Lqf8;

.field private final supportQuestions:Lxg5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxg5<",
            "Ljava/util/List<",
            "Ljf8;",
            ">;>;"
        }
    .end annotation
.end field

.field private final toolbarText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lk83;Ljava/lang/String;Lqf8;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;-><init>()V

    iput-object p2, p0, Lcom/warefly/checkscan/support/presentation/questions/presenter/SupportQuestionsPresenter;->toolbarText:Ljava/lang/String;

    iput-object p3, p0, Lcom/warefly/checkscan/support/presentation/questions/presenter/SupportQuestionsPresenter;->router:Lqf8;

    iget-object p1, p1, Lk83;->a:Llf8;

    invoke-interface {p1}, Llf8;->a()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    new-instance p2, Ljava/util/ArrayList;

    const/16 p3, 0xa

    invoke-static {p1, p3}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result p3

    invoke-direct {p2, p3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lff8;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljf8;

    const/4 v1, 0x1

    sget-object v2, Lox2;->b:Lox2;

    invoke-direct {v0, p3, v1, v2}, Ljf8;-><init>(Lff8;ZLjava/util/Set;)V

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {p2}, Lpx;->a(Ljava/lang/Object;)Lz68;

    move-result-object p1

    iput-object p1, p0, Lcom/warefly/checkscan/support/presentation/questions/presenter/SupportQuestionsPresenter;->supportQuestions:Lxg5;

    return-void
.end method


# virtual methods
.method public final onBackClicked()V
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/support/presentation/questions/presenter/SupportQuestionsPresenter;->router:Lqf8;

    invoke-interface {p0}, Lqf8;->a()V

    return-void
.end method

.method public onChildQuestionClicked(II)V
    .locals 7

    iget-object p0, p0, Lcom/warefly/checkscan/support/presentation/questions/presenter/SupportQuestionsPresenter;->supportQuestions:Lxg5;

    :cond_0
    invoke-interface {p0}, Lxg5;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v1, v3}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljf8;

    iget-object v4, v3, Ljf8;->a:Lff8;

    iget v4, v4, Lff8;->a:I

    if-ne v4, p1, :cond_2

    iget-object v4, v3, Ljf8;->c:Ljava/util/Set;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, Lmr7;->i(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/LinkedHashSet;

    move-result-object v4

    goto :goto_1

    :cond_1
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, Lmr7;->m(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/LinkedHashSet;

    move-result-object v4

    :goto_1
    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static {v3, v6, v4, v5}, Ljf8;->d(Ljf8;ZLjava/util/Set;I)Ljf8;

    move-result-object v3

    :cond_2
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-interface {p0, v0, v2}, Lxg5;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void
.end method

.method public onFirstViewAttach()V
    .locals 3

    invoke-super {p0}, Lih5;->onFirstViewAttach()V

    iget-object v0, p0, Lcom/warefly/checkscan/support/presentation/questions/presenter/SupportQuestionsPresenter;->supportQuestions:Lxg5;

    new-instance v1, Lcom/warefly/checkscan/support/presentation/questions/presenter/SupportQuestionsPresenter$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/warefly/checkscan/support/presentation/questions/presenter/SupportQuestionsPresenter$a;-><init>(Lcom/warefly/checkscan/support/presentation/questions/presenter/SupportQuestionsPresenter;Le02;)V

    new-instance v2, Ldf3;

    invoke-direct {v2, v0, v1}, Ldf3;-><init>(Lhd3;Lbm3;)V

    invoke-virtual {p0, v2}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->launchInPresenter(Lhd3;)Lmb4;

    iget-object v0, p0, Lcom/warefly/checkscan/support/presentation/questions/presenter/SupportQuestionsPresenter;->toolbarText:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/support/presentation/questions/view/SupportQuestionsView;

    if-eqz p0, :cond_0

    invoke-interface {p0, v0}, Lcom/warefly/checkscan/support/presentation/questions/view/SupportQuestionsView;->setToolbarText(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onQuestionActionClicked(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/support/presentation/questions/view/SupportQuestionsView;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseView;->openUrlInCustomTab(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onQuestionCollapseClicked(IZ)V
    .locals 7

    iget-object p0, p0, Lcom/warefly/checkscan/support/presentation/questions/presenter/SupportQuestionsPresenter;->supportQuestions:Lxg5;

    :cond_0
    invoke-interface {p0}, Lxg5;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v1, v3}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljf8;

    iget-object v4, v3, Ljf8;->a:Lff8;

    iget v4, v4, Lff8;->a:I

    const/4 v5, 0x1

    if-ne v4, p1, :cond_1

    move v4, p2

    goto :goto_1

    :cond_1
    move v4, v5

    :goto_1
    sget-object v6, Lox2;->b:Lox2;

    invoke-static {v3, v4, v6, v5}, Ljf8;->d(Ljf8;ZLjava/util/Set;I)Ljf8;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-interface {p0, v0, v2}, Lxg5;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void
.end method

.method public onQuestionTextLinkClicked(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/support/presentation/questions/view/SupportQuestionsView;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseView;->openUrlInCustomTab(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
