.class public Lcom/warefly/checkscan/presentation/bonuses/search/view/BonusesSearchView$$State$ShowFavouriteStatusChangedCommand;
.super Lwd9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/warefly/checkscan/presentation/bonuses/search/view/BonusesSearchView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShowFavouriteStatusChangedCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lwd9<",
        "Lcom/warefly/checkscan/presentation/bonuses/search/view/BonusesSearchView;",
        ">;"
    }
.end annotation


# instance fields
.field public final favourite:Z


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/bonuses/search/view/BonusesSearchView$$State;Z)V
    .locals 1

    const-string p1, "showFavouriteStatusChanged"

    const-class v0, Lhx5;

    invoke-direct {p0, p1, v0}, Lwd9;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-boolean p2, p0, Lcom/warefly/checkscan/presentation/bonuses/search/view/BonusesSearchView$$State$ShowFavouriteStatusChangedCommand;->favourite:Z

    return-void
.end method


# virtual methods
.method public apply(Lcom/warefly/checkscan/presentation/bonuses/search/view/BonusesSearchView;)V
    .locals 0

    .line 6
    iget-boolean p0, p0, Lcom/warefly/checkscan/presentation/bonuses/search/view/BonusesSearchView$$State$ShowFavouriteStatusChangedCommand;->favourite:Z

    invoke-interface {p1, p0}, Lcom/warefly/checkscan/presentation/bonuses/search/view/BonusesSearchView;->showFavouriteStatusChanged(Z)V

    return-void
.end method

.method public bridge synthetic apply(Ljh5;)V
    .locals 0

    check-cast p1, Lcom/warefly/checkscan/presentation/bonuses/search/view/BonusesSearchView;

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/presentation/bonuses/search/view/BonusesSearchView$$State$ShowFavouriteStatusChangedCommand;->apply(Lcom/warefly/checkscan/presentation/bonuses/search/view/BonusesSearchView;)V

    return-void
.end method
