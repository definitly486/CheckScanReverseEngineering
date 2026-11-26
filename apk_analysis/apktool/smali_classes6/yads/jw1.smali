.class public abstract Lyads/jw1;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lyads/jw1;Lyads/fs2;Lyads/fs2;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p0, Lyads/hw1;

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    check-cast p0, Lyads/hw1;

    iget-object p0, p0, Lyads/hw1;->a:Lyads/uw1;

    instance-of v1, p1, Lyads/hw1;

    if-eqz v1, :cond_1

    check-cast p1, Lyads/hw1;

    iget-object p1, p1, Lyads/hw1;->a:Lyads/uw1;

    goto :goto_0

    :cond_1
    instance-of v1, p1, Lyads/iw1;

    if-eqz v1, :cond_4

    check-cast p1, Lyads/iw1;

    iget-object p1, p1, Lyads/iw1;->a:Lyads/nx1;

    :goto_0
    instance-of v1, p1, Lyads/uw1;

    if-eqz v1, :cond_2

    move-object v2, p1

    check-cast v2, Lyads/uw1;

    :cond_2
    if-nez v2, :cond_3

    goto/16 :goto_3

    :cond_3
    iget-object p1, p0, Lyads/uw1;->a:Lyads/as2;

    invoke-virtual {p1, p2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p1

    iget-object v1, v2, Lyads/uw1;->a:Lyads/as2;

    invoke-virtual {v1, p3}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v1

    if-ne p1, v1, :cond_9

    iget-object p0, p0, Lyads/uw1;->b:Lyads/as2;

    invoke-virtual {p0, p2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide p0

    iget-object p2, v2, Lyads/uw1;->b:Lyads/as2;

    invoke-virtual {p2, p3}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    move-result-wide p2

    cmp-long p0, p0, p2

    if-nez p0, :cond_9

    goto :goto_2

    :cond_4
    invoke-static {}, Lme0;->e()V

    return v0

    :cond_5
    instance-of v1, p0, Lyads/iw1;

    if-eqz v1, :cond_b

    check-cast p0, Lyads/iw1;

    iget-object p0, p0, Lyads/iw1;->a:Lyads/nx1;

    instance-of v1, p1, Lyads/hw1;

    if-eqz v1, :cond_6

    check-cast p1, Lyads/hw1;

    iget-object p1, p1, Lyads/hw1;->a:Lyads/uw1;

    goto :goto_1

    :cond_6
    instance-of v1, p1, Lyads/iw1;

    if-eqz v1, :cond_a

    check-cast p1, Lyads/iw1;

    iget-object p1, p1, Lyads/iw1;->a:Lyads/nx1;

    :goto_1
    instance-of v1, p1, Lyads/nx1;

    if-eqz v1, :cond_7

    move-object v2, p1

    check-cast v2, Lyads/nx1;

    :cond_7
    if-nez v2, :cond_8

    goto :goto_3

    :cond_8
    iget-object p0, p0, Lyads/nx1;->a:Lyads/as2;

    invoke-virtual {p0, p2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p0

    iget-object p2, v2, Lyads/nx1;->a:Lyads/as2;

    invoke-virtual {p2, p3}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p2

    cmpg-double p0, p0, p2

    if-nez p0, :cond_9

    :goto_2
    const/4 p0, 0x1

    return p0

    :cond_9
    :goto_3
    return v0

    :cond_a
    invoke-static {}, Lme0;->e()V

    return v0

    :cond_b
    invoke-static {}, Lme0;->e()V

    return v0
.end method
