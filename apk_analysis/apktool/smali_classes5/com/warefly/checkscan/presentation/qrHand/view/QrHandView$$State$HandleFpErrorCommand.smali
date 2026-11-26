.class public Lcom/warefly/checkscan/presentation/qrHand/view/QrHandView$$State$HandleFpErrorCommand;
.super Lwd9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/warefly/checkscan/presentation/qrHand/view/QrHandView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HandleFpErrorCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lwd9<",
        "Lcom/warefly/checkscan/presentation/qrHand/view/QrHandView;",
        ">;"
    }
.end annotation


# instance fields
.field public final isEnable:Z

.field public final text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/qrHand/view/QrHandView$$State;Ljava/lang/String;Z)V
    .locals 1

    const-string p1, "handleFpError"

    const-class v0, Li9;

    invoke-direct {p0, p1, v0}, Lwd9;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/qrHand/view/QrHandView$$State$HandleFpErrorCommand;->text:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/warefly/checkscan/presentation/qrHand/view/QrHandView$$State$HandleFpErrorCommand;->isEnable:Z

    return-void
.end method


# virtual methods
.method public apply(Lcom/warefly/checkscan/presentation/qrHand/view/QrHandView;)V
    .locals 1

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/qrHand/view/QrHandView$$State$HandleFpErrorCommand;->text:Ljava/lang/String;

    iget-boolean p0, p0, Lcom/warefly/checkscan/presentation/qrHand/view/QrHandView$$State$HandleFpErrorCommand;->isEnable:Z

    invoke-interface {p1, v0, p0}, Lcom/warefly/checkscan/presentation/qrHand/view/QrHandView;->handleFpError(Ljava/lang/String;Z)V

    return-void
.end method

.method public bridge synthetic apply(Ljh5;)V
    .locals 0

    .line 8
    check-cast p1, Lcom/warefly/checkscan/presentation/qrHand/view/QrHandView;

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/presentation/qrHand/view/QrHandView$$State$HandleFpErrorCommand;->apply(Lcom/warefly/checkscan/presentation/qrHand/view/QrHandView;)V

    return-void
.end method
