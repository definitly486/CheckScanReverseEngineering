.class public final Lyh1;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lfm3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lfm3<",
        "Ljava/lang/Integer;",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Ljava/lang/String;",
        "Lj59;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lcom/warefly/checkscan/presentation/cheques/view/ChequesFragment;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/cheques/view/ChequesFragment;)V
    .locals 0

    iput-object p1, p0, Lyh1;->f:Lcom/warefly/checkscan/presentation/cheques/view/ChequesFragment;

    const/4 p1, 0x4

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    check-cast p2, Ljava/lang/String;

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p3

    check-cast p4, Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/warefly/checkscan/presentation/cheques/view/ChequesFragment;->q:[Lze4;

    iget-object p0, p0, Lyh1;->f:Lcom/warefly/checkscan/presentation/cheques/view/ChequesFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    int-to-float p3, p3

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr p3, v1

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    const p3, 0x7f140115

    invoke-virtual {p0, p3, p2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p3, Lzh1;

    invoke-direct {p3, p0, p1}, Lzh1;-><init>(Lcom/warefly/checkscan/presentation/cheques/view/ChequesFragment;I)V

    invoke-static {v0, p2, p3}, Lfw1;->a(Landroid/content/Context;Ljava/lang/String;Lll3;)Landroidx/appcompat/app/AlertDialog;

    :cond_0
    if-eqz p4, :cond_1

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/cheques/view/ChequesFragment;->o()Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;

    move-result-object p0

    invoke-virtual {p0, p4}, Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;->removeReceiptFromQueue(Ljava/lang/String;)V

    :cond_1
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
