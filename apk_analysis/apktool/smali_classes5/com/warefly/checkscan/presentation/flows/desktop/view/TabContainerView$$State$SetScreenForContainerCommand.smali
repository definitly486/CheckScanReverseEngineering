.class public Lcom/warefly/checkscan/presentation/flows/desktop/view/TabContainerView$$State$SetScreenForContainerCommand;
.super Lwd9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/warefly/checkscan/presentation/flows/desktop/view/TabContainerView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SetScreenForContainerCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lwd9<",
        "Lcom/warefly/checkscan/presentation/flows/desktop/view/TabContainerView;",
        ">;"
    }
.end annotation


# instance fields
.field public final screen:Llk3;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/flows/desktop/view/TabContainerView$$State;Llk3;)V
    .locals 1

    const-string p1, "setScreenForContainer"

    const-class v0, Lhx5;

    invoke-direct {p0, p1, v0}, Lwd9;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/flows/desktop/view/TabContainerView$$State$SetScreenForContainerCommand;->screen:Llk3;

    return-void
.end method


# virtual methods
.method public apply(Lcom/warefly/checkscan/presentation/flows/desktop/view/TabContainerView;)V
    .locals 0

    .line 6
    iget-object p0, p0, Lcom/warefly/checkscan/presentation/flows/desktop/view/TabContainerView$$State$SetScreenForContainerCommand;->screen:Llk3;

    invoke-interface {p1, p0}, Lcom/warefly/checkscan/presentation/flows/desktop/view/TabContainerView;->setScreenForContainer(Llk3;)V

    return-void
.end method

.method public bridge synthetic apply(Ljh5;)V
    .locals 0

    check-cast p1, Lcom/warefly/checkscan/presentation/flows/desktop/view/TabContainerView;

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/presentation/flows/desktop/view/TabContainerView$$State$SetScreenForContainerCommand;->apply(Lcom/warefly/checkscan/presentation/flows/desktop/view/TabContainerView;)V

    return-void
.end method
