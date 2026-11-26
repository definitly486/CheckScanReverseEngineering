.class public final Lcom/warefly/checkscan/presentation/flows/promotions/registration/view/dialog/PromoResultDialog;
.super Lcom/warefly/checkscan/core/ui/base/dialogs/BaseBottomSheetDialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/dialogs/BaseBottomSheetDialog<",
        "Lcom/warefly/checkscan/databinding/DialogPromoResultBinding;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic i:[Lze4;
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
.field public final d:Lll3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lll3<",
            "Lj59;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Lur6;

.field public final f:I

.field public final g:Lud9;

.field public h:Landroid/os/CountDownTimer;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lbs6;

    const-class v1, Lcom/warefly/checkscan/presentation/flows/promotions/registration/view/dialog/PromoResultDialog;

    const-string v2, "binding"

    const-string v3, "getBinding()Lcom/warefly/checkscan/databinding/DialogPromoResultBinding;"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lbs6;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v1, Lx07;->a:La17;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    new-array v1, v1, [Lze4;

    aput-object v0, v1, v4

    sput-object v1, Lcom/warefly/checkscan/presentation/flows/promotions/registration/view/dialog/PromoResultDialog;->i:[Lze4;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public constructor <init>(Landroid/content/Context;Lur6;I)V
    .locals 2

    sget-object v0, Ldo6;->f:Ldo6;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v1, 0x7f150174

    invoke-direct {p0, p1, v1}, Lcom/warefly/checkscan/core/ui/base/dialogs/BaseBottomSheetDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/warefly/checkscan/presentation/flows/promotions/registration/view/dialog/PromoResultDialog;->d:Lll3;

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/flows/promotions/registration/view/dialog/PromoResultDialog;->e:Lur6;

    iput p3, p0, Lcom/warefly/checkscan/presentation/flows/promotions/registration/view/dialog/PromoResultDialog;->f:I

    new-instance p1, Lud9;

    const-class p2, Lcom/warefly/checkscan/databinding/DialogPromoResultBinding;

    invoke-direct {p1, p2, p0}, Lud9;-><init>(Ljava/lang/Class;Lcom/google/android/material/bottomsheet/BottomSheetDialog;)V

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/flows/promotions/registration/view/dialog/PromoResultDialog;->g:Lud9;

    return-void
.end method


# virtual methods
.method public final e()Lcom/warefly/checkscan/databinding/DialogPromoResultBinding;
    .locals 2

    sget-object v0, Lcom/warefly/checkscan/presentation/flows/promotions/registration/view/dialog/PromoResultDialog;->i:[Lze4;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/flows/promotions/registration/view/dialog/PromoResultDialog;->g:Lud9;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lud9;->d:Landroidx/viewbinding/ViewBinding;

    check-cast p0, Lcom/warefly/checkscan/databinding/DialogPromoResultBinding;

    return-object p0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Lcom/warefly/checkscan/core/ui/base/dialogs/BaseBottomSheetDialog;->onCreate(Landroid/os/Bundle;)V

    sget-object p1, Lur6$b;->a:Lur6$b;

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/flows/promotions/registration/view/dialog/PromoResultDialog;->e:Lur6;

    invoke-static {v0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    const/4 v1, 0x0

    const v2, 0x7f0801f4

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/flows/promotions/registration/view/dialog/PromoResultDialog;->e()Lcom/warefly/checkscan/databinding/DialogPromoResultBinding;

    move-result-object p1

    iget-object v0, p1, Lcom/warefly/checkscan/databinding/DialogPromoResultBinding;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f1402d4

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lcom/warefly/checkscan/databinding/DialogPromoResultBinding;->tvSubtitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f1402d3

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lcom/warefly/checkscan/databinding/DialogPromoResultBinding;->btnChange:Landroid/widget/TextView;

    new-instance v3, Lbo6;

    invoke-direct {v3, p0, v1}, Lbo6;-><init>(Landroid/view/KeyEvent$Callback;I)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/a;->d(Landroid/content/Context;)Lp37;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v0, p0}, Lp37;->e(Landroid/graphics/drawable/Drawable;)Lh37;

    move-result-object p0

    iget-object p1, p1, Lcom/warefly/checkscan/databinding/DialogPromoResultBinding;->ivIcon:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Lh37;->L(Landroid/widget/ImageView;)V

    return-void

    :cond_0
    instance-of p1, v0, Lur6$a;

    if-eqz p1, :cond_1

    check-cast v0, Lur6$a;

    iget-object p1, v0, Lur6$a;->a:Ljava/lang/String;

    iget-object v0, v0, Lur6$a;->b:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/flows/promotions/registration/view/dialog/PromoResultDialog;->e()Lcom/warefly/checkscan/databinding/DialogPromoResultBinding;

    move-result-object v3

    iget-object v4, v3, Lcom/warefly/checkscan/databinding/DialogPromoResultBinding;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, v3, Lcom/warefly/checkscan/databinding/DialogPromoResultBinding;->tvSubtitle:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, v3, Lcom/warefly/checkscan/databinding/DialogPromoResultBinding;->btnChange:Landroid/widget/TextView;

    new-instance v0, Lco6;

    invoke-direct {v0, p0, v1}, Lco6;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/bumptech/glide/a;->d(Landroid/content/Context;)Lp37;

    move-result-object p1

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1, p0}, Lp37;->e(Landroid/graphics/drawable/Drawable;)Lh37;

    move-result-object p0

    iget-object p1, v3, Lcom/warefly/checkscan/databinding/DialogPromoResultBinding;->ivIcon:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Lh37;->L(Landroid/widget/ImageView;)V

    return-void

    :cond_1
    instance-of p1, v0, Lur6$d;

    if-eqz p1, :cond_3

    check-cast v0, Lur6$d;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/flows/promotions/registration/view/dialog/PromoResultDialog;->e()Lcom/warefly/checkscan/databinding/DialogPromoResultBinding;

    move-result-object p1

    iget-object v2, p1, Lcom/warefly/checkscan/databinding/DialogPromoResultBinding;->tvTitle:Landroid/widget/TextView;

    iget-object v3, v0, Lur6$d;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p1, Lcom/warefly/checkscan/databinding/DialogPromoResultBinding;->tvSubtitle:Landroid/widget/TextView;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, Lur6$d;->b:Ljava/lang/String;

    invoke-static {v0}, Lta8;->M(Ljava/lang/CharSequence;)Z

    move-result v3

    const/16 v4, 0x8

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    move v1, v4

    :goto_0
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p1, Lcom/warefly/checkscan/databinding/DialogPromoResultBinding;->tvSubtitle:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lcom/warefly/checkscan/databinding/DialogPromoResultBinding;->btnChange:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/flows/promotions/registration/view/dialog/PromoResultDialog;->d:Lll3;

    invoke-interface {v0}, Lll3;->invoke()Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/a;->d(Landroid/content/Context;)Lp37;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0801c2

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lp37;->e(Landroid/graphics/drawable/Drawable;)Lh37;

    move-result-object v0

    iget-object p1, p1, Lcom/warefly/checkscan/databinding/DialogPromoResultBinding;->ivIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Lh37;->L(Landroid/widget/ImageView;)V

    new-instance p1, Lfo6;

    invoke-direct {p1, p0}, Lfo6;-><init>(Lcom/warefly/checkscan/presentation/flows/promotions/registration/view/dialog/PromoResultDialog;)V

    invoke-virtual {p1}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    move-result-object p1

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/flows/promotions/registration/view/dialog/PromoResultDialog;->h:Landroid/os/CountDownTimer;

    return-void

    :cond_3
    instance-of p1, v0, Lur6$c;

    if-eqz p1, :cond_4

    check-cast v0, Lur6$c;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/flows/promotions/registration/view/dialog/PromoResultDialog;->e()Lcom/warefly/checkscan/databinding/DialogPromoResultBinding;

    move-result-object p1

    iget-object v1, p1, Lcom/warefly/checkscan/databinding/DialogPromoResultBinding;->btnChange:Landroid/widget/TextView;

    iget-object v3, v0, Lur6$c;->c:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p1, Lcom/warefly/checkscan/databinding/DialogPromoResultBinding;->tvTitle:Landroid/widget/TextView;

    iget-object v3, v0, Lur6$c;->a:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p1, Lcom/warefly/checkscan/databinding/DialogPromoResultBinding;->tvSubtitle:Landroid/widget/TextView;

    iget-object v3, v0, Lur6$c;->b:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p1, Lcom/warefly/checkscan/databinding/DialogPromoResultBinding;->btnChange:Landroid/widget/TextView;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Llb7;

    new-instance v4, Leo6;

    invoke-direct {v4, p0, v0}, Leo6;-><init>(Lcom/warefly/checkscan/presentation/flows/promotions/registration/view/dialog/PromoResultDialog;Lur6$c;)V

    invoke-direct {v3, v4}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/bumptech/glide/a;->d(Landroid/content/Context;)Lp37;

    move-result-object p0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lp37;->f(Ljava/lang/Integer;)Lh37;

    move-result-object p0

    iget-object p1, p1, Lcom/warefly/checkscan/databinding/DialogPromoResultBinding;->ivIcon:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Lh37;->L(Landroid/widget/ImageView;)V

    :cond_4
    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Lcom/warefly/checkscan/core/ui/base/dialogs/BaseBottomSheetDialog;->onDetachedFromWindow()V

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/flows/promotions/registration/view/dialog/PromoResultDialog;->h:Landroid/os/CountDownTimer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/os/CountDownTimer;->cancel()V

    :cond_0
    return-void
.end method
