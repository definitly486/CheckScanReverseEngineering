.class public final Lyads/dp1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/as2;

.field public final b:Ljava/util/List;

.field public final c:Lyads/ds2;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lyads/as2;Ljava/util/List;Lyads/ds2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/dp1;->a:Lyads/as2;

    iput-object p2, p0, Lyads/dp1;->b:Ljava/util/List;

    iput-object p3, p0, Lyads/dp1;->c:Lyads/ds2;

    return-void
.end method


# virtual methods
.method public final a(Lyads/dp1;Lyads/fs2;Lyads/fs2;)Z
    .locals 9

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lyads/dp1;->a:Lyads/as2;

    invoke-virtual {v1, p2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    iget-object v3, p1, Lyads/dp1;->a:Lyads/as2;

    invoke-virtual {v3, p3}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_d

    iget-object v1, p0, Lyads/dp1;->b:Ljava/util/List;

    iget-object v2, p1, Lyads/dp1;->b:Ljava/util/List;

    const/4 v3, 0x0

    if-eqz v1, :cond_5

    if-nez v2, :cond_1

    return v0

    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-eq v4, v5, :cond_2

    goto/16 :goto_3

    :cond_2
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v4, v0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v6, v4, 0x1

    if-ltz v4, :cond_4

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lyads/cp1;

    check-cast v5, Lyads/cp1;

    if-nez v4, :cond_3

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/16 :goto_3

    :cond_3
    iget-object v7, v5, Lyads/cp1;->a:Lyads/as2;

    invoke-virtual {v7, p2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v7

    iget-object v8, v4, Lyads/cp1;->a:Lyads/as2;

    invoke-virtual {v8, p3}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v8

    if-ne v7, v8, :cond_d

    iget-object v5, v5, Lyads/cp1;->b:Lyads/as2;

    invoke-virtual {v5, p2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v7

    iget-object v4, v4, Lyads/cp1;->b:Lyads/as2;

    invoke-virtual {v4, p3}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    cmpg-double v4, v7, v4

    if-nez v4, :cond_d

    move v4, v6

    goto :goto_0

    :cond_4
    invoke-static {}, Lu96;->o()V

    throw v3

    :cond_5
    if-nez v2, :cond_d

    :cond_6
    iget-object p0, p0, Lyads/dp1;->c:Lyads/ds2;

    if-eqz p0, :cond_b

    invoke-interface {p0, p2}, Lyads/ds2;->a(Lyads/fs2;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_b

    iget-object p1, p1, Lyads/dp1;->c:Lyads/ds2;

    if-eqz p1, :cond_a

    invoke-interface {p1, p3}, Lyads/ds2;->a(Lyads/fs2;)Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_7

    goto :goto_2

    :cond_7
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    if-eq p2, p3, :cond_8

    goto :goto_3

    :cond_8
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    move p2, v0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    add-int/lit8 v1, p2, 0x1

    if-ltz p2, :cond_9

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p3

    if-ne p3, p2, :cond_d

    move p2, v1

    goto :goto_1

    :cond_9
    invoke-static {}, Lu96;->o()V

    throw v3

    :cond_a
    :goto_2
    return v0

    :cond_b
    iget-object p0, p1, Lyads/dp1;->c:Lyads/ds2;

    if-nez p0, :cond_d

    :cond_c
    const/4 p0, 0x1

    return p0

    :cond_d
    :goto_3
    return v0
.end method
