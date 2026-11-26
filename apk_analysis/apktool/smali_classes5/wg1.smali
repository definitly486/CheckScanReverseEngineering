.class public final Lwg1;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lnl3<",
        "La57<",
        "Liv6;",
        ">;",
        "Lqq1;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lnl3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnl3<",
            "Ljava/lang/Throwable;",
            "Lqp1;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic g:Lyg1;

.field public final synthetic h:J

.field public final synthetic i:Lhv6;


# direct methods
.method public constructor <init>(Lnl3;Lyg1;JLhv6;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnl3<",
            "-",
            "Ljava/lang/Throwable;",
            "+",
            "Lqp1;",
            ">;",
            "Lyg1;",
            "J",
            "Lhv6;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lwg1;->f:Lnl3;

    iput-object p2, p0, Lwg1;->g:Lyg1;

    iput-wide p3, p0, Lwg1;->h:J

    iput-object p5, p0, Lwg1;->i:Lhv6;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    check-cast p1, La57;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p1, La57;->a:Lz47;

    iget v1, v0, Lz47;->e:I

    const/16 v2, 0x384

    if-ne v1, v2, :cond_0

    new-instance p1, Ljava/io/IOException;

    iget-object v0, v0, Lz47;->d:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lwg1;->f:Lnl3;

    invoke-interface {p0, p1}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lqq1;

    return-object p0

    :cond_0
    iget-object v0, p1, La57;->b:Ljava/lang/Object;

    check-cast v0, Liv6;

    const/16 v2, 0x190

    iget-object v3, p0, Lwg1;->g:Lyg1;

    if-eq v1, v2, :cond_5

    const/16 v2, 0x1fe

    const/4 v4, 0x0

    if-eq v1, v2, :cond_3

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Liv6;->a()Ljava/lang/Boolean;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    :cond_1
    if-eqz v4, :cond_2

    invoke-virtual {v3}, Lyg1;->d()V

    :cond_2
    iget-object v0, v3, Lyg1;->f:Lxd1;

    invoke-virtual {v0}, Lxd1;->b()Lhi0;

    move-result-object v0

    sget-object v1, Lj59;->a:Lj59;

    invoke-virtual {v0, v1}, Lhi0;->onNext(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    :pswitch_1
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Liv6;->a()Ljava/lang/Boolean;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    :cond_4
    if-eqz v4, :cond_6

    invoke-virtual {v3}, Lyg1;->d()V

    goto :goto_0

    :cond_5
    :pswitch_2
    sget-object v0, Lkd$g$a$c;->e:Lkd$g$a$c;

    invoke-virtual {v0}, Lkd;->a()V

    :cond_6
    :goto_0
    iget-wide v0, p0, Lwg1;->h:J

    iget-object p0, p0, Lwg1;->i:Lhv6;

    invoke-virtual {v3, v0, v1, p0, p1}, Lyg1;->f(JLhv6;La57;)Lqp1;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
