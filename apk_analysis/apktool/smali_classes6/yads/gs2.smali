.class public final Lyads/gs2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/fs2;


# instance fields
.field public final b:Ljava/lang/String;

.field public final c:Lyads/ub5;

.field public final d:Lyads/z66;

.field public final e:Lyads/bp2;

.field public final f:Lyads/ao2;

.field public final g:Ljava/lang/String;

.field public final h:Ljava/util/LinkedHashMap;

.field public final i:Ljava/util/LinkedHashMap;

.field public final j:Ljava/util/LinkedHashMap;

.field public k:Z


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Lyads/ub5;Lyads/b76;Lyads/bp2;Lyads/ao2;)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 37
    invoke-direct/range {v0 .. v6}, Lyads/gs2;-><init>(Ljava/lang/String;Lyads/ub5;Lyads/z66;Lyads/bp2;Lyads/ao2;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lyads/ub5;Lyads/z66;Lyads/bp2;Lyads/ao2;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/gs2;->b:Ljava/lang/String;

    iput-object p2, p0, Lyads/gs2;->c:Lyads/ub5;

    iput-object p3, p0, Lyads/gs2;->d:Lyads/z66;

    iput-object p4, p0, Lyads/gs2;->e:Lyads/bp2;

    iput-object p5, p0, Lyads/gs2;->f:Lyads/ao2;

    iput-object p6, p0, Lyads/gs2;->g:Ljava/lang/String;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lyads/gs2;->h:Ljava/util/LinkedHashMap;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lyads/gs2;->i:Ljava/util/LinkedHashMap;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lyads/gs2;->j:Ljava/util/LinkedHashMap;

    return-void
.end method

.method public static final a(Lyads/gs2;Lyads/u66;)Lj59;
    .locals 3

    .line 138
    iget-object v0, p0, Lyads/gs2;->i:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Lyads/u66;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    if-eqz p1, :cond_0

    invoke-static {p1}, Lqn1;->t0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 139
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 140
    iget-object v2, p0, Lyads/gs2;->h:Ljava/util/LinkedHashMap;

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_3

    .line 141
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 142
    iget-object v1, p0, Lyads/gs2;->j:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyads/gp4;

    if-eqz v0, :cond_2

    .line 143
    invoke-virtual {v0}, Lyads/gp4;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    move-object v1, v0

    check-cast v1, Lyads/fp4;

    invoke-virtual {v1}, Lyads/fp4;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lyads/fp4;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lll3;

    .line 144
    invoke-interface {v1}, Lll3;->invoke()Ljava/lang/Object;

    goto :goto_2

    .line 145
    :cond_3
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public static final a(Lyads/gs2;Ljava/lang/String;Lll3;)V
    .locals 0

    .line 137
    iget-object p0, p0, Lyads/gs2;->j:Ljava/util/LinkedHashMap;

    invoke-virtual {p0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/gp4;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p2}, Lyads/gp4;->b(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Lyads/uo2;Lnl3;Lyads/l66;Lyads/n36;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p2, p3}, Lyads/gs2;->a(Ljava/lang/String;Lyads/uo2;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Lyads/vo2; {:try_start_0 .. :try_end_0} :catch_3

    invoke-interface {p6, p0}, Lyads/n36;->a(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_2

    :cond_0
    if-nez p4, :cond_2

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, p0

    goto :goto_0

    :cond_2
    :try_start_1
    invoke-interface {p4, p0}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    invoke-interface {p6}, Lyads/n36;->a()Ljava/lang/Object;

    move-result-object p3

    instance-of p3, p3, Ljava/lang/String;

    if-eqz p3, :cond_4

    invoke-interface {p6, v0}, Lyads/n36;->a(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_4

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :cond_4
    :goto_1
    if-eqz v0, :cond_6

    move-object p0, v0

    :goto_2
    :try_start_2
    invoke-interface {p5, p0}, Lyads/l66;->a(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_5

    return-object p0

    :cond_5
    invoke-static {p0, p2}, Lyads/gt4;->a(Ljava/lang/Object;Ljava/lang/String;)Lyads/ft4;

    move-result-object p3

    throw p3
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p3

    invoke-static {p1, p2, p0, p3}, Lyads/gt4;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassCastException;)Lyads/ft4;

    move-result-object p0

    throw p0

    :cond_6
    invoke-static {p1, p2, p0}, Lyads/gt4;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lyads/ft4;

    move-result-object p0

    throw p0

    :catch_1
    move-exception p3

    invoke-static {p1, p2, p0, p3}, Lyads/gt4;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Exception;)Lyads/ft4;

    move-result-object p0

    throw p0

    :catch_2
    move-exception p3

    invoke-static {p1, p2, p0, p3}, Lyads/gt4;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassCastException;)Lyads/ft4;

    move-result-object p0

    throw p0

    :catch_3
    move-exception p0

    instance-of p3, p0, Lyads/b94;

    if-eqz p3, :cond_7

    move-object p3, p0

    check-cast p3, Lyads/b94;

    iget-object v0, p3, Lyads/b94;->b:Ljava/lang/String;

    :cond_7
    if-eqz v0, :cond_8

    invoke-static {p1, p2, v0, p0}, Lyads/gt4;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lyads/vo2;)Lyads/ft4;

    move-result-object p0

    throw p0

    :cond_8
    invoke-static {p1, p2, p0}, Lyads/gt4;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Exception;)Lyads/ft4;

    move-result-object p0

    throw p0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Lyads/uo2;Lnl3;Lyads/l66;Lyads/n36;Lyads/et4;)Ljava/lang/Object;
    .locals 3

    .line 107
    :try_start_0
    invoke-virtual/range {p0 .. p6}, Lyads/gs2;->a(Ljava/lang/String;Ljava/lang/String;Lyads/uo2;Lnl3;Lyads/l66;Lyads/n36;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Lyads/ft4; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    .line 108
    iget-object v1, v0, Lyads/ft4;->b:Lyads/ht4;

    .line 109
    sget-object v2, Lyads/ht4;->d:Lyads/ht4;

    if-ne v1, v2, :cond_1

    .line 110
    iget-boolean p0, p0, Lyads/gs2;->k:Z

    if-eqz p0, :cond_0

    .line 111
    sget-object p0, Lyads/gt4;->a:Lyads/ft4;

    .line 112
    throw p0

    .line 113
    :cond_0
    throw v0

    .line 114
    :cond_1
    invoke-interface {p7, v0}, Lyads/et4;->b(Ljava/lang/Exception;)V

    .line 115
    iget-object p7, p0, Lyads/gs2;->f:Lyads/ao2;

    .line 116
    iget-object v1, p7, Lyads/ao2;->b:Ljava/util/ArrayList;

    .line 117
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    invoke-virtual {p7}, Lyads/ao2;->a()V

    .line 119
    invoke-virtual/range {p0 .. p6}, Lyads/gs2;->a(Ljava/lang/String;Ljava/lang/String;Lyads/uo2;Lnl3;Lyads/l66;Lyads/n36;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final a(Ljava/lang/String;Lyads/uo2;)Ljava/lang/Object;
    .locals 4

    .line 121
    iget-object v0, p0, Lyads/gs2;->h:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 122
    :cond_0
    iget-object v0, p0, Lyads/gs2;->e:Lyads/bp2;

    invoke-virtual {v0, p2}, Lyads/bp2;->a(Lyads/uo2;)Ljava/lang/Object;

    move-result-object v0

    .line 123
    invoke-virtual {p2}, Lyads/uo2;->a()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 124
    invoke-virtual {p2}, Lyads/uo2;->d()Ljava/util/List;

    move-result-object p2

    .line 125
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 126
    iget-object v2, p0, Lyads/gs2;->i:Ljava/util/LinkedHashMap;

    .line 127
    invoke-virtual {v2, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    .line 128
    new-instance v3, Ljava/util/LinkedHashSet;

    invoke-direct {v3}, Ljava/util/LinkedHashSet;-><init>()V

    .line 129
    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    :cond_1
    check-cast v3, Ljava/util/Set;

    .line 131
    invoke-interface {v3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 132
    :cond_2
    iget-object p0, p0, Lyads/gs2;->h:Ljava/util/LinkedHashMap;

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-object v0
.end method

.method public final a(ILjava/lang/Object;)Lorg/json/JSONObject;
    .locals 2

    .line 160
    instance-of v0, p2, Lorg/json/JSONObject;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lorg/json/JSONObject;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_1

    .line 161
    iget-object p0, p0, Lyads/gs2;->f:Lyads/ao2;

    invoke-static {p1, p2}, Lyads/gt4;->a(ILjava/lang/Object;)Lyads/ft4;

    move-result-object p1

    .line 162
    iget-object p2, p0, Lyads/ao2;->b:Ljava/util/ArrayList;

    .line 163
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 164
    invoke-virtual {p0}, Lyads/ao2;->a()V

    return-object v1

    :cond_1
    return-object v0
.end method

.method public final a()Lyads/bp2;
    .locals 0

    .line 120
    iget-object p0, p0, Lyads/gs2;->e:Lyads/bp2;

    return-object p0
.end method

.method public final a(Ljava/lang/String;Lyads/z50;)Lyads/gs2;
    .locals 8

    .line 146
    new-instance v3, Lyads/y66;

    iget-object v0, p0, Lyads/gs2;->d:Lyads/z66;

    invoke-direct {v3, v0, p2}, Lyads/y66;-><init>(Lyads/z66;Lyads/z50;)V

    .line 147
    new-instance v0, Lyads/gs2;

    .line 148
    iget-object p2, p0, Lyads/gs2;->b:Ljava/lang/String;

    const-string v1, "/"

    .line 149
    invoke-static {p2, v1, p1}, Lcg;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 150
    iget-object v2, p0, Lyads/gs2;->c:Lyads/ub5;

    .line 151
    new-instance v4, Lyads/bp2;

    .line 152
    new-instance p2, Lyads/yo2;

    .line 153
    iget-object v5, p0, Lyads/gs2;->e:Lyads/bp2;

    invoke-virtual {v5}, Lyads/bp2;->a()Lyads/yo2;

    move-result-object v5

    invoke-virtual {v5}, Lyads/yo2;->b()Lyads/mr5;

    move-result-object v5

    .line 154
    iget-object v6, p0, Lyads/gs2;->e:Lyads/bp2;

    invoke-virtual {v6}, Lyads/bp2;->a()Lyads/yo2;

    move-result-object v6

    invoke-virtual {v6}, Lyads/yo2;->a()Lyads/y13;

    move-result-object v6

    .line 155
    iget-object v7, p0, Lyads/gs2;->e:Lyads/bp2;

    invoke-virtual {v7}, Lyads/bp2;->a()Lyads/yo2;

    move-result-object v7

    invoke-virtual {v7}, Lyads/yo2;->c()Lyads/ij6;

    move-result-object v7

    .line 156
    invoke-direct {p2, v3, v5, v6, v7}, Lyads/yo2;-><init>(Lyads/z66;Lyads/mr5;Lyads/y13;Lyads/ij6;)V

    .line 157
    invoke-direct {v4, p2}, Lyads/bp2;-><init>(Lyads/yo2;)V

    .line 158
    iget-object v5, p0, Lyads/gs2;->f:Lyads/ao2;

    move-object v6, p1

    .line 159
    invoke-direct/range {v0 .. v6}, Lyads/gs2;-><init>(Ljava/lang/String;Lyads/ub5;Lyads/z66;Lyads/bp2;Lyads/ao2;Ljava/lang/String;)V

    return-object v0
.end method

.method public final a(Ljava/lang/String;Ljava/util/List;Lll3;)Lyads/tp0;
    .locals 3

    .line 165
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 166
    iget-object v1, p0, Lyads/gs2;->i:Ljava/util/LinkedHashMap;

    .line 167
    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 168
    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    .line 169
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    :cond_0
    check-cast v2, Ljava/util/Set;

    .line 171
    invoke-interface {v2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 172
    :cond_1
    iget-object p2, p0, Lyads/gs2;->j:Ljava/util/LinkedHashMap;

    .line 173
    invoke-virtual {p2, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    .line 174
    new-instance v0, Lyads/gp4;

    invoke-direct {v0}, Lyads/gp4;-><init>()V

    .line 175
    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    :cond_2
    check-cast v0, Lyads/gp4;

    .line 177
    invoke-virtual {v0, p3}, Lyads/gp4;->a(Ljava/lang/Object;)V

    .line 178
    new-instance p2, Ljw9;

    invoke-direct {p2, p0, p1, p3}, Ljw9;-><init>(Lyads/gs2;Ljava/lang/String;Lll3;)V

    return-object p2
.end method

.method public final a(Lyads/ft4;)V
    .locals 1

    .line 133
    iget-object p0, p0, Lyads/gs2;->f:Lyads/ao2;

    .line 134
    iget-object v0, p0, Lyads/ao2;->b:Ljava/util/ArrayList;

    .line 135
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 136
    invoke-virtual {p0}, Lyads/ao2;->a()V

    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lyads/gs2;->g:Ljava/lang/String;

    return-object p0
.end method

.method public final c()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lyads/gs2;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final d()Lyads/ub5;
    .locals 0

    iget-object p0, p0, Lyads/gs2;->c:Lyads/ub5;

    return-object p0
.end method

.method public final e()Lyads/z66;
    .locals 0

    iget-object p0, p0, Lyads/gs2;->d:Lyads/z66;

    return-object p0
.end method

.method public final f()V
    .locals 3

    iget-object v0, p0, Lyads/gs2;->d:Lyads/z66;

    new-instance v1, Lsi2;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lsi2;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v0, p0, v1}, Lyads/z66;->a(Lyads/gs2;Lnl3;)V

    iget-object p0, p0, Lyads/gs2;->d:Lyads/z66;

    invoke-interface {p0}, Lyads/z66;->c()V

    return-void
.end method
