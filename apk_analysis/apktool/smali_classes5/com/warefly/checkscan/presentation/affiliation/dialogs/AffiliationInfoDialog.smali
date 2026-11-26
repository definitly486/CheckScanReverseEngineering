.class public final Lcom/warefly/checkscan/presentation/affiliation/dialogs/AffiliationInfoDialog;
.super Lcom/warefly/checkscan/core/ui/base/dialogs/BaseBottomSheetDialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/dialogs/BaseBottomSheetDialog<",
        "Lcom/warefly/checkscan/databinding/DialogAffiliationInfoBinding;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic e:[Lze4;
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
.field public final d:Lud9;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lbs6;

    const-class v1, Lcom/warefly/checkscan/presentation/affiliation/dialogs/AffiliationInfoDialog;

    const-string v2, "binding"

    const-string v3, "getBinding()Lcom/warefly/checkscan/databinding/DialogAffiliationInfoBinding;"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lbs6;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v1, Lx07;->a:La17;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    new-array v1, v1, [Lze4;

    aput-object v0, v1, v4

    sput-object v1, Lcom/warefly/checkscan/presentation/affiliation/dialogs/AffiliationInfoDialog;->e:[Lze4;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const v0, 0x7f150174

    invoke-direct {p0, p1, v0}, Lcom/warefly/checkscan/core/ui/base/dialogs/BaseBottomSheetDialog;-><init>(Landroid/content/Context;I)V

    new-instance p1, Lud9;

    const-class v0, Lcom/warefly/checkscan/databinding/DialogAffiliationInfoBinding;

    invoke-direct {p1, v0, p0}, Lud9;-><init>(Ljava/lang/Class;Lcom/google/android/material/bottomsheet/BottomSheetDialog;)V

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/affiliation/dialogs/AffiliationInfoDialog;->d:Lud9;

    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 6

    invoke-super {p0, p1}, Lcom/warefly/checkscan/core/ui/base/dialogs/BaseBottomSheetDialog;->onCreate(Landroid/os/Bundle;)V

    sget-object p1, Lcom/warefly/checkscan/presentation/affiliation/dialogs/AffiliationInfoDialog;->e:[Lze4;

    const/4 v0, 0x0

    aget-object p1, p1, v0

    iget-object v1, p0, Lcom/warefly/checkscan/presentation/affiliation/dialogs/AffiliationInfoDialog;->d:Lud9;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, v1, Lud9;->d:Landroidx/viewbinding/ViewBinding;

    check-cast p1, Lcom/warefly/checkscan/databinding/DialogAffiliationInfoBinding;

    invoke-virtual {p1}, Lcom/warefly/checkscan/databinding/DialogAffiliationInfoBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v1

    invoke-static {v1}, Lcom/bumptech/glide/a;->e(Landroid/view/View;)Lp37;

    move-result-object v1

    const v2, 0x7f080198

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lp37;->f(Ljava/lang/Integer;)Lh37;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Luq2;->c:Luq2$d;

    new-instance v3, Ls81;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v1, v2, v3}, Lee0;->A(Luq2;Llj0;)Lee0;

    move-result-object v1

    check-cast v1, Lh37;

    new-instance v2, Ls37;

    invoke-direct {v2}, Ls37;-><init>()V

    new-instance v3, Lt81;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    new-instance v4, Le87;

    const/16 v5, 0x10

    invoke-static {v5}, Lpl2;->e(I)I

    move-result v5

    invoke-direct {v4, v5}, Le87;-><init>(I)V

    const/4 v5, 0x2

    new-array v5, v5, [Ls19;

    aput-object v3, v5, v0

    const/4 v0, 0x1

    aput-object v4, v5, v0

    invoke-virtual {v2, v5}, Lee0;->D([Ls19;)Lee0;

    move-result-object v0

    invoke-virtual {v1, v0}, Lh37;->G(Lee0;)Lh37;

    move-result-object v0

    iget-object v1, p1, Lcom/warefly/checkscan/databinding/DialogAffiliationInfoBinding;->ivBanner:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lh37;->L(Landroid/widget/ImageView;)V

    iget-object p1, p1, Lcom/warefly/checkscan/databinding/DialogAffiliationInfoBinding;->btnClose:Landroid/widget/TextView;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Llb7;

    new-instance v1, Lcom/warefly/checkscan/presentation/affiliation/dialogs/AffiliationInfoDialog$a;

    invoke-direct {v1, p0}, Lcom/warefly/checkscan/presentation/affiliation/dialogs/AffiliationInfoDialog$a;-><init>(Lcom/warefly/checkscan/presentation/affiliation/dialogs/AffiliationInfoDialog;)V

    invoke-direct {v0, v1}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
