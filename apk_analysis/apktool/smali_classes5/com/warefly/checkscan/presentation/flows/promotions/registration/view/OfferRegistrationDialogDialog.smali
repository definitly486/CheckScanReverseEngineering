.class public final Lcom/warefly/checkscan/presentation/flows/promotions/registration/view/OfferRegistrationDialogDialog;
.super Lcom/warefly/checkscan/core/ui/base/dialogs/BaseBottomSheetDialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/dialogs/BaseBottomSheetDialog<",
        "Lcom/warefly/checkscan/databinding/DialogOfferRegistrationBinding;",
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
.field public final d:Lcom/warefly/checkscan/presentation/landing/view/LandingFragment$b;

.field public final e:Lll3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lll3<",
            "Lj59;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Lud9;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lbs6;

    const-class v1, Lcom/warefly/checkscan/presentation/flows/promotions/registration/view/OfferRegistrationDialogDialog;

    const-string v2, "binding"

    const-string v3, "getBinding()Lcom/warefly/checkscan/databinding/DialogOfferRegistrationBinding;"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lbs6;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v1, Lx07;->a:La17;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    new-array v1, v1, [Lze4;

    aput-object v0, v1, v4

    sput-object v1, Lcom/warefly/checkscan/presentation/flows/promotions/registration/view/OfferRegistrationDialogDialog;->g:[Lze4;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/warefly/checkscan/presentation/landing/view/LandingFragment$b;Lll3;)V
    .locals 1

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v0, 0x7f150174

    invoke-direct {p0, p1, v0}, Lcom/warefly/checkscan/core/ui/base/dialogs/BaseBottomSheetDialog;-><init>(Landroid/content/Context;I)V

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/flows/promotions/registration/view/OfferRegistrationDialogDialog;->d:Lcom/warefly/checkscan/presentation/landing/view/LandingFragment$b;

    iput-object p3, p0, Lcom/warefly/checkscan/presentation/flows/promotions/registration/view/OfferRegistrationDialogDialog;->e:Lll3;

    new-instance p1, Lud9;

    const-class p2, Lcom/warefly/checkscan/databinding/DialogOfferRegistrationBinding;

    invoke-direct {p1, p2, p0}, Lud9;-><init>(Ljava/lang/Class;Lcom/google/android/material/bottomsheet/BottomSheetDialog;)V

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/flows/promotions/registration/view/OfferRegistrationDialogDialog;->f:Lud9;

    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/warefly/checkscan/core/ui/base/dialogs/BaseBottomSheetDialog;->onCreate(Landroid/os/Bundle;)V

    sget-object p1, Lcom/warefly/checkscan/presentation/flows/promotions/registration/view/OfferRegistrationDialogDialog;->g:[Lze4;

    const/4 v0, 0x0

    aget-object p1, p1, v0

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/flows/promotions/registration/view/OfferRegistrationDialogDialog;->f:Lud9;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, v0, Lud9;->d:Landroidx/viewbinding/ViewBinding;

    check-cast p1, Lcom/warefly/checkscan/databinding/DialogOfferRegistrationBinding;

    iget-object v0, p1, Lcom/warefly/checkscan/databinding/DialogOfferRegistrationBinding;->btnConfirm:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Llb7;

    new-instance v2, Lcom/warefly/checkscan/presentation/flows/promotions/registration/view/OfferRegistrationDialogDialog$a;

    invoke-direct {v2, p0}, Lcom/warefly/checkscan/presentation/flows/promotions/registration/view/OfferRegistrationDialogDialog$a;-><init>(Lcom/warefly/checkscan/presentation/flows/promotions/registration/view/OfferRegistrationDialogDialog;)V

    invoke-direct {v1, v2}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p1, Lcom/warefly/checkscan/databinding/DialogOfferRegistrationBinding;->btnCancel:Landroid/widget/TextView;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Llb7;

    new-instance v1, Lcom/warefly/checkscan/presentation/flows/promotions/registration/view/OfferRegistrationDialogDialog$b;

    invoke-direct {v1, p0}, Lcom/warefly/checkscan/presentation/flows/promotions/registration/view/OfferRegistrationDialogDialog$b;-><init>(Lcom/warefly/checkscan/presentation/flows/promotions/registration/view/OfferRegistrationDialogDialog;)V

    invoke-direct {v0, v1}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
