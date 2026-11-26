.class public final Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/view/PointsProgramFragment$e;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/view/PointsProgramFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lnl3<",
        "Ljava/lang/Boolean;",
        "Lj59;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/view/PointsProgramFragment;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/view/PointsProgramFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/view/PointsProgramFragment$e;->f:Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/view/PointsProgramFragment;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/view/PointsProgramFragment$e;->f:Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/view/PointsProgramFragment;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/view/PointsProgramFragment;->o()Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/presenter/PointsProgramPresenter;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/presenter/PointsProgramPresenter;->showLoadingDialog(Z)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
