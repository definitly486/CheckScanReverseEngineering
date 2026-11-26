.class public final synthetic Lco6;
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

    iput p2, p0, Lco6;->b:I

    iput-object p1, p0, Lco6;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    iget p1, p0, Lco6;->b:I

    iget-object p0, p0, Lco6;->c:Ljava/lang/Object;

    packed-switch p1, :pswitch_data_0

    check-cast p0, Lcom/my/target/kg;

    sget p1, Lcom/my/target/kg;->T:I

    iget-object p1, p0, Lcom/my/target/hg;->g:Lcom/my/target/c3;

    iget-object p0, p0, Lcom/my/target/hg;->Q:Le6a;

    invoke-virtual {p1, p0}, Lcom/my/target/c3;->b(Le6a;)V

    return-void

    :pswitch_0
    check-cast p0, Lcom/warefly/checkscan/presentation/upridWeb/veiw/UpridWebFullScreenDialog;

    sget-object p1, Lcom/warefly/checkscan/presentation/upridWeb/veiw/UpridWebFullScreenDialog;->f:Lcom/warefly/checkscan/presentation/upridWeb/veiw/UpridWebFullScreenDialog$a;

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    return-void

    :pswitch_1
    check-cast p0, Lcom/warefly/checkscan/presentation/flows/promotions/registration/view/dialog/PromoResultDialog;

    sget-object p1, Lcom/warefly/checkscan/presentation/flows/promotions/registration/view/dialog/PromoResultDialog;->i:[Lze4;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
