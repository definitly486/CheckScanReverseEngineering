.class public final Lio/appmetrica/analytics/impl/I4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/Sa;
.implements Lio/appmetrica/analytics/impl/gm;
.implements Lio/appmetrica/analytics/impl/Ua;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lio/appmetrica/analytics/impl/b5;

.field public final c:Lio/appmetrica/analytics/impl/Qm;

.field public final d:Lio/appmetrica/analytics/impl/Gh;

.field public final e:Lio/appmetrica/analytics/impl/P4;

.field public final f:Lio/appmetrica/analytics/impl/xn;

.field public g:Ljava/util/ArrayList;

.field public final h:Lio/appmetrica/analytics/impl/c5;

.field public final i:Lio/appmetrica/analytics/impl/h4;

.field public final j:Lio/appmetrica/analytics/impl/sg;

.field public final k:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/Xl;Lio/appmetrica/analytics/impl/b5;Lio/appmetrica/analytics/impl/B4;)V
    .locals 8

    .line 83
    new-instance v5, Lio/appmetrica/analytics/impl/Gh;

    iget-object v0, p4, Lio/appmetrica/analytics/impl/B4;->b:Lio/appmetrica/analytics/impl/A4;

    invoke-direct {v5, v0}, Lio/appmetrica/analytics/impl/Gh;-><init>(Lio/appmetrica/analytics/impl/A4;)V

    new-instance v6, Lio/appmetrica/analytics/impl/c5;

    invoke-direct {v6}, Lio/appmetrica/analytics/impl/c5;-><init>()V

    new-instance v7, Lio/appmetrica/analytics/impl/K4;

    invoke-direct {v7}, Lio/appmetrica/analytics/impl/K4;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v7}, Lio/appmetrica/analytics/impl/I4;-><init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/Xl;Lio/appmetrica/analytics/impl/b5;Lio/appmetrica/analytics/impl/B4;Lio/appmetrica/analytics/impl/Gh;Lio/appmetrica/analytics/impl/c5;Lio/appmetrica/analytics/impl/K4;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/Xl;Lio/appmetrica/analytics/impl/b5;Lio/appmetrica/analytics/impl/B4;Lio/appmetrica/analytics/impl/Gh;Lio/appmetrica/analytics/impl/c5;Lio/appmetrica/analytics/impl/K4;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/I4;->g:Ljava/util/ArrayList;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/I4;->k:Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lio/appmetrica/analytics/impl/I4;->a:Landroid/content/Context;

    iput-object p3, p0, Lio/appmetrica/analytics/impl/I4;->b:Lio/appmetrica/analytics/impl/b5;

    iput-object p5, p0, Lio/appmetrica/analytics/impl/I4;->d:Lio/appmetrica/analytics/impl/Gh;

    iput-object p6, p0, Lio/appmetrica/analytics/impl/I4;->h:Lio/appmetrica/analytics/impl/c5;

    invoke-static {p0}, Lio/appmetrica/analytics/impl/K4;->a(Lio/appmetrica/analytics/impl/I4;)Lio/appmetrica/analytics/impl/P4;

    move-result-object p5

    iput-object p5, p0, Lio/appmetrica/analytics/impl/I4;->e:Lio/appmetrica/analytics/impl/P4;

    invoke-static {p4}, Lio/appmetrica/analytics/impl/I4;->b(Lio/appmetrica/analytics/impl/B4;)V

    iget-object p4, p4, Lio/appmetrica/analytics/impl/B4;->a:Lio/appmetrica/analytics/impl/pm;

    invoke-virtual {p2, p1, p3, p4}, Lio/appmetrica/analytics/impl/Xl;->a(Landroid/content/Context;Lio/appmetrica/analytics/impl/b5;Lio/appmetrica/analytics/impl/pm;)Lio/appmetrica/analytics/impl/Qm;

    move-result-object p1

    iput-object p1, p0, Lio/appmetrica/analytics/impl/I4;->c:Lio/appmetrica/analytics/impl/Qm;

    invoke-static {}, Lio/appmetrica/analytics/impl/Fa;->k()Lio/appmetrica/analytics/impl/Fa;

    move-result-object p4

    invoke-virtual {p4}, Lio/appmetrica/analytics/impl/Fa;->c()Lio/appmetrica/analytics/impl/X;

    move-result-object p4

    invoke-static {p1, p4}, Lio/appmetrica/analytics/impl/i4;->a(Lio/appmetrica/analytics/impl/Qm;Lio/appmetrica/analytics/impl/X;)Lio/appmetrica/analytics/impl/h4;

    move-result-object p4

    iput-object p4, p0, Lio/appmetrica/analytics/impl/I4;->i:Lio/appmetrica/analytics/impl/h4;

    invoke-virtual {p7, p0, p1}, Lio/appmetrica/analytics/impl/K4;->a(Lio/appmetrica/analytics/impl/I4;Lio/appmetrica/analytics/impl/Qm;)Lio/appmetrica/analytics/impl/xn;

    move-result-object p1

    iput-object p1, p0, Lio/appmetrica/analytics/impl/I4;->f:Lio/appmetrica/analytics/impl/xn;

    invoke-static {}, Lio/appmetrica/analytics/impl/Fa;->k()Lio/appmetrica/analytics/impl/Fa;

    move-result-object p1

    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/Fa;->u()Lio/appmetrica/analytics/impl/sg;

    move-result-object p1

    iput-object p1, p0, Lio/appmetrica/analytics/impl/I4;->j:Lio/appmetrica/analytics/impl/sg;

    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/sg;->a()V

    invoke-virtual {p2, p3, p0}, Lio/appmetrica/analytics/impl/Xl;->a(Lio/appmetrica/analytics/impl/b5;Lio/appmetrica/analytics/impl/gm;)V

    return-void
