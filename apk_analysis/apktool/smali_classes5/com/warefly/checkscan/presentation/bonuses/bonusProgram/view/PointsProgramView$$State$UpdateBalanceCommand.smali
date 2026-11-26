.class public Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/view/PointsProgramView$$State$UpdateBalanceCommand;
.super Lwd9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/view/PointsProgramView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UpdateBalanceCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lwd9<",
        "Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/view/PointsProgramView;",
        ">;"
    }
.end annotation


# instance fields
.field public final balance:I


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/view/PointsProgramView$$State;I)V
    .locals 1

    const-string p1, "updateBalance"

    const-class v0, Lk9;

    invoke-direct {p0, p1, v0}, Lwd9;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput p2, p0, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/view/PointsProgramView$$State$UpdateBalanceCommand;->balance:I

    return-void
.end method


# virtual methods
.method public apply(Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/view/PointsProgramView;)V
    .locals 0

    .line 6
    iget p0, p0, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/view/PointsProgramView$$State$UpdateBalanceCommand;->balance:I

    invoke-interface {p1, p0}, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/view/PointsProgramView;->updateBalance(I)V

    return-void
.end method

.method public bridge synthetic apply(Ljh5;)V
    .locals 0

    check-cast p1, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/view/PointsProgramView;

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/view/PointsProgramView$$State$UpdateBalanceCommand;->apply(Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/view/PointsProgramView;)V

    return-void
.end method
