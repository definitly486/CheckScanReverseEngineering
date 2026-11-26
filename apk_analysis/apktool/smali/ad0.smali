.class public final synthetic Lad0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# instance fields
.field public final synthetic a:Lcom/warefly/checkscan/core/ui/base/dialogs/BaseBottomSheetDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/warefly/checkscan/core/ui/base/dialogs/BaseBottomSheetDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lad0;->a:Lcom/warefly/checkscan/core/ui/base/dialogs/BaseBottomSheetDialog;

    return-void
.end method


# virtual methods
.method public final onShow(Landroid/content/DialogInterface;)V
    .locals 0

    sget p1, Lcom/warefly/checkscan/core/ui/base/dialogs/BaseBottomSheetDialog;->c:I

    iget-object p0, p0, Lad0;->a:Lcom/warefly/checkscan/core/ui/base/dialogs/BaseBottomSheetDialog;

    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->getBehavior()Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object p0

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setState(I)V

    return-void
.end method
