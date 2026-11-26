.class public Lcom/warefly/checkscan/support/presentation/flow/view/SupportFlowView$$State$SetLaunchScreenCommand;
.super Lwd9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/warefly/checkscan/support/presentation/flow/view/SupportFlowView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SetLaunchScreenCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lwd9<",
        "Lcom/warefly/checkscan/support/presentation/flow/view/SupportFlowView;",
        ">;"
    }
.end annotation


# instance fields
.field public final arg0:[Llk3;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/support/presentation/flow/view/SupportFlowView$$State;[Llk3;)V
    .locals 1

    const-string p1, "setLaunchScreen"

    const-class v0, Lhx5;

    invoke-direct {p0, p1, v0}, Lwd9;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object p2, p0, Lcom/warefly/checkscan/support/presentation/flow/view/SupportFlowView$$State$SetLaunchScreenCommand;->arg0:[Llk3;

    return-void
.end method


# virtual methods
.method public apply(Lcom/warefly/checkscan/support/presentation/flow/view/SupportFlowView;)V
    .locals 0

    .line 6
    iget-object p0, p0, Lcom/warefly/checkscan/support/presentation/flow/view/SupportFlowView$$State$SetLaunchScreenCommand;->arg0:[Llk3;

    invoke-interface {p1, p0}, Lcom/warefly/checkscan/core/ui/base/architecture/FlowView;->setLaunchScreen([Llk3;)V

    return-void
.end method

.method public bridge synthetic apply(Ljh5;)V
    .locals 0

    check-cast p1, Lcom/warefly/checkscan/support/presentation/flow/view/SupportFlowView;

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/support/presentation/flow/view/SupportFlowView$$State$SetLaunchScreenCommand;->apply(Lcom/warefly/checkscan/support/presentation/flow/view/SupportFlowView;)V

    return-void
.end method
