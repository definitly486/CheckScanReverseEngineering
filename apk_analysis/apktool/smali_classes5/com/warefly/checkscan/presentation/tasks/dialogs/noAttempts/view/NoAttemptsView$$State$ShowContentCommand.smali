.class public Lcom/warefly/checkscan/presentation/tasks/dialogs/noAttempts/view/NoAttemptsView$$State$ShowContentCommand;
.super Lwd9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/warefly/checkscan/presentation/tasks/dialogs/noAttempts/view/NoAttemptsView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShowContentCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lwd9<",
        "Lcom/warefly/checkscan/presentation/tasks/dialogs/noAttempts/view/NoAttemptsView;",
        ">;"
    }
.end annotation


# instance fields
.field public final noAttempts:Lcom/warefly/checkscan/tasks/presentation/dailyTask/model/DailyTaskNoAttempts;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/tasks/dialogs/noAttempts/view/NoAttemptsView$$State;Lcom/warefly/checkscan/tasks/presentation/dailyTask/model/DailyTaskNoAttempts;)V
    .locals 1

    const-string p1, "showContent"

    const-class v0, Lk9;

    invoke-direct {p0, p1, v0}, Lwd9;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/tasks/dialogs/noAttempts/view/NoAttemptsView$$State$ShowContentCommand;->noAttempts:Lcom/warefly/checkscan/tasks/presentation/dailyTask/model/DailyTaskNoAttempts;

    return-void
.end method


# virtual methods
.method public apply(Lcom/warefly/checkscan/presentation/tasks/dialogs/noAttempts/view/NoAttemptsView;)V
    .locals 0

    .line 6
    iget-object p0, p0, Lcom/warefly/checkscan/presentation/tasks/dialogs/noAttempts/view/NoAttemptsView$$State$ShowContentCommand;->noAttempts:Lcom/warefly/checkscan/tasks/presentation/dailyTask/model/DailyTaskNoAttempts;

    invoke-interface {p1, p0}, Lcom/warefly/checkscan/presentation/tasks/dialogs/noAttempts/view/NoAttemptsView;->showContent(Lcom/warefly/checkscan/tasks/presentation/dailyTask/model/DailyTaskNoAttempts;)V

    return-void
.end method

.method public bridge synthetic apply(Ljh5;)V
    .locals 0

    check-cast p1, Lcom/warefly/checkscan/presentation/tasks/dialogs/noAttempts/view/NoAttemptsView;

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/presentation/tasks/dialogs/noAttempts/view/NoAttemptsView$$State$ShowContentCommand;->apply(Lcom/warefly/checkscan/presentation/tasks/dialogs/noAttempts/view/NoAttemptsView;)V

    return-void
.end method
