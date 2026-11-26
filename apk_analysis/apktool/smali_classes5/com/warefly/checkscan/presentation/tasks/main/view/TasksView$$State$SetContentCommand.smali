.class public Lcom/warefly/checkscan/presentation/tasks/main/view/TasksView$$State$SetContentCommand;
.super Lwd9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/warefly/checkscan/presentation/tasks/main/view/TasksView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SetContentCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lwd9<",
        "Lcom/warefly/checkscan/presentation/tasks/main/view/TasksView;",
        ">;"
    }
.end annotation


# instance fields
.field public final content:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lso8;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/tasks/main/view/TasksView$$State;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lso8;",
            ">;)V"
        }
    .end annotation

    const-string p1, "setContent"

    const-class v0, Lk9;

    invoke-direct {p0, p1, v0}, Lwd9;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/tasks/main/view/TasksView$$State$SetContentCommand;->content:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public apply(Lcom/warefly/checkscan/presentation/tasks/main/view/TasksView;)V
    .locals 0

    .line 6
    iget-object p0, p0, Lcom/warefly/checkscan/presentation/tasks/main/view/TasksView$$State$SetContentCommand;->content:Ljava/util/List;

    invoke-interface {p1, p0}, Lcom/warefly/checkscan/presentation/tasks/main/view/TasksView;->setContent(Ljava/util/List;)V

    return-void
.end method

.method public bridge synthetic apply(Ljh5;)V
    .locals 0

    check-cast p1, Lcom/warefly/checkscan/presentation/tasks/main/view/TasksView;

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/presentation/tasks/main/view/TasksView$$State$SetContentCommand;->apply(Lcom/warefly/checkscan/presentation/tasks/main/view/TasksView;)V

    return-void
.end method
