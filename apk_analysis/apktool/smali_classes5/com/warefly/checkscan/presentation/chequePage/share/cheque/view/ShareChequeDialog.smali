.class public final Lcom/warefly/checkscan/presentation/chequePage/share/cheque/view/ShareChequeDialog;
.super Lcom/warefly/checkscan/core/ui/base/dialogs/BaseBottomSheetDialog;
.source "SourceFile"

# interfaces
.implements Lcom/warefly/checkscan/presentation/chequePage/share/cheque/presenter/ShareChequeView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/warefly/checkscan/presentation/chequePage/share/cheque/view/ShareChequeDialog$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/dialogs/BaseBottomSheetDialog<",
        "Lcom/warefly/checkscan/databinding/DialogShareBinding;",
        ">;",
        "Lcom/warefly/checkscan/presentation/chequePage/share/cheque/presenter/ShareChequeView;"
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
.field public final d:Lhd1;

.field public final e:Lud9;

.field public final f:Lfu1;

.field public presenter:Lcom/warefly/checkscan/presentation/chequePage/share/cheque/presenter/ShareChequePresenter;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lbs6;

    const-class v1, Lcom/warefly/checkscan/presentation/chequePage/share/cheque/view/ShareChequeDialog;

    const-string v2, "binding"

    const-string v3, "getBinding()Lcom/warefly/checkscan/databinding/DialogShareBinding;"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lbs6;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v1, Lx07;->a:La17;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    new-array v1, v1, [Lze4;

    aput-object v0, v1, v4

    sput-object v1, Lcom/warefly/checkscan/presentation/chequePage/share/cheque/view/ShareChequeDialog;->g:[Lze4;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lhd1;)V
    .locals 1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v0, 0x7f150174

    invoke-direct {p0, p1, v0}, Lcom/warefly/checkscan/core/ui/base/dialogs/BaseBottomSheetDialog;-><init>(Landroid/content/Context;I)V

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/chequePage/share/cheque/view/ShareChequeDialog;->d:Lhd1;

    new-instance p1, Lud9;

    const-class p2, Lcom/warefly/checkscan/databinding/DialogShareBinding;

    invoke-direct {p1, p2, p0}, Lud9;-><init>(Ljava/lang/Class;Lcom/google/android/material/bottomsheet/BottomSheetDialog;)V

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/chequePage/share/cheque/view/ShareChequeDialog;->e:Lud9;

    new-instance p1, Lfu1;

    invoke-direct {p1}, Lfu1;-><init>()V

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/chequePage/share/cheque/view/ShareChequeDialog;->f:Lfu1;

    return-void
.end method

.method public static g(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "\"\""

    const-string v1, "\""

    invoke-static {p0, v1, v0}, Lra8;->y(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0, v1}, Lme0;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final dismiss()V
    .locals 1

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/chequePage/share/cheque/view/ShareChequeDialog;->f:Lfu1;

    invoke-virtual {v0}, Lfu1;->d()V

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    return-void
.end method

.method public final e()Lcom/warefly/checkscan/databinding/DialogShareBinding;
    .locals 2

    sget-object v0, Lcom/warefly/checkscan/presentation/chequePage/share/cheque/view/ShareChequeDialog;->g:[Lze4;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/chequePage/share/cheque/view/ShareChequeDialog;->e:Lud9;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lud9;->d:Landroidx/viewbinding/ViewBinding;

    check-cast p0, Lcom/warefly/checkscan/databinding/DialogShareBinding;

    return-object p0
.end method

.method public final f(Loz7;)V
    .locals 4

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/chequePage/share/cheque/view/ShareChequeDialog;->e()Lcom/warefly/checkscan/databinding/DialogShareBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/warefly/checkscan/databinding/DialogShareBinding;->pbLoading:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    sget-object v0, Lne7;->b:Lhe7;

    invoke-virtual {p1, v0}, Lmz7;->i(Lhe7;)Le18;

    move-result-object p1

    invoke-static {}, Lrj;->a()Lju3;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmz7;->f(Lhe7;)Lr08;

    move-result-object p1

    new-instance v0, Lqs7;

    invoke-direct {v0, p0}, Lqs7;-><init>(Lcom/warefly/checkscan/presentation/chequePage/share/cheque/view/ShareChequeDialog;)V

    new-instance v1, Luz7;

    invoke-direct {v1, p1, v0}, Luz7;-><init>(Lmz7;Lh6;)V

    new-instance p1, Lv8;

    const/4 v0, 0x2

    invoke-direct {p1, p0, v0}, Lv8;-><init>(Ljava/lang/Object;I)V

    new-instance v2, Lrs7;

    invoke-direct {v2, p1}, Lrs7;-><init>(Lv8;)V

    new-instance p1, Lcl0;

    sget-object v3, Lss7;->f:Lss7;

    invoke-direct {p1, v3, v0}, Lcl0;-><init>(Lnl3;I)V

    invoke-virtual {v1, v2, p1}, Lmz7;->g(Lqx1;Lqx1;)Lrx1;

    move-result-object p1

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/chequePage/share/cheque/view/ShareChequeDialog;->f:Lfu1;

    invoke-virtual {p0, p1}, Lfu1;->b(Lcp2;)Z

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 10

    invoke-super {p0, p1}, Lcom/warefly/checkscan/core/ui/base/dialogs/BaseBottomSheetDialog;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/chequePage/share/cheque/view/ShareChequeDialog;->e()Lcom/warefly/checkscan/databinding/DialogShareBinding;

    move-result-object p1

    iget-object v0, p1, Lcom/warefly/checkscan/databinding/DialogShareBinding;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f1405f0

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/chequePage/share/cheque/view/ShareChequeDialog;->presenter:Lcom/warefly/checkscan/presentation/chequePage/share/cheque/presenter/ShareChequePresenter;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/warefly/checkscan/presentation/chequePage/share/cheque/view/ShareChequeDialog;->d:Lhd1;

    invoke-virtual {v0, v1}, Lcom/warefly/checkscan/presentation/chequePage/share/cheque/presenter/ShareChequePresenter;->onChequeReceived(Lhd1;)V

    iget-object p1, p1, Lcom/warefly/checkscan/databinding/DialogShareBinding;->rvOptions:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    new-instance v4, Ljz7;

    invoke-static {}, Lcom/warefly/checkscan/presentation/chequePage/share/cheque/presenter/ShareChequeView$a;->values()[Lcom/warefly/checkscan/presentation/chequePage/share/cheque/presenter/ShareChequeView$a;

    move-result-object v0

    invoke-static {v0}, Lyr;->h0([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    new-instance v7, Lcom/warefly/checkscan/presentation/chequePage/share/cheque/view/ShareChequeDialog$b;

    invoke-direct {v7, p0}, Lcom/warefly/checkscan/presentation/chequePage/share/cheque/view/ShareChequeDialog$b;-><init>(Lcom/warefly/checkscan/presentation/chequePage/share/cheque/view/ShareChequeDialog;)V

    new-instance v9, Lcom/warefly/checkscan/presentation/chequePage/share/cheque/view/ShareChequeDialog$d;

    invoke-direct {v9, p1}, Lcom/warefly/checkscan/presentation/chequePage/share/cheque/view/ShareChequeDialog$d;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    const v5, 0x7f0d033f

    sget-object v8, Lcom/warefly/checkscan/presentation/chequePage/share/cheque/view/ShareChequeDialog$c;->f:Lcom/warefly/checkscan/presentation/chequePage/share/cheque/view/ShareChequeDialog$c;

    invoke-direct/range {v4 .. v9}, Ljz7;-><init>(ILjava/util/List;Lnl3;Lnl3;Ldm3;)V

    invoke-virtual {p1, v4}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void

    :cond_0
    const-string p0, "presenter"

    invoke-static {p0}, Laa4;->j(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final providePresenter()Lcom/warefly/checkscan/presentation/chequePage/share/cheque/presenter/ShareChequePresenter;
    .locals 0

    new-instance p0, Lcom/warefly/checkscan/presentation/chequePage/share/cheque/presenter/ShareChequePresenter;

    invoke-direct {p0}, Lcom/warefly/checkscan/presentation/chequePage/share/cheque/presenter/ShareChequePresenter;-><init>()V

    return-object p0
.end method

.method public final shareAs(Lcom/warefly/checkscan/presentation/chequePage/share/cheque/presenter/ShareChequeView$a;Lhd1;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/warefly/checkscan/presentation/chequePage/share/cheque/view/ShareChequeDialog$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/chequePage/share/cheque/view/ShareChequeDialog;->dismiss()V

    return-void

    :cond_0
    new-instance p1, Lw34;

    invoke-direct {p1, p0, p2}, Lw34;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance p2, Loz7;

    invoke-direct {p2, p1}, Loz7;-><init>(Lw08;)V

    invoke-virtual {p0, p2}, Lcom/warefly/checkscan/presentation/chequePage/share/cheque/view/ShareChequeDialog;->f(Loz7;)V

    return-void

    :cond_1
    new-instance p1, Lps7;

    invoke-direct {p1, p0, p2}, Lps7;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance p2, Loz7;

    invoke-direct {p2, p1}, Loz7;-><init>(Lw08;)V

    invoke-virtual {p0, p2}, Lcom/warefly/checkscan/presentation/chequePage/share/cheque/view/ShareChequeDialog;->f(Loz7;)V

    return-void

    :cond_2
    new-instance p1, Lbg2;

    invoke-direct {p1, p0, p2}, Lbg2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance p2, Loz7;

    invoke-direct {p2, p1}, Loz7;-><init>(Lw08;)V

    invoke-virtual {p0, p2}, Lcom/warefly/checkscan/presentation/chequePage/share/cheque/view/ShareChequeDialog;->f(Loz7;)V

    return-void
.end method

.method public final showLoading(Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/chequePage/share/cheque/view/ShareChequeDialog;->e()Lcom/warefly/checkscan/databinding/DialogShareBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/warefly/checkscan/databinding/DialogShareBinding;->pbLoading:Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez p1, :cond_0

    const/4 p1, 0x4

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
