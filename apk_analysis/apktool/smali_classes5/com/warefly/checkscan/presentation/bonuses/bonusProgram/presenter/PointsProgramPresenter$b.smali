.class public final Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/presenter/PointsProgramPresenter$b;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/presenter/PointsProgramPresenter;->loadBonusProgram()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lnl3<",
        "Lgo0;",
        "Lj59;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/presenter/PointsProgramPresenter;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/presenter/PointsProgramPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/presenter/PointsProgramPresenter$b;->f:Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/presenter/PointsProgramPresenter;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    check-cast p1, Lgo0;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/presenter/PointsProgramPresenter$b;->f:Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/presenter/PointsProgramPresenter;

    invoke-static {p0, p1}, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/presenter/PointsProgramPresenter;->access$setBonusProgram$p(Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/presenter/PointsProgramPresenter;Lgo0;)V

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/view/PointsProgramView;

    if-eqz v1, :cond_5

    invoke-static {p0}, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/presenter/PointsProgramPresenter;->access$getProgramId$p(Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/presenter/PointsProgramPresenter;)J

    move-result-wide v2

    invoke-virtual {p1}, Lgo0;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lgo0;->c()Luf6;

    move-result-object v0

    const-string v5, ""

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Luf6;->a()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v5

    :cond_1
    invoke-virtual {p1}, Lgo0;->c()Luf6;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-virtual {v6}, Luf6;->b()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_3

    :cond_2
    move-object v6, v5

    :cond_3
    invoke-virtual {p1}, Lgo0;->a()Ljava/lang/String;

    move-result-object v7

    move-object v5, v0

    invoke-interface/range {v1 .. v7}, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/view/PointsProgramView;->showProgram(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-interface {v1, p1}, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/view/PointsProgramView;->showLoadingProgram(Z)V

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/view/PointsProgramView;

    if-eqz v0, :cond_4

    invoke-interface {v0, p1}, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/view/PointsProgramView;->showLoadingProgram(Z)V

    :cond_4
    invoke-static {p0}, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/presenter/PointsProgramPresenter;->access$showAgreement(Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/presenter/PointsProgramPresenter;)V

    :cond_5
    invoke-static {p0}, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/presenter/PointsProgramPresenter;->access$afterProgramLoad(Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/presenter/PointsProgramPresenter;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
