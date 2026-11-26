.class public final Lcom/warefly/checkscan/presentation/cheques/exportCheques/dialog/view/LightDatePickerDialog;
.super Lcom/warefly/checkscan/core/ui/base/dialogs/BaseBottomSheetDialog;
.source "SourceFile"

# interfaces
.implements Lcom/warefly/checkscan/presentation/cheques/exportCheques/dialog/view/LightDatePickerView;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/dialogs/BaseBottomSheetDialog<",
        "Lcom/warefly/checkscan/databinding/DialogLightDatePickerBinding;",
        ">;",
        "Lcom/warefly/checkscan/presentation/cheques/exportCheques/dialog/view/LightDatePickerView;"
    }
.end annotation


# static fields
.field public static final synthetic h:[Lze4;
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
.field public final d:Lbm3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbm3<",
            "Ljava/util/Calendar;",
            "Ljava/util/Calendar;",
            "Lj59;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Lnl3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnl3<",
            "Ldy0;",
            "Lj59;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Z

.field public final g:Lud9;

.field public presenter:Lcom/warefly/checkscan/presentation/cheques/exportCheques/dialog/presenter/LightDatePickerPresenter;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lbs6;

    const-class v1, Lcom/warefly/checkscan/presentation/cheques/exportCheques/dialog/view/LightDatePickerDialog;

    const-string v2, "binding"

    const-string v3, "getBinding()Lcom/warefly/checkscan/databinding/DialogLightDatePickerBinding;"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lbs6;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v1, Lx07;->a:La17;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    new-array v1, v1, [Lze4;

    aput-object v0, v1, v4

    sput-object v1, Lcom/warefly/checkscan/presentation/cheques/exportCheques/dialog/view/LightDatePickerDialog;->h:[Lze4;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public constructor <init>(Landroid/content/Context;Lbm3;)V
    .locals 2

    sget-object v0, Laq4;->f:Laq4;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v1, 0x7f150174

    invoke-direct {p0, p1, v1}, Lcom/warefly/checkscan/core/ui/base/dialogs/BaseBottomSheetDialog;-><init>(Landroid/content/Context;I)V

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/cheques/exportCheques/dialog/view/LightDatePickerDialog;->d:Lbm3;

    iput-object v0, p0, Lcom/warefly/checkscan/presentation/cheques/exportCheques/dialog/view/LightDatePickerDialog;->e:Lnl3;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/warefly/checkscan/presentation/cheques/exportCheques/dialog/view/LightDatePickerDialog;->f:Z

    new-instance p1, Lud9;

    const-class p2, Lcom/warefly/checkscan/databinding/DialogLightDatePickerBinding;

    invoke-direct {p1, p2, p0}, Lud9;-><init>(Ljava/lang/Class;Lcom/google/android/material/bottomsheet/BottomSheetDialog;)V

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/cheques/exportCheques/dialog/view/LightDatePickerDialog;->g:Lud9;

    return-void
.end method


# virtual methods
.method public final e()Lcom/warefly/checkscan/databinding/DialogLightDatePickerBinding;
    .locals 2

    sget-object v0, Lcom/warefly/checkscan/presentation/cheques/exportCheques/dialog/view/LightDatePickerDialog;->h:[Lze4;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/cheques/exportCheques/dialog/view/LightDatePickerDialog;->g:Lud9;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lud9;->d:Landroidx/viewbinding/ViewBinding;

    check-cast p0, Lcom/warefly/checkscan/databinding/DialogLightDatePickerBinding;

    return-object p0
.end method

.method public final f(Lcom/warefly/checkscan/util/calendar/calendar/b$a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/warefly/checkscan/util/calendar/calendar/b$a<",
            "Ldy0;",
            ">;)V"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/warefly/checkscan/presentation/cheques/exportCheques/dialog/view/LightDatePickerDialog;->f:Z

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/cheques/exportCheques/dialog/view/LightDatePickerDialog;->presenter:Lcom/warefly/checkscan/presentation/cheques/exportCheques/dialog/presenter/LightDatePickerPresenter;

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    if-eqz p1, :cond_0

    iget-object v1, p1, Lcom/warefly/checkscan/util/calendar/calendar/b$a;->b:Ldy0;

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    if-eqz p1, :cond_1

    iget-object p1, p1, Lcom/warefly/checkscan/util/calendar/calendar/b$a;->c:Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Ldy0;

    :cond_1
    invoke-virtual {p0, v1, v0}, Lcom/warefly/checkscan/presentation/cheques/exportCheques/dialog/presenter/LightDatePickerPresenter;->handleShowButtonEnabled(Ldy0;Ldy0;)V

    return-void

    :cond_2
    const-string p0, "presenter"

    invoke-static {p0}, Laa4;->j(Ljava/lang/String;)V

    throw v0

    :cond_3
    return-void
.end method

.method public final g(Ldy0;)V
    .locals 1

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/cheques/exportCheques/dialog/view/LightDatePickerDialog;->presenter:Lcom/warefly/checkscan/presentation/cheques/exportCheques/dialog/presenter/LightDatePickerPresenter;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/warefly/checkscan/presentation/cheques/exportCheques/dialog/presenter/LightDatePickerPresenter;->handleShowButtonEnabled(Ldy0;)V

    iget-boolean v0, p0, Lcom/warefly/checkscan/presentation/cheques/exportCheques/dialog/view/LightDatePickerDialog;->f:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/cheques/exportCheques/dialog/view/LightDatePickerDialog;->e:Lnl3;

    invoke-interface {v0, p1}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    :cond_0
    return-void

    :cond_1
    const-string p0, "presenter"

    invoke-static {p0}, Laa4;->j(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 8

    invoke-super {p0, p1}, Lcom/warefly/checkscan/core/ui/base/dialogs/BaseBottomSheetDialog;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f030001

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/cheques/exportCheques/dialog/view/LightDatePickerDialog;->e()Lcom/warefly/checkscan/databinding/DialogLightDatePickerBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/warefly/checkscan/databinding/DialogLightDatePickerBinding;->layoutNamesDay:Lcom/warefly/checkscan/databinding/ItemNamesDayOfWeekBinding;

    iget-object v1, v0, Lcom/warefly/checkscan/databinding/ItemNamesDayOfWeekBinding;->tvFirst:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/warefly/checkscan/databinding/ItemNamesDayOfWeekBinding;->tvSecond:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/warefly/checkscan/databinding/ItemNamesDayOfWeekBinding;->tvThree:Landroid/widget/TextView;

    iget-object v4, v0, Lcom/warefly/checkscan/databinding/ItemNamesDayOfWeekBinding;->tvFour:Landroid/widget/TextView;

    iget-object v5, v0, Lcom/warefly/checkscan/databinding/ItemNamesDayOfWeekBinding;->tvFive:Landroid/widget/TextView;

    iget-object v6, v0, Lcom/warefly/checkscan/databinding/ItemNamesDayOfWeekBinding;->tvSix:Landroid/widget/TextView;

    iget-object v7, v0, Lcom/warefly/checkscan/databinding/ItemNamesDayOfWeekBinding;->tvSeven:Landroid/widget/TextView;

    filled-new-array/range {v1 .. v7}, [Landroid/widget/TextView;

    move-result-object v0

    invoke-static {v0}, Lu96;->i([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v5, p1, v3

    add-int/lit8 v6, v4, 0x1

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    add-int/lit8 v3, v3, 0x1

    move v4, v6

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/warefly/checkscan/util/calendar/calendar/b;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lyw6;->a:[I

    invoke-virtual {v0, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v1, p0, Lcom/warefly/checkscan/presentation/cheques/exportCheques/dialog/view/LightDatePickerDialog;->f:Z

    invoke-direct {p1, p0, v0, v1}, Lcom/warefly/checkscan/util/calendar/calendar/b;-><init>(Lcom/warefly/checkscan/presentation/cheques/exportCheques/dialog/view/LightDatePickerDialog;Landroid/content/res/TypedArray;Z)V

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/cheques/exportCheques/dialog/view/LightDatePickerDialog;->e()Lcom/warefly/checkscan/databinding/DialogLightDatePickerBinding;

    move-result-object v0

    iget-object v3, v0, Lcom/warefly/checkscan/databinding/DialogLightDatePickerBinding;->btnClose:Landroid/widget/ImageView;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Llb7;

    new-instance v5, Lcom/warefly/checkscan/presentation/cheques/exportCheques/dialog/view/LightDatePickerDialog$a;

    invoke-direct {v5, p0}, Lcom/warefly/checkscan/presentation/cheques/exportCheques/dialog/view/LightDatePickerDialog$a;-><init>(Lcom/warefly/checkscan/presentation/cheques/exportCheques/dialog/view/LightDatePickerDialog;)V

    invoke-direct {v4, v5}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p0, v0, Lcom/warefly/checkscan/databinding/DialogLightDatePickerBinding;->rvCalendarCustom:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object p0, v0, Lcom/warefly/checkscan/databinding/DialogLightDatePickerBinding;->btnClear:Landroid/widget/TextView;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Llb7;

    new-instance v4, Lcom/warefly/checkscan/presentation/cheques/exportCheques/dialog/view/LightDatePickerDialog$b;

    invoke-direct {v4, p1}, Lcom/warefly/checkscan/presentation/cheques/exportCheques/dialog/view/LightDatePickerDialog$b;-><init>(Lcom/warefly/checkscan/util/calendar/calendar/b;)V

    invoke-direct {v3, v4}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {p0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p0, v0, Lcom/warefly/checkscan/databinding/DialogLightDatePickerBinding;->btnClear:Landroid/widget/TextView;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v3, 0x8

    if-eqz v1, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    move v4, v3

    :goto_1
    invoke-virtual {p0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, v0, Lcom/warefly/checkscan/databinding/DialogLightDatePickerBinding;->btnShow:Landroid/widget/TextView;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    move v2, v3

    :goto_2
    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public final providePresenter()Lcom/warefly/checkscan/presentation/cheques/exportCheques/dialog/presenter/LightDatePickerPresenter;
    .locals 1

    new-instance v0, Lcom/warefly/checkscan/presentation/cheques/exportCheques/dialog/presenter/LightDatePickerPresenter;

    iget-boolean p0, p0, Lcom/warefly/checkscan/presentation/cheques/exportCheques/dialog/view/LightDatePickerDialog;->f:Z

    invoke-direct {v0, p0}, Lcom/warefly/checkscan/presentation/cheques/exportCheques/dialog/presenter/LightDatePickerPresenter;-><init>(Z)V

    return-object v0
.end method

.method public final setTitle()V
    .locals 2

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/cheques/exportCheques/dialog/view/LightDatePickerDialog;->e()Lcom/warefly/checkscan/databinding/DialogLightDatePickerBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/warefly/checkscan/databinding/DialogLightDatePickerBinding;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p0

    const v1, 0x7f140178

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final showButtonEnabled(ZLdy0;)V
    .locals 2

    .line 27
    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/cheques/exportCheques/dialog/view/LightDatePickerDialog;->e()Lcom/warefly/checkscan/databinding/DialogLightDatePickerBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/warefly/checkscan/databinding/DialogLightDatePickerBinding;->btnShow:Landroid/widget/TextView;

    .line 28
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    if-eqz p2, :cond_0

    .line 29
    new-instance p1, Llb7;

    new-instance v1, Lcom/warefly/checkscan/presentation/cheques/exportCheques/dialog/view/LightDatePickerDialog$c;

    invoke-direct {v1, p0, p2}, Lcom/warefly/checkscan/presentation/cheques/exportCheques/dialog/view/LightDatePickerDialog$c;-><init>(Lcom/warefly/checkscan/presentation/cheques/exportCheques/dialog/view/LightDatePickerDialog;Ldy0;)V

    invoke-direct {p1, v1}, Llb7;-><init>(Lnl3;)V

    .line 30
    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public final showButtonEnabled(ZLdy0;Ldy0;)V
    .locals 2

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/cheques/exportCheques/dialog/view/LightDatePickerDialog;->e()Lcom/warefly/checkscan/databinding/DialogLightDatePickerBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/warefly/checkscan/databinding/DialogLightDatePickerBinding;->btnShow:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    new-instance p1, Llb7;

    new-instance v1, Lcom/warefly/checkscan/presentation/cheques/exportCheques/dialog/view/LightDatePickerDialog$d;

    invoke-direct {v1, p0, p2, p3}, Lcom/warefly/checkscan/presentation/cheques/exportCheques/dialog/view/LightDatePickerDialog$d;-><init>(Lcom/warefly/checkscan/presentation/cheques/exportCheques/dialog/view/LightDatePickerDialog;Ldy0;Ldy0;)V

    invoke-direct {p1, v1}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method
