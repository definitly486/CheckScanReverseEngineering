.class public final Llw6;
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
        "Lmz6;",
        "Ljava/lang/Integer;",
        "Lj59;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lcom/warefly/checkscan/presentation/queue/view/QueueSortDialog;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/queue/view/QueueSortDialog;)V
    .locals 0

    iput-object p1, p0, Llw6;->f:Lcom/warefly/checkscan/presentation/queue/view/QueueSortDialog;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lcom/warefly/checkscan/databinding/ItemSortDialogBinding;

    check-cast p2, Lmz6;

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p3, p1, Lcom/warefly/checkscan/databinding/ItemSortDialogBinding;->tvCategoryName:Landroid/widget/TextView;

    invoke-virtual {p2}, Lmz6;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p3, p1, Lcom/warefly/checkscan/databinding/ItemSortDialogBinding;->tvCategoryName:Landroid/widget/TextView;

    new-instance v0, Ljw6;

    iget-object p0, p0, Llw6;->f:Lcom/warefly/checkscan/presentation/queue/view/QueueSortDialog;

    invoke-direct {v0, p1, p0, p2}, Ljw6;-><init>(Lcom/warefly/checkscan/databinding/ItemSortDialogBinding;Lcom/warefly/checkscan/presentation/queue/view/QueueSortDialog;Lmz6;)V

    invoke-virtual {p3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p1, Lcom/warefly/checkscan/databinding/ItemSortDialogBinding;->cbCategory:Landroid/widget/CheckBox;

    new-instance p3, Lkw6;

    const/4 v0, 0x0

    invoke-direct {p3, v0, p0, p2}, Lkw6;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
