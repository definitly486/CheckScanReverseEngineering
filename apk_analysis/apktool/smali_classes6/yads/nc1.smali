.class public final Lyads/nc1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/List;

.field public final b:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/nc1;->a:Ljava/util/List;

    iput-object p2, p0, Lyads/nc1;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a(Lyads/nc1;Lyads/fs2;Lyads/fs2;)Z
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lyads/nc1;->a:Ljava/util/List;

    iget-object v2, p1, Lyads/nc1;->a:Ljava/util/List;

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

    goto/16 :goto_2

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

    goto :goto_2

    :cond_3
    move v4, v6

    goto :goto_0

    :cond_4
    invoke-static {}, Lu96;->o()V

    throw v3

    :cond_5
    if-nez v2, :cond_d

    :cond_6
    iget-object p0, p0, Lyads/nc1;->b:Ljava/util/List;

    iget-object p1, p1, Lyads/nc1;->b:Ljava/util/List;

    if-eqz p0, :cond_b

    if-nez p1, :cond_7

    return v0

    :cond_7
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-eq v1, v2, :cond_8

    goto :goto_2

    :cond_8
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    move v1, v0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v4, v1, 0x1

    if-ltz v1, :cond_a

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyads/xr0;

    check-cast v2, Lyads/xr0;

    invoke-virtual {v2, v1, p2, p3}, Lyads/xr0;->a(Lyads/xr0;Lyads/fs2;Lyads/fs2;)Z

    move-result v1

    if-nez v1, :cond_9

    goto :goto_2

    :cond_9
    move v1, v4

    goto :goto_1

    :cond_a
    invoke-static {}, Lu96;->o()V

    throw v3

    :cond_b
    if-nez p1, :cond_d

    :cond_c
    const/4 p0, 0x1

    return p0

    :cond_d
    :goto_2
    return v0
.end method
