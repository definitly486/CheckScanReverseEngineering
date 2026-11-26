.class public Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/transfer/TransferPointsView$$State$ShowCodeExpiringTimeCommand;
.super Lwd9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/transfer/TransferPointsView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShowCodeExpiringTimeCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lwd9<",
        "Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/transfer/TransferPointsView;",
        ">;"
    }
.end annotation


# instance fields
.field public final minutes:J

.field public final seconds:J


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/transfer/TransferPointsView$$State;JJ)V
    .locals 1

    const-string p1, "showCodeExpiringTime"

    const-class v0, Lhx5;

    invoke-direct {p0, p1, v0}, Lwd9;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-wide p2, p0, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/transfer/TransferPointsView$$State$ShowCodeExpiringTimeCommand;->minutes:J

    iput-wide p4, p0, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/transfer/TransferPointsView$$State$ShowCodeExpiringTimeCommand;->seconds:J

    return-void
.end method


# virtual methods
.method public apply(Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/transfer/TransferPointsView;)V
    .locals 4

    iget-wide v0, p0, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/transfer/TransferPointsView$$State$ShowCodeExpiringTimeCommand;->minutes:J

    iget-wide v2, p0, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/transfer/TransferPointsView$$State$ShowCodeExpiringTimeCommand;->seconds:J

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/transfer/TransferPointsView;->showCodeExpiringTime(JJ)V

    return-void
.end method

.method public bridge synthetic apply(Ljh5;)V
    .locals 0

    .line 8
    check-cast p1, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/transfer/TransferPointsView;

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/transfer/TransferPointsView$$State$ShowCodeExpiringTimeCommand;->apply(Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/transfer/TransferPointsView;)V

    return-void
.end method
