.class public final Lcom/warefly/checkscan/personalform/presentation/form/bottomSheet/AfterOnboardingWarningBottomSheet;
.super Lcom/warefly/checkscan/core/ui/base/dialogs/BaseBottomSheetDialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/dialogs/BaseBottomSheetDialog<",
        "Lcom/warefly/checkscan/personalform/databinding/BottomSheetAfterOnboardingWarningBinding;",
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
.field public final d:Lcom/warefly/checkscan/personalform/presentation/form/bottomSheet/a;

.field public final e:Lcom/warefly/checkscan/personalform/presentation/form/view/PersonalDataFormFragment$e;

.field public final f:Lud9;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lbs6;

    const-class v1, Lcom/warefly/checkscan/personalform/presentation/form/bottomSheet/AfterOnboardingWarningBottomSheet;

    const-string v2, "binding"

    const-string v3, "getBinding()Lcom/warefly/checkscan/personalform/databinding/BottomSheetAfterOnboardingWarningBinding;"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lbs6;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v1, Lx07;->a:La17;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    new-array v1, v1, [Lze4;

    aput-object v0, v1, v4

    sput-object v1, Lcom/warefly/checkscan/personalform/presentation/form/bottomSheet/AfterOnboardingWarningBottomSheet;->g:[Lze4;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/warefly/checkscan/personalform/presentation/form/bottomSheet/a;Lcom/warefly/checkscan/personalform/presentation/form/view/PersonalDataFormFragment$e;)V
    .locals 1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v0, 0x7f150174

    invoke-direct {p0, p1, v0}, Lcom/warefly/checkscan/core/ui/base/dialogs/BaseBottomSheetDialog;-><init>(Landroid/content/Context;I)V

    iput-object p2, p0, Lcom/warefly/checkscan/personalform/presentation/form/bottomSheet/AfterOnboardingWarningBottomSheet;->d:Lcom/warefly/checkscan/personalform/presentation/form/bottomSheet/a;

    iput-object p3, p0, Lcom/warefly/checkscan/personalform/presentation/form/bottomSheet/AfterOnboardingWarningBottomSheet;->e:Lcom/warefly/checkscan/personalform/presentation/form/view/PersonalDataFormFragment$e;

    new-instance p1, Lud9;

    const-class p2, Lcom/warefly/checkscan/personalform/databinding/BottomSheetAfterOnboardingWarningBinding;

    invoke-direct {p1, p2, p0}, Lud9;-><init>(Ljava/lang/Class;Lcom/google/android/material/bottomsheet/BottomSheetDialog;)V

    iput-object p1, p0, Lcom/warefly/checkscan/personalform/presentation/form/bottomSheet/AfterOnboardingWarningBottomSheet;->f:Lud9;

    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 7

    invoke-super {p0, p1}, Lcom/warefly/checkscan/core/ui/base/dialogs/BaseBottomSheetDialog;->onCreate(Landroid/os/Bundle;)V

    sget-object p1, Lcom/warefly/checkscan/personalform/presentation/form/bottomSheet/AfterOnboardingWarningBottomSheet;->g:[Lze4;

    const/4 v0, 0x0

    aget-object p1, p1, v0

    iget-object v1, p0, Lcom/warefly/checkscan/personalform/presentation/form/bottomSheet/AfterOnboardingWarningBottomSheet;->f:Lud9;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, v1, Lud9;->d:Landroidx/viewbinding/ViewBinding;

    check-cast p1, Lcom/warefly/checkscan/personalform/databinding/BottomSheetAfterOnboardingWarningBinding;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bumptech/glide/a;->d(Landroid/content/Context;)Lp37;

    move-result-object v1

    iget-object v2, p0, Lcom/warefly/checkscan/personalform/presentation/form/bottomSheet/AfterOnboardingWarningBottomSheet;->d:Lcom/warefly/checkscan/personalform/presentation/form/bottomSheet/a;

    iget-object v3, v2, Lcom/warefly/checkscan/personalform/presentation/form/bottomSheet/a;->c:Ljava/lang/String;

    iget-object v4, v2, Lcom/warefly/checkscan/personalform/presentation/form/bottomSheet/a;->e:Lcom/warefly/checkscan/personalform/presentation/form/bottomSheet/a$b;

    invoke-virtual {v1, v3}, Lp37;->h(Ljava/lang/String;)Lh37;

    move-result-object v1

    iget-object v3, p1, Lcom/warefly/checkscan/personalform/databinding/BottomSheetAfterOnboardingWarningBinding;->ivLogo:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Lh37;->L(Landroid/widget/ImageView;)V

    iget-object v1, p1, Lcom/warefly/checkscan/personalform/databinding/BottomSheetAfterOnboardingWarningBinding;->tvTitle:Landroid/widget/TextView;

    iget-object v3, v2, Lcom/warefly/checkscan/personalform/presentation/form/bottomSheet/a;->a:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p1, Lcom/warefly/checkscan/personalform/databinding/BottomSheetAfterOnboardingWarningBinding;->tvDescription:Landroid/widget/TextView;

    iget-object v3, v2, Lcom/warefly/checkscan/personalform/presentation/form/bottomSheet/a;->b:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p1, Lcom/warefly/checkscan/personalform/databinding/BottomSheetAfterOnboardingWarningBinding;->btnAction:Landroid/widget/TextView;

    iget-object v2, v2, Lcom/warefly/checkscan/personalform/presentation/form/bottomSheet/a;->d:Lcom/warefly/checkscan/personalform/presentation/form/bottomSheet/a$a;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    iget-object v5, v2, Lcom/warefly/checkscan/personalform/presentation/form/bottomSheet/a$a;->a:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v5, v3

    :goto_0
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v5, 0x8

    if-eqz v2, :cond_1

    move v2, v0

    goto :goto_1

    :cond_1
    move v2, v5

    :goto_1
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    new-instance v2, Llb7;

    new-instance v6, Lcom/warefly/checkscan/personalform/presentation/form/bottomSheet/AfterOnboardingWarningBottomSheet$a;

    invoke-direct {v6, p0}, Lcom/warefly/checkscan/personalform/presentation/form/bottomSheet/AfterOnboardingWarningBottomSheet$a;-><init>(Lcom/warefly/checkscan/personalform/presentation/form/bottomSheet/AfterOnboardingWarningBottomSheet;)V

    invoke-direct {v2, v6}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p1, Lcom/warefly/checkscan/personalform/databinding/BottomSheetAfterOnboardingWarningBinding;->btnSecondary:Landroid/widget/TextView;

    if-eqz v4, :cond_2

    iget-object v3, v4, Lcom/warefly/checkscan/personalform/presentation/form/bottomSheet/a$b;->a:Ljava/lang/String;

    :cond_2
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v4, :cond_3

    goto :goto_2

    :cond_3
    move v0, v5

    :goto_2
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    new-instance v0, Llb7;

    new-instance v1, Lcom/warefly/checkscan/personalform/presentation/form/bottomSheet/AfterOnboardingWarningBottomSheet$b;

    invoke-direct {v1, p0}, Lcom/warefly/checkscan/personalform/presentation/form/bottomSheet/AfterOnboardingWarningBottomSheet$b;-><init>(Lcom/warefly/checkscan/personalform/presentation/form/bottomSheet/AfterOnboardingWarningBottomSheet;)V

    invoke-direct {v0, v1}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
