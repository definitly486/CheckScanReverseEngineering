.class public final synthetic Lvc6;
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

    iput p2, p0, Lvc6;->b:I

    iput-object p1, p0, Lvc6;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lvc6;->b:I

    iget-object p0, p0, Lvc6;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lyads/wq0;

    invoke-static {p0}, Lyads/wq0;->g(Lyads/wq0;)Lyads/v32;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p0, Lyads/nq0;

    invoke-static {p0}, Lyads/nq0;->S(Lyads/nq0;)Lyads/ri1;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p0, Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lef4;

    invoke-interface {p0}, Lef4;->d()Lne4;

    move-result-object p0

    return-object p0

    :pswitch_2
    check-cast p0, Ldf4;

    invoke-static {p0}, Landroidx/navigation/serialization/RouteSerializerKt;->e(Ldf4;)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_3
    check-cast p0, Lwc6;

    :goto_0
    iget-object v0, p0, Lwc6;->d:Lfr;

    invoke-virtual {v0}, Lfr;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lwc6;->a()V

    goto :goto_0

    :cond_0
    sget-object p0, Lj59;->a:Lj59;

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
