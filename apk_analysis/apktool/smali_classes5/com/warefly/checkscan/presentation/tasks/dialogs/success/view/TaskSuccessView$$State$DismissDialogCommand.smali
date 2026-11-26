.class public Lcom/warefly/checkscan/presentation/tasks/dialogs/success/view/TaskSuccessView$$State$DismissDialogCommand;
.super Lwd9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/warefly/checkscan/presentation/tasks/dialogs/success/view/TaskSuccessView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DismissDialogCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lwd9<",
        "Lcom/warefly/checkscan/presentation/tasks/dialogs/success/view/TaskSuccessView;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/tasks/dialogs/success/view/TaskSuccessView$$State;)V
    .locals 1

    const-string p1, "dismissDialog"

    const-class v0, Lhx5;

    invoke-direct {p0, p1, v0}, Lwd9;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public apply(Lcom/warefly/checkscan/presentation/tasks/dialogs/success/view/TaskSuccessView;)V
    .locals 0

    .line 6
    invoke-interface {p1}, Lcom/warefly/checkscan/presentation/tasks/dialogs/success/view/TaskSuccessView;->dismissDialog()V

    return-void
.end method

.method public bridge synthetic apply(Ljh5;)V
    .locals 0

    check-cast p1, Lcom/warefly/checkscan/presentation/tasks/dialogs/success/view/TaskSuccessView;

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/presentation/tasks/dialogs/success/view/TaskSuccessView$$State$DismissDialogCommand;->apply(Lcom/warefly/checkscan/presentation/tasks/dialogs/success/view/TaskSuccessView;)V

    return-void
.end method
