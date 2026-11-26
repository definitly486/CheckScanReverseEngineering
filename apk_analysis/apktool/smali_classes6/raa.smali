.class public final synthetic Lraa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lll3;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lraa;->b:I

    iput-object p1, p0, Lraa;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lraa;->b:I

    iget-object p0, p0, Lraa;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lyads/nq0;

    invoke-static {p0}, Lyads/nq0;->Z(Lyads/nq0;)Landroid/renderscript/RenderScript;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p0, Lyads/tq3;

    invoke-static {p0}, Lyads/tq3;->W0(Lyads/tq3;)Lyads/ax0;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p0, Lyads/tq3;

    invoke-static {p0}, Lyads/tq3;->B9(Lyads/tq3;)Lyads/vi2;

    move-result-object p0

    return-object p0

    :pswitch_2
    check-cast p0, Lyads/tq3;

    invoke-static {p0}, Lyads/tq3;->Z7(Lyads/tq3;)Lyads/k62;

    move-result-object p0

    return-object p0

    :pswitch_3
    check-cast p0, Lyads/tq3;

    invoke-static {p0}, Lyads/tq3;->L(Lyads/tq3;)Lyads/as0;

    move-result-object p0

    return-object p0

    :pswitch_4
    check-cast p0, Lyads/tq3;

    invoke-static {p0}, Lyads/tq3;->z0(Lyads/tq3;)Lyads/xu0;

    move-result-object p0

    return-object p0

    :pswitch_5
    check-cast p0, Lyads/tq3;

    invoke-static {p0}, Lyads/tq3;->l3(Lyads/tq3;)Lyads/be1;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
