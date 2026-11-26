.class public Lcom/warefly/checkscan/products/presentation/product/view/ProductView$$State$ShowContentCommand;
.super Lwd9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/warefly/checkscan/products/presentation/product/view/ProductView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShowContentCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lwd9<",
        "Lcom/warefly/checkscan/products/presentation/product/view/ProductView;",
        ">;"
    }
.end annotation


# instance fields
.field public final data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lpz3;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/products/presentation/product/view/ProductView$$State;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lpz3;",
            ">;)V"
        }
    .end annotation

    const-string p1, "showContent"

    const-class v0, Lk9;

    invoke-direct {p0, p1, v0}, Lwd9;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object p2, p0, Lcom/warefly/checkscan/products/presentation/product/view/ProductView$$State$ShowContentCommand;->data:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public apply(Lcom/warefly/checkscan/products/presentation/product/view/ProductView;)V
    .locals 0

    .line 6
    iget-object p0, p0, Lcom/warefly/checkscan/products/presentation/product/view/ProductView$$State$ShowContentCommand;->data:Ljava/util/List;

    invoke-interface {p1, p0}, Lcom/warefly/checkscan/products/presentation/product/view/ProductView;->showContent(Ljava/util/List;)V

    return-void
.end method

.method public bridge synthetic apply(Ljh5;)V
    .locals 0

    check-cast p1, Lcom/warefly/checkscan/products/presentation/product/view/ProductView;

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/products/presentation/product/view/ProductView$$State$ShowContentCommand;->apply(Lcom/warefly/checkscan/products/presentation/product/view/ProductView;)V

    return-void
.end method
