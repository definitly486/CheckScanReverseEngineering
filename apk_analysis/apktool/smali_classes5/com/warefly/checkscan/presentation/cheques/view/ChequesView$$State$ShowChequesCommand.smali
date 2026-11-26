.class public Lcom/warefly/checkscan/presentation/cheques/view/ChequesView$$State$ShowChequesCommand;
.super Lwd9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/warefly/checkscan/presentation/cheques/view/ChequesView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShowChequesCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lwd9<",
        "Lcom/warefly/checkscan/presentation/cheques/view/ChequesView;",
        ">;"
    }
.end annotation


# instance fields
.field public final cheques:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final forceShowContent:Z


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/cheques/view/ChequesView$$State;Ljava/util/List;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    const-string p1, "showCheques"

    const-class v0, Li9;

    invoke-direct {p0, p1, v0}, Lwd9;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/cheques/view/ChequesView$$State$ShowChequesCommand;->cheques:Ljava/util/List;

    iput-boolean p3, p0, Lcom/warefly/checkscan/presentation/cheques/view/ChequesView$$State$ShowChequesCommand;->forceShowContent:Z

    return-void
.end method


# virtual methods
.method public apply(Lcom/warefly/checkscan/presentation/cheques/view/ChequesView;)V
    .locals 1

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/cheques/view/ChequesView$$State$ShowChequesCommand;->cheques:Ljava/util/List;

    iget-boolean p0, p0, Lcom/warefly/checkscan/presentation/cheques/view/ChequesView$$State$ShowChequesCommand;->forceShowContent:Z

    invoke-interface {p1, v0, p0}, Lcom/warefly/checkscan/presentation/cheques/view/ChequesView;->showCheques(Ljava/util/List;Z)V

    return-void
.end method

.method public bridge synthetic apply(Ljh5;)V
    .locals 0

    .line 8
    check-cast p1, Lcom/warefly/checkscan/presentation/cheques/view/ChequesView;

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/presentation/cheques/view/ChequesView$$State$ShowChequesCommand;->apply(Lcom/warefly/checkscan/presentation/cheques/view/ChequesView;)V

    return-void
.end method
