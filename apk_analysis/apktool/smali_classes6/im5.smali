.class public final synthetic Lim5;
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

    iput p2, p0, Lim5;->b:I

    iput-object p1, p0, Lim5;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lim5;->b:I

    iget-object p0, p0, Lim5;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lyads/pm6;

    invoke-static {p0}, Lyads/pm6;->b(Lyads/pm6;)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p0, Lyads/gf0;

    invoke-static {p0}, Lyads/gf0;->i(Lyads/gf0;)Lyads/d53;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p0, Lsy6;

    iget-object p0, p0, Lsy6;->a:Lsy6$a;

    iget-object p0, p0, Lsy6$a;->e:Lfh8;

    invoke-virtual {p0}, Lfh8;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lqn2;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
