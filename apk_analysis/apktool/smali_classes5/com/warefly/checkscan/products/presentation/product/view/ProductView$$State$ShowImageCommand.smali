.class public Lcom/warefly/checkscan/products/presentation/product/view/ProductView$$State$ShowImageCommand;
.super Lwd9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/warefly/checkscan/products/presentation/product/view/ProductView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShowImageCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lwd9<",
        "Lcom/warefly/checkscan/products/presentation/product/view/ProductView;",
        ">;"
    }
.end annotation


# instance fields
.field public final url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/products/presentation/product/view/ProductView$$State;Ljava/lang/String;)V
    .locals 1

    const-string p1, "showImage"

    const-class v0, Li9;

    invoke-direct {p0, p1, v0}, Lwd9;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object p2, p0, Lcom/warefly/checkscan/products/presentation/product/view/ProductView$$State$ShowImageCommand;->url:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public apply(Lcom/warefly/checkscan/products/presentation/product/view/ProductView;)V
    .locals 0

    .line 6
    iget-object p0, p0, Lcom/warefly/checkscan/products/presentation/product/view/ProductView$$State$ShowImageCommand;->url:Ljava/lang/String;

    invoke-interface {p1, p0}, Lcom/warefly/checkscan/products/presentation/product/view/ProductView;->showImage(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic apply(Ljh5;)V
    .locals 0

    check-cast p1, Lcom/warefly/checkscan/products/presentation/product/view/ProductView;

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/products/presentation/product/view/ProductView$$State$ShowImageCommand;->apply(Lcom/warefly/checkscan/products/presentation/product/view/ProductView;)V

    return-void
.end method
