.class public final Lcom/warefly/checkscan/presentation/commonDialogs/WelcomeFullBannerBottomSheet;
.super Lcom/warefly/checkscan/core/ui/base/dialogs/BaseBottomSheetDialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/dialogs/BaseBottomSheetDialog<",
        "Lcom/warefly/checkscan/databinding/BottomsheetWelcomeFullBannerBinding;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic h:[Lze4;
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
.field public final d:Lhc0$a;

.field public final e:Lcom/warefly/checkscan/presentation/flows/desktop/view/DesktopFlowFragment$c;

.field public final f:Lcom/warefly/checkscan/presentation/flows/desktop/view/DesktopFlowFragment$d;

.field public final g:Lud9;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lbs6;

    const-class v1, Lcom/warefly/checkscan/presentation/commonDialogs/WelcomeFullBannerBottomSheet;

    const-string v2, "binding"

    const-string v3, "getBinding()Lcom/warefly/checkscan/databinding/BottomsheetWelcomeFullBannerBinding;"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lbs6;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v1, Lx07;->a:La17;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    new-array v1, v1, [Lze4;

    aput-object v0, v1, v4

    sput-object v1, Lcom/warefly/checkscan/presentation/commonDialogs/WelcomeFullBannerBottomSheet;->h:[Lze4;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lhc0$a;Lcom/warefly/checkscan/presentation/flows/desktop/view/DesktopFlowFragment$c;Lcom/warefly/checkscan/presentation/flows/desktop/view/DesktopFlowFragment$d;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v0, 0x7f150175

    invoke-direct {p0, p1, v0}, Lcom/warefly/checkscan/core/ui/base/dialogs/BaseBottomSheetDialog;-><init>(Landroid/content/Context;I)V

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/commonDialogs/WelcomeFullBannerBottomSheet;->d:Lhc0$a;

    iput-object p3, p0, Lcom/warefly/checkscan/presentation/commonDialogs/WelcomeFullBannerBottomSheet;->e:Lcom/warefly/checkscan/presentation/flows/desktop/view/DesktopFlowFragment$c;

    iput-object p4, p0, Lcom/warefly/checkscan/presentation/commonDialogs/WelcomeFullBannerBottomSheet;->f:Lcom/warefly/checkscan/presentation/flows/desktop/view/DesktopFlowFragment$d;

    new-instance p1, Lud9;

    const-class p2, Lcom/warefly/checkscan/databinding/BottomsheetWelcomeFullBannerBinding;

    invoke-direct {p1, p2, p0}, Lud9;-><init>(Ljava/lang/Class;Lcom/google/android/material/bottomsheet/BottomSheetDialog;)V

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/commonDialogs/WelcomeFullBannerBottomSheet;->g:Lud9;

    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 8

    invoke-super {p0, p1}, Lcom/warefly/checkscan/core/ui/base/dialogs/BaseBottomSheetDialog;->onCreate(Landroid/os/Bundle;)V

    new-instance p1, Lkd$g0$a$a$b;

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/commonDialogs/WelcomeFullBannerBottomSheet;->d:Lhc0$a;

    iget v1, v0, Lhc0$a;->g:I

    iget-object v2, v0, Lhc0$a;->k:Lfw0;

    iget-object v3, v0, Lhc0$a;->e:Lfw0;

    invoke-direct {p1, v1}, Lkd$g0$a$a$b;-><init>(I)V

    invoke-virtual {p1}, Lkd;->c()V

    iget-object p1, p0, Lcom/warefly/checkscan/presentation/commonDialogs/WelcomeFullBannerBottomSheet;->f:Lcom/warefly/checkscan/presentation/flows/desktop/view/DesktopFlowFragment$d;

    iget v1, v0, Lhc0$a;->g:I

    invoke-virtual {p1, v1}, Lcom/warefly/checkscan/presentation/flows/desktop/view/DesktopFlowFragment$d;->a(I)V

    sget-object p1, Lcom/warefly/checkscan/presentation/commonDialogs/WelcomeFullBannerBottomSheet;->h:[Lze4;

    const/4 v1, 0x0

    aget-object p1, p1, v1

    iget-object v4, p0, Lcom/warefly/checkscan/presentation/commonDialogs/WelcomeFullBannerBottomSheet;->g:Lud9;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, v4, Lud9;->d:Landroidx/viewbinding/ViewBinding;

    check-cast p1, Lcom/warefly/checkscan/databinding/BottomsheetWelcomeFullBannerBinding;

    iget-object v4, v0, Lhc0$a;->a:Ljava/lang/Integer;

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    invoke-virtual {p1}, Lcom/warefly/checkscan/databinding/BottomsheetWelcomeFullBannerBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-static {v5, v4}, Lds2;->a(Landroid/graphics/drawable/Drawable;I)V

    :cond_0
    iget-object v4, p1, Lcom/warefly/checkscan/databinding/BottomsheetWelcomeFullBannerBinding;->ivCover:Landroid/widget/ImageView;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v5, 0x18

    invoke-static {v5, v4}, Lle9;->d(ILandroid/view/View;)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/bumptech/glide/a;->d(Landroid/content/Context;)Lp37;

    move-result-object v4

    iget-object v5, v0, Lhc0$a;->i:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lp37;->h(Ljava/lang/String;)Lh37;

    move-result-object v4

    iget-object v5, p1, Lcom/warefly/checkscan/databinding/BottomsheetWelcomeFullBannerBinding;->ivCover:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Lh37;->L(Landroid/widget/ImageView;)V

    iget-object v0, v0, Lhc0$a;->q:Lb06;

    const/16 v4, 0x8

    if-eqz v0, :cond_2

    iget-object v5, p1, Lcom/warefly/checkscan/databinding/BottomsheetWelcomeFullBannerBinding;->incldAdsBadge:Lcom/warefly/checkscan/core/ui/databinding/LayoutAdsBadgeBinding;

    invoke-virtual {v5}, Lcom/warefly/checkscan/core/ui/databinding/LayoutAdsBadgeBinding;->getRoot()Leightbitlab/com/blurview/BlurView;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v6, v0, Lb06;->b:Z

    if-eqz v6, :cond_1

    move v6, v1

    goto :goto_0

    :cond_1
    move v6, v4

    :goto_0
    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v5, p1, Lcom/warefly/checkscan/databinding/BottomsheetWelcomeFullBannerBinding;->incldAdsBadge:Lcom/warefly/checkscan/core/ui/databinding/LayoutAdsBadgeBinding;

    invoke-virtual {v5}, Lcom/warefly/checkscan/core/ui/databinding/LayoutAdsBadgeBinding;->getRoot()Leightbitlab/com/blurview/BlurView;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Llb7;

    new-instance v7, Lcom/warefly/checkscan/presentation/commonDialogs/WelcomeFullBannerBottomSheet$c;

    invoke-direct {v7, p0, v0}, Lcom/warefly/checkscan/presentation/commonDialogs/WelcomeFullBannerBottomSheet$c;-><init>(Lcom/warefly/checkscan/presentation/commonDialogs/WelcomeFullBannerBottomSheet;Lb06;)V

    invoke-direct {v6, v7}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p1, Lcom/warefly/checkscan/databinding/BottomsheetWelcomeFullBannerBinding;->incldAdsBadge:Lcom/warefly/checkscan/core/ui/databinding/LayoutAdsBadgeBinding;

    iget-object v0, v0, Lcom/warefly/checkscan/core/ui/databinding/LayoutAdsBadgeBinding;->blurView:Leightbitlab/com/blurview/BlurView;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lcom/warefly/checkscan/databinding/BottomsheetWelcomeFullBannerBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v5}, Lzd3;->h(Leightbitlab/com/blurview/BlurView;Landroid/view/ViewGroup;)V

    :cond_2
    iget-object v0, p1, Lcom/warefly/checkscan/databinding/BottomsheetWelcomeFullBannerBinding;->btnAction:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Llb7;

    new-instance v6, Lcom/warefly/checkscan/presentation/commonDialogs/WelcomeFullBannerBottomSheet$a;

    invoke-direct {v6, p0}, Lcom/warefly/checkscan/presentation/commonDialogs/WelcomeFullBannerBottomSheet$a;-><init>(Lcom/warefly/checkscan/presentation/commonDialogs/WelcomeFullBannerBottomSheet;)V

    invoke-direct {v5, v6}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {v0, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p1, Lcom/warefly/checkscan/databinding/BottomsheetWelcomeFullBannerBinding;->btnAction:Landroid/widget/TextView;

    const/4 v5, 0x0

    if-eqz v3, :cond_3

    iget-object v6, v3, Lfw0;->b:Ljava/lang/String;

    goto :goto_1

    :cond_3
    move-object v6, v5

    :goto_1
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v3, :cond_4

    iget-object v0, v3, Lfw0;->a:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    iget-object v6, p1, Lcom/warefly/checkscan/databinding/BottomsheetWelcomeFullBannerBinding;->btnAction:Landroid/widget/TextView;

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_4
    if-eqz v3, :cond_5

    iget-object v0, v3, Lfw0;->c:Ljava/lang/Integer;

    if-eqz v0, :cond_5

    iget-object v0, p1, Lcom/warefly/checkscan/databinding/BottomsheetWelcomeFullBannerBinding;->btnAction:Landroid/widget/TextView;

    new-instance v6, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v6}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    invoke-virtual {v6, v1}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    const/high16 v7, 0x41000000    # 8.0f

    invoke-static {v7}, Lpl2;->d(F)F

    move-result v7

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    iget-object v3, v3, Lfw0;->c:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v6, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    invoke-virtual {v0, v6}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_5
    iget-object v0, p1, Lcom/warefly/checkscan/databinding/BottomsheetWelcomeFullBannerBinding;->btnSecondAction:Landroid/widget/TextView;

    if-eqz v2, :cond_6

    iget-object v5, v2, Lfw0;->b:Ljava/lang/String;

    :cond_6
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lcom/warefly/checkscan/databinding/BottomsheetWelcomeFullBannerBinding;->btnSecondAction:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Llb7;

    new-instance v5, Lcom/warefly/checkscan/presentation/commonDialogs/WelcomeFullBannerBottomSheet$b;

    invoke-direct {v5, p0}, Lcom/warefly/checkscan/presentation/commonDialogs/WelcomeFullBannerBottomSheet$b;-><init>(Lcom/warefly/checkscan/presentation/commonDialogs/WelcomeFullBannerBottomSheet;)V

    invoke-direct {v3, v5}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz v2, :cond_7

    iget-object p0, v2, Lfw0;->a:Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    iget-object v0, p1, Lcom/warefly/checkscan/databinding/BottomsheetWelcomeFullBannerBinding;->btnSecondAction:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_7
    iget-object p0, p1, Lcom/warefly/checkscan/databinding/BottomsheetWelcomeFullBannerBinding;->btnSecondAction:Landroid/widget/TextView;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v2, :cond_8

    goto :goto_2

    :cond_8
    move v1, v4

    :goto_2
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
