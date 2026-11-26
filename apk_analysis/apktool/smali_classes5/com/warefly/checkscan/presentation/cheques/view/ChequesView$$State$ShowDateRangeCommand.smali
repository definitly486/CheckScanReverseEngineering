.class public Lcom/warefly/checkscan/presentation/cheques/view/ChequesView$$State$ShowDateRangeCommand;
.super Lwd9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/warefly/checkscan/presentation/cheques/view/ChequesView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShowDateRangeCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lwd9<",
        "Lcom/warefly/checkscan/presentation/cheques/view/ChequesView;",
        ">;"
    }
.end annotation


# instance fields
.field public final asMonth:Z

.field public final fromDate:Ljava/util/Date;

.field public final toDate:Ljava/util/Date;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/cheques/view/ChequesView$$State;Ljava/util/Date;Ljava/util/Date;Z)V
    .locals 1

    const-string p1, "showDateRange"

    const-class v0, Li9;

    invoke-direct {p0, p1, v0}, Lwd9;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/cheques/view/ChequesView$$State$ShowDateRangeCommand;->fromDate:Ljava/util/Date;

    iput-object p3, p0, Lcom/warefly/checkscan/presentation/cheques/view/ChequesView$$State$ShowDateRangeCommand;->toDate:Ljava/util/Date;

    iput-boolean p4, p0, Lcom/warefly/checkscan/presentation/cheques/view/ChequesView$$State$ShowDateRangeCommand;->asMonth:Z

    return-void
.end method


# virtual methods
.method public apply(Lcom/warefly/checkscan/presentation/cheques/view/ChequesView;)V
    .locals 2

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/cheques/view/ChequesView$$State$ShowDateRangeCommand;->fromDate:Ljava/util/Date;

    iget-object v1, p0, Lcom/warefly/checkscan/presentation/cheques/view/ChequesView$$State$ShowDateRangeCommand;->toDate:Ljava/util/Date;

    iget-boolean p0, p0, Lcom/warefly/checkscan/presentation/cheques/view/ChequesView$$State$ShowDateRangeCommand;->asMonth:Z

    invoke-interface {p1, v0, v1, p0}, Lcom/warefly/checkscan/presentation/cheques/view/ChequesView;->showDateRange(Ljava/util/Date;Ljava/util/Date;Z)V

    return-void
.end method

.method public bridge synthetic apply(Ljh5;)V
    .locals 0

    .line 10
    check-cast p1, Lcom/warefly/checkscan/presentation/cheques/view/ChequesView;

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/presentation/cheques/view/ChequesView$$State$ShowDateRangeCommand;->apply(Lcom/warefly/checkscan/presentation/cheques/view/ChequesView;)V

    return-void
.end method
