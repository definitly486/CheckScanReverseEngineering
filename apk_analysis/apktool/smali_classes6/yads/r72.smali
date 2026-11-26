.class public final Lyads/r72;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/List;

.field public final b:Ljava/util/List;

.field public final c:Ljava/util/List;

.field public final d:Lyads/as2;


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Lyads/as2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/r72;->a:Ljava/util/List;

    iput-object p2, p0, Lyads/r72;->b:Ljava/util/List;

    iput-object p3, p0, Lyads/r72;->c:Ljava/util/List;

    iput-object p4, p0, Lyads/r72;->d:Lyads/as2;

    return-void
.end method


# virtual methods
.method public final a(Lyads/r72;Lyads/fs2;Lyads/fs2;)Z
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lyads/r72;->a:Ljava/util/List;

    iget-object v2, p1, Lyads/r72;->a:Ljava/util/List;

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

    check-cast v4, Lyads/xr0;

    check-cast v5, Lyads/xr0;

    invoke-virtual {v5, v4, p2, p3}, Lyads/xr0;->a(Lyads/xr0;Lyads/fs2;Lyads/fs2;)Z

    move-result v4

    if-nez v4, :cond_3

    goto/16 :goto_3

    :cond_3
    move v4, v6

    goto :goto_0

    :cond_4
    invoke-static {}, Lu96;->o()V

    throw v3

    :cond_5
    if-nez v2, :cond_13

    :cond_6
    iget-object v1, p0, Lyads/r72;->b:Ljava/util/List;

    iget-object v2, p1, Lyads/r72;->b:Ljava/util/List;

    if-eqz v1, :cond_b

    if-nez v2, :cond_7

    return v0

    :cond_7
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-eq v4, v5, :cond_8

    goto/16 :goto_3

    :cond_8
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v4, v0

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v6, v4, 0x1

    if-ltz v4, :cond_a

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lyads/x72;

    check-cast v5, Lyads/x72;

    invoke-virtual {v5, v4, p2, p3}, Lyads/x72;->a(Lyads/x72;Lyads/fs2;Lyads/fs2;)Z

    move-result v4

    if-nez v4, :cond_9

    goto :goto_3

    :cond_9
    move v4, v6

    goto :goto_1

    :cond_a
    invoke-static {}, Lu96;->o()V

    throw v3

    :cond_b
    if-nez v2, :cond_13

    :cond_c
    iget-object v1, p0, Lyads/r72;->c:Ljava/util/List;

    iget-object v2, p1, Lyads/r72;->c:Ljava/util/List;

    if-eqz v1, :cond_11

    if-nez v2, :cond_d

    return v0

    :cond_d
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-eq v4, v5, :cond_e

    goto :goto_3

    :cond_e
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v4, v0

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_12

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v6, v4, 0x1

    if-ltz v4, :cond_10

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lyads/y72;

    check-cast v5, Lyads/y72;

    invoke-virtual {v5, v4, p2, p3}, Lyads/y72;->a(Lyads/y72;Lyads/fs2;Lyads/fs2;)Z

    move-result v4

    if-nez v4, :cond_f

    goto :goto_3

    :cond_f
    move v4, v6

    goto :goto_2

    :cond_10
    invoke-static {}, Lu96;->o()V

    throw v3

    :cond_11
    if-nez v2, :cond_13

    :cond_12
    iget-object p0, p0, Lyads/r72;->d:Lyads/as2;

    invoke-virtual {p0, p2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p0

    iget-object p1, p1, Lyads/r72;->d:Lyads/as2;

    invoke-virtual {p1, p3}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_13

    const/4 p0, 0x1

    return p0

    :cond_13
    :goto_3
    return v0
.end method
