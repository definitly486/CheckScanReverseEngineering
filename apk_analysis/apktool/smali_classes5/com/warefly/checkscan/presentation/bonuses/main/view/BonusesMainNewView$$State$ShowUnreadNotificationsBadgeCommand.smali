.class public Lcom/warefly/checkscan/presentation/bonuses/main/view/BonusesMainNewView$$State$ShowUnreadNotificationsBadgeCommand;
.super Lwd9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/warefly/checkscan/presentation/bonuses/main/view/BonusesMainNewView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShowUnreadNotificationsBadgeCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lwd9<",
        "Lcom/warefly/checkscan/presentation/bonuses/main/view/BonusesMainNewView;",
        ">;"
    }
.end annotation


# instance fields
.field public final unread:Z


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/bonuses/main/view/BonusesMainNewView$$State;Z)V
    .locals 1

    const-string p1, "showUnreadNotificationsBadge"

    const-class v0, Lhx5;

    invoke-direct {p0, p1, v0}, Lwd9;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-boolean p2, p0, Lcom/warefly/checkscan/presentation/bonuses/main/view/BonusesMainNewView$$State$ShowUnreadNotificationsBadgeCommand;->unread:Z

    return-void
.end method


# virtual methods
.method public apply(Lcom/warefly/checkscan/presentation/bonuses/main/view/BonusesMainNewView;)V
    .locals 0

    .line 6
    iget-boolean p0, p0, Lcom/warefly/checkscan/presentation/bonuses/main/view/BonusesMainNewView$$State$ShowUnreadNotificationsBadgeCommand;->unread:Z

    invoke-interface {p1, p0}, Lcom/warefly/checkscan/presentation/bonuses/main/view/BonusesMainNewView;->showUnreadNotificationsBadge(Z)V

    return-void
.end method

.method public bridge synthetic apply(Ljh5;)V
    .locals 0

    check-cast p1, Lcom/warefly/checkscan/presentation/bonuses/main/view/BonusesMainNewView;

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/presentation/bonuses/main/view/BonusesMainNewView$$State$ShowUnreadNotificationsBadgeCommand;->apply(Lcom/warefly/checkscan/presentation/bonuses/main/view/BonusesMainNewView;)V

    return-void
.end method
