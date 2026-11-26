.class public final Lcom/warefly/checkscan/presentation/commonDialogs/BannerBottomSheetDialog;
.super Lcom/warefly/checkscan/core/ui/base/dialogs/BaseBottomSheetDialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/dialogs/BaseBottomSheetDialog<",
        "Lcom/warefly/checkscan/databinding/DialogBannerGeneralBinding;",
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

    const-class v1, Lcom/warefly/checkscan/presentation/commonDialogs/BannerBottomSheetDialog;

    const-string v2, "binding"

    const-string v3, "getBinding()Lcom/warefly/checkscan/databinding/DialogBannerGeneralBinding;"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lbs6;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v1, Lx07;->a:La17;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    new-array v1, v1, [Lze4;

    aput-object v0, v1, v4

    sput-object v1, Lcom/warefly/checkscan/presentation/commonDialogs/BannerBottomSheetDialog;->h:[Lze4;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lhc0$a;Lcom/warefly/checkscan/presentation/flows/desktop/view/DesktopFlowFragment$c;Lcom/warefly/checkscan/presentation/flows/desktop/view/DesktopFlowFragment$d;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v0, 0x7f150174

    invoke-direct {p0, p1, v0}, Lcom/warefly/checkscan/core/ui/base/dialogs/BaseBottomSheetDialog;-><init>(Landroid/content/Context;I)V

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/commonDialogs/BannerBottomSheetDialog;->d:Lhc0$a;

    iput-object p3, p0, Lcom/warefly/checkscan/presentation/commonDialogs/BannerBottomSheetDialog;->e:Lcom/warefly/checkscan/presentation/flows/desktop/view/DesktopFlowFragment$c;

    iput-object p4, p0, Lcom/warefly/checkscan/presentation/commonDialogs/BannerBottomSheetDialog;->f:Lcom/warefly/checkscan/presentation/flows/desktop/view/DesktopFlowFragment$d;

    new-instance p1, Lud9;

    const-class p2, Lcom/warefly/checkscan/databinding/DialogBannerGeneralBinding;

    invoke-direct {p1, p2, p0}, Lud9;-><init>(Ljava/lang/Class;Lcom/google/android/material/bottomsheet/BottomSheetDialog;)V

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/commonDialogs/BannerBottomSheetDialog;->g:Lud9;

    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Lcom/warefly/checkscan/core/ui/base/dialogs/BaseBottomSheetDialog;->onCreate(Landroid/os/Bundle;)V

    new-instance p1, Lkd$g0$a$a$b;

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/commonDialogs/BannerBottomSheetDialog;->d:Lhc0$a;

    iget v1, v0, Lhc0$a;->g:I

    iget-object v2, v0, Lhc0$a;->m:Ljava/lang/String;

    invoke-direct {p1, v1}, Lkd$g0$a$a$b;-><init>(I)V

    invoke-virtual {p1}, Lkd;->c()V

    iget-object p1, p0, Lcom/warefly/checkscan/presentation/commonDialogs/BannerBottomSheetDialog;->f:Lcom/warefly/checkscan/presentation/flows/desktop/view/DesktopFlowFragment$d;

    iget v1, v0, Lhc0$a;->g:I

    invoke-virtual {p1, v1}, Lcom/warefly/checkscan/presentation/flows/desktop/view/DesktopFlowFragment$d;->a(I)V

    sget-object p1, Lcom/warefly/checkscan/presentation/commonDialogs/BannerBottomSheetDialog;->h:[Lze4;

    const/4 v1, 0x0

    aget-object p1, p1, v1

    iget-object v3, p0, Lcom/warefly/checkscan/presentation/commonDialogs/BannerBottomSheetDialog;->g:Lud9;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, v3, Lud9;->d:Landroidx/viewbinding/ViewBinding;

    check-cast p1, Lcom/warefly/checkscan/databinding/DialogBannerGeneralBinding;

    :try_start_0
    iget-object v3, v0, Lhc0$a;->a:Ljava/lang/Integer;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    iget-object v4, p1, Lcom/warefly/checkscan/databinding/DialogBannerGeneralBinding;->layoutRoot:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-static {v4, v3}, Lds2;->a(Landroid/graphics/drawable/Drawable;I)V

    sget-object v3, Lj59;->a:Lj59;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    if-eqz v2, :cond_1

    invoke-static {v2}, Lta8;->M(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    iget-object v2, v0, Lhc0$a;->o:Ljava/lang/String;

    if-nez v2, :cond_2

    const-string v2, ""

    :cond_2
    iget-object v3, p1, Lcom/warefly/checkscan/databinding/DialogBannerGeneralBinding;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :try_start_1
    iget-object v2, v0, Lhc0$a;->n:Ljava/lang/Integer;

    if-eqz v2, :cond_3

    iget-object v3, p1, Lcom/warefly/checkscan/databinding/DialogBannerGeneralBinding;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_3
    sget-object v2, Lj59;->a:Lj59;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    iget-object v2, p1, Lcom/warefly/checkscan/databinding/DialogBannerGeneralBinding;->tvSubtitle:Landroid/widget/TextView;

    iget-object v3, v0, Lhc0$a;->l:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :try_start_2
    iget-object v2, v0, Lhc0$a;->j:Ljava/lang/Integer;

    if-eqz v2, :cond_4

    iget-object v3, p1, Lcom/warefly/checkscan/databinding/DialogBannerGeneralBinding;->tvSubtitle:Landroid/widget/TextView;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_4
    sget-object v2, Lj59;->a:Lj59;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :catchall_2
    iget-object v2, v0, Lhc0$a;->e:Lfw0;

    if-eqz v2, :cond_5

    iget-object v3, p1, Lcom/warefly/checkscan/databinding/DialogBannerGeneralBinding;->btnMain:Landroid/widget/Button;

    iget-object v4, v2, Lfw0;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :try_start_3
    iget-object v3, v2, Lfw0;->a:Ljava/lang/Integer;

    iget-object v4, p1, Lcom/warefly/checkscan/databinding/DialogBannerGeneralBinding;->btnMain:Landroid/widget/Button;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setTextColor(I)V

    sget-object v3, Lj59;->a:Lj59;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :catchall_3
    :try_start_4
    iget-object v2, v2, Lfw0;->c:Ljava/lang/Integer;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    iget-object v3, p1, Lcom/warefly/checkscan/databinding/DialogBannerGeneralBinding;->btnMain:Landroid/widget/Button;

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    sget-object v2, Lj59;->a:Lj59;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    :catchall_4
    :cond_5
    iget-object v2, v0, Lhc0$a;->k:Lfw0;

    if-eqz v2, :cond_6

    iget-object v3, p1, Lcom/warefly/checkscan/databinding/DialogBannerGeneralBinding;->btnSub:Landroid/widget/TextView;

    iget-object v4, v2, Lfw0;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :try_start_5
    iget-object v3, v2, Lfw0;->a:Ljava/lang/Integer;

    iget-object v4, p1, Lcom/warefly/checkscan/databinding/DialogBannerGeneralBinding;->btnSub:Landroid/widget/TextView;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setTextColor(I)V

    sget-object v3, Lj59;->a:Lj59;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    :catchall_5
    :try_start_6
    iget-object v2, v2, Lfw0;->c:Ljava/lang/Integer;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    iget-object v3, p1, Lcom/warefly/checkscan/databinding/DialogBannerGeneralBinding;->btnSub:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {v3, v2}, Lds2;->a(Landroid/graphics/drawable/Drawable;I)V

    sget-object v2, Lj59;->a:Lj59;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    :catchall_6
    :cond_6
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bumptech/glide/a;->d(Landroid/content/Context;)Lp37;

    move-result-object v2

    iget-object v3, v0, Lhc0$a;->i:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lp37;->h(Ljava/lang/String;)Lh37;

    move-result-object v2

    iget-object v3, p1, Lcom/warefly/checkscan/databinding/DialogBannerGeneralBinding;->image:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Lh37;->L(Landroid/widget/ImageView;)V

    iget-object v0, v0, Lhc0$a;->q:Lb06;

    if-eqz v0, :cond_8

    iget-object v2, p1, Lcom/warefly/checkscan/databinding/DialogBannerGeneralBinding;->incldAdsBadge:Lcom/warefly/checkscan/core/ui/databinding/LayoutAdsBadgeBinding;

    invoke-virtual {v2}, Lcom/warefly/checkscan/core/ui/databinding/LayoutAdsBadgeBinding;->getRoot()Leightbitlab/com/blurview/BlurView;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v3, v0, Lb06;->b:Z

    if-eqz v3, :cond_7

    goto :goto_0

    :cond_7
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p1, Lcom/warefly/checkscan/databinding/DialogBannerGeneralBinding;->incldAdsBadge:Lcom/warefly/checkscan/core/ui/databinding/LayoutAdsBadgeBinding;

    invoke-virtual {v1}, Lcom/warefly/checkscan/core/ui/databinding/LayoutAdsBadgeBinding;->getRoot()Leightbitlab/com/blurview/BlurView;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Llb7;

    new-instance v3, Lcom/warefly/checkscan/presentation/commonDialogs/BannerBottomSheetDialog$c;

    invoke-direct {v3, p0, v0}, Lcom/warefly/checkscan/presentation/commonDialogs/BannerBottomSheetDialog$c;-><init>(Lcom/warefly/checkscan/presentation/commonDialogs/BannerBottomSheetDialog;Lb06;)V

    invoke-direct {v2, v3}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p1, Lcom/warefly/checkscan/databinding/DialogBannerGeneralBinding;->incldAdsBadge:Lcom/warefly/checkscan/core/ui/databinding/LayoutAdsBadgeBinding;

    iget-object v0, v0, Lcom/warefly/checkscan/core/ui/databinding/LayoutAdsBadgeBinding;->blurView:Leightbitlab/com/blurview/BlurView;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lcom/warefly/checkscan/databinding/DialogBannerGeneralBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v1}, Lzd3;->h(Leightbitlab/com/blurview/BlurView;Landroid/view/ViewGroup;)V

    :cond_8
    iget-object v0, p1, Lcom/warefly/checkscan/databinding/DialogBannerGeneralBinding;->btnMain:Landroid/widget/Button;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Llb7;

    new-instance v2, Lcom/warefly/checkscan/presentation/commonDialogs/BannerBottomSheetDialog$a;

    invoke-direct {v2, p0}, Lcom/warefly/checkscan/presentation/commonDialogs/BannerBottomSheetDialog$a;-><init>(Lcom/warefly/checkscan/presentation/commonDialogs/BannerBottomSheetDialog;)V

    invoke-direct {v1, v2}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p1, Lcom/warefly/checkscan/databinding/DialogBannerGeneralBinding;->btnSub:Landroid/widget/TextView;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Llb7;

    new-instance v1, Lcom/warefly/checkscan/presentation/commonDialogs/BannerBottomSheetDialog$b;

    invoke-direct {v1, p0}, Lcom/warefly/checkscan/presentation/commonDialogs/BannerBottomSheetDialog$b;-><init>(Lcom/warefly/checkscan/presentation/commonDialogs/BannerBottomSheetDialog;)V

    invoke-direct {v0, v1}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
