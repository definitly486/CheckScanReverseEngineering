.class public final Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/view/PointsProgramFragment$b;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/view/PointsProgramFragment;->enableTransfer(ZJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lnl3<",
        "Landroid/view/View;",
        "Lj59;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:Landroid/widget/TextView;

.field public final synthetic g:J

.field public final synthetic h:Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/view/PointsProgramFragment;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;JLcom/warefly/checkscan/presentation/bonuses/bonusProgram/view/PointsProgramFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/view/PointsProgramFragment$b;->f:Landroid/widget/TextView;

    iput-wide p2, p0, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/view/PointsProgramFragment$b;->g:J

    iput-object p4, p0, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/view/PointsProgramFragment$b;->h:Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/view/PointsProgramFragment;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/view/PointsProgramFragment$b;->f:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance v0, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/transfer/TransferPointsDialog;

    new-instance v1, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/view/PointsProgramFragment$a;

    iget-object v2, p0, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/view/PointsProgramFragment$b;->h:Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/view/PointsProgramFragment;

    invoke-direct {v1, v2}, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/view/PointsProgramFragment$a;-><init>(Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/view/PointsProgramFragment;)V

    iget-wide v2, p0, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/view/PointsProgramFragment$b;->g:J

    invoke-direct {v0, p1, v2, v3, v1}, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/transfer/TransferPointsDialog;-><init>(Landroid/content/Context;JLcom/warefly/checkscan/presentation/bonuses/bonusProgram/view/PointsProgramFragment$a;)V

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
