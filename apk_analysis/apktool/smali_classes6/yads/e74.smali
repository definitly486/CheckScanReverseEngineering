.class public final Lyads/e74;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lyads/n64;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 2

    if-eqz p0, :cond_1

    .line 93
    invoke-static {p0}, Lta8;->M(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 94
    :cond_0
    const-string v0, "SDK Version: "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 95
    new-instance v0, Lyads/d74;

    sget-object v1, Lyads/c74;->b:Lyads/c74;

    invoke-direct {v0, p0, v1}, Lyads/d74;-><init>(Ljava/lang/String;Lyads/c74;)V

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    if-eqz p1, :cond_3

    .line 96
    invoke-static {p1}, Lta8;->M(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_1

    .line 97
    :cond_2
    const-string p0, "ADAPTERS Version: "

    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 98
    new-instance p1, Lyads/d74;

    sget-object v0, Lyads/c74;->b:Lyads/c74;

    invoke-direct {p1, p0, v0}, Lyads/d74;-><init>(Ljava/lang/String;Lyads/c74;)V

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_1
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 4

    .line 87
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    rsub-int/lit8 v0, v0, 0x2c

    const/4 v1, 0x4

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 88
    div-int/lit8 v1, v0, 0x2

    const-string v2, "-"

    invoke-static {v1, v2}, Lra8;->x(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 89
    rem-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v1

    invoke-static {v0, v2}, Lra8;->x(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 90
    const-string v1, " "

    const/4 v2, 0x1

    invoke-static {v2, v1}, Lra8;->x(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 91
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 92
    new-instance v0, Lyads/d74;

    sget-object v1, Lyads/c74;->b:Lyads/c74;

    invoke-direct {v0, p0, v1}, Lyads/d74;-><init>(Ljava/lang/String;Lyads/c74;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static a(Ljava/util/ArrayList;Ljava/util/List;Ljava/lang/String;Z)V
    .locals 9

    if-eqz p3, :cond_0

    sget-object p3, Lyads/c74;->b:Lyads/c74;

    const-string v0, "ADAPTERS"

    const-string v1, "INTEGRATED SUCCESSFULLY"

    goto :goto_0

    :cond_0
    sget-object p3, Lyads/c74;->c:Lyads/c74;

    const-string v0, "MISSING ADAPTERS"

    const-string v1, "NOT INTEGRATED"

    :goto_0
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {p1, v3}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lyads/l64;

    invoke-virtual {v3}, Lyads/l64;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    const-string p1, ": "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    const/16 v8, 0x3d

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v2 .. v8}, Lqn1;->a0(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;ILnl3;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, p1, v1}, Lcg;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lyads/d74;

    invoke-direct {p2, v0, p3}, Lyads/d74;-><init>(Ljava/lang/String;Lyads/c74;)V

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p2, Lyads/d74;

    invoke-direct {p2, p1, p3}, Lyads/d74;-><init>(Ljava/lang/String;Lyads/c74;)V

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 4

    .line 99
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 100
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyads/m64;

    .line 101
    iget-object v1, v0, Lyads/m64;->a:Ljava/lang/String;

    .line 102
    invoke-static {v1, p0}, Lyads/e74;->a(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 103
    iget-object v1, v0, Lyads/m64;->c:Ljava/lang/String;

    .line 104
    iget-object v2, v0, Lyads/m64;->d:Ljava/util/List;

    .line 105
    invoke-static {v2}, Lqn1;->T(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lyads/l64;

    .line 106
    iget-object v2, v2, Lyads/l64;->b:Ljava/lang/String;

    .line 107
    invoke-static {v0}, Lyads/n64;->a(Lyads/m64;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 108
    invoke-static {v1, v2, p0}, Lyads/e74;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 109
    :cond_0
    iget-object v1, v0, Lyads/m64;->d:Ljava/util/List;

    .line 110
    iget-object v0, v0, Lyads/m64;->a:Ljava/lang/String;

    .line 111
    invoke-static {p0, v1, v0, v3}, Lyads/e74;->a(Ljava/util/ArrayList;Ljava/util/List;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_1
    return-object p0
.end method
