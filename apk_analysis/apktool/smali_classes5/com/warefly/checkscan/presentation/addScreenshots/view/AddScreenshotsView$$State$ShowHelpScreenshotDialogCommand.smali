.class public Lcom/warefly/checkscan/presentation/addScreenshots/view/AddScreenshotsView$$State$ShowHelpScreenshotDialogCommand;
.super Lwd9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/warefly/checkscan/presentation/addScreenshots/view/AddScreenshotsView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShowHelpScreenshotDialogCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lwd9<",
        "Lcom/warefly/checkscan/presentation/addScreenshots/view/AddScreenshotsView;",
        ">;"
    }
.end annotation


# instance fields
.field public final id:J


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/addScreenshots/view/AddScreenshotsView$$State;J)V
    .locals 1

    const-string p1, "showHelpScreenshotDialog"

    const-class v0, Lhx5;

    invoke-direct {p0, p1, v0}, Lwd9;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-wide p2, p0, Lcom/warefly/checkscan/presentation/addScreenshots/view/AddScreenshotsView$$State$ShowHelpScreenshotDialogCommand;->id:J

    return-void
.end method


# virtual methods
.method public apply(Lcom/warefly/checkscan/presentation/addScreenshots/view/AddScreenshotsView;)V
    .locals 2

    .line 6
    iget-wide v0, p0, Lcom/warefly/checkscan/presentation/addScreenshots/view/AddScreenshotsView$$State$ShowHelpScreenshotDialogCommand;->id:J

    invoke-interface {p1, v0, v1}, Lcom/warefly/checkscan/presentation/addScreenshots/view/AddScreenshotsView;->showHelpScreenshotDialog(J)V

    return-void
.end method

.method public bridge synthetic apply(Ljh5;)V
    .locals 0

    check-cast p1, Lcom/warefly/checkscan/presentation/addScreenshots/view/AddScreenshotsView;

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/presentation/addScreenshots/view/AddScreenshotsView$$State$ShowHelpScreenshotDialogCommand;->apply(Lcom/warefly/checkscan/presentation/addScreenshots/view/AddScreenshotsView;)V

    return-void
.end method
