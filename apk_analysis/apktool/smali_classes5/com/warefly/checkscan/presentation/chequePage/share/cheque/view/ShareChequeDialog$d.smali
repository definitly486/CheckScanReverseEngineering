.class public final Lcom/warefly/checkscan/presentation/chequePage/share/cheque/view/ShareChequeDialog$d;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Ldm3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/presentation/chequePage/share/cheque/view/ShareChequeDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/warefly/checkscan/presentation/chequePage/share/cheque/view/ShareChequeDialog$d$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Ldm3<",
        "Lcom/warefly/checkscan/databinding/ShareListItemBinding;",
        "Lcom/warefly/checkscan/presentation/chequePage/share/cheque/presenter/ShareChequeView$a;",
        "Ljava/lang/Integer;",
        "Lj59;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/chequePage/share/cheque/view/ShareChequeDialog$d;->f:Landroidx/recyclerview/widget/RecyclerView;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Lcom/warefly/checkscan/databinding/ShareListItemBinding;

    check-cast p2, Lcom/warefly/checkscan/presentation/chequePage/share/cheque/presenter/ShareChequeView$a;

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p3, p1, Lcom/warefly/checkscan/databinding/ShareListItemBinding;->tvShareOption:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/chequePage/share/cheque/view/ShareChequeDialog$d;->f:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    sget-object v0, Lcom/warefly/checkscan/presentation/chequePage/share/cheque/view/ShareChequeDialog$d$a;->a:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const v0, 0x7f1405c1

    goto :goto_0

    :cond_0
    invoke-static {}, Lme0;->e()V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    const v0, 0x7f1405c0

    goto :goto_0

    :cond_2
    const v0, 0x7f1405c2

    :goto_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p1, Lcom/warefly/checkscan/databinding/ShareListItemBinding;->divider:Landroid/view/View;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lcom/warefly/checkscan/presentation/chequePage/share/cheque/presenter/ShareChequeView$a;->Json:Lcom/warefly/checkscan/presentation/chequePage/share/cheque/presenter/ShareChequeView$a;

    if-eq p2, p1, :cond_3

    const/4 p1, 0x0

    goto :goto_1

    :cond_3
    const/16 p1, 0x8

    :goto_1
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
