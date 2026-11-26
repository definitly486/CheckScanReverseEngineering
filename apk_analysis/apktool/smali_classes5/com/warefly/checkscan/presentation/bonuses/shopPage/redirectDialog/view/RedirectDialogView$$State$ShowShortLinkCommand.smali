.class public Lcom/warefly/checkscan/presentation/bonuses/shopPage/redirectDialog/view/RedirectDialogView$$State$ShowShortLinkCommand;
.super Lwd9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/warefly/checkscan/presentation/bonuses/shopPage/redirectDialog/view/RedirectDialogView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShowShortLinkCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lwd9<",
        "Lcom/warefly/checkscan/presentation/bonuses/shopPage/redirectDialog/view/RedirectDialogView;",
        ">;"
    }
.end annotation


# instance fields
.field public final noMobileType:Z

.field public final url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/bonuses/shopPage/redirectDialog/view/RedirectDialogView$$State;Ljava/lang/String;Z)V
    .locals 1

    const-string p1, "showShortLink"

    const-class v0, Lk9;

    invoke-direct {p0, p1, v0}, Lwd9;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/bonuses/shopPage/redirectDialog/view/RedirectDialogView$$State$ShowShortLinkCommand;->url:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/warefly/checkscan/presentation/bonuses/shopPage/redirectDialog/view/RedirectDialogView$$State$ShowShortLinkCommand;->noMobileType:Z

    return-void
.end method


# virtual methods
.method public apply(Lcom/warefly/checkscan/presentation/bonuses/shopPage/redirectDialog/view/RedirectDialogView;)V
    .locals 1

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/bonuses/shopPage/redirectDialog/view/RedirectDialogView$$State$ShowShortLinkCommand;->url:Ljava/lang/String;

    iget-boolean p0, p0, Lcom/warefly/checkscan/presentation/bonuses/shopPage/redirectDialog/view/RedirectDialogView$$State$ShowShortLinkCommand;->noMobileType:Z

    invoke-interface {p1, v0, p0}, Lcom/warefly/checkscan/presentation/bonuses/shopPage/redirectDialog/view/RedirectDialogView;->showShortLink(Ljava/lang/String;Z)V

    return-void
.end method

.method public bridge synthetic apply(Ljh5;)V
    .locals 0

    .line 8
    check-cast p1, Lcom/warefly/checkscan/presentation/bonuses/shopPage/redirectDialog/view/RedirectDialogView;

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/presentation/bonuses/shopPage/redirectDialog/view/RedirectDialogView$$State$ShowShortLinkCommand;->apply(Lcom/warefly/checkscan/presentation/bonuses/shopPage/redirectDialog/view/RedirectDialogView;)V

    return-void
.end method
