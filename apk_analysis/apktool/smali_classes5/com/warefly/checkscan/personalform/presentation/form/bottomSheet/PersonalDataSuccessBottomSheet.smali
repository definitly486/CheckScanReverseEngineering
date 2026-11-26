.class public final Lcom/warefly/checkscan/personalform/presentation/form/bottomSheet/PersonalDataSuccessBottomSheet;
.super Lcom/warefly/checkscan/core/ui/base/dialogs/BaseBottomSheetDialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/dialogs/BaseBottomSheetDialog<",
        "Lcom/warefly/checkscan/personalform/databinding/BottomSheetPersonalDataSaveSuccessBinding;",
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
.field public final d:Lu66;

.field public final e:Lcom/warefly/checkscan/personalform/presentation/form/view/PersonalDataFormFragment$f;

.field public final f:Lud9;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lbs6;

    const-class v1, Lcom/warefly/checkscan/personalform/presentation/form/bottomSheet/PersonalDataSuccessBottomSheet;

    const-string v2, "binding"

    const-string v3, "getBinding()Lcom/warefly/checkscan/personalform/databinding/BottomSheetPersonalDataSaveSuccessBinding;"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lbs6;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v1, Lx07;->a:La17;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    new-array v1, v1, [Lze4;

    aput-object v0, v1, v4

    sput-object v1, Lcom/warefly/checkscan/personalform/presentation/form/bottomSheet/PersonalDataSuccessBottomSheet;->g:[Lze4;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lu66;Lcom/warefly/checkscan/personalform/presentation/form/view/PersonalDataFormFragment$f;)V
    .locals 1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v0, 0x7f150174

    invoke-direct {p0, p1, v0}, Lcom/warefly/checkscan/core/ui/base/dialogs/BaseBottomSheetDialog;-><init>(Landroid/content/Context;I)V

    iput-object p2, p0, Lcom/warefly/checkscan/personalform/presentation/form/bottomSheet/PersonalDataSuccessBottomSheet;->d:Lu66;

    iput-object p3, p0, Lcom/warefly/checkscan/personalform/presentation/form/bottomSheet/PersonalDataSuccessBottomSheet;->e:Lcom/warefly/checkscan/personalform/presentation/form/view/PersonalDataFormFragment$f;

    new-instance p1, Lud9;

    const-class p2, Lcom/warefly/checkscan/personalform/databinding/BottomSheetPersonalDataSaveSuccessBinding;

    invoke-direct {p1, p2, p0}, Lud9;-><init>(Ljava/lang/Class;Lcom/google/android/material/bottomsheet/BottomSheetDialog;)V

    iput-object p1, p0, Lcom/warefly/checkscan/personalform/presentation/form/bottomSheet/PersonalDataSuccessBottomSheet;->f:Lud9;

    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/warefly/checkscan/core/ui/base/dialogs/BaseBottomSheetDialog;->onCreate(Landroid/os/Bundle;)V

    sget-object p1, Lcom/warefly/checkscan/personalform/presentation/form/bottomSheet/PersonalDataSuccessBottomSheet;->g:[Lze4;

    const/4 v0, 0x0

    aget-object p1, p1, v0

    iget-object v0, p0, Lcom/warefly/checkscan/personalform/presentation/form/bottomSheet/PersonalDataSuccessBottomSheet;->f:Lud9;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, v0, Lud9;->d:Landroidx/viewbinding/ViewBinding;

    check-cast p1, Lcom/warefly/checkscan/personalform/databinding/BottomSheetPersonalDataSaveSuccessBinding;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/a;->d(Landroid/content/Context;)Lp37;

    move-result-object v0

    iget-object v1, p0, Lcom/warefly/checkscan/personalform/presentation/form/bottomSheet/PersonalDataSuccessBottomSheet;->d:Lu66;

    iget-object v2, v1, Lu66;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lp37;->h(Ljava/lang/String;)Lh37;

    move-result-object v0

    iget-object v2, p1, Lcom/warefly/checkscan/personalform/databinding/BottomSheetPersonalDataSaveSuccessBinding;->ivLogo:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Lh37;->L(Landroid/widget/ImageView;)V

    iget-object v0, p1, Lcom/warefly/checkscan/personalform/databinding/BottomSheetPersonalDataSaveSuccessBinding;->tvTitle:Landroid/widget/TextView;

    iget-object v2, v1, Lu66;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lcom/warefly/checkscan/personalform/databinding/BottomSheetPersonalDataSaveSuccessBinding;->tvDescription:Landroid/widget/TextView;

    iget-object v2, v1, Lu66;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p1, Lcom/warefly/checkscan/personalform/databinding/BottomSheetPersonalDataSaveSuccessBinding;->btnAction:Landroid/widget/TextView;

    iget-object v0, v1, Lu66;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Llb7;

    new-instance v1, Lcom/warefly/checkscan/personalform/presentation/form/bottomSheet/PersonalDataSuccessBottomSheet$a;

    invoke-direct {v1, p0}, Lcom/warefly/checkscan/personalform/presentation/form/bottomSheet/PersonalDataSuccessBottomSheet$a;-><init>(Lcom/warefly/checkscan/personalform/presentation/form/bottomSheet/PersonalDataSuccessBottomSheet;)V

    invoke-direct {v0, v1}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
