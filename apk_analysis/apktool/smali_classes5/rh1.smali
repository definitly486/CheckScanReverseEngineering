.class public final Lrh1;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lbm3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lbm3<",
        "Ljava/util/Calendar;",
        "Ljava/util/Calendar;",
        "Lj59;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lcom/warefly/checkscan/presentation/cheques/exportCheques/view/ChequesExportFragment;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/cheques/exportCheques/view/ChequesExportFragment;)V
    .locals 0

    iput-object p1, p0, Lrh1;->f:Lcom/warefly/checkscan/presentation/cheques/exportCheques/view/ChequesExportFragment;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Ljava/util/Calendar;

    check-cast p2, Ljava/util/Calendar;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lrh1;->f:Lcom/warefly/checkscan/presentation/cheques/exportCheques/view/ChequesExportFragment;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/cheques/exportCheques/view/ChequesExportFragment;->q()Lcom/warefly/checkscan/presentation/cheques/exportCheques/presenter/ChequesExportPresenter;

    move-result-object p0

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p1

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/warefly/checkscan/presentation/cheques/exportCheques/presenter/ChequesExportPresenter;->onDateRangeSelected(JJ)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
