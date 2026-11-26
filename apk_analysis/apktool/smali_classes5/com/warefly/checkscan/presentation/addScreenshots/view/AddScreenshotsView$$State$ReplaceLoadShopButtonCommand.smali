.class public Lcom/warefly/checkscan/presentation/addScreenshots/view/AddScreenshotsView$$State$ReplaceLoadShopButtonCommand;
.super Lwd9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/warefly/checkscan/presentation/addScreenshots/view/AddScreenshotsView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ReplaceLoadShopButtonCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lwd9<",
        "Lcom/warefly/checkscan/presentation/addScreenshots/view/AddScreenshotsView;",
        ">;"
    }
.end annotation


# instance fields
.field public final uri:Landroid/net/Uri;

.field public final value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/addScreenshots/view/AddScreenshotsView$$State;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 1

    const-string p1, "replaceLoadShopButton"

    const-class v0, Li9;

    invoke-direct {p0, p1, v0}, Lwd9;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/addScreenshots/view/AddScreenshotsView$$State$ReplaceLoadShopButtonCommand;->value:Ljava/lang/String;

    iput-object p3, p0, Lcom/warefly/checkscan/presentation/addScreenshots/view/AddScreenshotsView$$State$ReplaceLoadShopButtonCommand;->uri:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public apply(Lcom/warefly/checkscan/presentation/addScreenshots/view/AddScreenshotsView;)V
    .locals 1

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/addScreenshots/view/AddScreenshotsView$$State$ReplaceLoadShopButtonCommand;->value:Ljava/lang/String;

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/addScreenshots/view/AddScreenshotsView$$State$ReplaceLoadShopButtonCommand;->uri:Landroid/net/Uri;

    invoke-interface {p1, v0, p0}, Lcom/warefly/checkscan/presentation/addScreenshots/view/AddScreenshotsView;->replaceLoadShopButton(Ljava/lang/String;Landroid/net/Uri;)V

    return-void
.end method

.method public bridge synthetic apply(Ljh5;)V
    .locals 0

    .line 8
    check-cast p1, Lcom/warefly/checkscan/presentation/addScreenshots/view/AddScreenshotsView;

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/presentation/addScreenshots/view/AddScreenshotsView$$State$ReplaceLoadShopButtonCommand;->apply(Lcom/warefly/checkscan/presentation/addScreenshots/view/AddScreenshotsView;)V

    return-void
.end method
