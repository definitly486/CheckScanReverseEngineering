.class public Lcom/warefly/checkscan/presentation/tasks/grouped/view/GroupedTasksView$$State$OpenUrlInCustomTabCommand;
.super Lwd9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/warefly/checkscan/presentation/tasks/grouped/view/GroupedTasksView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OpenUrlInCustomTabCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lwd9<",
        "Lcom/warefly/checkscan/presentation/tasks/grouped/view/GroupedTasksView;",
        ">;"
    }
.end annotation


# instance fields
.field public final arg0:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/tasks/grouped/view/GroupedTasksView$$State;Ljava/lang/String;)V
    .locals 1

    const-string p1, "openUrlInCustomTab"

    const-class v0, Lhx5;

    invoke-direct {p0, p1, v0}, Lwd9;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/tasks/grouped/view/GroupedTasksView$$State$OpenUrlInCustomTabCommand;->arg0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public apply(Lcom/warefly/checkscan/presentation/tasks/grouped/view/GroupedTasksView;)V
    .locals 0

    .line 6
    iget-object p0, p0, Lcom/warefly/checkscan/presentation/tasks/grouped/view/GroupedTasksView$$State$OpenUrlInCustomTabCommand;->arg0:Ljava/lang/String;

    invoke-interface {p1, p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseView;->openUrlInCustomTab(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic apply(Ljh5;)V
    .locals 0

    check-cast p1, Lcom/warefly/checkscan/presentation/tasks/grouped/view/GroupedTasksView;

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/presentation/tasks/grouped/view/GroupedTasksView$$State$OpenUrlInCustomTabCommand;->apply(Lcom/warefly/checkscan/presentation/tasks/grouped/view/GroupedTasksView;)V

    return-void
.end method
