.class public final Lcom/warefly/checkscan/presentation/balance/transferCashback/coupons/view/TransferCouponDialog;
.super Lcom/warefly/checkscan/core/ui/base/dialogs/BaseBottomSheetDialog;
.source "SourceFile"

# interfaces
.implements Lcom/warefly/checkscan/presentation/balance/transferCashback/coupons/presenter/TransferCouponView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/warefly/checkscan/presentation/balance/transferCashback/coupons/view/TransferCouponDialog$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/dialogs/BaseBottomSheetDialog<",
        "Lcom/warefly/checkscan/databinding/DialogCouponsTemplateBinding;",
        ">;",
        "Lcom/warefly/checkscan/presentation/balance/transferCashback/coupons/presenter/TransferCouponView;"
    }
.end annotation


# static fields
.field public static final synthetic k:[Lze4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lze4<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final d:I

.field public final e:I

.field public final f:Ljava/lang/String;

.field public final g:Ljava/lang/String;

.field public final h:Lud9;

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public presenter:Lcom/warefly/checkscan/presentation/balance/transferCashback/coupons/presenter/TransferCouponPresenter;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lbs6;

    const-class v1, Lcom/warefly/checkscan/presentation/balance/transferCashback/coupons/view/TransferCouponDialog;

    const-string v2, "binding"

    const-string v3, "getBinding()Lcom/warefly/checkscan/databinding/DialogCouponsTemplateBinding;"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lbs6;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v1, Lx07;->a:La17;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    new-array v1, v1, [Lze4;

    aput-object v0, v1, v4

    sput-object v1, Lcom/warefly/checkscan/presentation/balance/transferCashback/coupons/view/TransferCouponDialog;->k:[Lze4;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;)V
    .locals 1

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v0, 0x7f150174

    invoke-direct {p0, p1, v0}, Lcom/warefly/checkscan/core/ui/base/dialogs/BaseBottomSheetDialog;-><init>(Landroid/content/Context;I)V

    iput p3, p0, Lcom/warefly/checkscan/presentation/balance/transferCashback/coupons/view/TransferCouponDialog;->d:I

    iput p4, p0, Lcom/warefly/checkscan/presentation/balance/transferCashback/coupons/view/TransferCouponDialog;->e:I

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/balance/transferCashback/coupons/view/TransferCouponDialog;->f:Ljava/lang/String;

    iput-object p5, p0, Lcom/warefly/checkscan/presentation/balance/transferCashback/coupons/view/TransferCouponDialog;->g:Ljava/lang/String;

    new-instance p1, Lud9;

    const-class p2, Lcom/warefly/checkscan/databinding/DialogCouponsTemplateBinding;

    invoke-direct {p1, p2, p0}, Lud9;-><init>(Ljava/lang/Class;Lcom/google/android/material/bottomsheet/BottomSheetDialog;)V

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/balance/transferCashback/coupons/view/TransferCouponDialog;->h:Lud9;

    return-void
.end method

.method public static f(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f08043d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method


# virtual methods
.method public final e(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/presentation/balance/transferCashback/coupons/view/TransferCouponDialog;->g(Landroid/view/View;)V

    return-void

    :cond_0
    invoke-static {p1}, Lcom/warefly/checkscan/presentation/balance/transferCashback/coupons/view/TransferCouponDialog;->f(Landroid/view/View;)V

    return-void
.end method

.method public final g(Landroid/view/View;)V
    .locals 3

    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/widget/TextView;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f08045a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/View;->setEnabled(Z)V

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p0

    const p1, 0x7f06007a

    invoke-static {p0, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    return-void
.end method

.method public final h(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/balance/transferCashback/coupons/view/TransferCouponDialog;->i()Lcom/warefly/checkscan/databinding/DialogCouponsTemplateBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/warefly/checkscan/databinding/DialogCouponsTemplateBinding;->incldCouponTransferView:Lcom/warefly/checkscan/databinding/LayoutCouponTransferBinding;

    if-eqz p1, :cond_0

    iget-object p1, v0, Lcom/warefly/checkscan/databinding/LayoutCouponTransferBinding;->btnCouponOne:Landroid/widget/TextView;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/presentation/balance/transferCashback/coupons/view/TransferCouponDialog;->g(Landroid/view/View;)V

    iget-object p1, v0, Lcom/warefly/checkscan/databinding/LayoutCouponTransferBinding;->btnCouponTwo:Landroid/widget/TextView;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/presentation/balance/transferCashback/coupons/view/TransferCouponDialog;->g(Landroid/view/View;)V

    iget-object p1, v0, Lcom/warefly/checkscan/databinding/LayoutCouponTransferBinding;->btnCouponThree:Landroid/widget/TextView;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/presentation/balance/transferCashback/coupons/view/TransferCouponDialog;->g(Landroid/view/View;)V

    return-void

    :cond_0
    iget-object p0, v0, Lcom/warefly/checkscan/databinding/LayoutCouponTransferBinding;->btnCouponOne:Landroid/widget/TextView;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcom/warefly/checkscan/presentation/balance/transferCashback/coupons/view/TransferCouponDialog;->f(Landroid/view/View;)V

    iget-object p0, v0, Lcom/warefly/checkscan/databinding/LayoutCouponTransferBinding;->btnCouponTwo:Landroid/widget/TextView;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcom/warefly/checkscan/presentation/balance/transferCashback/coupons/view/TransferCouponDialog;->f(Landroid/view/View;)V

    iget-object p0, v0, Lcom/warefly/checkscan/databinding/LayoutCouponTransferBinding;->btnCouponThree:Landroid/widget/TextView;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcom/warefly/checkscan/presentation/balance/transferCashback/coupons/view/TransferCouponDialog;->f(Landroid/view/View;)V

    return-void
.end method

.method public final i()Lcom/warefly/checkscan/databinding/DialogCouponsTemplateBinding;
    .locals 2

    sget-object v0, Lcom/warefly/checkscan/presentation/balance/transferCashback/coupons/view/TransferCouponDialog;->k:[Lze4;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/balance/transferCashback/coupons/view/TransferCouponDialog;->h:Lud9;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lud9;->d:Landroidx/viewbinding/ViewBinding;

    check-cast p0, Lcom/warefly/checkscan/databinding/DialogCouponsTemplateBinding;

    return-object p0
.end method

.method public final j()Lcom/warefly/checkscan/presentation/balance/transferCashback/coupons/presenter/TransferCouponPresenter;
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/balance/transferCashback/coupons/view/TransferCouponDialog;->presenter:Lcom/warefly/checkscan/presentation/balance/transferCashback/coupons/presenter/TransferCouponPresenter;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "presenter"

    invoke-static {p0}, Laa4;->j(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final k(Landroid/view/View;IIIII)V
    .locals 4

    new-instance v0, Lkd$j0$b;

    const-string v1, "SumTapped"

    invoke-static {p6, v1}, Lud;->c(ILjava/lang/String;)Ljava/util/Map;

    move-result-object v1

    const-string v2, "Promocode"

    invoke-direct {v0, v2, v1}, Lkd;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {v0}, Lkd;->a()V

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/balance/transferCashback/coupons/view/TransferCouponDialog;->i()Lcom/warefly/checkscan/databinding/DialogCouponsTemplateBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/warefly/checkscan/databinding/DialogCouponsTemplateBinding;->incldCouponTransferView:Lcom/warefly/checkscan/databinding/LayoutCouponTransferBinding;

    iget-object v1, v0, Lcom/warefly/checkscan/databinding/LayoutCouponTransferBinding;->tvPerAmount:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v3, 0x42c80000    # 100.0f

    if-le p4, p5, :cond_0

    int-to-float p4, p5

    :goto_0
    div-float/2addr p4, v3

    goto :goto_1

    :cond_0
    int-to-float p4, p4

    goto :goto_0

    :goto_1
    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p4

    div-int/lit8 p6, p6, 0x64

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    filled-new-array {p4, p5}, [Ljava/lang/Object;

    move-result-object p4

    const p5, 0x7f14046d

    invoke-virtual {v1, p5, p4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p5, v0, Lcom/warefly/checkscan/databinding/LayoutCouponTransferBinding;->tvPerAmount:Landroid/widget/TextView;

    const/16 p6, 0x17

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {p6, v1, v2, p4}, Lvp3;->d(IIILjava/lang/String;)Landroid/text/SpannableString;

    move-result-object p4

    invoke-virtual {p5, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p4

    const p5, 0x7f080444

    invoke-virtual {p4, p5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p4

    invoke-virtual {p1, p4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    instance-of p4, p1, Landroid/widget/TextView;

    if-eqz p4, :cond_1

    check-cast p1, Landroid/widget/TextView;

    goto :goto_2

    :cond_1
    const/4 p1, 0x0

    :goto_2
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p4

    const p5, 0x7f0604fc

    invoke-static {p4, p5}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p4

    invoke-virtual {p1, p4}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_2
    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/balance/transferCashback/coupons/view/TransferCouponDialog;->i()Lcom/warefly/checkscan/databinding/DialogCouponsTemplateBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/warefly/checkscan/databinding/DialogCouponsTemplateBinding;->incldCouponTransferView:Lcom/warefly/checkscan/databinding/LayoutCouponTransferBinding;

    const/4 p4, 0x1

    if-eq p2, p4, :cond_5

    const/4 p4, 0x2

    if-eq p2, p4, :cond_4

    const/4 p4, 0x3

    if-eq p2, p4, :cond_3

    goto :goto_3

    :cond_3
    iget-object p2, p1, Lcom/warefly/checkscan/databinding/LayoutCouponTransferBinding;->btnCouponOne:Landroid/widget/TextView;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, p2}, Lcom/warefly/checkscan/presentation/balance/transferCashback/coupons/view/TransferCouponDialog;->e(Landroid/view/View;)V

    iget-object p1, p1, Lcom/warefly/checkscan/databinding/LayoutCouponTransferBinding;->btnCouponTwo:Landroid/widget/TextView;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/presentation/balance/transferCashback/coupons/view/TransferCouponDialog;->e(Landroid/view/View;)V

    goto :goto_3

    :cond_4
    iget-object p2, p1, Lcom/warefly/checkscan/databinding/LayoutCouponTransferBinding;->btnCouponOne:Landroid/widget/TextView;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, p2}, Lcom/warefly/checkscan/presentation/balance/transferCashback/coupons/view/TransferCouponDialog;->e(Landroid/view/View;)V

    iget-object p1, p1, Lcom/warefly/checkscan/databinding/LayoutCouponTransferBinding;->btnCouponThree:Landroid/widget/TextView;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/presentation/balance/transferCashback/coupons/view/TransferCouponDialog;->e(Landroid/view/View;)V

    goto :goto_3

    :cond_5
    iget-object p2, p1, Lcom/warefly/checkscan/databinding/LayoutCouponTransferBinding;->btnCouponTwo:Landroid/widget/TextView;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, p2}, Lcom/warefly/checkscan/presentation/balance/transferCashback/coupons/view/TransferCouponDialog;->e(Landroid/view/View;)V

    iget-object p1, p1, Lcom/warefly/checkscan/databinding/LayoutCouponTransferBinding;->btnCouponThree:Landroid/widget/TextView;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/presentation/balance/transferCashback/coupons/view/TransferCouponDialog;->e(Landroid/view/View;)V

    :goto_3
    iget-object p1, v0, Lcom/warefly/checkscan/databinding/LayoutCouponTransferBinding;->btnSpendAmount:Lcom/warefly/checkscan/core/ui/LoadingButton;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, v0, Lcom/warefly/checkscan/databinding/LayoutCouponTransferBinding;->btnSpendAmount:Lcom/warefly/checkscan/core/ui/LoadingButton;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p2

    const p4, 0x7f14046f

    invoke-virtual {p2, p4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, v0, Lcom/warefly/checkscan/databinding/LayoutCouponTransferBinding;->btnSpendAmount:Lcom/warefly/checkscan/core/ui/LoadingButton;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Llb7;

    new-instance p4, Lcom/warefly/checkscan/presentation/balance/transferCashback/coupons/view/TransferCouponDialog$c;

    invoke-direct {p4, p0, p3}, Lcom/warefly/checkscan/presentation/balance/transferCashback/coupons/view/TransferCouponDialog$c;-><init>(Lcom/warefly/checkscan/presentation/balance/transferCashback/coupons/view/TransferCouponDialog;I)V

    invoke-direct {p2, p4}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/warefly/checkscan/core/ui/base/dialogs/BaseBottomSheetDialog;->onCreate(Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/warefly/checkscan/presentation/balance/transferCashback/coupons/view/TransferCouponDialog;->f:Ljava/lang/String;

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/balance/transferCashback/coupons/view/TransferCouponDialog;->g:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/warefly/checkscan/presentation/balance/transferCashback/coupons/view/TransferCouponDialog;->showDialog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    const v0, 0x7f1501ea

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    :goto_1
    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/balance/transferCashback/coupons/view/TransferCouponDialog;->j()Lcom/warefly/checkscan/presentation/balance/transferCashback/coupons/presenter/TransferCouponPresenter;

    move-result-object p1

    iget v0, p0, Lcom/warefly/checkscan/presentation/balance/transferCashback/coupons/view/TransferCouponDialog;->e:I

    invoke-virtual {p1, v0}, Lcom/warefly/checkscan/presentation/balance/transferCashback/coupons/presenter/TransferCouponPresenter;->onShown(I)V

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/balance/transferCashback/coupons/view/TransferCouponDialog;->i()Lcom/warefly/checkscan/databinding/DialogCouponsTemplateBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/warefly/checkscan/databinding/DialogCouponsTemplateBinding;->incldTransferCongratulationView:Lcom/warefly/checkscan/databinding/LayoutTransferCongratulationsBinding;

    iget-object p1, p1, Lcom/warefly/checkscan/databinding/LayoutTransferCongratulationsBinding;->btnCopyCode:Landroid/widget/TextView;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Llb7;

    new-instance v1, Lcom/warefly/checkscan/presentation/balance/transferCashback/coupons/view/TransferCouponDialog$b;

    invoke-direct {v1, p0}, Lcom/warefly/checkscan/presentation/balance/transferCashback/coupons/view/TransferCouponDialog$b;-><init>(Lcom/warefly/checkscan/presentation/balance/transferCashback/coupons/view/TransferCouponDialog;)V

    invoke-direct {v0, v1}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final providePresenter()Lcom/warefly/checkscan/presentation/balance/transferCashback/coupons/presenter/TransferCouponPresenter;
    .locals 3

    new-instance v0, Lcom/warefly/checkscan/presentation/balance/transferCashback/coupons/presenter/TransferCouponPresenter;

    invoke-interface {p0}, Ljg4;->b()Lhg4;

    move-result-object p0

    iget-object p0, p0, Lhg4;->c:Lbf7;

    iget-object p0, p0, Lbf7;->d:Lze7;

    const-class v1, Lp51;

    invoke-static {v1}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v2}, Lze7;->e(Lzk1;Li36;Lkv6;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lp51;

    invoke-direct {v0, p0}, Lcom/warefly/checkscan/presentation/balance/transferCashback/coupons/presenter/TransferCouponPresenter;-><init>(Lp51;)V

    return-object v0
.end method

.method public final showDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/balance/transferCashback/coupons/view/TransferCouponDialog;->i()Lcom/warefly/checkscan/databinding/DialogCouponsTemplateBinding;

    move-result-object v0

    iget p0, p0, Lcom/warefly/checkscan/presentation/balance/transferCashback/coupons/view/TransferCouponDialog;->d:I

    const/4 v1, 0x1

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-ne p0, v1, :cond_0

    iget-object p0, v0, Lcom/warefly/checkscan/databinding/DialogCouponsTemplateBinding;->incldCouponTransferView:Lcom/warefly/checkscan/databinding/LayoutCouponTransferBinding;

    invoke-virtual {p0}, Lcom/warefly/checkscan/databinding/LayoutCouponTransferBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p0

    invoke-virtual {p0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, v0, Lcom/warefly/checkscan/databinding/DialogCouponsTemplateBinding;->incldTransferCongratulationView:Lcom/warefly/checkscan/databinding/LayoutTransferCongratulationsBinding;

    invoke-virtual {p0}, Lcom/warefly/checkscan/databinding/LayoutTransferCongratulationsBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, v0, Lcom/warefly/checkscan/databinding/DialogCouponsTemplateBinding;->incldTransferCongratulationView:Lcom/warefly/checkscan/databinding/LayoutTransferCongratulationsBinding;

    invoke-virtual {p0}, Lcom/warefly/checkscan/databinding/LayoutTransferCongratulationsBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    return-void

    :cond_0
    iget-object p0, v0, Lcom/warefly/checkscan/databinding/DialogCouponsTemplateBinding;->incldCouponTransferView:Lcom/warefly/checkscan/databinding/LayoutCouponTransferBinding;

    invoke-virtual {p0}, Lcom/warefly/checkscan/databinding/LayoutCouponTransferBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, v0, Lcom/warefly/checkscan/databinding/DialogCouponsTemplateBinding;->incldTransferCongratulationView:Lcom/warefly/checkscan/databinding/LayoutTransferCongratulationsBinding;

    invoke-virtual {p0}, Lcom/warefly/checkscan/databinding/LayoutTransferCongratulationsBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p0

    invoke-virtual {p0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, v0, Lcom/warefly/checkscan/databinding/DialogCouponsTemplateBinding;->incldTransferCongratulationView:Lcom/warefly/checkscan/databinding/LayoutTransferCongratulationsBinding;

    iget-object p0, p0, Lcom/warefly/checkscan/databinding/LayoutTransferCongratulationsBinding;->tvCongratulation:Landroid/widget/TextView;

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p1, :cond_2

    iget-object p0, v0, Lcom/warefly/checkscan/databinding/DialogCouponsTemplateBinding;->incldTransferCongratulationView:Lcom/warefly/checkscan/databinding/LayoutTransferCongratulationsBinding;

    iget-object p2, p0, Lcom/warefly/checkscan/databinding/LayoutTransferCongratulationsBinding;->ivCongratulations:Landroid/widget/ImageView;

    invoke-virtual {p2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p2, p0, Lcom/warefly/checkscan/databinding/LayoutTransferCongratulationsBinding;->tvPromoCodeMetro:Landroid/widget/TextView;

    invoke-virtual {p2, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, p0, Lcom/warefly/checkscan/databinding/LayoutTransferCongratulationsBinding;->btnCopyCode:Landroid/widget/TextView;

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p2, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    iget-object p0, p0, Lcom/warefly/checkscan/databinding/LayoutTransferCongratulationsBinding;->tvPromoCodeMetro:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    iget-object p0, v0, Lcom/warefly/checkscan/databinding/DialogCouponsTemplateBinding;->incldCouponTransferView:Lcom/warefly/checkscan/databinding/LayoutCouponTransferBinding;

    iget-object p0, p0, Lcom/warefly/checkscan/databinding/LayoutCouponTransferBinding;->btnCouponOne:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    return-void
.end method

.method public final showErrorInfoNotLoaded()V
    .locals 3

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/balance/transferCashback/coupons/view/TransferCouponDialog;->i()Lcom/warefly/checkscan/databinding/DialogCouponsTemplateBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/warefly/checkscan/databinding/DialogCouponsTemplateBinding;->incldCouponTransferView:Lcom/warefly/checkscan/databinding/LayoutCouponTransferBinding;

    iget-object v0, v0, Lcom/warefly/checkscan/databinding/LayoutCouponTransferBinding;->btnSpendAmount:Lcom/warefly/checkscan/core/ui/LoadingButton;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f140667

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Llb7;

    new-instance v2, Lcom/warefly/checkscan/presentation/balance/transferCashback/coupons/view/TransferCouponDialog$d;

    invoke-direct {v2, p0}, Lcom/warefly/checkscan/presentation/balance/transferCashback/coupons/view/TransferCouponDialog$d;-><init>(Lcom/warefly/checkscan/presentation/balance/transferCashback/coupons/view/TransferCouponDialog;)V

    invoke-direct {v1, v2}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final showInfo(Lgq6$a;Ljava/lang/String;)V
    .locals 7

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/balance/transferCashback/coupons/view/TransferCouponDialog;->i()Lcom/warefly/checkscan/databinding/DialogCouponsTemplateBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/warefly/checkscan/databinding/DialogCouponsTemplateBinding;->incldCouponTransferView:Lcom/warefly/checkscan/databinding/LayoutCouponTransferBinding;

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/balance/transferCashback/coupons/view/TransferCouponDialog;->i:Ljava/lang/String;

    invoke-virtual {p1}, Lgq6$a;->d()Lgq6$a$a;

    move-result-object p2

    invoke-virtual {p2}, Lgq6$a$a;->a()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/balance/transferCashback/coupons/view/TransferCouponDialog;->j:Ljava/lang/String;

    iget-object p2, v0, Lcom/warefly/checkscan/databinding/LayoutCouponTransferBinding;->ivIcMetro:Landroid/widget/ImageView;

    invoke-static {p2}, Lcom/bumptech/glide/a;->e(Landroid/view/View;)Lp37;

    move-result-object p2

    invoke-virtual {p1}, Lgq6$a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lp37;->h(Ljava/lang/String;)Lh37;

    move-result-object p2

    invoke-static {}, Lqs2;->h()Lqs2;

    move-result-object v1

    invoke-virtual {p2, v1}, Lh37;->P(Lqs2;)Lh37;

    move-result-object p2

    iget-object v1, v0, Lcom/warefly/checkscan/databinding/LayoutCouponTransferBinding;->ivIcMetro:Landroid/widget/ImageView;

    invoke-virtual {p2, v1}, Lh37;->L(Landroid/widget/ImageView;)V

    iget-object p2, v0, Lcom/warefly/checkscan/databinding/LayoutCouponTransferBinding;->tvWithdrawCashback:Landroid/widget/TextView;

    invoke-virtual {p1}, Lgq6$a;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, v0, Lcom/warefly/checkscan/databinding/LayoutCouponTransferBinding;->tvYourBalance:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lgq6$a;->a()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const v3, 0x7f14046e

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lgq6$a;->a()I

    move-result p2

    invoke-virtual {p1}, Lgq6$a;->f()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgq6$a$b;

    invoke-virtual {v1}, Lgq6$a$b;->c()I

    move-result v1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-lt p2, v1, :cond_0

    invoke-virtual {p0, v3}, Lcom/warefly/checkscan/presentation/balance/transferCashback/coupons/view/TransferCouponDialog;->h(Z)V

    goto/16 :goto_0

    :cond_0
    invoke-virtual {p1}, Lgq6$a;->a()I

    move-result p2

    invoke-virtual {p1}, Lgq6$a;->f()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgq6$a$b;

    invoke-virtual {v1}, Lgq6$a$b;->c()I

    move-result v1

    invoke-virtual {p1}, Lgq6$a;->f()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lgq6$a$b;

    invoke-virtual {v5}, Lgq6$a$b;->b()I

    move-result v5

    if-gt p2, v5, :cond_1

    if-gt v1, p2, :cond_1

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/balance/transferCashback/coupons/view/TransferCouponDialog;->i()Lcom/warefly/checkscan/databinding/DialogCouponsTemplateBinding;

    move-result-object p2

    iget-object p2, p2, Lcom/warefly/checkscan/databinding/DialogCouponsTemplateBinding;->incldCouponTransferView:Lcom/warefly/checkscan/databinding/LayoutCouponTransferBinding;

    iget-object v1, p2, Lcom/warefly/checkscan/databinding/LayoutCouponTransferBinding;->btnCouponOne:Landroid/widget/TextView;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, v1}, Lcom/warefly/checkscan/presentation/balance/transferCashback/coupons/view/TransferCouponDialog;->g(Landroid/view/View;)V

    iget-object v1, p2, Lcom/warefly/checkscan/databinding/LayoutCouponTransferBinding;->btnCouponTwo:Landroid/widget/TextView;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, v1}, Lcom/warefly/checkscan/presentation/balance/transferCashback/coupons/view/TransferCouponDialog;->g(Landroid/view/View;)V

    iget-object p2, p2, Lcom/warefly/checkscan/databinding/LayoutCouponTransferBinding;->btnCouponThree:Landroid/widget/TextView;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2}, Lcom/warefly/checkscan/presentation/balance/transferCashback/coupons/view/TransferCouponDialog;->f(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lgq6$a;->f()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgq6$a$b;

    invoke-virtual {v1}, Lgq6$a$b;->c()I

    move-result v1

    invoke-virtual {p1}, Lgq6$a;->f()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lgq6$a$b;

    invoke-virtual {v5}, Lgq6$a$b;->b()I

    move-result v5

    if-gt p2, v5, :cond_2

    if-gt v1, p2, :cond_2

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/balance/transferCashback/coupons/view/TransferCouponDialog;->i()Lcom/warefly/checkscan/databinding/DialogCouponsTemplateBinding;

    move-result-object p2

    iget-object p2, p2, Lcom/warefly/checkscan/databinding/DialogCouponsTemplateBinding;->incldCouponTransferView:Lcom/warefly/checkscan/databinding/LayoutCouponTransferBinding;

    iget-object v1, p2, Lcom/warefly/checkscan/databinding/LayoutCouponTransferBinding;->btnCouponOne:Landroid/widget/TextView;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, v1}, Lcom/warefly/checkscan/presentation/balance/transferCashback/coupons/view/TransferCouponDialog;->g(Landroid/view/View;)V

    iget-object v1, p2, Lcom/warefly/checkscan/databinding/LayoutCouponTransferBinding;->btnCouponTwo:Landroid/widget/TextView;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/warefly/checkscan/presentation/balance/transferCashback/coupons/view/TransferCouponDialog;->f(Landroid/view/View;)V

    iget-object p2, p2, Lcom/warefly/checkscan/databinding/LayoutCouponTransferBinding;->btnCouponThree:Landroid/widget/TextView;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2}, Lcom/warefly/checkscan/presentation/balance/transferCashback/coupons/view/TransferCouponDialog;->f(Landroid/view/View;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v4}, Lcom/warefly/checkscan/presentation/balance/transferCashback/coupons/view/TransferCouponDialog;->h(Z)V

    :goto_0
    invoke-virtual {p1}, Lgq6$a;->a()I

    move-result p2

    invoke-virtual {p1}, Lgq6$a;->f()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgq6$a$b;

    invoke-virtual {v1}, Lgq6$a$b;->c()I

    move-result v1

    if-ge p2, v1, :cond_3

    invoke-virtual {p1}, Lgq6$a;->c()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/balance/transferCashback/coupons/view/TransferCouponDialog;->i()Lcom/warefly/checkscan/databinding/DialogCouponsTemplateBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/warefly/checkscan/databinding/DialogCouponsTemplateBinding;->incldCouponTransferView:Lcom/warefly/checkscan/databinding/LayoutCouponTransferBinding;

    iget-object v5, v1, Lcom/warefly/checkscan/databinding/LayoutCouponTransferBinding;->tvPerAmount:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v5, v1, Lcom/warefly/checkscan/databinding/LayoutCouponTransferBinding;->tvPerAmount:Landroid/widget/TextView;

    invoke-virtual {v5, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, v1, Lcom/warefly/checkscan/databinding/LayoutCouponTransferBinding;->btnCouponOne:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0600cc

    invoke-static {v5, v6}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v5

    invoke-virtual {p2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p2, v1, Lcom/warefly/checkscan/databinding/LayoutCouponTransferBinding;->btnCouponTwo:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v6}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v5

    invoke-virtual {p2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p2, v1, Lcom/warefly/checkscan/databinding/LayoutCouponTransferBinding;->btnCouponThree:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v6}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v5

    invoke-virtual {p2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p2, v1, Lcom/warefly/checkscan/databinding/LayoutCouponTransferBinding;->btnSpendAmount:Lcom/warefly/checkscan/core/ui/LoadingButton;

    const/16 v1, 0x8

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    iget-object p2, v0, Lcom/warefly/checkscan/databinding/LayoutCouponTransferBinding;->btnCouponOne:Landroid/widget/TextView;

    invoke-virtual {p1}, Lgq6$a;->f()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgq6$a$b;

    invoke-virtual {v1}, Lgq6$a$b;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, v0, Lcom/warefly/checkscan/databinding/LayoutCouponTransferBinding;->tvCouponOne:Landroid/widget/TextView;

    invoke-virtual {p1}, Lgq6$a;->f()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgq6$a$b;

    invoke-virtual {v1}, Lgq6$a$b;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, v0, Lcom/warefly/checkscan/databinding/LayoutCouponTransferBinding;->btnCouponTwo:Landroid/widget/TextView;

    invoke-virtual {p1}, Lgq6$a;->f()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgq6$a$b;

    invoke-virtual {v1}, Lgq6$a$b;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, v0, Lcom/warefly/checkscan/databinding/LayoutCouponTransferBinding;->tvCouponTwo:Landroid/widget/TextView;

    invoke-virtual {p1}, Lgq6$a;->f()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgq6$a$b;

    invoke-virtual {v1}, Lgq6$a$b;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, v0, Lcom/warefly/checkscan/databinding/LayoutCouponTransferBinding;->btnCouponThree:Landroid/widget/TextView;

    invoke-virtual {p1}, Lgq6$a;->f()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgq6$a$b;

    invoke-virtual {v1}, Lgq6$a$b;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, v0, Lcom/warefly/checkscan/databinding/LayoutCouponTransferBinding;->tvCouponThree:Landroid/widget/TextView;

    invoke-virtual {p1}, Lgq6$a;->f()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgq6$a$b;

    invoke-virtual {v1}, Lgq6$a$b;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, v0, Lcom/warefly/checkscan/databinding/LayoutCouponTransferBinding;->btnCouponThree:Landroid/widget/TextView;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Llb7;

    new-instance v2, Lcom/warefly/checkscan/presentation/balance/transferCashback/coupons/view/TransferCouponDialog$e;

    invoke-direct {v2, p0, p1}, Lcom/warefly/checkscan/presentation/balance/transferCashback/coupons/view/TransferCouponDialog$e;-><init>(Lcom/warefly/checkscan/presentation/balance/transferCashback/coupons/view/TransferCouponDialog;Lgq6$a;)V

    invoke-direct {v1, v2}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, v0, Lcom/warefly/checkscan/databinding/LayoutCouponTransferBinding;->btnCouponTwo:Landroid/widget/TextView;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Llb7;

    new-instance v2, Lcom/warefly/checkscan/presentation/balance/transferCashback/coupons/view/TransferCouponDialog$f;

    invoke-direct {v2, p0, p1}, Lcom/warefly/checkscan/presentation/balance/transferCashback/coupons/view/TransferCouponDialog$f;-><init>(Lcom/warefly/checkscan/presentation/balance/transferCashback/coupons/view/TransferCouponDialog;Lgq6$a;)V

    invoke-direct {v1, v2}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, v0, Lcom/warefly/checkscan/databinding/LayoutCouponTransferBinding;->btnCouponOne:Landroid/widget/TextView;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Llb7;

    new-instance v2, Lcom/warefly/checkscan/presentation/balance/transferCashback/coupons/view/TransferCouponDialog$g;

    invoke-direct {v2, p0, p1}, Lcom/warefly/checkscan/presentation/balance/transferCashback/coupons/view/TransferCouponDialog$g;-><init>(Lcom/warefly/checkscan/presentation/balance/transferCashback/coupons/view/TransferCouponDialog;Lgq6$a;)V

    invoke-direct {v1, v2}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p2, Landroid/text/SpannableString;

    invoke-virtual {p1}, Lgq6$a;->d()Lgq6$a$a;

    move-result-object v1

    invoke-virtual {v1}, Lgq6$a$a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v1, Landroid/text/style/UnderlineSpan;

    invoke-direct {v1}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {p1}, Lgq6$a;->d()Lgq6$a$a;

    move-result-object p1

    invoke-virtual {p1}, Lgq6$a$a;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p2, v1, v4, p1, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    iget-object p1, v0, Lcom/warefly/checkscan/databinding/LayoutCouponTransferBinding;->btnFullRules:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, v0, Lcom/warefly/checkscan/databinding/LayoutCouponTransferBinding;->btnFullRules:Landroid/widget/TextView;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Llb7;

    new-instance v0, Lcom/warefly/checkscan/presentation/balance/transferCashback/coupons/view/TransferCouponDialog$h;

    invoke-direct {v0, p0}, Lcom/warefly/checkscan/presentation/balance/transferCashback/coupons/view/TransferCouponDialog$h;-><init>(Lcom/warefly/checkscan/presentation/balance/transferCashback/coupons/view/TransferCouponDialog;)V

    invoke-direct {p2, v0}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final showLoadingInfo(Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/balance/transferCashback/coupons/view/TransferCouponDialog;->i()Lcom/warefly/checkscan/databinding/DialogCouponsTemplateBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/warefly/checkscan/databinding/DialogCouponsTemplateBinding;->incldCouponTransferView:Lcom/warefly/checkscan/databinding/LayoutCouponTransferBinding;

    iget-object p0, p0, Lcom/warefly/checkscan/databinding/LayoutCouponTransferBinding;->btnSpendAmount:Lcom/warefly/checkscan/core/ui/LoadingButton;

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/core/ui/LoadingButton;->setLoading(Z)V

    return-void
.end method

.method public final showPopupCopied(Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v1, Landroid/content/ClipboardManager;

    const v2, 0x7f140162

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    new-instance p1, Lcom/warefly/checkscan/presentation/balance/transferCashback/coupons/view/PromoCodeCopiedDialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Lcom/warefly/checkscan/presentation/balance/transferCashback/coupons/view/TransferCouponDialog;->i:Ljava/lang/String;

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/balance/transferCashback/coupons/view/TransferCouponDialog;->j:Ljava/lang/String;

    invoke-direct {p1, v0, v1, p0}, Lcom/warefly/checkscan/presentation/balance/transferCashback/coupons/view/PromoCodeCopiedDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public final showTransferMoneySuccess(Le09;)V
    .locals 7

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Le09;->c()Le09$a;

    move-result-object v0

    sget-object v1, Lcom/warefly/checkscan/presentation/balance/transferCashback/coupons/view/TransferCouponDialog$a;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    new-instance v0, Lkd$j0$a$b;

    const-string v1, "Ok"

    invoke-direct {v0, v1}, Lkd$j0$a;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lkd;->a()V

    invoke-virtual {p1}, Le09;->a()Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object v3, v0

    goto :goto_1

    :cond_0
    new-instance v0, Lkd$j0$a$a;

    invoke-virtual {p1}, Le09;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "Fail"

    invoke-static {v2, v1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1}, Lkd$j0$a;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lkd;->a()V

    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    new-instance v1, Lcom/warefly/checkscan/presentation/balance/transferCashback/coupons/view/TransferCouponDialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v5, p0, Lcom/warefly/checkscan/presentation/balance/transferCashback/coupons/view/TransferCouponDialog;->e:I

    invoke-virtual {p1}, Le09;->b()Ljava/lang/String;

    move-result-object v6

    const/4 v4, 0x2

    invoke-direct/range {v1 .. v6}, Lcom/warefly/checkscan/presentation/balance/transferCashback/coupons/view/TransferCouponDialog;-><init>(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;)V

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public final showTransferringMoney(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/balance/transferCashback/coupons/view/TransferCouponDialog;->i()Lcom/warefly/checkscan/databinding/DialogCouponsTemplateBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/warefly/checkscan/databinding/DialogCouponsTemplateBinding;->incldCouponTransferView:Lcom/warefly/checkscan/databinding/LayoutCouponTransferBinding;

    iget-object v0, v0, Lcom/warefly/checkscan/databinding/LayoutCouponTransferBinding;->btnSpendAmount:Lcom/warefly/checkscan/core/ui/LoadingButton;

    invoke-virtual {v0, p1}, Lcom/warefly/checkscan/core/ui/LoadingButton;->setLoading(Z)V

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->setCancelable(Z)V

    return-void
.end method
