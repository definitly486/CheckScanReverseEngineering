.class public Lcom/warefly/checkscan/products/presentation/shop/view/ShopView$$State$ShowInfoBottomSheetCommand;
.super Lwd9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/warefly/checkscan/products/presentation/shop/view/ShopView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShowInfoBottomSheetCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lwd9<",
        "Lcom/warefly/checkscan/products/presentation/shop/view/ShopView;",
        ">;"
    }
.end annotation


# instance fields
.field public final htmlText:Ljava/lang/String;

.field public final title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/products/presentation/shop/view/ShopView$$State;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string p1, "showInfoBottomSheet"

    const-class v0, Lhx5;

    invoke-direct {p0, p1, v0}, Lwd9;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object p2, p0, Lcom/warefly/checkscan/products/presentation/shop/view/ShopView$$State$ShowInfoBottomSheetCommand;->title:Ljava/lang/String;

    iput-object p3, p0, Lcom/warefly/checkscan/products/presentation/shop/view/ShopView$$State$ShowInfoBottomSheetCommand;->htmlText:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public apply(Lcom/warefly/checkscan/products/presentation/shop/view/ShopView;)V
    .locals 1

    iget-object v0, p0, Lcom/warefly/checkscan/products/presentation/shop/view/ShopView$$State$ShowInfoBottomSheetCommand;->title:Ljava/lang/String;

    iget-object p0, p0, Lcom/warefly/checkscan/products/presentation/shop/view/ShopView$$State$ShowInfoBottomSheetCommand;->htmlText:Ljava/lang/String;

    invoke-interface {p1, v0, p0}, Lcom/warefly/checkscan/products/presentation/shop/view/ShopView;->showInfoBottomSheet(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic apply(Ljh5;)V
    .locals 0

    .line 8
    check-cast p1, Lcom/warefly/checkscan/products/presentation/shop/view/ShopView;

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/products/presentation/shop/view/ShopView$$State$ShowInfoBottomSheetCommand;->apply(Lcom/warefly/checkscan/products/presentation/shop/view/ShopView;)V

    return-void
.end method
