.class public final synthetic Lso9;
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

    iput p2, p0, Lso9;->b:I

    iput-object p1, p0, Lso9;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lso9;->b:I

    iget-object p0, p0, Lso9;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lyads/qn6;

    invoke-static {p0}, Lyads/qn6;->a(Lyads/qn6;)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p0, Lyads/nq0;

    invoke-static {p0}, Lyads/nq0;->c(Lyads/nq0;)Lyads/lq0;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p0, Lyads/gf0;

    invoke-static {p0}, Lyads/gf0;->j(Lyads/gf0;)Lyads/wg3;

    move-result-object p0

    return-object p0

    :pswitch_2
    const/4 v0, 0x0

    check-cast p0, Lyads/dy;

    invoke-static {v0, p0}, Lyads/dy;->a(Lws6;Lyads/dy;)Lyads/fy;

    move-result-object p0

    return-object p0

    :pswitch_3
    check-cast p0, Lyads/bo1;

    invoke-static {p0}, Lyads/bo1;->h(Lyads/bo1;)Lyads/pi5;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
