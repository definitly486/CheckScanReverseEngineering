.class public Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/view/PointsProgramView$$State$ShowProgramCommand;
.super Lwd9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/view/PointsProgramView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShowProgramCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lwd9<",
        "Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/view/PointsProgramView;",
        ">;"
    }
.end annotation


# instance fields
.field public final balanceTitle:Ljava/lang/String;

.field public final balanceValue:Ljava/lang/String;

.field public final logoUrl:Ljava/lang/String;

.field public final programId:J

.field public final programName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/view/PointsProgramView$$State;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string p1, "showProgram"

    const-class v0, Lk9;

    invoke-direct {p0, p1, v0}, Lwd9;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-wide p2, p0, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/view/PointsProgramView$$State$ShowProgramCommand;->programId:J

    iput-object p4, p0, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/view/PointsProgramView$$State$ShowProgramCommand;->programName:Ljava/lang/String;

    iput-object p5, p0, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/view/PointsProgramView$$State$ShowProgramCommand;->balanceTitle:Ljava/lang/String;

    iput-object p6, p0, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/view/PointsProgramView$$State$ShowProgramCommand;->balanceValue:Ljava/lang/String;

    iput-object p7, p0, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/view/PointsProgramView$$State$ShowProgramCommand;->logoUrl:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public apply(Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/view/PointsProgramView;)V
    .locals 7

    iget-wide v1, p0, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/view/PointsProgramView$$State$ShowProgramCommand;->programId:J

    iget-object v3, p0, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/view/PointsProgramView$$State$ShowProgramCommand;->programName:Ljava/lang/String;

    iget-object v4, p0, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/view/PointsProgramView$$State$ShowProgramCommand;->balanceTitle:Ljava/lang/String;

    iget-object v5, p0, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/view/PointsProgramView$$State$ShowProgramCommand;->balanceValue:Ljava/lang/String;

    iget-object v6, p0, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/view/PointsProgramView$$State$ShowProgramCommand;->logoUrl:Ljava/lang/String;

    move-object v0, p1

    invoke-interface/range {v0 .. v6}, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/view/PointsProgramView;->showProgram(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic apply(Ljh5;)V
    .locals 0

    .line 15
    check-cast p1, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/view/PointsProgramView;

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/view/PointsProgramView$$State$ShowProgramCommand;->apply(Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/view/PointsProgramView;)V

    return-void
.end method
