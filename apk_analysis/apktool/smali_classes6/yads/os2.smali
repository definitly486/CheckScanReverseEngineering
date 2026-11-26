.class public final Lyads/os2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/yf2;

.field public final b:Lyads/bt0;

.field public final c:Lyads/or5;


# direct methods
.method public constructor <init>(Lyads/yf2;Lyads/bt0;Lyads/or5;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/os2;->a:Lyads/yf2;

    iput-object p2, p0, Lyads/os2;->b:Lyads/bt0;

    iput-object p3, p0, Lyads/os2;->c:Lyads/or5;

    return-void
.end method

.method public static final a(Lyads/os2;Lyads/ao2;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 162
    iget-object p0, p0, Lyads/os2;->c:Lyads/or5;

    invoke-virtual {p0, p2, p1}, Lyads/or5;->a(Ljava/lang/String;Lyads/ao2;)Lyads/kr5;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lyads/kr5;->b()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final a(Lyads/db1;Lyads/ao2;Lyads/vb5;)Lyads/ms2;
    .locals 8

    .line 163
    new-instance v3, Lyads/b76;

    const/4 v7, 0x0

    .line 164
    invoke-direct {v3, v7}, Lyads/b76;-><init>(Lyads/z66;)V

    .line 165
    iget-object v0, p0, Lyads/os2;->a:Lyads/yf2;

    .line 166
    iget-object v0, v0, Lyads/yf2;->e:Lyads/zc4;

    .line 167
    iget-object v1, v3, Lyads/b76;->g:Lnl3;

    .line 168
    iget-object v2, v0, Lyads/zc4;->a:Lyads/yf2;

    invoke-virtual {v2, v1}, Lyads/yf2;->a(Lnl3;)V

    .line 169
    iget-object v1, v3, Lyads/b76;->h:Lyads/a76;

    .line 170
    iget-object v2, v0, Lyads/zc4;->a:Lyads/yf2;

    .line 171
    iget-object v2, v2, Lyads/yf2;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 172
    iget-object v1, v3, Lyads/b76;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 173
    new-instance v0, Lid9;

    invoke-direct {v0, p0, p2}, Lid9;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 174
    new-instance v1, Lyads/a23;

    sget-object v2, Lyads/g23;->a:Lyads/g23;

    invoke-direct {v1, v2}, Lyads/a23;-><init>(Lyads/y13;)V

    .line 175
    iget-object v2, p1, Lyads/db1;->a:Ljava/util/List;

    if-eqz v2, :cond_1

    .line 176
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    .line 177
    :cond_0
    invoke-static {v2}, Lyads/x13;->a(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lyads/a23;->a(Ljava/util/ArrayList;)Lyads/a23;

    move-result-object v1

    .line 178
    :cond_1
    :goto_0
    new-instance v2, Lyads/ns2;

    invoke-direct {v2, p2}, Lyads/ns2;-><init>(Lyads/ao2;)V

    .line 179
    new-instance v4, Lyads/yo2;

    invoke-direct {v4, v3, v0, v1, v2}, Lyads/yo2;-><init>(Lyads/z66;Lyads/mr5;Lyads/y13;Lyads/ij6;)V

    move-object v0, v4

    .line 180
    new-instance v4, Lyads/bp2;

    invoke-direct {v4, v0}, Lyads/bp2;-><init>(Lyads/yo2;)V

    .line 181
    new-instance v0, Lyads/gs2;

    .line 182
    const-string v1, ""

    const/4 v6, 0x0

    move-object v5, p2

    move-object v2, p3

    .line 183
    invoke-direct/range {v0 .. v6}, Lyads/gs2;-><init>(Ljava/lang/String;Lyads/ub5;Lyads/z66;Lyads/bp2;Lyads/ao2;Ljava/lang/String;)V

    .line 184
    iget-object p2, p1, Lyads/db1;->g:Ljava/util/List;

    if-eqz p2, :cond_2

    .line 185
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lyads/uf2;

    .line 186
    invoke-static {v3, p3, v0, v5}, Lyads/c76;->a(Lyads/z66;Lyads/uf2;Lyads/gs2;Lyads/ao2;)V

    goto :goto_1

    .line 187
    :cond_2
    iget-object p1, p1, Lyads/db1;->f:Ljava/util/List;

    if-eqz p1, :cond_4

    .line 188
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_3

    goto :goto_2

    .line 189
    :cond_3
    new-instance v7, Lyads/d26;

    iget-object p0, p0, Lyads/os2;->b:Lyads/bt0;

    invoke-direct {v7, v0, v5, p0}, Lyads/d26;-><init>(Lyads/gs2;Lyads/ao2;Lyads/bt0;)V

    .line 190
    invoke-virtual {v7, p1}, Lyads/d26;->a(Ljava/util/List;)V

    .line 191
    :cond_4
    :goto_2
    new-instance p0, Lyads/ms2;

    invoke-direct {p0, v0, v7}, Lyads/ms2;-><init>(Lyads/gs2;Lyads/d26;)V

    return-object p0
.end method

.method public final a(Lyads/n32;Lyads/p41;Lyads/gs2;Lyads/ao2;)Lyads/ms2;
    .locals 6

    new-instance v3, Lyads/b76;

    invoke-virtual {p3}, Lyads/gs2;->e()Lyads/z66;

    move-result-object v0

    invoke-direct {v3, v0}, Lyads/b76;-><init>(Lyads/z66;)V

    invoke-interface {p2}, Lyads/p41;->o()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p3}, Lyads/gs2;->a()Lyads/bp2;

    move-result-object v1

    invoke-virtual {v1}, Lyads/bp2;->a()Lyads/yo2;

    move-result-object v1

    invoke-virtual {v1}, Lyads/yo2;->a()Lyads/y13;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v1, Lyads/a23;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lyads/x13;->a(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v1, v0}, Lyads/a23;->a(Ljava/util/ArrayList;)Lyads/a23;

    move-result-object v1

    :cond_1
    :goto_0
    new-instance v0, Lyads/yo2;

    invoke-virtual {p3}, Lyads/gs2;->a()Lyads/bp2;

    move-result-object v2

    invoke-virtual {v2}, Lyads/bp2;->a()Lyads/yo2;

    move-result-object v2

    invoke-virtual {v2}, Lyads/yo2;->b()Lyads/mr5;

    move-result-object v2

    invoke-virtual {p3}, Lyads/gs2;->a()Lyads/bp2;

    move-result-object v4

    invoke-virtual {v4}, Lyads/bp2;->a()Lyads/yo2;

    move-result-object v4

    invoke-virtual {v4}, Lyads/yo2;->c()Lyads/ij6;

    move-result-object v4

    invoke-direct {v0, v3, v2, v1, v4}, Lyads/yo2;-><init>(Lyads/z66;Lyads/mr5;Lyads/y13;Lyads/ij6;)V

    new-instance v4, Lyads/bp2;

    invoke-direct {v4, v0}, Lyads/bp2;-><init>(Lyads/yo2;)V

    new-instance v0, Lyads/gs2;

    invoke-virtual {p3}, Lyads/gs2;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lyads/n32;->a()Ljava/lang/String;

    move-result-object p1

    const-string v2, "/"

    invoke-static {v1, v2, p1}, Lcg;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Lyads/gs2;->d()Lyads/ub5;

    move-result-object v2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lyads/gs2;-><init>(Ljava/lang/String;Lyads/ub5;Lyads/b76;Lyads/bp2;Lyads/ao2;)V

    invoke-interface {p2}, Lyads/p41;->s()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lyads/uf2;

    invoke-static {v3, p3, v0, v5}, Lyads/c76;->a(Lyads/z66;Lyads/uf2;Lyads/gs2;Lyads/ao2;)V

    goto :goto_1

    :cond_2
    invoke-interface {p2}, Lyads/p41;->i()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_3

    goto :goto_2

    :cond_3
    new-instance p2, Lyads/d26;

    iget-object p0, p0, Lyads/os2;->b:Lyads/bt0;

    invoke-direct {p2, v0, v5, p0}, Lyads/d26;-><init>(Lyads/gs2;Lyads/ao2;Lyads/bt0;)V

    invoke-virtual {p2, p1}, Lyads/d26;->a(Ljava/util/List;)V

    goto :goto_3

    :cond_4
    :goto_2
    const/4 p2, 0x0

    :goto_3
    new-instance p0, Lyads/ms2;

    invoke-direct {p0, v0, p2}, Lyads/ms2;-><init>(Lyads/gs2;Lyads/d26;)V

    return-object p0
.end method
