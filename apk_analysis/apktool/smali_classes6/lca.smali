.class public final synthetic Llca;
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

    iput p2, p0, Llca;->b:I

    iput-object p1, p0, Llca;->c:Lyads/tq3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Llca;->b:I

    iget-object p0, p0, Llca;->c:Lyads/tq3;

    packed-switch v0, :pswitch_data_0

    invoke-static {p0}, Lyads/tq3;->C2(Lyads/tq3;)Lyads/qa1;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-static {p0}, Lyads/tq3;->ja(Lyads/tq3;)Lyads/sr5;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-static {p0}, Lyads/tq3;->X(Lyads/tq3;)Lyads/vs0;

    move-result-object p0

    return-object p0

    :pswitch_2
    invoke-static {p0}, Lyads/tq3;->b7(Lyads/tq3;)Lyads/y02;

    move-result-object p0

    return-object p0

    :pswitch_3
    invoke-static {p0}, Lyads/tq3;->u5(Lyads/tq3;)Lyads/ar1;

    move-result-object p0

    return-object p0

    :pswitch_4
    invoke-static {p0}, Lyads/tq3;->T3(Lyads/tq3;)Lyads/rh1;

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
