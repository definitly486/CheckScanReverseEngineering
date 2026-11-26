.class public final synthetic Lt65;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Landroidx/fragment/app/Fragment;


# direct methods
.method public synthetic constructor <init>(Landroidx/fragment/app/Fragment;I)V
    .locals 0

    iput p2, p0, Lt65;->b:I

    iput-object p1, p0, Lt65;->c:Landroidx/fragment/app/Fragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget v0, p0, Lt65;->b:I

    iget-object p0, p0, Lt65;->c:Landroidx/fragment/app/Fragment;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/warefly/checkscan/presentation/electrocheque/view/WebViewFragment;

    sget-object p1, Lcom/warefly/checkscan/presentation/electrocheque/view/WebViewFragment;->h:[Lze4;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/electrocheque/view/WebViewFragment;->o()Lcom/warefly/checkscan/presentation/electrocheque/presenter/WebViewFragmentPresenter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/electrocheque/presenter/WebViewFragmentPresenter;->onBackPressed()V

    return-void

    :pswitch_0
    check-cast p0, Lcom/google/android/material/timepicker/MaterialTimePicker;

    invoke-static {p0, p1}, Lcom/google/android/material/timepicker/MaterialTimePicker;->e(Lcom/google/android/material/timepicker/MaterialTimePicker;Landroid/view/View;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
