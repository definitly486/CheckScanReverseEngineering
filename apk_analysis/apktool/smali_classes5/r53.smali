.class public final synthetic Lr53;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lr53;->b:I

    iput-object p1, p0, Lr53;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    iget p1, p0, Lr53;->b:I

    iget-object p0, p0, Lr53;->c:Ljava/lang/Object;

    packed-switch p1, :pswitch_data_0

    check-cast p0, Lcom/warefly/checkscan/core/ui/base/dialogs/TextDialog;

    sget-object p1, Lcom/warefly/checkscan/core/ui/base/dialogs/TextDialog;->f:[Lze4;

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    return-void

    :pswitch_0
    check-cast p0, Lcom/warefly/checkscan/presentation/favorite/view/FavoriteFragment;

    sget-object p1, Lcom/warefly/checkscan/presentation/favorite/view/FavoriteFragment;->l:[Lze4;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/favorite/view/FavoriteFragment;->o()Lcom/warefly/checkscan/presentation/favorite/presenter/FavoritePresenter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/favorite/presenter/FavoritePresenter;->onBackPressed()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
