.class public abstract Lyads/j61;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lyads/j61;Lyads/fs2;Lyads/fs2;)Z
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p0, Lyads/i61;

    const/4 v2, 0x0

    if-eqz v1, :cond_8

    check-cast p0, Lyads/i61;

    iget-object p0, p0, Lyads/i61;->a:Lyads/b61;

    instance-of v1, p1, Lyads/i61;

    if-eqz v1, :cond_1

    check-cast p1, Lyads/i61;

    iget-object p1, p1, Lyads/i61;->a:Lyads/b61;

    goto :goto_0

    :cond_1
    instance-of v1, p1, Lyads/h61;

    if-eqz v1, :cond_7

    check-cast p1, Lyads/h61;

    iget-object p1, p1, Lyads/h61;->a:Lyads/v51;

    :goto_0
    instance-of v1, p1, Lyads/b61;

    if-eqz v1, :cond_2

    check-cast p1, Lyads/b61;

    goto :goto_1

    :cond_2
    move-object p1, v2

    :goto_1
    if-nez p1, :cond_3

    goto/16 :goto_4

    :cond_3
    iget-object p0, p0, Lyads/b61;->a:Ljava/util/List;

    iget-object p1, p1, Lyads/b61;->a:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-eq v1, v3, :cond_4

    goto/16 :goto_4

    :cond_4
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    move v1, v0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v4, v1, 0x1

    if-ltz v1, :cond_6

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyads/j61;

    check-cast v3, Lyads/j61;

    invoke-virtual {v3, v1, p2, p3}, Lyads/j61;->a(Lyads/j61;Lyads/fs2;Lyads/fs2;)Z

    move-result v1

    if-nez v1, :cond_5

    goto/16 :goto_4

    :cond_5
    move v1, v4

    goto :goto_2

    :cond_6
    invoke-static {}, Lu96;->o()V

    throw v2

    :cond_7
    invoke-static {}, Lme0;->e()V

    return v0

    :cond_8
    instance-of v1, p0, Lyads/h61;

    if-eqz v1, :cond_f

    check-cast p0, Lyads/h61;

    iget-object p0, p0, Lyads/h61;->a:Lyads/v51;

    instance-of v1, p1, Lyads/i61;

    if-eqz v1, :cond_9

    check-cast p1, Lyads/i61;

    iget-object p1, p1, Lyads/i61;->a:Lyads/b61;

    goto :goto_3

    :cond_9
    instance-of v1, p1, Lyads/h61;

    if-eqz v1, :cond_e

    check-cast p1, Lyads/h61;

    iget-object p1, p1, Lyads/h61;->a:Lyads/v51;

    :goto_3
    instance-of v1, p1, Lyads/v51;

    if-eqz v1, :cond_a

    move-object v2, p1

    check-cast v2, Lyads/v51;

    :cond_a
    if-nez v2, :cond_b

    goto :goto_4

    :cond_b
    iget-object p1, p0, Lyads/v51;->a:Lyads/as2;

    invoke-virtual {p1, p2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    iget-object p1, v2, Lyads/v51;->a:Lyads/as2;

    invoke-virtual {p1, p3}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v5

    cmp-long p1, v3, v5

    if-nez p1, :cond_d

    iget-object p1, p0, Lyads/v51;->b:Lyads/as2;

    invoke-virtual {p1, p2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p1

    iget-object v1, v2, Lyads/v51;->b:Lyads/as2;

    invoke-virtual {v1, p3}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v1

    if-ne p1, v1, :cond_d

    iget-object p0, p0, Lyads/v51;->c:Lyads/as2;

    invoke-virtual {p0, p2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide p0

    iget-object p2, v2, Lyads/v51;->c:Lyads/as2;

    invoke-virtual {p2, p3}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    move-result-wide p2

    cmp-long p0, p0, p2

    if-nez p0, :cond_d

    :cond_c
    const/4 p0, 0x1

    return p0

    :cond_d
    :goto_4
    return v0

    :cond_e
    invoke-static {}, Lme0;->e()V

    return v0

    :cond_f
    invoke-static {}, Lme0;->e()V

    return v0
.end method
