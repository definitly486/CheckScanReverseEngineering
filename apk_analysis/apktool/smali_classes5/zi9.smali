.class public final Lzi9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:F

.field public final synthetic c:Lcom/warefly/checkscan/databinding/ItemWithdrawalBalanceBlockBinding;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;FLcom/warefly/checkscan/databinding/ItemWithdrawalBalanceBlockBinding;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lzi9;->b:F

    iput-object p3, p0, Lzi9;->c:Lcom/warefly/checkscan/databinding/ItemWithdrawalBalanceBlockBinding;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lzi9;->c:Lcom/warefly/checkscan/databinding/ItemWithdrawalBalanceBlockBinding;

    iget-object v1, v0, Lcom/warefly/checkscan/databinding/ItemWithdrawalBalanceBlockBinding;->tvBalance:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextSize()F

    move-result v1

    iget p0, p0, Lzi9;->b:F

    sub-float/2addr p0, v1

    iget-object v1, v0, Lcom/warefly/checkscan/databinding/ItemWithdrawalBalanceBlockBinding;->tvBalance:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v1, p0

    iget-object p0, v0, Lcom/warefly/checkscan/databinding/ItemWithdrawalBalanceBlockBinding;->tvBalance:Landroid/widget/TextView;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_0

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_0
    const-string p0, "null cannot be cast to non-null type android.view.ViewGroup.LayoutParams"

    invoke-static {p0}, Lo2;->d(Ljava/lang/String;)V

    return-void
.end method
