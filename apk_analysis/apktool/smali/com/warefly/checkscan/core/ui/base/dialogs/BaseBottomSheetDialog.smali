.class public abstract Lcom/warefly/checkscan/core/ui/base/dialogs/BaseBottomSheetDialog;
.super Lcom/google/android/material/bottomsheet/BottomSheetDialog;
.source "SourceFile"

# interfaces
.implements Lcom/warefly/checkscan/core/ui/base/architecture/BaseView;
.implements Ljg4;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<VB::",
        "Landroidx/viewbinding/ViewBinding;",
        ">",
        "Lcom/google/android/material/bottomsheet/BottomSheetDialog;",
        "Lcom/warefly/checkscan/core/ui/base/architecture/BaseView;",
        "Ljg4;"
    }
.end annotation


# static fields
.field public static final synthetic c:I


# instance fields
.field public final b:Lfh8;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, p1, p2}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;-><init>(Landroid/content/Context;I)V

    new-instance p1, Lcom/warefly/checkscan/core/ui/base/dialogs/BaseBottomSheetDialog$a;

    invoke-direct {p1, p0}, Lcom/warefly/checkscan/core/ui/base/dialogs/BaseBottomSheetDialog$a;-><init>(Lcom/warefly/checkscan/core/ui/base/dialogs/BaseBottomSheetDialog;)V

    new-instance p2, Lfh8;

    invoke-direct {p2, p1}, Lfh8;-><init>(Lll3;)V

    iput-object p2, p0, Lcom/warefly/checkscan/core/ui/base/dialogs/BaseBottomSheetDialog;->b:Lfh8;

    return-void
.end method


# virtual methods
.method public final onAttachedToWindow()V
    .locals 0

    invoke-super {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->onAttachedToWindow()V

    iget-object p0, p0, Lcom/warefly/checkscan/core/ui/base/dialogs/BaseBottomSheetDialog;->b:Lfh8;

    invoke-virtual {p0}, Lfh8;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lgh5;

    invoke-virtual {p0}, Lgh5;->a()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->onCreate(Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/warefly/checkscan/core/ui/base/dialogs/BaseBottomSheetDialog;->b:Lfh8;

    invoke-virtual {p1}, Lfh8;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lgh5;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p1, v0}, Lgh5;->b(Landroid/os/Bundle;)V

    new-instance p1, Lad0;

    invoke-direct {p1, p0}, Lad0;-><init>(Lcom/warefly/checkscan/core/ui/base/dialogs/BaseBottomSheetDialog;)V

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->onDetachedFromWindow()V

    iget-object p0, p0, Lcom/warefly/checkscan/core/ui/base/dialogs/BaseBottomSheetDialog;->b:Lfh8;

    invoke-virtual {p0}, Lfh8;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgh5;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0, v1}, Lgh5;->f(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lfh8;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lgh5;

    invoke-virtual {p0}, Lgh5;->e()V

    return-void
.end method

.method public final openUrl(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lnz1;->f:Lnz1;

    invoke-static {p0, p1, v0}, Loz1;->c(Landroid/content/Context;Ljava/lang/String;Lll3;)V

    return-void
.end method

.method public final openUrlInCustomTab(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1}, Li72;->b(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
