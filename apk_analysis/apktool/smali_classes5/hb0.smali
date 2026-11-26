.class public final Lhb0;
.super Lvd9;
.source "SourceFile"


# instance fields
.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Ldm3;I)V
    .locals 0

    iput p2, p0, Lhb0;->b:I

    invoke-direct {p0, p1}, Lvd9;-><init>(Ldm3;)V

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;)Z
    .locals 0

    iget p0, p0, Lhb0;->b:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    packed-switch p0, :pswitch_data_0

    instance-of p0, p1, Lmt5;

    return p0

    :pswitch_0
    instance-of p0, p1, Lib0;

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final i(Landroidx/viewbinding/ViewBinding;Ljava/lang/Object;)V
    .locals 1

    iget p0, p0, Lhb0;->b:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, Lcom/warefly/checkscan/databinding/ItemRvOfferLegalBinding;

    check-cast p2, Lmt5;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p1, Lcom/warefly/checkscan/databinding/ItemRvOfferLegalBinding;->tvLegal:Landroidx/appcompat/widget/AppCompatTextView;

    iget-object p1, p2, Lmt5;->a:Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :pswitch_0
    check-cast p1, Lcom/warefly/checkscan/bankLanding/databinding/ItemRvBankTextBinding;

    check-cast p2, Lib0;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p1, Lcom/warefly/checkscan/bankLanding/databinding/ItemRvBankTextBinding;->tvTitle:Landroid/widget/TextView;

    iget-object v0, p2, Lib0;->a:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p1, Lcom/warefly/checkscan/bankLanding/databinding/ItemRvBankTextBinding;->tvHtml:Landroid/widget/TextView;

    sget v0, Lsx3;->a:I

    iget-object p2, p2, Lib0;->b:Ljava/lang/String;

    invoke-static {p2}, Lsx3;->a(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p1, Lcom/warefly/checkscan/bankLanding/databinding/ItemRvBankTextBinding;->tvHtml:Landroid/widget/TextView;

    sget-object p1, Lx61;->a:Lx61;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
