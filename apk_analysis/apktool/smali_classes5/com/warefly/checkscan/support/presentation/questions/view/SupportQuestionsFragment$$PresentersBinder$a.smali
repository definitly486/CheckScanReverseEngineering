.class public final Lcom/warefly/checkscan/support/presentation/questions/view/SupportQuestionsFragment$$PresentersBinder$a;
.super Lpf6;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/warefly/checkscan/support/presentation/questions/view/SupportQuestionsFragment$$PresentersBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lpf6<",
        "Lcom/warefly/checkscan/support/presentation/questions/view/SupportQuestionsFragment;",
        ">;"
    }
.end annotation


# virtual methods
.method public final a(Ljava/lang/Object;Lih5;)V
    .locals 0

    check-cast p1, Lcom/warefly/checkscan/support/presentation/questions/view/SupportQuestionsFragment;

    check-cast p2, Lcom/warefly/checkscan/support/presentation/questions/presenter/SupportQuestionsPresenter;

    iput-object p2, p1, Lcom/warefly/checkscan/support/presentation/questions/view/SupportQuestionsFragment;->presenter:Lcom/warefly/checkscan/support/presentation/questions/presenter/SupportQuestionsPresenter;

    return-void
.end method

.method public final b(Ljava/lang/Object;)Lih5;
    .locals 0

    check-cast p1, Lcom/warefly/checkscan/support/presentation/questions/view/SupportQuestionsFragment;

    invoke-virtual {p1}, Lcom/warefly/checkscan/support/presentation/questions/view/SupportQuestionsFragment;->providePresenter()Lcom/warefly/checkscan/support/presentation/questions/presenter/SupportQuestionsPresenter;

    move-result-object p0

    return-object p0
.end method
