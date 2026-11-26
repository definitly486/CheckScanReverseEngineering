.class public Lcom/warefly/checkscan/presentation/flows/catalog/presenter/CatalogFlowView$$State$SetLaunchScreenCommand;
.super Lwd9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/warefly/checkscan/presentation/flows/catalog/presenter/CatalogFlowView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SetLaunchScreenCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lwd9<",
        "Lcom/warefly/checkscan/presentation/flows/catalog/presenter/CatalogFlowView;",
        ">;"
    }
.end annotation


# instance fields
.field public final arg0:[Llk3;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/flows/catalog/presenter/CatalogFlowView$$State;[Llk3;)V
    .locals 1

    const-string p1, "setLaunchScreen"

    const-class v0, Lhx5;

    invoke-direct {p0, p1, v0}, Lwd9;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/flows/catalog/presenter/CatalogFlowView$$State$SetLaunchScreenCommand;->arg0:[Llk3;

    return-void
.end method


# virtual methods
.method public apply(Lcom/warefly/checkscan/presentation/flows/catalog/presenter/CatalogFlowView;)V
    .locals 0

    .line 6
    iget-object p0, p0, Lcom/warefly/checkscan/presentation/flows/catalog/presenter/CatalogFlowView$$State$SetLaunchScreenCommand;->arg0:[Llk3;

    invoke-interface {p1, p0}, Lcom/warefly/checkscan/core/ui/base/architecture/FlowView;->setLaunchScreen([Llk3;)V

    return-void
.end method

.method public bridge synthetic apply(Ljh5;)V
    .locals 0

    check-cast p1, Lcom/warefly/checkscan/presentation/flows/catalog/presenter/CatalogFlowView;

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/presentation/flows/catalog/presenter/CatalogFlowView$$State$SetLaunchScreenCommand;->apply(Lcom/warefly/checkscan/presentation/flows/catalog/presenter/CatalogFlowView;)V

    return-void
.end method
