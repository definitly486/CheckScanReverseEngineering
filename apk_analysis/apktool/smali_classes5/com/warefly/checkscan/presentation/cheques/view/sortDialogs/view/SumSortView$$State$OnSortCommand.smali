.class public Lcom/warefly/checkscan/presentation/cheques/view/sortDialogs/view/SumSortView$$State$OnSortCommand;
.super Lwd9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/warefly/checkscan/presentation/cheques/view/sortDialogs/view/SumSortView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OnSortCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lwd9<",
        "Lcom/warefly/checkscan/presentation/cheques/view/sortDialogs/view/SumSortView;",
        ">;"
    }
.end annotation


# instance fields
.field public final end:Ljava/lang/String;

.field public final start:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/cheques/view/sortDialogs/view/SumSortView$$State;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string p1, "onSort"

    const-class v0, Lk9;

    invoke-direct {p0, p1, v0}, Lwd9;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/cheques/view/sortDialogs/view/SumSortView$$State$OnSortCommand;->start:Ljava/lang/String;

    iput-object p3, p0, Lcom/warefly/checkscan/presentation/cheques/view/sortDialogs/view/SumSortView$$State$OnSortCommand;->end:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public apply(Lcom/warefly/checkscan/presentation/cheques/view/sortDialogs/view/SumSortView;)V
    .locals 1

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/cheques/view/sortDialogs/view/SumSortView$$State$OnSortCommand;->start:Ljava/lang/String;

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/cheques/view/sortDialogs/view/SumSortView$$State$OnSortCommand;->end:Ljava/lang/String;

    invoke-interface {p1, v0, p0}, Lcom/warefly/checkscan/presentation/cheques/view/sortDialogs/view/SumSortView;->onSort(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic apply(Ljh5;)V
    .locals 0

    .line 8
    check-cast p1, Lcom/warefly/checkscan/presentation/cheques/view/sortDialogs/view/SumSortView;

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/presentation/cheques/view/sortDialogs/view/SumSortView$$State$OnSortCommand;->apply(Lcom/warefly/checkscan/presentation/cheques/view/sortDialogs/view/SumSortView;)V

    return-void
.end method
