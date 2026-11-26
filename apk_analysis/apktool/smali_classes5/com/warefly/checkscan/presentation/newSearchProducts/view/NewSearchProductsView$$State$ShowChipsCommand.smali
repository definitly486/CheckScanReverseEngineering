.class public Lcom/warefly/checkscan/presentation/newSearchProducts/view/NewSearchProductsView$$State$ShowChipsCommand;
.super Lwd9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/warefly/checkscan/presentation/newSearchProducts/view/NewSearchProductsView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShowChipsCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lwd9<",
        "Lcom/warefly/checkscan/presentation/newSearchProducts/view/NewSearchProductsView;",
        ">;"
    }
.end annotation


# instance fields
.field public final ships:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/newSearchProducts/view/NewSearchProductsView$$State;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string p1, "showChips"

    const-class v0, Lhx5;

    invoke-direct {p0, p1, v0}, Lwd9;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/newSearchProducts/view/NewSearchProductsView$$State$ShowChipsCommand;->ships:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public apply(Lcom/warefly/checkscan/presentation/newSearchProducts/view/NewSearchProductsView;)V
    .locals 0

    .line 6
    iget-object p0, p0, Lcom/warefly/checkscan/presentation/newSearchProducts/view/NewSearchProductsView$$State$ShowChipsCommand;->ships:Ljava/util/List;

    invoke-interface {p1, p0}, Lcom/warefly/checkscan/presentation/newSearchProducts/view/NewSearchProductsView;->showChips(Ljava/util/List;)V

    return-void
.end method

.method public bridge synthetic apply(Ljh5;)V
    .locals 0

    check-cast p1, Lcom/warefly/checkscan/presentation/newSearchProducts/view/NewSearchProductsView;

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/presentation/newSearchProducts/view/NewSearchProductsView$$State$ShowChipsCommand;->apply(Lcom/warefly/checkscan/presentation/newSearchProducts/view/NewSearchProductsView;)V

    return-void
.end method
