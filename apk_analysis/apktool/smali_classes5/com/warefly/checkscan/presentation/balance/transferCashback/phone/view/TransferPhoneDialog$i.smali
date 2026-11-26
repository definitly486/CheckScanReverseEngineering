.class public final Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/view/TransferPhoneDialog$i;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Ldm3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/view/TransferPhoneDialog;->showPromocodes(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Ldm3<",
        "Lcom/warefly/checkscan/databinding/LayoutCouponPromocodesBinding;",
        "Lzj9;",
        "Ljava/lang/Integer;",
        "Lj59;",
        ">;"
    }
.end annotation


# static fields
.field public static final f:Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/view/TransferPhoneDialog$i;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/view/TransferPhoneDialog$i;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lgh4;-><init>(I)V

    sput-object v0, Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/view/TransferPhoneDialog$i;->f:Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/view/TransferPhoneDialog$i;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lcom/warefly/checkscan/databinding/LayoutCouponPromocodesBinding;

    check-cast p2, Lzj9;

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Lzj9;->c()Ljava/lang/String;

    move-result-object p0

    const-string p3, "<b>"

    const-string v0, "**"

    invoke-static {p0, v0, p3}, Lra8;->A(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p3, "</b>"

    invoke-static {p0, v0, p3}, Lra8;->y(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iget-object p3, p1, Lcom/warefly/checkscan/databinding/LayoutCouponPromocodesBinding;->ivIcWithdrawMetro:Landroid/widget/ImageView;

    invoke-static {p3}, Lcom/bumptech/glide/a;->e(Landroid/view/View;)Lp37;

    move-result-object p3

    invoke-virtual {p2}, Lzj9;->a()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Lp37;->h(Ljava/lang/String;)Lh37;

    move-result-object p2

    invoke-static {}, Lqs2;->h()Lqs2;

    move-result-object p3

    invoke-virtual {p2, p3}, Lh37;->P(Lqs2;)Lh37;

    move-result-object p2

    iget-object p3, p1, Lcom/warefly/checkscan/databinding/LayoutCouponPromocodesBinding;->ivIcWithdrawMetro:Landroid/widget/ImageView;

    invoke-virtual {p2, p3}, Lh37;->L(Landroid/widget/ImageView;)V

    iget-object p1, p1, Lcom/warefly/checkscan/databinding/LayoutCouponPromocodesBinding;->tvWithdrawShop:Landroid/widget/TextView;

    const/4 p2, 0x0

    invoke-static {p0, p2}, Landroidx/core/text/HtmlCompat;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
