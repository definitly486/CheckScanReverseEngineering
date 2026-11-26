.class public abstract Lyads/wd1;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lyads/wd1;Lyads/fs2;Lyads/fs2;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p0, Lyads/ud1;

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    check-cast p0, Lyads/ud1;

    iget-object p0, p0, Lyads/ud1;->a:Lyads/z41;

    instance-of v1, p1, Lyads/ud1;

    if-eqz v1, :cond_1

    check-cast p1, Lyads/ud1;

    iget-object p1, p1, Lyads/ud1;->a:Lyads/z41;

    goto :goto_0

    :cond_1
    instance-of v1, p1, Lyads/vd1;

    if-eqz v1, :cond_4

    check-cast p1, Lyads/vd1;

    iget-object p1, p1, Lyads/vd1;->a:Lyads/ae1;

    :goto_0
    instance-of v1, p1, Lyads/z41;

    if-eqz v1, :cond_2

    move-object v2, p1

    check-cast v2, Lyads/z41;

    :cond_2
    if-nez v2, :cond_3

    goto :goto_3

    :cond_3
    iget-object p0, p0, Lyads/z41;->a:Lyads/as2;

    invoke-virtual {p0, p2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide p0

    iget-object p2, v2, Lyads/z41;->a:Lyads/as2;

    invoke-virtual {p2, p3}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    move-result-wide p2

    cmp-long p0, p0, p2

    if-nez p0, :cond_8

    goto :goto_2

    :cond_4
    invoke-static {}, Lme0;->e()V

    return v0

    :cond_5
    instance-of p0, p0, Lyads/vd1;

    if-eqz p0, :cond_a

    instance-of p0, p1, Lyads/ud1;

    if-eqz p0, :cond_6

    check-cast p1, Lyads/ud1;

    iget-object p0, p1, Lyads/ud1;->a:Lyads/z41;

    goto :goto_1

    :cond_6
    instance-of p0, p1, Lyads/vd1;

    if-eqz p0, :cond_9

    check-cast p1, Lyads/vd1;

    iget-object p0, p1, Lyads/vd1;->a:Lyads/ae1;

    :goto_1
    instance-of p1, p0, Lyads/ae1;

    if-eqz p1, :cond_7

    move-object v2, p0

    check-cast v2, Lyads/ae1;

    :cond_7
    if-eqz v2, :cond_8

    :goto_2
    const/4 p0, 0x1

    return p0

    :cond_8
    :goto_3
    return v0

    :cond_9
    invoke-static {}, Lme0;->e()V

    return v0

    :cond_a
    invoke-static {}, Lme0;->e()V

    return v0
.end method
