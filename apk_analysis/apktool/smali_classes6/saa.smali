.class public final synthetic Lsaa;
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

    iput p2, p0, Lsaa;->b:I

    iput-object p1, p0, Lsaa;->c:Lyads/tq3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lsaa;->b:I

    iget-object p0, p0, Lsaa;->c:Lyads/tq3;

    packed-switch v0, :pswitch_data_0

    invoke-static {p0}, Lyads/tq3;->X0(Lyads/tq3;)Lyads/bx0;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-static {p0}, Lyads/tq3;->C9(Lyads/tq3;)Lyads/wi2;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-static {p0}, Lyads/tq3;->d8(Lyads/tq3;)Lyads/r62;

    move-result-object p0

    return-object p0

    :pswitch_2
    invoke-static {p0}, Lyads/tq3;->z6(Lyads/tq3;)Lyads/xx1;

    move-result-object p0

    return-object p0

    :pswitch_3
    invoke-static {p0}, Lyads/tq3;->B4(Lyads/tq3;)Lyads/vl1;

    move-result-object p0

    return-object p0

    :pswitch_4
    invoke-static {p0}, Lyads/tq3;->m1(Lyads/tq3;)Lyads/t01;

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
