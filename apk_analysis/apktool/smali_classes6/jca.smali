.class public final synthetic Ljca;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lll3;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lyads/tq3;


# direct methods
.method public synthetic constructor <init>(Lyads/tq3;I)V
    .locals 0

    iput p2, p0, Ljca;->b:I

    iput-object p1, p0, Ljca;->c:Lyads/tq3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Ljca;->b:I

    iget-object p0, p0, Ljca;->c:Lyads/tq3;

    packed-switch v0, :pswitch_data_0

    invoke-static {p0}, Lyads/tq3;->A2(Lyads/tq3;)Lyads/ia1;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-static {p0}, Lyads/tq3;->f0(Lyads/tq3;)Lyads/st0;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-static {p0}, Lyads/tq3;->p8(Lyads/tq3;)Lyads/x82;

    move-result-object p0

    return-object p0

    :pswitch_2
    invoke-static {p0}, Lyads/tq3;->f7(Lyads/tq3;)Lyads/j12;

    move-result-object p0

    return-object p0

    :pswitch_3
    invoke-static {p0}, Lyads/tq3;->s1(Lyads/tq3;)Lyads/r11;

    move-result-object p0

    return-object p0

    :pswitch_4
    invoke-static {p0}, Lyads/tq3;->S3(Lyads/tq3;)Lyads/qh1;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
