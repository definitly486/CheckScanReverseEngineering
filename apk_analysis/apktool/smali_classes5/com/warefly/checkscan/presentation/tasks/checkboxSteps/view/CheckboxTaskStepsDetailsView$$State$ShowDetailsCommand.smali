.class public Lcom/warefly/checkscan/presentation/tasks/checkboxSteps/view/CheckboxTaskStepsDetailsView$$State$ShowDetailsCommand;
.super Lwd9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/warefly/checkscan/presentation/tasks/checkboxSteps/view/CheckboxTaskStepsDetailsView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShowDetailsCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lwd9<",
        "Lcom/warefly/checkscan/presentation/tasks/checkboxSteps/view/CheckboxTaskStepsDetailsView;",
        ">;"
    }
.end annotation


# instance fields
.field public final details:Lec1;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/tasks/checkboxSteps/view/CheckboxTaskStepsDetailsView$$State;Lec1;)V
    .locals 1

    const-string p1, "showDetails"

    const-class v0, Lk9;

    invoke-direct {p0, p1, v0}, Lwd9;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/tasks/checkboxSteps/view/CheckboxTaskStepsDetailsView$$State$ShowDetailsCommand;->details:Lec1;

    return-void
.end method


# virtual methods
.method public apply(Lcom/warefly/checkscan/presentation/tasks/checkboxSteps/view/CheckboxTaskStepsDetailsView;)V
    .locals 0

    .line 6
    iget-object p0, p0, Lcom/warefly/checkscan/presentation/tasks/checkboxSteps/view/CheckboxTaskStepsDetailsView$$State$ShowDetailsCommand;->details:Lec1;

    invoke-interface {p1, p0}, Lcom/warefly/checkscan/presentation/tasks/checkboxSteps/view/CheckboxTaskStepsDetailsView;->showDetails(Lec1;)V

    return-void
.end method

.method public bridge synthetic apply(Ljh5;)V
    .locals 0

    check-cast p1, Lcom/warefly/checkscan/presentation/tasks/checkboxSteps/view/CheckboxTaskStepsDetailsView;

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/presentation/tasks/checkboxSteps/view/CheckboxTaskStepsDetailsView$$State$ShowDetailsCommand;->apply(Lcom/warefly/checkscan/presentation/tasks/checkboxSteps/view/CheckboxTaskStepsDetailsView;)V

    return-void
.end method
