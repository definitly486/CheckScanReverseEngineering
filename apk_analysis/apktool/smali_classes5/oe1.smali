.class public final Loe1;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lnl3<",
        "Ljava/lang/Long;",
        "Lj59;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lcom/warefly/checkscan/presentation/chequePage/view/ChequePageFragment;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/chequePage/view/ChequePageFragment;)V
    .locals 0

    iput-object p1, p0, Loe1;->f:Lcom/warefly/checkscan/presentation/chequePage/view/ChequePageFragment;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    new-instance p1, Lkd$g$b$a;

    const-string v2, "BONUS_ID"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "Open bonus"

    invoke-static {v3, v2}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "Cheque detail"

    invoke-static {v3, v2}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "Cheques event"

    invoke-direct {p1, v3, v2}, Lkd;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {p1}, Lkd;->a()V

    iget-object p0, p0, Loe1;->f:Lcom/warefly/checkscan/presentation/chequePage/view/ChequePageFragment;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/chequePage/view/ChequePageFragment;->o()Lcom/warefly/checkscan/presentation/chequePage/presentation/ChequePagePresenter;

    move-result-object p0

    invoke-virtual {p0, v0, v1}, Lcom/warefly/checkscan/presentation/chequePage/presentation/ChequePagePresenter;->onPreviewCardClicked(J)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
