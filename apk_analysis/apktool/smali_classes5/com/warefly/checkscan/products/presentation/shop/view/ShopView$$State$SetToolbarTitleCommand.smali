.class public Lcom/warefly/checkscan/products/presentation/shop/view/ShopView$$State$SetToolbarTitleCommand;
.super Lwd9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/warefly/checkscan/products/presentation/shop/view/ShopView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SetToolbarTitleCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lwd9<",
        "Lcom/warefly/checkscan/products/presentation/shop/view/ShopView;",
        ">;"
    }
.end annotation


# instance fields
.field public final title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/products/presentation/shop/view/ShopView$$State;Ljava/lang/String;)V
    .locals 1

    const-string p1, "setToolbarTitle"

    const-class v0, Lk9;

    invoke-direct {p0, p1, v0}, Lwd9;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object p2, p0, Lcom/warefly/checkscan/products/presentation/shop/view/ShopView$$State$SetToolbarTitleCommand;->title:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public apply(Lcom/warefly/checkscan/products/presentation/shop/view/ShopView;)V
    .locals 0

    .line 6
    iget-object p0, p0, Lcom/warefly/checkscan/products/presentation/shop/view/ShopView$$State$SetToolbarTitleCommand;->title:Ljava/lang/String;

    invoke-interface {p1, p0}, Lcom/warefly/checkscan/products/presentation/shop/view/ShopView;->setToolbarTitle(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic apply(Ljh5;)V
    .locals 0

    check-cast p1, Lcom/warefly/checkscan/products/presentation/shop/view/ShopView;

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/products/presentation/shop/view/ShopView$$State$SetToolbarTitleCommand;->apply(Lcom/warefly/checkscan/products/presentation/shop/view/ShopView;)V

    return-void
.end method
