.class public final Lcd8;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lnl3<",
        "Landroid/view/View;",
        "Lj59;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lcom/warefly/checkscan/databinding/SumSortDialogLayoutBinding;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/databinding/SumSortDialogLayoutBinding;)V
    .locals 0

    iput-object p1, p0, Lcd8;->f:Lcom/warefly/checkscan/databinding/SumSortDialogLayoutBinding;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcd8;->f:Lcom/warefly/checkscan/databinding/SumSortDialogLayoutBinding;

    iget-object p1, p0, Lcom/warefly/checkscan/databinding/SumSortDialogLayoutBinding;->etFrom:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/text/Editable;->clear()V

    :cond_0
    iget-object p1, p0, Lcom/warefly/checkscan/databinding/SumSortDialogLayoutBinding;->etUnder:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Landroid/text/Editable;->clear()V

    :cond_1
    iget-object p1, p0, Lcom/warefly/checkscan/databinding/SumSortDialogLayoutBinding;->tilFrom:Lcom/google/android/material/textfield/TextInputLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorEnabled(Z)V

    iget-object p0, p0, Lcom/warefly/checkscan/databinding/SumSortDialogLayoutBinding;->tilUnder:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorEnabled(Z)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
