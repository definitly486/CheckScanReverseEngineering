.class public abstract Lcom/warefly/checkscan/ui/AutoCancellableDialog;
.super Lcom/warefly/checkscan/core/ui/base/dialogs/BaseDialogNew;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<VB::",
        "Landroidx/viewbinding/ViewBinding;",
        ">",
        "Lcom/warefly/checkscan/core/ui/base/dialogs/BaseDialogNew<",
        "TVB;>;"
    }
.end annotation


# instance fields
.field public final c:J

.field public d:Landroid/os/CountDownTimer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/warefly/checkscan/core/ui/base/dialogs/BaseDialogNew;-><init>(Landroid/content/Context;)V

    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcom/warefly/checkscan/ui/AutoCancellableDialog;->c:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;J)V
    .locals 0

    .line 8
    invoke-direct {p0, p1}, Lcom/warefly/checkscan/core/ui/base/dialogs/BaseDialogNew;-><init>(Landroid/content/Context;)V

    .line 9
    iput-wide p2, p0, Lcom/warefly/checkscan/ui/AutoCancellableDialog;->c:J

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    invoke-super {p0, p1}, Lcom/warefly/checkscan/core/ui/base/dialogs/BaseDialogNew;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_0

    const v0, 0x106000d

    invoke-virtual {p1, v0}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    :cond_0
    new-instance v1, Lcom/warefly/checkscan/ui/AutoCancellableDialog$a;

    iget-wide v3, p0, Lcom/warefly/checkscan/ui/AutoCancellableDialog;->c:J

    move-wide v5, v3

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/warefly/checkscan/ui/AutoCancellableDialog$a;-><init>(Lcom/warefly/checkscan/ui/AutoCancellableDialog;JJ)V

    invoke-virtual {v1}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    move-result-object p0

    iput-object p0, v2, Lcom/warefly/checkscan/ui/AutoCancellableDialog;->d:Landroid/os/CountDownTimer;

    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 1

    iget-object v0, p0, Lcom/warefly/checkscan/ui/AutoCancellableDialog;->d:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    :cond_0
    invoke-super {p0}, Lcom/warefly/checkscan/core/ui/base/dialogs/BaseDialogNew;->onDetachedFromWindow()V

    return-void
.end method
