.class public final Lcom/warefly/checkscan/presentation/balance/promocodes/dialogs/SelectPromocodeDialog;
.super Lcom/warefly/checkscan/core/ui/base/dialogs/BaseBottomSheetDialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/dialogs/BaseBottomSheetDialog<",
        "Lcom/warefly/checkscan/databinding/DialogSelectPromocodeBinding;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic g:[Lze4;
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
.field public final d:Lkm7;

.field public final e:Lcom/warefly/checkscan/presentation/balance/promocodes/presenter/SelectPromocodePresenter;

.field public final f:Lud9;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lbs6;

    const-class v1, Lcom/warefly/checkscan/presentation/balance/promocodes/dialogs/SelectPromocodeDialog;

    const-string v2, "binding"

    const-string v3, "getBinding()Lcom/warefly/checkscan/databinding/DialogSelectPromocodeBinding;"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lbs6;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v1, Lx07;->a:La17;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    new-array v1, v1, [Lze4;

    aput-object v0, v1, v4

    sput-object v1, Lcom/warefly/checkscan/presentation/balance/promocodes/dialogs/SelectPromocodeDialog;->g:[Lze4;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lkm7;Lcom/warefly/checkscan/presentation/balance/promocodes/presenter/SelectPromocodePresenter;)V
    .locals 1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v0, 0x7f150174

    invoke-direct {p0, p1, v0}, Lcom/warefly/checkscan/core/ui/base/dialogs/BaseBottomSheetDialog;-><init>(Landroid/content/Context;I)V

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/balance/promocodes/dialogs/SelectPromocodeDialog;->d:Lkm7;

    iput-object p3, p0, Lcom/warefly/checkscan/presentation/balance/promocodes/dialogs/SelectPromocodeDialog;->e:Lcom/warefly/checkscan/presentation/balance/promocodes/presenter/SelectPromocodePresenter;

    new-instance p1, Lud9;

    const-class p2, Lcom/warefly/checkscan/databinding/DialogSelectPromocodeBinding;

    invoke-direct {p1, p2, p0}, Lud9;-><init>(Ljava/lang/Class;Lcom/google/android/material/bottomsheet/BottomSheetDialog;)V

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/balance/promocodes/dialogs/SelectPromocodeDialog;->f:Lud9;

    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 8

    invoke-super {p0, p1}, Lcom/warefly/checkscan/core/ui/base/dialogs/BaseBottomSheetDialog;->onCreate(Landroid/os/Bundle;)V

    sget-object p1, Lcom/warefly/checkscan/presentation/balance/promocodes/dialogs/SelectPromocodeDialog;->g:[Lze4;

    const/4 v0, 0x0

    aget-object p1, p1, v0

    iget-object v1, p0, Lcom/warefly/checkscan/presentation/balance/promocodes/dialogs/SelectPromocodeDialog;->f:Lud9;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, v1, Lud9;->d:Landroidx/viewbinding/ViewBinding;

    check-cast p1, Lcom/warefly/checkscan/databinding/DialogSelectPromocodeBinding;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bumptech/glide/a;->d(Landroid/content/Context;)Lp37;

    move-result-object v1

    iget-object v2, p0, Lcom/warefly/checkscan/presentation/balance/promocodes/dialogs/SelectPromocodeDialog;->d:Lkm7;

    iget-object v3, v2, Lkm7;->a:Ljava/lang/String;

    iget-object v4, v2, Lkm7;->c:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lp37;->h(Ljava/lang/String;)Lh37;

    move-result-object v1

    const/high16 v3, 0x41800000    # 16.0f

    invoke-static {v3}, Lpl2;->d(F)F

    move-result v3

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f06001d

    invoke-static {v5, v6}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v5

    invoke-static {v3, v5}, Lis7;->b(FI)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Lee0;->r(Landroid/graphics/drawable/ShapeDrawable;)Lee0;

    move-result-object v1

    check-cast v1, Lh37;

    iget-object v3, p1, Lcom/warefly/checkscan/databinding/DialogSelectPromocodeBinding;->ivLogo:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Lh37;->L(Landroid/widget/ImageView;)V

    iget-object v1, p1, Lcom/warefly/checkscan/databinding/DialogSelectPromocodeBinding;->incldAdsBadge:Lcom/warefly/checkscan/core/ui/databinding/LayoutAdsBadgeBinding;

    invoke-virtual {v1}, Lcom/warefly/checkscan/core/ui/databinding/LayoutAdsBadgeBinding;->getRoot()Leightbitlab/com/blurview/BlurView;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v2, Lkm7;->i:Lb06;

    const/16 v5, 0x8

    if-eqz v3, :cond_0

    iget-boolean v3, v3, Lb06;->b:Z

    const/4 v7, 0x1

    if-ne v3, v7, :cond_0

    move v3, v0

    goto :goto_0

    :cond_0
    move v3, v5

    :goto_0
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    new-instance v3, Llb7;

    new-instance v7, Lcom/warefly/checkscan/presentation/balance/promocodes/dialogs/SelectPromocodeDialog$a;

    invoke-direct {v7, p0}, Lcom/warefly/checkscan/presentation/balance/promocodes/dialogs/SelectPromocodeDialog$a;-><init>(Lcom/warefly/checkscan/presentation/balance/promocodes/dialogs/SelectPromocodeDialog;)V

    invoke-direct {v3, v7}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p1, Lcom/warefly/checkscan/databinding/DialogSelectPromocodeBinding;->groupHint:Landroidx/constraintlayout/widget/Group;

    if-eqz v4, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1, v0}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    iget-object v0, p1, Lcom/warefly/checkscan/databinding/DialogSelectPromocodeBinding;->incldLayoutHint:Lcom/warefly/checkscan/core/ui/databinding/LayoutBlueHint12Binding;

    iget-object v0, v0, Lcom/warefly/checkscan/core/ui/databinding/LayoutBlueHint12Binding;->tvHint:Landroid/widget/TextView;

    sget-object v1, Lx61;->a:Lx61;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    iget-object v0, p1, Lcom/warefly/checkscan/databinding/DialogSelectPromocodeBinding;->incldLayoutHint:Lcom/warefly/checkscan/core/ui/databinding/LayoutBlueHint12Binding;

    iget-object v0, v0, Lcom/warefly/checkscan/core/ui/databinding/LayoutBlueHint12Binding;->tvHint:Landroid/widget/TextView;

    sget v1, Lsx3;->a:I

    invoke-static {v4}, Lsx3;->a(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1, v5}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    :goto_1
    iget-object v0, p1, Lcom/warefly/checkscan/databinding/DialogSelectPromocodeBinding;->tvTitle:Landroid/widget/TextView;

    iget-object v1, v2, Lkm7;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lcom/warefly/checkscan/databinding/DialogSelectPromocodeBinding;->tvDescription:Landroid/widget/TextView;

    iget-object v1, v2, Lkm7;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v2, Lkm7;->e:Lkm7$a;

    iget-object v1, p1, Lcom/warefly/checkscan/databinding/DialogSelectPromocodeBinding;->incldTakenFromUser:Lcom/warefly/checkscan/databinding/ItemSelectPromocodeExchangeTakenBinding;

    iget-object v1, v1, Lcom/warefly/checkscan/databinding/ItemSelectPromocodeExchangeTakenBinding;->tvValue:Landroid/widget/TextView;

    iget-object v3, v0, Lkm7$a;->d:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p1, Lcom/warefly/checkscan/databinding/DialogSelectPromocodeBinding;->incldTakenFromUser:Lcom/warefly/checkscan/databinding/ItemSelectPromocodeExchangeTakenBinding;

    iget-object v1, v1, Lcom/warefly/checkscan/databinding/ItemSelectPromocodeExchangeTakenBinding;->tvTopText:Landroid/widget/TextView;

    iget-object v3, v0, Lkm7$a;->b:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p1, Lcom/warefly/checkscan/databinding/DialogSelectPromocodeBinding;->incldTakenFromUser:Lcom/warefly/checkscan/databinding/ItemSelectPromocodeExchangeTakenBinding;

    iget-object v1, v1, Lcom/warefly/checkscan/databinding/ItemSelectPromocodeExchangeTakenBinding;->tvBottomText:Landroid/widget/TextView;

    iget-object v3, v0, Lkm7$a;->c:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bumptech/glide/a;->d(Landroid/content/Context;)Lp37;

    move-result-object v1

    iget-object v0, v0, Lkm7$a;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lp37;->h(Ljava/lang/String;)Lh37;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v6}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-static {v1}, Lis7;->a(I)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lee0;->r(Landroid/graphics/drawable/ShapeDrawable;)Lee0;

    move-result-object v0

    check-cast v0, Lh37;

    iget-object v1, p1, Lcom/warefly/checkscan/databinding/DialogSelectPromocodeBinding;->incldTakenFromUser:Lcom/warefly/checkscan/databinding/ItemSelectPromocodeExchangeTakenBinding;

    iget-object v1, v1, Lcom/warefly/checkscan/databinding/ItemSelectPromocodeExchangeTakenBinding;->ivIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lh37;->L(Landroid/widget/ImageView;)V

    iget-object v0, v2, Lkm7;->f:Lkm7$a;

    iget-object v1, p1, Lcom/warefly/checkscan/databinding/DialogSelectPromocodeBinding;->incldGivenToUser:Lcom/warefly/checkscan/databinding/ItemSelectPromocodeExchangeGivenBinding;

    iget-object v1, v1, Lcom/warefly/checkscan/databinding/ItemSelectPromocodeExchangeGivenBinding;->tvValue:Landroid/widget/TextView;

    iget-object v3, v0, Lkm7$a;->d:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p1, Lcom/warefly/checkscan/databinding/DialogSelectPromocodeBinding;->incldGivenToUser:Lcom/warefly/checkscan/databinding/ItemSelectPromocodeExchangeGivenBinding;

    iget-object v1, v1, Lcom/warefly/checkscan/databinding/ItemSelectPromocodeExchangeGivenBinding;->tvTopText:Landroid/widget/TextView;

    iget-object v3, v0, Lkm7$a;->b:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p1, Lcom/warefly/checkscan/databinding/DialogSelectPromocodeBinding;->incldGivenToUser:Lcom/warefly/checkscan/databinding/ItemSelectPromocodeExchangeGivenBinding;

    iget-object v1, v1, Lcom/warefly/checkscan/databinding/ItemSelectPromocodeExchangeGivenBinding;->tvBottomText:Landroid/widget/TextView;

    iget-object v3, v0, Lkm7$a;->c:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bumptech/glide/a;->d(Landroid/content/Context;)Lp37;

    move-result-object v1

    iget-object v0, v0, Lkm7$a;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lp37;->h(Ljava/lang/String;)Lh37;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v6}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-static {v1}, Lis7;->a(I)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lee0;->r(Landroid/graphics/drawable/ShapeDrawable;)Lee0;

    move-result-object v0

    check-cast v0, Lh37;

    iget-object v1, p1, Lcom/warefly/checkscan/databinding/DialogSelectPromocodeBinding;->incldGivenToUser:Lcom/warefly/checkscan/databinding/ItemSelectPromocodeExchangeGivenBinding;

    iget-object v1, v1, Lcom/warefly/checkscan/databinding/ItemSelectPromocodeExchangeGivenBinding;->ivIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lh37;->L(Landroid/widget/ImageView;)V

    iget-object p1, p1, Lcom/warefly/checkscan/databinding/DialogSelectPromocodeBinding;->btnPrimary:Landroid/widget/TextView;

    iget-object v0, v2, Lkm7;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Llb7;

    new-instance v1, Lcom/warefly/checkscan/presentation/balance/promocodes/dialogs/SelectPromocodeDialog$b;

    invoke-direct {v1, p0}, Lcom/warefly/checkscan/presentation/balance/promocodes/dialogs/SelectPromocodeDialog$b;-><init>(Lcom/warefly/checkscan/presentation/balance/promocodes/dialogs/SelectPromocodeDialog;)V

    invoke-direct {v0, v1}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
