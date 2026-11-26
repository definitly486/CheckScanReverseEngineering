.class public Lcom/warefly/checkscan/presentation/bonuses/couponPage/view/CouponNewView$$State$ShowRedirectDialogCommand;
.super Lwd9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/warefly/checkscan/presentation/bonuses/couponPage/view/CouponNewView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShowRedirectDialogCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lwd9<",
        "Lcom/warefly/checkscan/presentation/bonuses/couponPage/view/CouponNewView;",
        ">;"
    }
.end annotation


# instance fields
.field public final logoUrl:Ljava/lang/String;

.field public final trackingType:Lsy8;

.field public final url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/bonuses/couponPage/view/CouponNewView$$State;Lsy8;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string p1, "showRedirectDialog"

    const-class v0, Lhx5;

    invoke-direct {p0, p1, v0}, Lwd9;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/bonuses/couponPage/view/CouponNewView$$State$ShowRedirectDialogCommand;->trackingType:Lsy8;

    iput-object p3, p0, Lcom/warefly/checkscan/presentation/bonuses/couponPage/view/CouponNewView$$State$ShowRedirectDialogCommand;->url:Ljava/lang/String;

    iput-object p4, p0, Lcom/warefly/checkscan/presentation/bonuses/couponPage/view/CouponNewView$$State$ShowRedirectDialogCommand;->logoUrl:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public apply(Lcom/warefly/checkscan/presentation/bonuses/couponPage/view/CouponNewView;)V
    .locals 2

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/bonuses/couponPage/view/CouponNewView$$State$ShowRedirectDialogCommand;->trackingType:Lsy8;

    iget-object v1, p0, Lcom/warefly/checkscan/presentation/bonuses/couponPage/view/CouponNewView$$State$ShowRedirectDialogCommand;->url:Ljava/lang/String;

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/bonuses/couponPage/view/CouponNewView$$State$ShowRedirectDialogCommand;->logoUrl:Ljava/lang/String;

    invoke-interface {p1, v0, v1, p0}, Lcom/warefly/checkscan/presentation/bonuses/couponPage/view/CouponNewView;->showRedirectDialog(Lsy8;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic apply(Ljh5;)V
    .locals 0

    .line 10
    check-cast p1, Lcom/warefly/checkscan/presentation/bonuses/couponPage/view/CouponNewView;

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/presentation/bonuses/couponPage/view/CouponNewView$$State$ShowRedirectDialogCommand;->apply(Lcom/warefly/checkscan/presentation/bonuses/couponPage/view/CouponNewView;)V

    return-void
.end method
