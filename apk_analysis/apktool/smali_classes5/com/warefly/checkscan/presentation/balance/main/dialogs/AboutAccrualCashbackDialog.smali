.class public final Lcom/warefly/checkscan/presentation/balance/main/dialogs/AboutAccrualCashbackDialog;
.super Lcom/warefly/checkscan/core/ui/base/dialogs/BaseBottomSheetDialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/dialogs/BaseBottomSheetDialog<",
        "Lcom/warefly/checkscan/databinding/DialogChequeCashbackAccrualBinding;",
        ">;"
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
.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Lcl4;

.field public final g:Lud9;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lbs6;

    const-class v1, Lcom/warefly/checkscan/presentation/balance/main/dialogs/AboutAccrualCashbackDialog;

    const-string v2, "binding"

    const-string v3, "getBinding()Lcom/warefly/checkscan/databinding/DialogChequeCashbackAccrualBinding;"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lbs6;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v1, Lx07;->a:La17;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    new-array v1, v1, [Lze4;

    aput-object v0, v1, v4

    sput-object v1, Lcom/warefly/checkscan/presentation/balance/main/dialogs/AboutAccrualCashbackDialog;->h:[Lze4;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v0, 0x7f150174

    invoke-direct {p0, p1, v0}, Lcom/warefly/checkscan/core/ui/base/dialogs/BaseBottomSheetDialog;-><init>(Landroid/content/Context;I)V

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/balance/main/dialogs/AboutAccrualCashbackDialog;->d:Ljava/lang/String;

    iput-object p3, p0, Lcom/warefly/checkscan/presentation/balance/main/dialogs/AboutAccrualCashbackDialog;->e:Ljava/lang/String;

    sget-object p1, Lpo4;->SYNCHRONIZED:Lpo4;

    new-instance p2, Lcom/warefly/checkscan/presentation/balance/main/dialogs/AboutAccrualCashbackDialog$c;

    invoke-direct {p2, p0}, Lcom/warefly/checkscan/presentation/balance/main/dialogs/AboutAccrualCashbackDialog$c;-><init>(Lcom/warefly/checkscan/presentation/balance/main/dialogs/AboutAccrualCashbackDialog;)V

    invoke-static {p1, p2}, Lnm4;->a(Lpo4;Lll3;)Lcl4;

    move-result-object p1

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/balance/main/dialogs/AboutAccrualCashbackDialog;->f:Lcl4;

    new-instance p1, Lud9;

    const-class p2, Lcom/warefly/checkscan/databinding/DialogChequeCashbackAccrualBinding;

    invoke-direct {p1, p2, p0}, Lud9;-><init>(Ljava/lang/Class;Lcom/google/android/material/bottomsheet/BottomSheetDialog;)V

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/balance/main/dialogs/AboutAccrualCashbackDialog;->g:Lud9;

    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 11

    iget-object v1, p0, Lcom/warefly/checkscan/presentation/balance/main/dialogs/AboutAccrualCashbackDialog;->f:Lcl4;

    iget-object v2, p0, Lcom/warefly/checkscan/presentation/balance/main/dialogs/AboutAccrualCashbackDialog;->d:Ljava/lang/String;

    invoke-super {p0, p1}, Lcom/warefly/checkscan/core/ui/base/dialogs/BaseBottomSheetDialog;->onCreate(Landroid/os/Bundle;)V

    sget-object p1, Lcom/warefly/checkscan/presentation/balance/main/dialogs/AboutAccrualCashbackDialog;->h:[Lze4;

    const/4 v0, 0x0

    aget-object p1, p1, v0

    iget-object v3, p0, Lcom/warefly/checkscan/presentation/balance/main/dialogs/AboutAccrualCashbackDialog;->g:Lud9;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, v3, Lud9;->d:Landroidx/viewbinding/ViewBinding;

    check-cast p1, Lcom/warefly/checkscan/databinding/DialogChequeCashbackAccrualBinding;

    iget-object v3, p0, Lcom/warefly/checkscan/presentation/balance/main/dialogs/AboutAccrualCashbackDialog;->e:Ljava/lang/String;

    invoke-static {v3}, Lta8;->M(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p1, Lcom/warefly/checkscan/databinding/DialogChequeCashbackAccrualBinding;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    const/16 v4, 0x20

    invoke-static {v4}, Lpl2;->e(I)I

    move-result v4

    sub-int/2addr v3, v4

    iget-object v4, p1, Lcom/warefly/checkscan/databinding/DialogChequeCashbackAccrualBinding;->tvAboutAccrual:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v4

    const-string v5, "1. "

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v4

    iget-object v5, p1, Lcom/warefly/checkscan/databinding/DialogChequeCashbackAccrualBinding;->tvAboutAccrual:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v5

    const-string v6, "\u2800"

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v5

    int-to-float v3, v3

    sub-float/2addr v3, v4

    div-float/2addr v3, v5

    const-string v4, "\\d-\\d~"

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lu96;->h(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v5, Ljava/util/ArrayList;

    const/16 v6, 0xa

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    :cond_2
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->start()I

    move-result v6

    invoke-interface {v2, v0, v6}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->end()I

    move-result v0

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-nez v6, :cond_2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v4

    invoke-interface {v2, v0, v4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v0, v5

    :goto_0
    move-object v4, v0

    check-cast v4, Ljava/lang/Iterable;

    const-string v5, "\n"

    new-instance v9, Lcom/warefly/checkscan/presentation/balance/main/dialogs/AboutAccrualCashbackDialog$a;

    invoke-direct {v9, v3}, Lcom/warefly/checkscan/presentation/balance/main/dialogs/AboutAccrualCashbackDialog$a;-><init>(F)V

    const/16 v10, 0x1e

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v4 .. v10}, Lqn1;->a0(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;ILnl3;I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lv05;

    iget-object v4, p1, Lcom/warefly/checkscan/databinding/DialogChequeCashbackAccrualBinding;->tvAboutAccrual:Landroid/widget/TextView;

    invoke-virtual {v3, v4, v0}, Lv05;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    sget-object v0, Lj59;->a:Lj59;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    new-instance v3, Lk57$a;

    invoke-direct {v3, v0}, Lk57$a;-><init>(Ljava/lang/Throwable;)V

    move-object v0, v3

    :goto_1
    invoke-static {v0}, Lk57;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv05;

    iget-object v1, p1, Lcom/warefly/checkscan/databinding/DialogChequeCashbackAccrualBinding;->tvAboutAccrual:Landroid/widget/TextView;

    invoke-virtual {v0, v1, v2}, Lv05;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    :cond_3
    iget-object p1, p1, Lcom/warefly/checkscan/databinding/DialogChequeCashbackAccrualBinding;->btnClose:Landroid/widget/ImageView;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Llb7;

    new-instance v1, Lcom/warefly/checkscan/presentation/balance/main/dialogs/AboutAccrualCashbackDialog$b;

    invoke-direct {v1, p0}, Lcom/warefly/checkscan/presentation/balance/main/dialogs/AboutAccrualCashbackDialog$b;-><init>(Lcom/warefly/checkscan/presentation/balance/main/dialogs/AboutAccrualCashbackDialog;)V

    invoke-direct {v0, v1}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
