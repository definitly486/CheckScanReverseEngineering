.class public final Lob2;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Ldm3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Ldm3<",
        "Lcom/warefly/checkscan/databinding/ItemSortDialogBinding;",
        "Ls48;",
        "Ljava/lang/Integer;",
        "Lj59;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lcom/warefly/checkscan/presentation/cheques/view/sortDialogs/view/DateSortDialog;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/cheques/view/sortDialogs/view/DateSortDialog;)V
    .locals 0

    iput-object p1, p0, Lob2;->f:Lcom/warefly/checkscan/presentation/cheques/view/sortDialogs/view/DateSortDialog;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lcom/warefly/checkscan/databinding/ItemSortDialogBinding;

    check-cast p2, Ls48;

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p3, p1, Lcom/warefly/checkscan/databinding/ItemSortDialogBinding;->tvCategoryName:Landroid/widget/TextView;

    invoke-virtual {p2}, Ls48;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p3, p1, Lcom/warefly/checkscan/databinding/ItemSortDialogBinding;->tvCategoryName:Landroid/widget/TextView;

    new-instance v0, Lmb2;

    iget-object p0, p0, Lob2;->f:Lcom/warefly/checkscan/presentation/cheques/view/sortDialogs/view/DateSortDialog;

    invoke-direct {v0, p1, p0, p2}, Lmb2;-><init>(Lcom/warefly/checkscan/databinding/ItemSortDialogBinding;Lcom/warefly/checkscan/presentation/cheques/view/sortDialogs/view/DateSortDialog;Ls48;)V

    invoke-virtual {p3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p1, Lcom/warefly/checkscan/databinding/ItemSortDialogBinding;->cbCategory:Landroid/widget/CheckBox;

    new-instance p3, Lnb2;

    invoke-direct {p3, p0, p2}, Lnb2;-><init>(Lcom/warefly/checkscan/presentation/cheques/view/sortDialogs/view/DateSortDialog;Ls48;)V

    invoke-virtual {p1, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
