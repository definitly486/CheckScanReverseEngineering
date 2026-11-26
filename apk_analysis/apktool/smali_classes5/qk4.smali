.class public final Lqk4;
.super Lvd9;
.source "SourceFile"


# instance fields
.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Ldm3;I)V
    .locals 0

    iput p2, p0, Lqk4;->b:I

    invoke-direct {p0, p1}, Lvd9;-><init>(Ldm3;)V

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;)Z
    .locals 0

    iget p0, p0, Lqk4;->b:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    packed-switch p0, :pswitch_data_0

    instance-of p0, p1, Lwf6;

    return p0

    :pswitch_0
    instance-of p0, p1, Lrk4;

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final i(Landroidx/viewbinding/ViewBinding;Ljava/lang/Object;)V
    .locals 0

    iget p0, p0, Lqk4;->b:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, Lcom/warefly/checkscan/bonuses/databinding/ItemRvLoaderTopMarketsBinding;

    check-cast p2, Lwf6;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    :pswitch_0
    check-cast p1, Lcom/warefly/checkscan/databinding/ItemRvLandingTitleWithBackgroundBinding;

    check-cast p2, Lrk4;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p1, Lcom/warefly/checkscan/databinding/ItemRvLandingTitleWithBackgroundBinding;->tvTitle:Landroidx/appcompat/widget/AppCompatTextView;

    iget-object p1, p2, Lrk4;->a:Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