.end method

.method public static synthetic a(Landroid/os/ResultReceiver;Lio/appmetrica/analytics/impl/yg;)V
    .locals 0

    .line 168
    invoke-interface {p1}, Lio/appmetrica/analytics/impl/yg;->a()Lio/appmetrica/analytics/impl/og;

    move-result-object p1

    invoke-static {p0, p1}, Lio/appmetrica/analytics/impl/zg;->a(Landroid/os/ResultReceiver;Lio/appmetrica/analytics/impl/og;)V

    return-void
.end method

.method public static b(Lio/appmetrica/analytics/impl/B4;)V
    .locals 1

    iget-object p0, p0, Lio/appmetrica/analytics/impl/B4;->b:Lio/appmetrica/analytics/impl/A4;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/A4;->n:Ljava/lang/Boolean;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, p0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    sget-object v0, Lio/appmetrica/analytics/impl/Fa;->I:Lio/appmetrica/analytics/impl/Fa;

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/Fa;->c()Lio/appmetrica/analytics/impl/X;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/appmetrica/analytics/impl/X;->b(Z)V

    return-void
.end method


# virtual methods
.method public final a()Lio/appmetrica/analytics/impl/b5;
    .locals 0

    .line 134
    iget-object p0, p0, Lio/appmetrica/analytics/impl/I4;->b:Lio/appmetrica/analytics/impl/b5;

    return-object p0
.end method

