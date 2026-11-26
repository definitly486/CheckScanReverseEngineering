.class public final Lf50;
.super Lvd9;
.source "SourceFile"


# instance fields
.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Ldm3;I)V
    .locals 0

    iput p2, p0, Lf50;->b:I

    invoke-direct {p0, p1}, Lvd9;-><init>(Ldm3;)V

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;)Z
    .locals 0

    iget p0, p0, Lf50;->b:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    packed-switch p0, :pswitch_data_0

    instance-of p0, p1, Lzq6;

    return p0

    :pswitch_0
    instance-of p0, p1, Lg50;

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final i(Landroidx/viewbinding/ViewBinding;Ljava/lang/Object;)V
    .locals 1

    iget p0, p0, Lf50;->b:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, Lcom/warefly/checkscan/tasks/databinding/ItemRvPromocodeTaskHeaderBinding;

    check-cast p2, Lzq6;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lcom/warefly/checkscan/tasks/databinding/ItemRvPromocodeTaskHeaderBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/bumptech/glide/a;->d(Landroid/content/Context;)Lp37;

    move-result-object p0

    iget-object v0, p2, Lzq6;->b:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lp37;->h(Ljava/lang/String;)Lh37;

    move-result-object p0

    iget-object v0, p1, Lcom/warefly/checkscan/tasks/databinding/ItemRvPromocodeTaskHeaderBinding;->ivLogo:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lh37;->L(Landroid/widget/ImageView;)V

    iget-object p0, p1, Lcom/warefly/checkscan/tasks/databinding/ItemRvPromocodeTaskHeaderBinding;->tvTitle:Landroid/widget/TextView;

    iget-object p1, p2, Lzq6;->a:Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :pswitch_0
    check-cast p1, Lcom/warefly/checkscan/databinding/ItemRvBalanceLoadingManagmentCardBinding;

    check-cast p2, Lg50;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
