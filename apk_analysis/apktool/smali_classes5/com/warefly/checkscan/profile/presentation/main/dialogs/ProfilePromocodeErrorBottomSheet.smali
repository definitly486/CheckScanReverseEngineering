.class public final Lcom/warefly/checkscan/profile/presentation/main/dialogs/ProfilePromocodeErrorBottomSheet;
.super Lcom/warefly/checkscan/core/ui/base/dialogs/BaseBottomSheetDialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/dialogs/BaseBottomSheetDialog<",
        "Lcom/warefly/checkscan/profile/databinding/DialogProfilePromocodeErrorBinding;",
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
.field public final d:Z

.field public final e:Lm6;

.field public final f:Lud9;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lbs6;

    const-class v1, Lcom/warefly/checkscan/profile/presentation/main/dialogs/ProfilePromocodeErrorBottomSheet;

    const-string v2, "binding"

    const-string v3, "getBinding()Lcom/warefly/checkscan/profile/databinding/DialogProfilePromocodeErrorBinding;"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lbs6;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v1, Lx07;->a:La17;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    new-array v1, v1, [Lze4;

    aput-object v0, v1, v4

    sput-object v1, Lcom/warefly/checkscan/profile/presentation/main/dialogs/ProfilePromocodeErrorBottomSheet;->g:[Lze4;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZLm6;)V
    .locals 1

    const v0, 0x7f150174

    invoke-direct {p0, p1, v0}, Lcom/warefly/checkscan/core/ui/base/dialogs/BaseBottomSheetDialog;-><init>(Landroid/content/Context;I)V

    iput-boolean p2, p0, Lcom/warefly/checkscan/profile/presentation/main/dialogs/ProfilePromocodeErrorBottomSheet;->d:Z

    iput-object p3, p0, Lcom/warefly/checkscan/profile/presentation/main/dialogs/ProfilePromocodeErrorBottomSheet;->e:Lm6;

    new-instance p1, Lud9;

    const-class p2, Lcom/warefly/checkscan/profile/databinding/DialogProfilePromocodeErrorBinding;

    invoke-direct {p1, p2, p0}, Lud9;-><init>(Ljava/lang/Class;Lcom/google/android/material/bottomsheet/BottomSheetDialog;)V

    iput-object p1, p0, Lcom/warefly/checkscan/profile/presentation/main/dialogs/ProfilePromocodeErrorBottomSheet;->f:Lud9;

    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 6

    invoke-super {p0, p1}, Lcom/warefly/checkscan/core/ui/base/dialogs/BaseBottomSheetDialog;->onCreate(Landroid/os/Bundle;)V

    sget-object p1, Lcom/warefly/checkscan/profile/presentation/main/dialogs/ProfilePromocodeErrorBottomSheet;->g:[Lze4;

    const/4 v0, 0x0

    aget-object v1, p1, v0

    iget-object v2, p0, Lcom/warefly/checkscan/profile/presentation/main/dialogs/ProfilePromocodeErrorBottomSheet;->f:Lud9;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v2, Lud9;->d:Landroidx/viewbinding/ViewBinding;

    check-cast v1, Lcom/warefly/checkscan/profile/databinding/DialogProfilePromocodeErrorBinding;

    iget-object v3, p0, Lcom/warefly/checkscan/profile/presentation/main/dialogs/ProfilePromocodeErrorBottomSheet;->e:Lm6;

    if-eqz v3, :cond_0

    iget-object v4, v1, Lcom/warefly/checkscan/profile/databinding/DialogProfilePromocodeErrorBinding;->tvTitle:Landroid/widget/TextView;

    iget-object v5, v3, Lm6;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, v1, Lcom/warefly/checkscan/profile/databinding/DialogProfilePromocodeErrorBinding;->tvDescription:Landroid/widget/TextView;

    iget-object v5, v3, Lm6;->b:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v1, Lcom/warefly/checkscan/profile/databinding/DialogProfilePromocodeErrorBinding;->btnOk:Landroid/widget/TextView;

    iget-object v3, v3, Lm6;->c:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    aget-object p1, p1, v0

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, v2, Lud9;->d:Landroidx/viewbinding/ViewBinding;

    check-cast p1, Lcom/warefly/checkscan/profile/databinding/DialogProfilePromocodeErrorBinding;

    iget-object p1, p1, Lcom/warefly/checkscan/profile/databinding/DialogProfilePromocodeErrorBinding;->btnOk:Landroid/widget/TextView;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Llb7;

    new-instance v1, Lhh1;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lhh1;-><init>(Ljava/lang/Object;I)V

    invoke-direct {v0, v1}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-boolean p1, p0, Lcom/warefly/checkscan/profile/presentation/main/dialogs/ProfilePromocodeErrorBottomSheet;->d:Z

    if-eqz p1, :cond_1

    sget-object p1, Lkd$a$j$g;->e:Lkd$a$j$g;

    invoke-virtual {p1}, Lkd;->a()V

    goto :goto_0

    :cond_1
    sget-object p1, Lkd$a$f$f;->e:Lkd$a$f$f;

    invoke-virtual {p1}, Lkd;->a()V

    :goto_0
    new-instance p1, Lmm6;

    invoke-direct {p1, p0}, Lmm6;-><init>(Lcom/warefly/checkscan/profile/presentation/main/dialogs/ProfilePromocodeErrorBottomSheet;)V

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method