.method public final a(Landroid/os/ResultReceiver;)V
    .locals 1

    .line 165
    iget-object p0, p0, Lio/appmetrica/analytics/impl/I4;->j:Lio/appmetrica/analytics/impl/sg;

    new-instance v0, Lmz3;

    invoke-direct {v0, p1}, Lmz3;-><init>(Landroid/os/ResultReceiver;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 166
    new-instance p1, Lio/appmetrica/analytics/impl/dj;

    invoke-direct {p1, v0}, Lio/appmetrica/analytics/impl/dj;-><init>(Lio/appmetrica/analytics/impl/qg;)V

    .line 167
    iget-object p0, p0, Lio/appmetrica/analytics/impl/sg;->a:Lio/appmetrica/analytics/impl/ug;

    invoke-interface {p0, p1}, Lio/appmetrica/analytics/impl/ug;->a(Lio/appmetrica/analytics/impl/qg;)V

    return-void
.end method

.method public final a(Lio/appmetrica/analytics/impl/A4;)V
    .locals 1

    .line 145
    iget-object p0, p0, Lio/appmetrica/analytics/impl/I4;->d:Lio/appmetrica/analytics/impl/Gh;

    .line 146
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Gh;->a:Lio/appmetrica/analytics/impl/A4;

    .line 147
    invoke-virtual {v0, p1}, Lio/appmetrica/analytics/impl/A4;->b(Lio/appmetrica/analytics/impl/A4;)Lio/appmetrica/analytics/impl/A4;

    move-result-object p1

    iput-object p1, p0, Lio/appmetrica/analytics/impl/Gh;->a:Lio/appmetrica/analytics/impl/A4;

    return-void
.end method

.method public final a(Lio/appmetrica/analytics/impl/B4;)V
    .locals 2

    .line 169
    iget-object v0, p0, Lio/appmetrica/analytics/impl/I4;->c:Lio/appmetrica/analytics/impl/Qm;

    iget-object v1, p1, Lio/appmetrica/analytics/impl/B4;->a:Lio/appmetrica/analytics/impl/pm;

    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/impl/Qm;->a(Lio/appmetrica/analytics/impl/pm;)V

    .line 170
    iget-object p1, p1, Lio/appmetrica/analytics/impl/B4;->b:Lio/appmetrica/analytics/impl/A4;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/I4;->a(Lio/appmetrica/analytics/impl/A4;)V

    return-void
.end method

.method public final declared-synchronized a(Lio/appmetrica/analytics/impl/G4;)V
    .locals 2

    monitor-enter p0

    .line 121
    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/I4;->h:Lio/appmetrica/analytics/impl/c5;

    .line 122
    iget-object v0, v0, Lio/appmetrica/analytics/impl/c5;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 123
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    iget-object v0, p0, Lio/appmetrica/analytics/impl/I4;->c:Lio/appmetrica/analytics/impl/Qm;

    .line 125
    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/Qm;->e()Lio/appmetrica/analytics/impl/vm;

    move-result-object v0

    .line 126
    iget-object v0, v0, Lio/appmetrica/analytics/impl/vm;->l:Ljava/lang/String;

    .line 127
    invoke-static {v0}, Lio/appmetrica/analytics/impl/Vm;->a(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 128
    iget-object v1, p0, Lio/appmetrica/analytics/impl/I4;->i:Lio/appmetrica/analytics/impl/h4;

    .line 129
    invoke-virtual {v1, v0}, Lio/appmetrica/analytics/impl/h4;->a(Ljava/util/HashMap;)Lio/appmetrica/analytics/impl/g4;

    move-result-object v0

    .line 130
    iget-object p1, p1, Lio/appmetrica/analytics/impl/G4;->c:Landroid/os/ResultReceiver;

    .line 131
    invoke-static {p1, v0}, Lio/appmetrica/analytics/impl/P6;->a(Landroid/os/ResultReceiver;Lio/appmetrica/analytics/impl/g4;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final a(Lio/appmetrica/analytics/impl/Zl;Lio/appmetrica/analytics/impl/vm;)V
    .locals 4

    .line 135
    iget-object p2, p0, Lio/appmetrica/analytics/impl/I4;->k:Ljava/lang/Object;

    monitor-enter p2

    .line 136
    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/I4;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/appmetrica/analytics/impl/ib;

    .line 137
    iget-object v2, v1, Lio/appmetrica/analytics/impl/ib;->a:Landroid/os/ResultReceiver;

    .line 138
    iget-object v3, p0, Lio/appmetrica/analytics/impl/I4;->i:Lio/appmetrica/analytics/impl/h4;

    .line 139
    iget-object v1, v1, Lio/appmetrica/analytics/impl/ib;->c:Ljava/util/HashMap;

    .line 140
    invoke-virtual {v3, v1}, Lio/appmetrica/analytics/impl/h4;->a(Ljava/util/HashMap;)Lio/appmetrica/analytics/impl/g4;

    move-result-object v1

    .line 141
    invoke-static {v2, p1, v1}, Lio/appmetrica/analytics/impl/P6;->a(Landroid/os/ResultReceiver;Lio/appmetrica/analytics/impl/Zl;Lio/appmetrica/analytics/impl/g4;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 142
    :cond_0
    iget-object p0, p0, Lio/appmetrica/analytics/impl/I4;->g:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 143
    monitor-exit p2

    return-void

    .line 144
    :goto_1
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final a(Lio/appmetrica/analytics/impl/a6;Lio/appmetrica/analytics/impl/G4;)V
    .locals 1

    .line 132
    iget-object p0, p0, Lio/appmetrica/analytics/impl/I4;->e:Lio/appmetrica/analytics/impl/P4;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 133
    new-instance v0, Lio/appmetrica/analytics/impl/O4;

    invoke-direct {v0, p2}, Lio/appmetrica/analytics/impl/O4;-><init>(Lio/appmetrica/analytics/impl/G4;)V

    invoke-virtual {p0, p1, v0}, Lio/appmetrica/analytics/impl/T2;->a(Lio/appmetrica/analytics/impl/a6;Lio/appmetrica/analytics/impl/S2;)Z

    return-void
.end method

.method public final a(Lio/appmetrica/analytics/impl/ib;)V
    .locals 4

    .line 148
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p1, :cond_0

    .line 149
    iget-object v0, p1, Lio/appmetrica/analytics/impl/ib;->b:Ljava/util/List;

    .line 150
    iget-object v1, p1, Lio/appmetrica/analytics/impl/ib;->a:Landroid/os/ResultReceiver;

    .line 151
    iget-object v2, p1, Lio/appmetrica/analytics/impl/ib;->c:Ljava/util/HashMap;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    move-object v2, v0

    move-object v0, v1

    .line 152
    :goto_0
    iget-object v3, p0, Lio/appmetrica/analytics/impl/I4;->c:Lio/appmetrica/analytics/impl/Qm;

    invoke-virtual {v3, v0, v2}, Lio/appmetrica/analytics/impl/Qm;->a(Ljava/util/List;Ljava/util/Map;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 153
    iget-object v3, p0, Lio/appmetrica/analytics/impl/I4;->i:Lio/appmetrica/analytics/impl/h4;

    .line 154
    invoke-virtual {v3, v2}, Lio/appmetrica/analytics/impl/h4;->a(Ljava/util/HashMap;)Lio/appmetrica/analytics/impl/g4;

    move-result-object v3

    .line 155
    invoke-static {v1, v3}, Lio/appmetrica/analytics/impl/P6;->a(Landroid/os/ResultReceiver;Lio/appmetrica/analytics/impl/g4;)V

    .line 156
    :cond_1
    iget-object v3, p0, Lio/appmetrica/analytics/impl/I4;->c:Lio/appmetrica/analytics/impl/Qm;

    invoke-virtual {v3}, Lio/appmetrica/analytics/impl/Qm;->g()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 157
    iget-object v3, p0, Lio/appmetrica/analytics/impl/I4;->k:Ljava/lang/Object;

    monitor-enter v3

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    .line 158
    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/I4;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 159
    :cond_2
    :goto_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    iget-object p0, p0, Lio/appmetrica/analytics/impl/I4;->f:Lio/appmetrica/analytics/impl/xn;

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/xn;->c()V

    return-void

    .line 161
    :goto_2
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_3
    if-eqz v0, :cond_4

    .line 162
    iget-object p0, p0, Lio/appmetrica/analytics/impl/I4;->i:Lio/appmetrica/analytics/impl/h4;

    .line 163
    invoke-virtual {p0, v2}, Lio/appmetrica/analytics/impl/h4;->a(Ljava/util/HashMap;)Lio/appmetrica/analytics/impl/g4;

    move-result-object p0

    .line 164
    invoke-static {v1, p0}, Lio/appmetrica/analytics/impl/P6;->a(Landroid/os/ResultReceiver;Lio/appmetrica/analytics/impl/g4;)V

    :cond_4
    return-void
.end method

.method public final a(Lio/appmetrica/analytics/impl/vm;)V
    .locals 7

    iget-object v0, p0, Lio/appmetrica/analytics/impl/I4;->k:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lio/appmetrica/analytics/impl/I4;->h:Lio/appmetrica/analytics/impl/c5;

    iget-object v1, v1, Lio/appmetrica/analytics/impl/c5;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/appmetrica/analytics/impl/G4;

    iget-object v3, p1, Lio/appmetrica/analytics/impl/vm;->l:Ljava/lang/String;

    invoke-static {v3}, Lio/appmetrica/analytics/impl/Vm;->a(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v3

    iget-object v4, p0, Lio/appmetrica/analytics/impl/I4;->i:Lio/appmetrica/analytics/impl/h4;

    invoke-virtual {v4, v3}, Lio/appmetrica/analytics/impl/h4;->a(Ljava/util/HashMap;)Lio/appmetrica/analytics/impl/g4;

    move-result-object v3

    iget-object v2, v2, Lio/appmetrica/analytics/impl/G4;->c:Landroid/os/ResultReceiver;

    invoke-static {v2, v3}, Lio/appmetrica/analytics/impl/P6;->a(Landroid/os/ResultReceiver;Lio/appmetrica/analytics/impl/g4;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lio/appmetrica/analytics/impl/I4;->g:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/appmetrica/analytics/impl/ib;

    iget-object v4, v3, Lio/appmetrica/analytics/impl/ib;->b:Ljava/util/List;

    iget-object v5, v3, Lio/appmetrica/analytics/impl/ib;->c:Ljava/util/HashMap;

    new-instance v6, Lio/appmetrica/analytics/impl/gb;

    invoke-direct {v6}, Lio/appmetrica/analytics/impl/gb;-><init>()V

    invoke-static {p1, v4, v5, v6}, Lio/appmetrica/analytics/impl/sm;->a(Lio/appmetrica/analytics/impl/vm;Ljava/util/Collection;Ljava/util/Map;Lll3;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, v3, Lio/appmetrica/analytics/impl/ib;->a:Landroid/os/ResultReceiver;

    iget-object v3, v3, Lio/appmetrica/analytics/impl/ib;->c:Ljava/util/HashMap;

    iget-object v5, p0, Lio/appmetrica/analytics/impl/I4;->i:Lio/appmetrica/analytics/impl/h4;

    invoke-virtual {v5, v3}, Lio/appmetrica/analytics/impl/h4;->a(Ljava/util/HashMap;)Lio/appmetrica/analytics/impl/g4;

    move-result-object v3

    invoke-static {v4, v3}, Lio/appmetrica/analytics/impl/P6;->a(Landroid/os/ResultReceiver;Lio/appmetrica/analytics/impl/g4;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/I4;->g:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p0, p0, Lio/appmetrica/analytics/impl/I4;->f:Lio/appmetrica/analytics/impl/xn;

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/xn;->c()V

    :cond_3
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final b()Lio/appmetrica/analytics/internal/CounterConfigurationReporterType;
    .locals 0

    .line 22
    sget-object p0, Lio/appmetrica/analytics/internal/CounterConfigurationReporterType;->COMMUTATION:Lio/appmetrica/analytics/internal/CounterConfigurationReporterType;

    return-object p0
.end method

.method public final declared-synchronized b(Lio/appmetrica/analytics/impl/G4;)V
    .locals 1

    monitor-enter p0

    .line 23
    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/I4;->h:Lio/appmetrica/analytics/impl/c5;

    .line 24
    iget-object v0, v0, Lio/appmetrica/analytics/impl/c5;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 25
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final c()V
    .locals 0

    return-void
.end method

.method public final d()Lio/appmetrica/analytics/impl/h4;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/I4;->i:Lio/appmetrica/analytics/impl/h4;

    return-object p0
.end method

.method public final e()Lio/appmetrica/analytics/impl/A4;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/I4;->d:Lio/appmetrica/analytics/impl/Gh;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Gh;->a:Lio/appmetrica/analytics/impl/A4;

    return-object p0
.end method

.method public final getContext()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/I4;->a:Landroid/content/Context;

    return-object p0
.end method
