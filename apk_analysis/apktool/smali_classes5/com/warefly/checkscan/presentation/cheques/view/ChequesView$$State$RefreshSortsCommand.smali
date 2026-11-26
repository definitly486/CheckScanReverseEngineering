.class public Lcom/warefly/checkscan/presentation/cheques/view/ChequesView$$State$RefreshSortsCommand;
.super Lwd9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/warefly/checkscan/presentation/cheques/view/ChequesView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RefreshSortsCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lwd9<",
        "Lcom/warefly/checkscan/presentation/cheques/view/ChequesView;",
        ">;"
    }
.end annotation


# instance fields
.field public final sorts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lu48;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/cheques/view/ChequesView$$State;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lu48;",
            ">;)V"
        }
    .end annotation

    const-string p1, "refreshSorts"

    const-class v0, Li9;

    invoke-direct {p0, p1, v0}, Lwd9;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/cheques/view/ChequesView$$State$RefreshSortsCommand;->sorts:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public apply(Lcom/warefly/checkscan/presentation/cheques/view/ChequesView;)V
    .locals 0

    .line 6
    iget-object p0, p0, Lcom/warefly/checkscan/presentation/cheques/view/ChequesView$$State$RefreshSortsCommand;->sorts:Ljava/util/List;

    invoke-interface {p1, p0}, Lcom/warefly/checkscan/presentation/cheques/view/ChequesView;->refreshSorts(Ljava/util/List;)V

    return-void
.end method

.method public bridge synthetic apply(Ljh5;)V
    .locals 0

    check-cast p1, Lcom/warefly/checkscan/presentation/cheques/view/ChequesView;

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/presentation/cheques/view/ChequesView$$State$RefreshSortsCommand;->apply(Lcom/warefly/checkscan/presentation/cheques/view/ChequesView;)V

    return-void
.end method
