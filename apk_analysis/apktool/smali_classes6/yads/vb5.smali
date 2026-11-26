.class public final Lyads/vb5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/ub5;


# instance fields
.field public final b:Lyads/os2;

.field public final c:Lyads/ao2;

.field public d:Z

.field public final e:Ljava/util/LinkedHashMap;

.field public final f:Ljava/util/LinkedHashMap;

.field public final g:Lyads/gp4;

.field public final h:Lyads/zb5;

.field public final i:Ljava/util/LinkedHashMap;

.field public final j:Lyads/ms2;


# direct methods
.method public constructor <init>(Lyads/db1;Lyads/os2;Lyads/ao2;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lyads/vb5;->b:Lyads/os2;

    iput-object p3, p0, Lyads/vb5;->c:Lyads/ao2;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lyads/vb5;->e:Ljava/util/LinkedHashMap;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lyads/vb5;->f:Ljava/util/LinkedHashMap;

    new-instance v0, Lyads/gp4;

    invoke-direct {v0}, Lyads/gp4;-><init>()V

    iput-object v0, p0, Lyads/vb5;->g:Lyads/gp4;

    new-instance v0, Lyads/zb5;

    invoke-direct {v0}, Lyads/zb5;-><init>()V

    iput-object v0, p0, Lyads/vb5;->h:Lyads/zb5;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lyads/vb5;->i:Ljava/util/LinkedHashMap;

    invoke-virtual {p2, p1, p3, p0}, Lyads/os2;->a(Lyads/db1;Lyads/ao2;Lyads/vb5;)Lyads/ms2;

    move-result-object p1

    const-string p2, ""

    const/4 p3, 0x0

    invoke-virtual {p0, p1, p2, p3}, Lyads/vb5;->a(Lyads/ms2;Ljava/lang/String;Lyads/ms2;)V

    iput-object p1, p0, Lyads/vb5;->j:Lyads/ms2;

    return-void
.end method

.method public static final a(Lnl3;Lyads/yb5;)Lj59;
    .locals 0

    .line 115
    iget-object p1, p1, Lyads/yb5;->a:Lyads/ms2;

    .line 116
    invoke-interface {p0, p1}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public static a(Lyads/br0;)Z
    .locals 2

    .line 183
    invoke-virtual {p0}, Lyads/br0;->a()Lyads/p41;

    move-result-object p0

    invoke-interface {p0}, Lyads/p41;->s()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    invoke-interface {p0}, Lyads/p41;->i()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    invoke-interface {p0}, Lyads/p41;->o()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    move p0, v1

    :goto_1
    xor-int/2addr p0, v1

    return p0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lyads/fs2;Lll3;)Lyads/fs2;
    .locals 2

    .line 176
    iget-object v0, p0, Lyads/vb5;->i:Ljava/util/LinkedHashMap;

    .line 177
    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 178
    invoke-interface {p3}, Lll3;->invoke()Ljava/lang/Object;

    move-result-object p3

    move-object v1, p3

    check-cast v1, Lyads/fs2;

    .line 179
    iget-object p3, p0, Lyads/vb5;->e:Ljava/util/LinkedHashMap;

    invoke-virtual {p3, p2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lyads/ms2;

    if-eqz p2, :cond_0

    .line 180
    iget-object p0, p0, Lyads/vb5;->e:Ljava/util/LinkedHashMap;

    invoke-interface {p0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    :cond_0
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    :cond_1
    check-cast v1, Lyads/fs2;

    return-object v1
.end method

.method public final a()Lyads/ms2;
    .locals 0

    .line 134
    iget-object p0, p0, Lyads/vb5;->j:Lyads/ms2;

    return-object p0
.end method

.method public final a(Lyads/fs2;)Lyads/ms2;
    .locals 0

    .line 135
    iget-object p0, p0, Lyads/vb5;->e:Ljava/util/LinkedHashMap;

    invoke-virtual {p0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/ms2;

    return-object p0
.end method

.method public final a(Lyads/n32;Lyads/br0;Lyads/fs2;)Lyads/ms2;
    .locals 4

    .line 118
    iget-object v0, p1, Lyads/n32;->e:Lcl4;

    .line 119
    invoke-interface {v0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 120
    iget-object v1, p0, Lyads/vb5;->f:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyads/ms2;

    if-eqz v1, :cond_0

    return-object v1

    .line 121
    :cond_0
    instance-of v1, p3, Lyads/gs2;

    if-nez v1, :cond_1

    .line 122
    iget-object p0, p0, Lyads/vb5;->j:Lyads/ms2;

    return-object p0

    .line 123
    :cond_1
    iget-object v1, p0, Lyads/vb5;->e:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyads/ms2;

    if-nez v1, :cond_2

    .line 124
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object p1

    const/4 p2, 0x1

    invoke-static {p1, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    const-string p2, "Parent runtime for path \'%s\' is not stored."

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 125
    iget-object p2, p0, Lyads/vb5;->c:Lyads/ao2;

    new-instance p3, Ljava/lang/AssertionError;

    invoke-direct {p3, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 126
    iget-object p1, p2, Lyads/ao2;->b:Ljava/util/ArrayList;

    .line 127
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    invoke-virtual {p2}, Lyads/ao2;->a()V

    .line 129
    iget-object p0, p0, Lyads/vb5;->j:Lyads/ms2;

    return-object p0

    .line 130
    :cond_2
    invoke-static {p2}, Lyads/vb5;->a(Lyads/br0;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 131
    iget-object p0, p0, Lyads/vb5;->f:Ljava/util/LinkedHashMap;

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1

    .line 132
    :cond_3
    iget-object v2, p0, Lyads/vb5;->b:Lyads/os2;

    invoke-virtual {p2}, Lyads/br0;->a()Lyads/p41;

    move-result-object p2

    check-cast p3, Lyads/gs2;

    iget-object v3, p0, Lyads/vb5;->c:Lyads/ao2;

    invoke-virtual {v2, p1, p2, p3, v3}, Lyads/os2;->a(Lyads/n32;Lyads/p41;Lyads/gs2;Lyads/ao2;)Lyads/ms2;

    move-result-object p1

    .line 133
    invoke-virtual {p0, p1, v0, v1}, Lyads/vb5;->a(Lyads/ms2;Ljava/lang/String;Lyads/ms2;)V

    return-object p1
.end method

.method public final a(Lyads/n32;Lyads/br0;Lyads/fs2;Lyads/fs2;)Lyads/ms2;
    .locals 4

    iget-object v0, p1, Lyads/n32;->e:Lcl4;

    invoke-interface {v0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lyads/vb5;->f:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyads/ms2;

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    instance-of v1, p3, Lyads/gs2;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return-object v2

    :cond_1
    iget-object v1, p0, Lyads/vb5;->e:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyads/ms2;

    if-nez v1, :cond_2

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object p1

    const/4 p2, 0x1

    invoke-static {p1, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    const-string p2, "Parent runtime for path \'%s\' is not stored."

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lyads/vb5;->c:Lyads/ao2;

    new-instance p2, Ljava/lang/AssertionError;

    invoke-direct {p2, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    iget-object p1, p0, Lyads/ao2;->b:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lyads/ao2;->a()V

    return-object v2

    :cond_2
    invoke-static {p2}, Lyads/vb5;->a(Lyads/br0;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object p4, p0, Lyads/vb5;->b:Lyads/os2;

    invoke-virtual {p2}, Lyads/br0;->a()Lyads/p41;

    move-result-object p2

    check-cast p3, Lyads/gs2;

    iget-object v2, p0, Lyads/vb5;->c:Lyads/ao2;

    invoke-virtual {p4, p1, p2, p3, v2}, Lyads/os2;->a(Lyads/n32;Lyads/p41;Lyads/gs2;Lyads/ao2;)Lyads/ms2;

    move-result-object p1

    invoke-virtual {p0, p1, v0, v1}, Lyads/vb5;->a(Lyads/ms2;Ljava/lang/String;Lyads/ms2;)V

    return-object p1

    :cond_3
    if-eq p3, p4, :cond_4

    new-instance p1, Lyads/ms2;

    check-cast p3, Lyads/gs2;

    invoke-direct {p1, p3, v2}, Lyads/ms2;-><init>(Lyads/gs2;Lyads/d26;)V

    invoke-virtual {p0, p1, v0, v1}, Lyads/vb5;->a(Lyads/ms2;Ljava/lang/String;Lyads/ms2;)V

    return-object p1

    :cond_4
    iget-object p0, p0, Lyads/vb5;->f:Ljava/util/LinkedHashMap;

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method

.method public final a(Lyads/ms2;Ljava/lang/String;Lyads/ms2;)V
    .locals 2

    .line 136
    iget-object v0, p0, Lyads/vb5;->f:Ljava/util/LinkedHashMap;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    iget-object v0, p0, Lyads/vb5;->e:Ljava/util/LinkedHashMap;

    .line 138
    iget-object v1, p1, Lyads/ms2;->a:Lyads/gs2;

    .line 139
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    iget-object v0, p0, Lyads/vb5;->g:Lyads/gp4;

    invoke-virtual {v0, p1}, Lyads/gp4;->a(Ljava/lang/Object;)V

    .line 141
    iget-object p0, p0, Lyads/vb5;->h:Lyads/zb5;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 142
    new-instance v0, Lyads/yb5;

    invoke-direct {v0, p1, p2}, Lyads/yb5;-><init>(Lyads/ms2;Ljava/lang/String;)V

    .line 143
    iget-object v1, p0, Lyads/zb5;->b:Ljava/util/LinkedHashMap;

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    iget-object p2, p0, Lyads/zb5;->a:Ljava/util/LinkedHashMap;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p3, :cond_0

    .line 145
    iget-object p0, p0, Lyads/zb5;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {p0, p3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/yb5;

    if-eqz p0, :cond_0

    .line 146
    iget-object p0, p0, Lyads/yb5;->c:Ljava/util/ArrayList;

    if-eqz p0, :cond_0

    .line 147
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    :cond_0
    iget-boolean p0, p1, Lyads/ms2;->c:Z

    if-eqz p0, :cond_1

    const/4 p0, 0x0

    .line 149
    iput-boolean p0, p1, Lyads/ms2;->c:Z

    .line 150
    iget-object p0, p1, Lyads/ms2;->a:Lyads/gs2;

    invoke-virtual {p0}, Lyads/gs2;->f()V

    :cond_1
    return-void
.end method

.method public final a(Lyads/ms2;Lyads/n32;Lnl3;)V
    .locals 2

    .line 162
    iget-object p0, p0, Lyads/vb5;->h:Lyads/zb5;

    .line 163
    iget-object p2, p2, Lyads/n32;->e:Lcl4;

    .line 164
    invoke-interface {p2}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 165
    new-instance v0, Lzh;

    const/4 v1, 0x6

    invoke-direct {v0, p3, v1}, Lzh;-><init>(Ljava/lang/Object;I)V

    .line 166
    iget-object p0, p0, Lyads/zb5;->a:Ljava/util/LinkedHashMap;

    .line 167
    invoke-virtual {p0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/yb5;

    if-nez p0, :cond_0

    goto :goto_1

    .line 168
    :cond_0
    iget-object p1, p0, Lyads/yb5;->b:Ljava/lang/String;

    const/4 p3, 0x0

    .line 169
    invoke-static {p1, p2, p3}, Lra8;->C(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 170
    invoke-static {v0, p0}, Lyads/zb5;->a(Lnl3;Lyads/yb5;)V

    return-void

    .line 171
    :cond_1
    iget-object p0, p0, Lyads/yb5;->c:Ljava/util/ArrayList;

    .line 172
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lyads/yb5;

    .line 173
    iget-object v1, p1, Lyads/yb5;->b:Ljava/lang/String;

    .line 174
    invoke-static {v1, p2, p3}, Lra8;->C(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 175
    invoke-static {v0, p1}, Lyads/zb5;->a(Lnl3;Lyads/yb5;)V

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method public final a(Lyads/p41;)V
    .locals 1

    .line 109
    iget-boolean v0, p0, Lyads/vb5;->d:Z

    if-nez v0, :cond_0

    invoke-interface {p1}, Lyads/p41;->s()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 110
    iput-boolean p1, p0, Lyads/vb5;->d:Z

    .line 111
    iget-object p0, p0, Lyads/vb5;->c:Lyads/ao2;

    new-instance p1, Ljava/lang/Throwable;

    const-string v0, "You are using local variables. Please ensure that all elements that use local variables and all of their parents recursively have an \'id\' attribute."

    invoke-direct {p1, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Lyads/ao2;->d:Ljava/util/ArrayList;

    .line 113
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    invoke-virtual {p0}, Lyads/ao2;->a()V

    :cond_0
    return-void
.end method

.method public final a(Lyads/vq0;)V
    .locals 2

    const/4 v0, 0x0

    .line 151
    iput-boolean v0, p0, Lyads/vb5;->d:Z

    .line 152
    iget-object p0, p0, Lyads/vb5;->g:Lyads/gp4;

    .line 153
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 154
    new-instance v0, Lyads/fp4;

    invoke-direct {v0, p0}, Lyads/fp4;-><init>(Lyads/gp4;)V

    .line 155
    :cond_0
    :goto_0
    invoke-virtual {v0}, Lyads/fp4;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-virtual {v0}, Lyads/fp4;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/ms2;

    .line 156
    iget-boolean v1, p0, Lyads/ms2;->c:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 157
    iput-boolean v1, p0, Lyads/ms2;->c:Z

    .line 158
    iget-object v1, p0, Lyads/ms2;->b:Lyads/d26;

    if-eqz v1, :cond_1

    invoke-virtual {v1, p1}, Lyads/d26;->a(Lyads/vq0;)V

    .line 159
    :cond_1
    iget-object p0, p0, Lyads/ms2;->a:Lyads/gs2;

    .line 160
    iget-object p0, p0, Lyads/gs2;->d:Lyads/z66;

    .line 161
    invoke-interface {p0}, Lyads/z66;->a()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final b()V
    .locals 2

    .line 95
    iget-object p0, p0, Lyads/vb5;->g:Lyads/gp4;

    .line 96
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 97
    new-instance v0, Lyads/fp4;

    invoke-direct {v0, p0}, Lyads/fp4;-><init>(Lyads/gp4;)V

    .line 98
    :cond_0
    :goto_0
    invoke-virtual {v0}, Lyads/fp4;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {v0}, Lyads/fp4;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/ms2;

    .line 99
    iget-boolean v1, p0, Lyads/ms2;->c:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 100
    iput-boolean v1, p0, Lyads/ms2;->c:Z

    .line 101
    iget-object p0, p0, Lyads/ms2;->a:Lyads/gs2;

    invoke-virtual {p0}, Lyads/gs2;->f()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final b(Lyads/vq0;)V
    .locals 4

    iget-object p0, p0, Lyads/vb5;->g:Lyads/gp4;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lyads/fp4;

    invoke-direct {v0, p0}, Lyads/fp4;-><init>(Lyads/gp4;)V

    :cond_0
    invoke-virtual {v0}, Lyads/fp4;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-virtual {v0}, Lyads/fp4;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/ms2;

    iget-object p0, p0, Lyads/ms2;->b:Lyads/d26;

    if-eqz p0, :cond_0

    iget-object v1, p0, Lyads/d26;->e:Lyads/vq0;

    invoke-static {v1, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    iput-object v1, p0, Lyads/d26;->e:Lyads/vq0;

    :cond_1
    iget-object p0, p0, Lyads/d26;->d:Ljava/util/LinkedHashMap;

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lyads/c26;

    iget-object v3, v2, Lyads/c26;->n:Ljava/util/LinkedHashSet;

    invoke-static {v3}, Lv39;->a(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Lyads/c26;->a()V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final c()Ljava/util/Map;
    .locals 4

    iget-object p0, p0, Lyads/vb5;->h:Lyads/zb5;

    iget-object p0, p0, Lyads/zb5;->b:Ljava/util/LinkedHashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyads/yb5;

    iget-object v1, v1, Lyads/yb5;->a:Lyads/ms2;

    new-instance v3, Lb36;

    invoke-direct {v3, v2, v1}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ln05;->k(Ljava/lang/Iterable;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public final c(Lyads/vq0;)V
    .locals 1

    .line 59
    iget-object p0, p0, Lyads/vb5;->g:Lyads/gp4;

    .line 60
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    new-instance v0, Lyads/fp4;

    invoke-direct {v0, p0}, Lyads/fp4;-><init>(Lyads/gp4;)V

    .line 62
    :cond_0
    :goto_0
    invoke-virtual {v0}, Lyads/fp4;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {v0}, Lyads/fp4;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/ms2;

    .line 63
    iget-object p0, p0, Lyads/ms2;->b:Lyads/d26;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lyads/d26;->a(Lyads/vq0;)V

    goto :goto_0

    :cond_1
    return-void
.end method
