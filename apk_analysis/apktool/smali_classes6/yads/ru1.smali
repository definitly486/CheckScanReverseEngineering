.class public abstract Lyads/ru1;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 1

    .line 129
    instance-of v0, p0, Lyads/pu1;

    if-eqz v0, :cond_0

    check-cast p0, Lyads/pu1;

    .line 130
    iget-object p0, p0, Lyads/pu1;->a:Lyads/su1;

    return-object p0

    .line 131
    :cond_0
    instance-of v0, p0, Lyads/qu1;

    if-eqz v0, :cond_1

    check-cast p0, Lyads/qu1;

    .line 132
    iget-object p0, p0, Lyads/qu1;->a:Lyads/bv1;

    return-object p0

    .line 133
    :cond_1
    invoke-static {}, Lme0;->e()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final a(Lyads/ru1;Lyads/fs2;Lyads/fs2;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p0, Lyads/pu1;

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    check-cast p0, Lyads/pu1;

    iget-object p0, p0, Lyads/pu1;->a:Lyads/su1;

    invoke-virtual {p1}, Lyads/ru1;->a()Ljava/lang/Object;

    move-result-object p1

    instance-of v1, p1, Lyads/su1;

    if-eqz v1, :cond_1

    check-cast p1, Lyads/su1;

    goto :goto_0

    :cond_1
    move-object p1, v2

    :goto_0
    if-nez p1, :cond_2

    goto :goto_3

    :cond_2
    iget-object v1, p0, Lyads/su1;->a:Lyads/as2;

    invoke-virtual {v1, p2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v1

    iget-object v3, p1, Lyads/su1;->a:Lyads/as2;

    invoke-virtual {v3, p3}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v3

    if-ne v1, v3, :cond_8

    iget-object p0, p0, Lyads/su1;->b:Lyads/as2;

    if-eqz p0, :cond_3

    invoke-virtual {p0, p2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    goto :goto_1

    :cond_3
    move-object p0, v2

    :goto_1
    iget-object p1, p1, Lyads/su1;->b:Lyads/as2;

    if-eqz p1, :cond_4

    invoke-virtual {p1, p3}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Ljava/lang/Long;

    :cond_4
    invoke-static {p0, v2}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8

    goto :goto_2

    :cond_5
    instance-of v1, p0, Lyads/qu1;

    if-eqz v1, :cond_9

    check-cast p0, Lyads/qu1;

    iget-object p0, p0, Lyads/qu1;->a:Lyads/bv1;

    invoke-virtual {p1}, Lyads/ru1;->a()Ljava/lang/Object;

    move-result-object p1

    instance-of v1, p1, Lyads/bv1;

    if-eqz v1, :cond_6

    move-object v2, p1

    check-cast v2, Lyads/bv1;

    :cond_6
    if-nez v2, :cond_7

    goto :goto_3

    :cond_7
    iget-object p0, p0, Lyads/bv1;->a:Lyads/as2;

    invoke-virtual {p0, p2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p0

    iget-object p2, v2, Lyads/bv1;->a:Lyads/as2;

    invoke-virtual {p2, p3}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p2

    cmpg-double p0, p0, p2

    if-nez p0, :cond_8

    :goto_2
    const/4 p0, 0x1

    return p0

    :cond_8
    :goto_3
    return v0

    :cond_9
    invoke-static {}, Lme0;->e()V

    return v0
.end method
