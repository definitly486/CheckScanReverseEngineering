.class public Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopView$$State$SetTabCommand;
.super Lwd9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SetTabCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lwd9<",
        "Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopView;",
        ">;"
    }
.end annotation


# instance fields
.field public final deeplink:Lcom/warefly/checkscan/presentation/Deeplink$Desktop;

.field public final tab:Lri8;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopView$$State;Lri8;Lcom/warefly/checkscan/presentation/Deeplink$Desktop;)V
    .locals 1

    const-string p1, "setTab"

    const-class v0, Li9;

    invoke-direct {p0, p1, v0}, Lwd9;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopView$$State$SetTabCommand;->tab:Lri8;

    iput-object p3, p0, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopView$$State$SetTabCommand;->deeplink:Lcom/warefly/checkscan/presentation/Deeplink$Desktop;

    return-void
.end method


# virtual methods
.method public apply(Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopView;)V
    .locals 1

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopView$$State$SetTabCommand;->tab:Lri8;

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopView$$State$SetTabCommand;->deeplink:Lcom/warefly/checkscan/presentation/Deeplink$Desktop;

    invoke-interface {p1, v0, p0}, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopView;->setTab(Lri8;Lcom/warefly/checkscan/presentation/Deeplink$Desktop;)V

    return-void
.end method

.method public bridge synthetic apply(Ljh5;)V
    .locals 0

    .line 8
    check-cast p1, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopView;

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopView$$State$SetTabCommand;->apply(Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopView;)V

    return-void
.end method
