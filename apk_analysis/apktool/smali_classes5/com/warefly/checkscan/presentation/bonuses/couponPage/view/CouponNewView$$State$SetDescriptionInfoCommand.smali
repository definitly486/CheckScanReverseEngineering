.class public Lcom/warefly/checkscan/presentation/bonuses/couponPage/view/CouponNewView$$State$SetDescriptionInfoCommand;
.super Lwd9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/warefly/checkscan/presentation/bonuses/couponPage/view/CouponNewView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SetDescriptionInfoCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lwd9<",
        "Lcom/warefly/checkscan/presentation/bonuses/couponPage/view/CouponNewView;",
        ">;"
    }
.end annotation


# instance fields
.field public final stringHtml:Landroid/text/Spanned;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/bonuses/couponPage/view/CouponNewView$$State;Landroid/text/Spanned;)V
    .locals 1

    const-string p1, "setDescriptionInfo"

    const-class v0, Lk9;

    invoke-direct {p0, p1, v0}, Lwd9;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/bonuses/couponPage/view/CouponNewView$$State$SetDescriptionInfoCommand;->stringHtml:Landroid/text/Spanned;

    return-void
.end method


# virtual methods
.method public apply(Lcom/warefly/checkscan/presentation/bonuses/couponPage/view/CouponNewView;)V
    .locals 0

    .line 6
    iget-object p0, p0, Lcom/warefly/checkscan/presentation/bonuses/couponPage/view/CouponNewView$$State$SetDescriptionInfoCommand;->stringHtml:Landroid/text/Spanned;

    invoke-interface {p1, p0}, Lcom/warefly/checkscan/presentation/bonuses/couponPage/view/CouponNewView;->setDescriptionInfo(Landroid/text/Spanned;)V

    return-void
.end method

.method public bridge synthetic apply(Ljh5;)V
    .locals 0

    check-cast p1, Lcom/warefly/checkscan/presentation/bonuses/couponPage/view/CouponNewView;

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/presentation/bonuses/couponPage/view/CouponNewView$$State$SetDescriptionInfoCommand;->apply(Lcom/warefly/checkscan/presentation/bonuses/couponPage/view/CouponNewView;)V

    return-void
.end method
