.class public final Lyads/pa;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lyads/rh0;)Ljava/util/List;
    .locals 8

    invoke-static {}, Lu96;->e()Lar4;

    move-result-object v0

    sget-object v1, Lyads/oh0;->a:Lyads/oh0;

    invoke-virtual {v0, v1}, Lar4;->add(Ljava/lang/Object;)Z

    new-instance v1, Lyads/ph0;

    const-string v2, "Info"

    invoke-direct {v1, v2}, Lyads/ph0;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lar4;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lyads/rh0;->e()Lyads/me0;

    move-result-object v1

    sget-object v2, Lyads/me0;->c:Lyads/me0;

    if-ne v1, v2, :cond_2

    invoke-virtual {p0}, Lyads/rh0;->a()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lyads/rh0;->c()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {v1}, Lta8;->M(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lyads/rh0;->c()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    :goto_0
    const-string v1, "ID"

    :goto_1
    new-instance v2, Lyads/qh0;

    invoke-virtual {p0}, Lyads/rh0;->a()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lyads/qh0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lar4;->add(Ljava/lang/Object;)Z

    :cond_2
    new-instance v1, Lyads/qh0;

    invoke-virtual {p0}, Lyads/rh0;->e()Lyads/me0;

    move-result-object v2

    invoke-virtual {v2}, Lyads/me0;->a()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Type"

    invoke-direct {v1, v3, v2}, Lyads/qh0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lar4;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lyads/rh0;->d()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lyads/xf0;

    new-instance v3, Lyads/qh0;

    invoke-virtual {v2}, Lyads/xf0;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lyads/xf0;->b()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v4, v2}, Lyads/qh0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lar4;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Lyads/rh0;->b()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_6

    :cond_4
    sget-object v1, Lyads/oh0;->a:Lyads/oh0;

    invoke-virtual {v0, v1}, Lar4;->add(Ljava/lang/Object;)Z

    new-instance v1, Lyads/ph0;

    const-string v2, "CPM floors"

    invoke-direct {v1, v2}, Lyads/ph0;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lar4;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lyads/rh0;->c()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-static {v1}, Lta8;->M(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {p0}, Lyads/rh0;->c()Ljava/lang/String;

    move-result-object v1

    const-string v2, ": "

    invoke-static {v1, v2}, Lni0;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    :cond_6
    :goto_3
    const-string v1, ""

    :goto_4
    invoke-virtual {p0}, Lyads/rh0;->b()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lyads/zh0;

    new-instance v3, Lyads/qh0;

    invoke-virtual {v2}, Lyads/zh0;->b()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lbj;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lyads/zh0;->a()D

    move-result-wide v5

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v7, "cpm: "

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v4, v2}, Lyads/qh0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lar4;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_7
    :goto_6
    invoke-static {v0}, Lu96;->d(Lar4;)Lar4;

    move-result-object p0

    return-object p0
.end method
