.class public final synthetic Lbo6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Landroid/view/KeyEvent$Callback;


# direct methods
.method public synthetic constructor <init>(Landroid/view/KeyEvent$Callback;I)V
    .locals 0

    iput p2, p0, Lbo6;->b:I

    iput-object p1, p0, Lbo6;->c:Landroid/view/KeyEvent$Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    iget p1, p0, Lbo6;->b:I

    iget-object p0, p0, Lbo6;->c:Landroid/view/KeyEvent$Callback;

    packed-switch p1, :pswitch_data_0

    check-cast p0, Lcom/my/target/kg;

    sget p1, Lcom/my/target/kg;->T:I

    iget-object p0, p0, Lcom/my/target/hg;->g:Lcom/my/target/c3;

    invoke-virtual {p0}, Lcom/my/target/c3;->k()V

    return-void

    :pswitch_0
    check-cast p0, Lcom/warefly/checkscan/presentation/flows/promotions/registration/view/dialog/PromoResultDialog;

    sget-object p1, Lcom/warefly/checkscan/presentation/flows/promotions/registration/view/dialog/PromoResultDialog;->i:[Lze4;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
