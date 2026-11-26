.class public Lcom/warefly/checkscan/presentation/tasks/daily/view/DailyTaskView$$State$ShowContentCommand;
.super Lwd9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/warefly/checkscan/presentation/tasks/daily/view/DailyTaskView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShowContentCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lwd9<",
        "Lcom/warefly/checkscan/presentation/tasks/daily/view/DailyTaskView;",
        ">;"
    }
.end annotation


# instance fields
.field public final screen:Ll82;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/tasks/daily/view/DailyTaskView$$State;Ll82;)V
    .locals 1

    const-string p1, "showContent"

    const-class v0, Lk9;

    invoke-direct {p0, p1, v0}, Lwd9;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/tasks/daily/view/DailyTaskView$$State$ShowContentCommand;->screen:Ll82;

    return-void
.end method


# virtual methods
.method public apply(Lcom/warefly/checkscan/presentation/tasks/daily/view/DailyTaskView;)V
    .locals 0

    .line 6
    iget-object p0, p0, Lcom/warefly/checkscan/presentation/tasks/daily/view/DailyTaskView$$State$ShowContentCommand;->screen:Ll82;

    invoke-interface {p1, p0}, Lcom/warefly/checkscan/presentation/tasks/daily/view/DailyTaskView;->showContent(Ll82;)V

    return-void
.end method

.method public bridge synthetic apply(Ljh5;)V
    .locals 0

    check-cast p1, Lcom/warefly/checkscan/presentation/tasks/daily/view/DailyTaskView;

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/presentation/tasks/daily/view/DailyTaskView$$State$ShowContentCommand;->apply(Lcom/warefly/checkscan/presentation/tasks/daily/view/DailyTaskView;)V

    return-void
.end method
