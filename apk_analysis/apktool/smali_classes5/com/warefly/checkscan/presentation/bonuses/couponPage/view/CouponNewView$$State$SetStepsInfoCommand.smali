.class public Lcom/warefly/checkscan/presentation/bonuses/couponPage/view/CouponNewView$$State$SetStepsInfoCommand;
.super Lwd9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/warefly/checkscan/presentation/bonuses/couponPage/view/CouponNewView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SetStepsInfoCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lwd9<",
        "Lcom/warefly/checkscan/presentation/bonuses/couponPage/view/CouponNewView;",
        ">;"
    }
.end annotation


# instance fields
.field public final items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lla8;",
            ">;"
        }
    .end annotation
.end field

.field public final title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/bonuses/couponPage/view/CouponNewView$$State;Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lla8;",
            ">;)V"
        }
    .end annotation

    const-string p1, "setStepsInfo"

    const-class v0, Lk9;

    invoke-direct {p0, p1, v0}, Lwd9;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/bonuses/couponPage/view/CouponNewView$$State$SetStepsInfoCommand;->title:Ljava/lang/String;

    iput-object p3, p0, Lcom/warefly/checkscan/presentation/bonuses/couponPage/view/CouponNewView$$State$SetStepsInfoCommand;->items:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public apply(Lcom/warefly/checkscan/presentation/bonuses/couponPage/view/CouponNewView;)V
    .locals 1

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/bonuses/couponPage/view/CouponNewView$$State$SetStepsInfoCommand;->title:Ljava/lang/String;

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/bonuses/couponPage/view/CouponNewView$$State$SetStepsInfoCommand;->items:Ljava/util/List;

    invoke-interface {p1, v0, p0}, Lcom/warefly/checkscan/presentation/bonuses/couponPage/view/CouponNewView;->setStepsInfo(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public bridge synthetic apply(Ljh5;)V
    .locals 0

    .line 8
    check-cast p1, Lcom/warefly/checkscan/presentation/bonuses/couponPage/view/CouponNewView;

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/presentation/bonuses/couponPage/view/CouponNewView$$State$SetStepsInfoCommand;->apply(Lcom/warefly/checkscan/presentation/bonuses/couponPage/view/CouponNewView;)V

    return-void
.end method
