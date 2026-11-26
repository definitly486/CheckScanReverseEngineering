.class public abstract Lyads/b81;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lyads/br0;Lyads/fs2;)Ljava/util/List;
    .locals 2

    .line 161
    instance-of v0, p0, Lyads/up0;

    if-eqz v0, :cond_0

    check-cast p0, Lyads/up0;

    .line 162
    iget-object p0, p0, Lyads/up0;->a:Lyads/j81;

    .line 163
    iget-object v0, p0, Lyads/j81;->B:Ljava/util/List;

    iget-object p0, p0, Lyads/j81;->z:Lyads/j71;

    invoke-static {v0, p0, p1}, Lyads/f71;->a(Ljava/util/List;Lyads/j71;Lyads/fs2;)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 164
    :cond_0
    instance-of v0, p0, Lyads/yp0;

    sget-object v1, Lkx2;->b:Lkx2;

    if-eqz v0, :cond_2

    check-cast p0, Lyads/yp0;

    .line 165
    iget-object p0, p0, Lyads/yp0;->a:Lyads/oh1;

    .line 166
    iget-object p0, p0, Lyads/oh1;->y:Ljava/util/List;

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    move-object v1, p0

    .line 167
    :goto_0
    invoke-static {v1, p1}, Lyads/f71;->a(Ljava/util/List;Lyads/fs2;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0

    .line 168
    :cond_2
    instance-of p1, p0, Lyads/zp0;

    if-eqz p1, :cond_3

    return-object v1

    .line 169
    :cond_3
    instance-of p1, p0, Lyads/xp0;

    if-eqz p1, :cond_4

    return-object v1

    .line 170
    :cond_4
    instance-of p1, p0, Lyads/jq0;

    if-eqz p1, :cond_5

    return-object v1

    .line 171
    :cond_5
    instance-of p1, p0, Lyads/eq0;

    if-eqz p1, :cond_6

    return-object v1

    .line 172
    :cond_6
    instance-of p1, p0, Lyads/wp0;

    if-eqz p1, :cond_7

    return-object v1

    .line 173
    :cond_7
    instance-of p1, p0, Lyads/cq0;

    if-eqz p1, :cond_8

    return-object v1

    .line 174
    :cond_8
    instance-of p1, p0, Lyads/iq0;

    if-eqz p1, :cond_9

    return-object v1

    .line 175
    :cond_9
    instance-of p1, p0, Lyads/gq0;

    if-eqz p1, :cond_a

    return-object v1

    .line 176
    :cond_a
    instance-of p1, p0, Lyads/vp0;

    if-eqz p1, :cond_b

    return-object v1

    .line 177
    :cond_b
    instance-of p1, p0, Lyads/bq0;

    if-eqz p1, :cond_c

    return-object v1

    .line 178
    :cond_c
    instance-of p1, p0, Lyads/dq0;

    if-eqz p1, :cond_d

    return-object v1

    .line 179
    :cond_d
    instance-of p1, p0, Lyads/aq0;

    if-eqz p1, :cond_e

    return-object v1

    .line 180
    :cond_e
    instance-of p1, p0, Lyads/fq0;

    if-eqz p1, :cond_f

    return-object v1

    .line 181
    :cond_f
    instance-of p1, p0, Lyads/kq0;

    if-eqz p1, :cond_10

    return-object v1

    .line 182
    :cond_10
    instance-of p0, p0, Lyads/hq0;

    if-eqz p0, :cond_11

    return-object v1

    :cond_11
    invoke-static {}, Lme0;->e()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Ljava/util/List;Ljava/util/List;)Z
    .locals 3

    .line 148
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 149
    :cond_0
    invoke-static {p0, p1}, Lqn1;->z0(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object p0

    .line 150
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    .line 151
    :cond_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lb36;

    .line 152
    iget-object v0, p1, Lb36;->b:Ljava/lang/Object;

    .line 153
    check-cast v0, Lyads/cn1;

    .line 154
    iget-object v1, v0, Lyads/cn1;->a:Lyads/br0;

    .line 155
    iget-object p1, p1, Lb36;->c:Ljava/lang/Object;

    .line 156
    check-cast p1, Lyads/cn1;

    .line 157
    iget-object v2, p1, Lyads/cn1;->a:Lyads/br0;

    .line 158
    iget-object v0, v0, Lyads/cn1;->b:Lyads/fs2;

    .line 159
    iget-object p1, p1, Lyads/cn1;->b:Lyads/fs2;

    .line 160
    invoke-static {v1, v2, v0, p1}, Lyads/b81;->a(Lyads/br0;Lyads/br0;Lyads/fs2;Lyads/fs2;)Z

    move-result p1

    if-nez p1, :cond_2

    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_3
    :goto_1
    const/4 p0, 0x1

    return p0
.end method

.method public static a(Lyads/br0;Lyads/br0;Lyads/fs2;Lyads/fs2;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 142
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    :cond_1
    invoke-static {v1, v0}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    return v1

    :cond_2
    const/4 v0, 0x1

    if-eqz p0, :cond_5

    if-eqz p1, :cond_5

    if-ne p0, p1, :cond_3

    goto :goto_1

    .line 143
    :cond_3
    invoke-virtual {p0}, Lyads/br0;->a()Lyads/p41;

    move-result-object v2

    invoke-virtual {p1}, Lyads/br0;->a()Lyads/p41;

    move-result-object v3

    invoke-static {v2, v3, p2, p3}, Lyads/b81;->a(Lyads/p41;Lyads/p41;Lyads/fs2;Lyads/fs2;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 144
    invoke-static {p0, p2}, Lyads/b81;->a(Lyads/br0;Lyads/fs2;)Ljava/util/List;

    move-result-object p0

    invoke-static {p1, p3}, Lyads/b81;->a(Lyads/br0;Lyads/fs2;)Ljava/util/List;

    move-result-object p1

    invoke-static {p0, p1}, Lyads/b81;->a(Ljava/util/List;Ljava/util/List;)Z

    move-result p0

    if-eqz p0, :cond_4

    return v0

    :cond_4
    return v1

    :cond_5
    :goto_1
    return v0
.end method

.method public static a(Lyads/db1;Lyads/db1;JLyads/fs2;Lyads/fs2;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 145
    :cond_0
    iget-object p0, p0, Lyads/db1;->c:Ljava/util/List;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lyads/cb1;

    iget-wide v3, v3, Lyads/cb1;->b:J

    cmp-long v3, v3, p2

    if-nez v3, :cond_1

    goto :goto_0

    :cond_2
    move-object v1, v2

    :goto_0
    check-cast v1, Lyads/cb1;

    .line 146
    iget-object p0, p1, Lyads/db1;->c:Ljava/util/List;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lyads/cb1;

    iget-wide v3, v3, Lyads/cb1;->b:J

    cmp-long v3, v3, p2

    if-nez v3, :cond_3

    move-object v2, p1

    :cond_4
    check-cast v2, Lyads/cb1;

    if-eqz v1, :cond_6

    if-nez v2, :cond_5

    goto :goto_1

    .line 147
    :cond_5
    iget-object p0, v1, Lyads/cb1;->a:Lyads/br0;

    iget-object p1, v2, Lyads/cb1;->a:Lyads/br0;

    invoke-static {p0, p1, p4, p5}, Lyads/b81;->a(Lyads/br0;Lyads/br0;Lyads/fs2;Lyads/fs2;)Z

    move-result p0

    return p0

    :cond_6
    :goto_1
    return v0
.end method

.method public static a(Lyads/p41;Lyads/p41;Lyads/fs2;Lyads/fs2;)Z
    .locals 5

    invoke-interface {p0}, Lyads/p41;->a()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Lyads/p41;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Lyads/p41;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lyads/p41;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {p0}, Lyads/p41;->r()Lyads/s21;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-interface {p0}, Lyads/p41;->A()Lyads/s21;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-interface {p0}, Lyads/p41;->B()Lyads/j61;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lyads/p41;->r()Lyads/s21;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-interface {p1}, Lyads/p41;->A()Lyads/s21;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-interface {p1}, Lyads/p41;->B()Lyads/j61;

    move-result-object v0

    if-eqz v0, :cond_2

    :cond_1
    :goto_0
    return v1

    :cond_2
    instance-of v0, p0, Lyads/ka1;

    if-eqz v0, :cond_3

    instance-of v0, p1, Lyads/ka1;

    if-eqz v0, :cond_3

    move-object v0, p0

    check-cast v0, Lyads/ka1;

    iget-object v0, v0, Lyads/ka1;->j:Ljava/lang/String;

    move-object v2, p1

    check-cast v2, Lyads/ka1;

    iget-object v2, v2, Lyads/ka1;->j:Ljava/lang/String;

    invoke-static {v0, v2}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    return v1

    :cond_3
    instance-of v0, p0, Lyads/j81;

    const/4 v2, 0x1

    if-eqz v0, :cond_7

    instance-of v0, p1, Lyads/j81;

    if-eqz v0, :cond_7

    check-cast p0, Lyads/j81;

    iget-object v0, p0, Lyads/j81;->I:Lyads/as2;

    invoke-virtual {v0, p2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v0

    sget-object v3, Lyads/h81;->g:Lyads/h81;

    if-ne v0, v3, :cond_4

    move v0, v2

    goto :goto_1

    :cond_4
    move v0, v1

    :goto_1
    check-cast p1, Lyads/j81;

    iget-object v4, p1, Lyads/j81;->I:Lyads/as2;

    invoke-virtual {v4, p3}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v3, :cond_5

    move v3, v2

    goto :goto_2

    :cond_5
    move v3, v1

    :goto_2
    if-eq v0, v3, :cond_6

    return v1

    :cond_6
    invoke-static {p0, p2}, Lyads/jf2;->a(Lyads/j81;Lyads/fs2;)Z

    move-result p0

    invoke-static {p1, p3}, Lyads/jf2;->a(Lyads/j81;Lyads/fs2;)Z

    move-result p1

    if-eq p0, p1, :cond_7

    return v1

    :cond_7
    return v2
.end method
