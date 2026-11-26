.class public final Lcom/warefly/checkscan/presentation/tasks/grouped/presenter/GroupedTasksPresenter$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lqw7;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/presentation/tasks/grouped/presenter/GroupedTasksPresenter;-><init>(ILuf3;Lvn8;Lg73;Lc47;Lbc7;Lup8;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lrw7;

.field public final synthetic b:Lcom/warefly/checkscan/presentation/tasks/grouped/presenter/GroupedTasksPresenter;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/tasks/grouped/presenter/GroupedTasksPresenter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/tasks/grouped/presenter/GroupedTasksPresenter$f;->b:Lcom/warefly/checkscan/presentation/tasks/grouped/presenter/GroupedTasksPresenter;

    invoke-static {p1}, Lcom/warefly/checkscan/presentation/tasks/grouped/presenter/GroupedTasksPresenter;->access$getShownState$p(Lcom/warefly/checkscan/presentation/tasks/grouped/presenter/GroupedTasksPresenter;)Lrw7;

    move-result-object p1

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/tasks/grouped/presenter/GroupedTasksPresenter$f;->a:Lrw7;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/tasks/grouped/presenter/GroupedTasksPresenter$f;->a:Lrw7;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lrw7;->b:Ljava/util/LinkedHashSet;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final b(Ljava/lang/String;)Z
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/tasks/grouped/presenter/GroupedTasksPresenter$f;->a:Lrw7;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lrw7;->b:Ljava/util/LinkedHashSet;

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final c()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lb36<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/tasks/grouped/presenter/GroupedTasksPresenter$f;->a:Lrw7;

    iget-object p0, p0, Lrw7;->a:Ljava/util/List;

    return-object p0
.end method

.method public final d()V
    .locals 1

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/tasks/grouped/presenter/GroupedTasksPresenter$f;->b:Lcom/warefly/checkscan/presentation/tasks/grouped/presenter/GroupedTasksPresenter;

    invoke-static {p0}, Lcom/warefly/checkscan/presentation/tasks/grouped/presenter/GroupedTasksPresenter;->access$isSameShowcaseList$p(Lcom/warefly/checkscan/presentation/tasks/grouped/presenter/GroupedTasksPresenter;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/warefly/checkscan/presentation/tasks/grouped/presenter/GroupedTasksPresenter;->access$getShownState$p(Lcom/warefly/checkscan/presentation/tasks/grouped/presenter/GroupedTasksPresenter;)Lrw7;

    move-result-object p0

    invoke-virtual {p0}, Lrw7;->d()V

    :cond_0
    return-void
.end method

.method public final e(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lb36<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/tasks/grouped/presenter/GroupedTasksPresenter$f;->a:Lrw7;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lrw7;->a:Ljava/util/List;

    return-void
.end method
