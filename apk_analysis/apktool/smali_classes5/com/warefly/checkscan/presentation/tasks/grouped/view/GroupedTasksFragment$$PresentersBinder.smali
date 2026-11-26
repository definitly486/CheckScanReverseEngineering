.class public Lcom/warefly/checkscan/presentation/tasks/grouped/view/GroupedTasksFragment$$PresentersBinder;
.super Lof6;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/warefly/checkscan/presentation/tasks/grouped/view/GroupedTasksFragment$$PresentersBinder$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lof6<",
        "Lcom/warefly/checkscan/presentation/tasks/grouped/view/GroupedTasksFragment;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lof6;-><init>()V

    return-void
.end method


# virtual methods
.method public getPresenterFields()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lpf6<",
            "Lcom/warefly/checkscan/presentation/tasks/grouped/view/GroupedTasksFragment;",
            ">;>;"
        }
    .end annotation

    new-instance p0, Ljava/util/ArrayList;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v0, Lcom/warefly/checkscan/presentation/tasks/grouped/view/GroupedTasksFragment$$PresentersBinder$a;

    const-string v1, "presenter"

    const-class v2, Lcom/warefly/checkscan/presentation/tasks/grouped/presenter/GroupedTasksPresenter;

    invoke-direct {v0, v1, v2}, Lpf6;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method
