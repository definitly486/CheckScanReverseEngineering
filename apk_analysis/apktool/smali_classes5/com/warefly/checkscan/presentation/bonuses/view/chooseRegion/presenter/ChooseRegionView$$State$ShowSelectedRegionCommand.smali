.class public Lcom/warefly/checkscan/presentation/bonuses/view/chooseRegion/presenter/ChooseRegionView$$State$ShowSelectedRegionCommand;
.super Lwd9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/warefly/checkscan/presentation/bonuses/view/chooseRegion/presenter/ChooseRegionView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShowSelectedRegionCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lwd9<",
        "Lcom/warefly/checkscan/presentation/bonuses/view/chooseRegion/presenter/ChooseRegionView;",
        ">;"
    }
.end annotation


# instance fields
.field public final region:Ll17;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/bonuses/view/chooseRegion/presenter/ChooseRegionView$$State;Ll17;)V
    .locals 1

    const-string p1, "showSelectedRegion"

    const-class v0, Lk9;

    invoke-direct {p0, p1, v0}, Lwd9;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/bonuses/view/chooseRegion/presenter/ChooseRegionView$$State$ShowSelectedRegionCommand;->region:Ll17;

    return-void
.end method


# virtual methods
.method public apply(Lcom/warefly/checkscan/presentation/bonuses/view/chooseRegion/presenter/ChooseRegionView;)V
    .locals 0

    .line 6
    iget-object p0, p0, Lcom/warefly/checkscan/presentation/bonuses/view/chooseRegion/presenter/ChooseRegionView$$State$ShowSelectedRegionCommand;->region:Ll17;

    invoke-interface {p1, p0}, Lcom/warefly/checkscan/presentation/bonuses/view/chooseRegion/presenter/ChooseRegionView;->showSelectedRegion(Ll17;)V

    return-void
.end method

.method public bridge synthetic apply(Ljh5;)V
    .locals 0

    check-cast p1, Lcom/warefly/checkscan/presentation/bonuses/view/chooseRegion/presenter/ChooseRegionView;

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/presentation/bonuses/view/chooseRegion/presenter/ChooseRegionView$$State$ShowSelectedRegionCommand;->apply(Lcom/warefly/checkscan/presentation/bonuses/view/chooseRegion/presenter/ChooseRegionView;)V

    return-void
.end method
