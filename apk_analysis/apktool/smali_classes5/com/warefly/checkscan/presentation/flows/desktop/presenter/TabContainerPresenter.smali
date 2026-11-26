.class public final Lcom/warefly/checkscan/presentation/flows/desktop/presenter/TabContainerPresenter;
.super Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/warefly/checkscan/presentation/flows/desktop/presenter/TabContainerPresenter$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter<",
        "Lcom/warefly/checkscan/presentation/flows/desktop/view/TabContainerView;",
        ">;"
    }
.end annotation


# instance fields
.field private final args:Lki8;

.field private final bonusesScreenProvider:Lpr0;

.field private final deeplink:Lcom/warefly/checkscan/presentation/Deeplink$Desktop;

.field private final preferencesRepository:Ljf6;


# direct methods
.method public constructor <init>(Lki8;Lpr0;Lcom/warefly/checkscan/presentation/Deeplink$Desktop;Ljf6;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;-><init>()V

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/TabContainerPresenter;->args:Lki8;

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/TabContainerPresenter;->bonusesScreenProvider:Lpr0;

    iput-object p3, p0, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/TabContainerPresenter;->deeplink:Lcom/warefly/checkscan/presentation/Deeplink$Desktop;

    iput-object p4, p0, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/TabContainerPresenter;->preferencesRepository:Ljf6;

    return-void
.end method

.method private final getBalanceScreen()Llk3;
    .locals 1

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/TabContainerPresenter;->deeplink:Lcom/warefly/checkscan/presentation/Deeplink$Desktop;

    instance-of v0, p0, Lcom/warefly/checkscan/presentation/Deeplink$Desktop$Balance;

    if-eqz v0, :cond_0

    new-instance v0, Lof7;

    check-cast p0, Lcom/warefly/checkscan/presentation/Deeplink$Desktop$Balance;

    iget-boolean p0, p0, Lcom/warefly/checkscan/presentation/Deeplink$Desktop$Balance;->c:Z

    invoke-direct {v0, p0}, Lof7;-><init>(Z)V

    return-object v0

    :cond_0
    new-instance p0, Lof7;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lof7;-><init>(Z)V

    return-object p0
.end method

.method private final getBrandlinkScreen()Llk3;
    .locals 1

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/TabContainerPresenter;->preferencesRepository:Ljf6;

    invoke-interface {v0}, Ljf6;->Z()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lek6;->a:Lek6;

    return-object p0

    :cond_0
    invoke-direct {p0}, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/TabContainerPresenter;->getOldBrandlink()Llk3;

    move-result-object p0

    return-object p0
.end method

.method private final getOldBrandlink()Llk3;
    .locals 10

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/TabContainerPresenter;->deeplink:Lcom/warefly/checkscan/presentation/Deeplink$Desktop;

    instance-of v0, p0, Lcom/warefly/checkscan/presentation/Deeplink$Desktop$Brandlink;

    if-eqz v0, :cond_0

    new-instance v1, Ltf7;

    check-cast p0, Lcom/warefly/checkscan/presentation/Deeplink$Desktop$Brandlink;

    iget v2, p0, Lcom/warefly/checkscan/presentation/Deeplink$Desktop$Brandlink;->c:I

    iget-object v3, p0, Lcom/warefly/checkscan/presentation/Deeplink$Desktop$Brandlink;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/warefly/checkscan/presentation/Deeplink$Desktop$Brandlink;->e:Ljava/lang/String;

    iget-object v5, p0, Lcom/warefly/checkscan/presentation/Deeplink$Desktop$Brandlink;->f:Ljava/lang/String;

    iget-boolean v8, p0, Lcom/warefly/checkscan/presentation/Deeplink$Desktop$Brandlink;->g:Z

    iget-object v6, p0, Lcom/warefly/checkscan/presentation/Deeplink$Desktop$Brandlink;->h:Ljava/lang/String;

    iget-object v7, p0, Lcom/warefly/checkscan/presentation/Deeplink$Desktop$Brandlink;->i:Ljava/lang/String;

    iget-boolean v9, p0, Lcom/warefly/checkscan/presentation/Deeplink$Desktop$Brandlink;->j:Z

    invoke-direct/range {v1 .. v9}, Ltf7;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-object v1

    :cond_0
    new-instance v2, Ltf7;

    const/4 v7, 0x0

    const/16 v4, 0xff

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v2 .. v7}, Ltf7;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method private final getTasksScreen()Llk3;
    .locals 1

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/TabContainerPresenter;->deeplink:Lcom/warefly/checkscan/presentation/Deeplink$Desktop;

    instance-of v0, p0, Lcom/warefly/checkscan/presentation/Deeplink$Desktop$Tasks;

    if-eqz v0, :cond_0

    new-instance v0, Lji7;

    check-cast p0, Lcom/warefly/checkscan/presentation/Deeplink$Desktop$Tasks;

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/Deeplink$Desktop$Tasks;->c:Lcom/warefly/checkscan/tasks/presentation/flows/TasksReason;

    invoke-direct {v0, p0}, Lji7;-><init>(Lcom/warefly/checkscan/tasks/presentation/flows/TasksReason;)V

    return-object v0

    :cond_0
    new-instance p0, Lji7;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lji7;-><init>(Lcom/warefly/checkscan/tasks/presentation/flows/TasksReason;)V

    return-object p0
