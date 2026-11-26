.class public final Lcom/warefly/checkscan/presentation/bonuses/shopPage/view/BonusAdmitadNewFragment$n;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/presentation/bonuses/shopPage/view/BonusAdmitadNewFragment;->showOrd(Lb06;)V
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
.field public final synthetic f:Lcom/warefly/checkscan/presentation/bonuses/shopPage/view/BonusAdmitadNewFragment;

.field public final synthetic g:Lb06;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/bonuses/shopPage/view/BonusAdmitadNewFragment;Lb06;)V
    .locals 0

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/bonuses/shopPage/view/BonusAdmitadNewFragment$n;->f:Lcom/warefly/checkscan/presentation/bonuses/shopPage/view/BonusAdmitadNewFragment;

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/bonuses/shopPage/view/BonusAdmitadNewFragment$n;->g:Lb06;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Lcom/warefly/checkscan/presentation/bonuses/shopPage/view/BonusAdmitadNewFragment$n;->f:Lcom/warefly/checkscan/presentation/bonuses/shopPage/view/BonusAdmitadNewFragment;

    invoke-virtual {p1}, Lcom/warefly/checkscan/presentation/bonuses/shopPage/view/BonusAdmitadNewFragment;->o()Lcom/warefly/checkscan/presentation/bonuses/shopPage/presenter/BonusAdmitadNewPresenter;

    move-result-object p1

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/bonuses/shopPage/view/BonusAdmitadNewFragment$n;->g:Lb06;

    invoke-virtual {p1, p0}, Lcom/warefly/checkscan/presentation/bonuses/shopPage/presenter/BonusAdmitadNewPresenter;->onOrdClick(Lb06;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
