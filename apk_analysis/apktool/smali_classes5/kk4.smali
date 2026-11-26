.class public final Lkk4;
.super Lvd9;
.source "SourceFile"


# instance fields
.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Ldm3;I)V
    .locals 0

    iput p2, p0, Lkk4;->b:I

    invoke-direct {p0, p1}, Lvd9;-><init>(Ldm3;)V

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;)Z
    .locals 0

    iget p0, p0, Lkk4;->b:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    packed-switch p0, :pswitch_data_0

    instance-of p0, p1, Lc19;

    return p0

    :pswitch_0
    instance-of p0, p1, Lwf5;

    return p0

    :pswitch_1
    instance-of p0, p1, Lok4;

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final i(Landroidx/viewbinding/ViewBinding;Ljava/lang/Object;)V
    .locals 1

    iget p0, p0, Lkk4;->b:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, Lcom/warefly/checkscan/databinding/ItemRvSbpTransferLimitsBinding;

    check-cast p2, Lc19;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p1, Lcom/warefly/checkscan/databinding/ItemRvSbpTransferLimitsBinding;->tvAmountWithdrawn:Landroid/widget/TextView;

    iget-object v0, p2, Lc19;->a:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p1, Lcom/warefly/checkscan/databinding/ItemRvSbpTransferLimitsBinding;->tvMinAmount:Landroid/widget/TextView;

    iget-object p1, p2, Lc19;->b:Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :pswitch_0
    check-cast p1, Lcom/warefly/checkscan/tasks/databinding/ItemRvMultiTaskHeaderBinding;

    check-cast p2, Lwf5;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lcom/warefly/checkscan/tasks/databinding/ItemRvMultiTaskHeaderBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/bumptech/glide/a;->d(Landroid/content/Context;)Lp37;

    move-result-object p0

    iget-object v0, p2, Lwf5;->b:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lp37;->h(Ljava/lang/String;)Lh37;

    move-result-object p0

    iget-object v0, p1, Lcom/warefly/checkscan/tasks/databinding/ItemRvMultiTaskHeaderBinding;->ivLogo:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lh37;->L(Landroid/widget/ImageView;)V

    iget-object p0, p1, Lcom/warefly/checkscan/tasks/databinding/ItemRvMultiTaskHeaderBinding;->tvTitle:Landroid/widget/TextView;

    iget-object p1, p2, Lwf5;->a:Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :pswitch_1
    check-cast p1, Lcom/warefly/checkscan/subscriptionLanding/databinding/ItemLandingTitleBinding;

    check-cast p2, Lok4;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p1, Lcom/warefly/checkscan/subscriptionLanding/databinding/ItemLandingTitleBinding;->tvTitle:Landroid/widget/TextView;

    const-string p1, "\u0421\u0442\u0430\u043d\u044c\u0442\u0435\nPRO\u0444\u0435\u0441\u0441\u0438\u043e\u043d\u0430\u043b\u044c\u043d\u044b\u043c\n\u0427\u0435\u043a\u0421\u043a\u0430\u043d\u0435\u0440\u043e\u043c:"

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