.end method


# virtual methods
.method public onFirstViewAttach()V
    .locals 4

    invoke-super {p0}, Lih5;->onFirstViewAttach()V

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/TabContainerPresenter;->args:Lki8;

    iget-object v0, v0, Lki8;->a:Lri8;

    sget-object v1, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/TabContainerPresenter$a;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    const/4 v2, 0x2

    if-eq v0, v2, :cond_5

    const/4 v2, 0x3

    if-eq v0, v2, :cond_4

    const/4 v2, 0x4

    if-eq v0, v2, :cond_3

    const/4 v2, 0x5

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/TabContainerPresenter;->bonusesScreenProvider:Lpr0;

    iget-object v1, p0, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/TabContainerPresenter;->args:Lki8;

    iget-object v1, v1, Lki8;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Lpr0;->a(Ljava/lang/String;)Lrf7;

    move-result-object v0

    goto :goto_2

    :cond_0
    new-instance v0, Lko3;

    iget-object v2, p0, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/TabContainerPresenter;->deeplink:Lcom/warefly/checkscan/presentation/Deeplink$Desktop;

    instance-of v3, v2, Lcom/warefly/checkscan/presentation/Deeplink$Desktop$Games;

    if-eqz v3, :cond_1

    check-cast v2, Lcom/warefly/checkscan/presentation/Deeplink$Desktop$Games;

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x0

    if-eqz v2, :cond_2

    iget-boolean v2, v2, Lcom/warefly/checkscan/presentation/Deeplink$Desktop$Games;->c:Z

    if-ne v2, v1, :cond_2

    goto :goto_1

    :cond_2
    move v1, v3

    :goto_1
    invoke-direct {v0, v1}, Lko3;-><init>(Z)V

    goto :goto_2

    :cond_3
    invoke-direct {p0}, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/TabContainerPresenter;->getTasksScreen()Llk3;

    move-result-object v0

    goto :goto_2

    :cond_4
    invoke-direct {p0}, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/TabContainerPresenter;->getBalanceScreen()Llk3;

    move-result-object v0

    goto :goto_2

    :cond_5
    invoke-direct {p0}, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/TabContainerPresenter;->getBrandlinkScreen()Llk3;

    move-result-object v0

    goto :goto_2

    :cond_6
    sget-object v0, Lag7;->a:Lag7;

    :goto_2
    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/flows/desktop/view/TabContainerView;

    if-eqz p0, :cond_7

    invoke-interface {p0, v0}, Lcom/warefly/checkscan/presentation/flows/desktop/view/TabContainerView;->setScreenForContainer(Llk3;)V

    :cond_7
    return-void
.end method
