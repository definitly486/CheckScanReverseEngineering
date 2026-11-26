.class public final Lcb1;
.super Lvd9;
.source "SourceFile"


# instance fields
.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Ldm3;I)V
    .locals 0

    iput p2, p0, Lcb1;->b:I

    invoke-direct {p0, p1}, Lvd9;-><init>(Ldm3;)V

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;)Z
    .locals 0

    iget p0, p0, Lcb1;->b:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    packed-switch p0, :pswitch_data_0

    instance-of p0, p1, Lrd7;

    return p0

    :pswitch_0
    instance-of p0, p1, Ldb1;

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final i(Landroidx/viewbinding/ViewBinding;Ljava/lang/Object;)V
    .locals 0

    iget p0, p0, Lcb1;->b:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, Lcom/warefly/checkscan/databinding/ItemInformerBinding;

    check-cast p2, Lrd7;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p1, Lcom/warefly/checkscan/databinding/ItemInformerBinding;->ivNoCheque:Landroid/widget/ImageView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    :pswitch_0
    check-cast p1, Lcom/warefly/checkscan/tasks/databinding/ItemRvCheckboxTaskDescriptionBinding;

    check-cast p2, Ldb1;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p1, Lcom/warefly/checkscan/tasks/databinding/ItemRvCheckboxTaskDescriptionBinding;->tvDescription:Landroid/widget/TextView;

    iget-object p2, p2, Ldb1;->a:Ljava/lang/String;

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p1, Lcom/warefly/checkscan/tasks/databinding/ItemRvCheckboxTaskDescriptionBinding;->tvDescription:Landroid/widget/TextView;

    sget-object p1, Lx61;->a:Lx61;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
