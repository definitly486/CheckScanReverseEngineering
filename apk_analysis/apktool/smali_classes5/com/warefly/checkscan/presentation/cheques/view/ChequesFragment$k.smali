.class public final Lcom/warefly/checkscan/presentation/cheques/view/ChequesFragment$k;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/presentation/cheques/view/ChequesFragment;->showSorts(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lnl3<",
        "Lu48;",
        "Lj59;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lcom/warefly/checkscan/presentation/cheques/view/ChequesFragment;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/cheques/view/ChequesFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/cheques/view/ChequesFragment$k;->f:Lcom/warefly/checkscan/presentation/cheques/view/ChequesFragment;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Lu48;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/warefly/checkscan/presentation/cheques/view/ChequesFragment;->q:[Lze4;

    sget-object v0, Lcom/warefly/checkscan/presentation/cheques/view/ChequesFragment$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/cheques/view/ChequesFragment$k;->f:Lcom/warefly/checkscan/presentation/cheques/view/ChequesFragment;

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/cheques/view/ChequesFragment;->showSumSortDialog()V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/warefly/checkscan/presentation/cheques/view/ChequesFragment;->m:Lcom/warefly/checkscan/presentation/cheques/exportCheques/dialog/view/LightDatePickerDialog;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_5

    new-instance v0, Lcom/warefly/checkscan/presentation/cheques/exportCheques/dialog/view/LightDatePickerDialog;

    new-instance v1, Lbi1;

    invoke-direct {v1, p0}, Lbi1;-><init>(Lcom/warefly/checkscan/presentation/cheques/view/ChequesFragment;)V

    invoke-direct {v0, p1, v1}, Lcom/warefly/checkscan/presentation/cheques/exportCheques/dialog/view/LightDatePickerDialog;-><init>(Landroid/content/Context;Lbm3;)V

    iput-object v0, p0, Lcom/warefly/checkscan/presentation/cheques/view/ChequesFragment;->m:Lcom/warefly/checkscan/presentation/cheques/exportCheques/dialog/view/LightDatePickerDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/cheques/view/ChequesFragment;->o()Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;->openSearch()V

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/cheques/view/ChequesFragment;->showDateSortDialog()V

    :cond_5
    :goto_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
