.class public Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/view/PointsProgramView$$State$EnableTransferCommand;
.super Lwd9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/view/PointsProgramView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EnableTransferCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lwd9<",
        "Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/view/PointsProgramView;",
        ">;"
    }
.end annotation


# instance fields
.field public final enable:Z

.field public final programId:J


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/view/PointsProgramView$$State;ZJ)V
    .locals 1

    const-string p1, "enableTransfer"

    const-class v0, Lk9;

    invoke-direct {p0, p1, v0}, Lwd9;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-boolean p2, p0, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/view/PointsProgramView$$State$EnableTransferCommand;->enable:Z

    iput-wide p3, p0, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/view/PointsProgramView$$State$EnableTransferCommand;->programId:J

    return-void
.end method


# virtual methods
.method public apply(Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/view/PointsProgramView;)V
    .locals 3

    iget-boolean v0, p0, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/view/PointsProgramView$$State$EnableTransferCommand;->enable:Z

    iget-wide v1, p0, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/view/PointsProgramView$$State$EnableTransferCommand;->programId:J

    invoke-interface {p1, v0, v1, v2}, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/view/PointsProgramView;->enableTransfer(ZJ)V

    return-void
.end method

.method public bridge synthetic apply(Ljh5;)V
    .locals 0

    .line 8
    check-cast p1, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/view/PointsProgramView;

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/view/PointsProgramView$$State$EnableTransferCommand;->apply(Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/view/PointsProgramView;)V

    return-void
.end method
