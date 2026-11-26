.class public final Lyads/zz4;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyg5;

.field public final b:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lch5;

    invoke-direct {v0}, Lch5;-><init>()V

    iput-object v0, p0, Lyads/zz4;->a:Lyg5;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lyads/zz4;->b:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final a(Lf02;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p1, Lyads/yz4;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lyads/yz4;

    iget v1, v0, Lyads/yz4;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lyads/yz4;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Lyads/yz4;

    invoke-direct {v0, p0, p1}, Lyads/yz4;-><init>(Lyads/zz4;Lf02;)V

    :goto_0
    iget-object p1, v0, Lyads/yz4;->c:Ljava/lang/Object;

    .line 127
    sget-object v1, La32;->COROUTINE_SUSPENDED:La32;

    .line 128
    iget v2, v0, Lyads/yz4;->e:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object v0, v0, Lyads/yz4;->b:Lyg5;

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v4

    :cond_2
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lyads/zz4;->a:Lyg5;

    .line 129
    iput-object p1, v0, Lyads/yz4;->b:Lyg5;

    iput v3, v0, Lyads/yz4;->e:I

    invoke-interface {p1, v4, v0}, Lyg5;->lock(Ljava/lang/Object;Le02;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_3

    return-object v1

    :cond_3
    move-object v0, p1

    .line 130
    :goto_1
    :try_start_0
    invoke-virtual {p0}, Lyads/zz4;->a()V

    .line 131
    iget-object p0, p0, Lyads/zz4;->b:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/4 p1, 0x5

    if-ge p0, p1, :cond_4

    goto :goto_2

    :cond_4
    const/4 v3, 0x0

    .line 132
    :goto_2
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    invoke-interface {v0, v4}, Lyg5;->unlock(Ljava/lang/Object;)V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-interface {v0, v4}, Lyg5;->unlock(Ljava/lang/Object;)V

    throw p0
.end method

.method public final a(Lyads/a13;Le02;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p2, Lyads/xz4;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lyads/xz4;

    iget v1, v0, Lyads/xz4;->f:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lyads/xz4;->f:I

    goto :goto_0

    :cond_0
    new-instance v0, Lyads/xz4;

    invoke-direct {v0, p0, p2}, Lyads/xz4;-><init>(Lyads/zz4;Le02;)V

    :goto_0
    iget-object p2, v0, Lyads/xz4;->d:Ljava/lang/Object;

    sget-object v1, La32;->COROUTINE_SUSPENDED:La32;

    iget v2, v0, Lyads/xz4;->f:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lyads/xz4;->c:Lyg5;

    iget-object v0, v0, Lyads/xz4;->b:Lyads/a13;

    invoke-static {p2}, Lr57;->b(Ljava/lang/Object;)V

    move-object p2, p1

    move-object p1, v0

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v4

    :cond_2
    invoke-static {p2}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p2, p0, Lyads/zz4;->a:Lyg5;

    iput-object p1, v0, Lyads/xz4;->b:Lyads/a13;

    iput-object p2, v0, Lyads/xz4;->c:Lyg5;

    iput v3, v0, Lyads/xz4;->f:I

    invoke-interface {p2, v4, v0}, Lyg5;->lock(Ljava/lang/Object;Le02;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    :try_start_0
    invoke-virtual {p0}, Lyads/zz4;->a()V

    iget-object v0, p0, Lyads/zz4;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lyads/vz4;

    iget-object v2, v2, Lyads/vz4;->a:Lyads/a13;

    invoke-static {v2, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_4

    :cond_5
    move-object v1, v4

    :goto_2
    check-cast v1, Lyads/vz4;

    if-eqz v1, :cond_6

    iget-object p1, v1, Lyads/vz4;->b:Ljava/lang/Object;

    if-eqz p1, :cond_6

    iget-object p0, p0, Lyads/zz4;->b:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :cond_6
    move-object p1, v4

    :goto_3
    invoke-interface {p2, v4}, Lyg5;->unlock(Ljava/lang/Object;)V

    return-object p1

    :goto_4
    invoke-interface {p2, v4}, Lyg5;->unlock(Ljava/lang/Object;)V

    throw p0
.end method

.method public final a(Lyads/a13;Ljava/lang/Object;Lf02;)Ljava/lang/Object;
    .locals 7

    instance-of v0, p3, Lyads/wz4;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lyads/wz4;

    iget v1, v0, Lyads/wz4;->g:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lyads/wz4;->g:I

    goto :goto_0

    :cond_0
    new-instance v0, Lyads/wz4;

    invoke-direct {v0, p0, p3}, Lyads/wz4;-><init>(Lyads/zz4;Lf02;)V

    :goto_0
    iget-object p3, v0, Lyads/wz4;->e:Ljava/lang/Object;

    .line 134
    sget-object v1, La32;->COROUTINE_SUSPENDED:La32;

    .line 135
    iget v2, v0, Lyads/wz4;->g:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lyads/wz4;->d:Lyg5;

    iget-object p2, v0, Lyads/wz4;->c:Ljava/lang/Object;

    iget-object v0, v0, Lyads/wz4;->b:Lyads/a13;

    invoke-static {p3}, Lr57;->b(Ljava/lang/Object;)V

    move-object p3, p1

    move-object p1, v0

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v4

    :cond_2
    invoke-static {p3}, Lr57;->b(Ljava/lang/Object;)V

    .line 136
    iget-object p3, p0, Lyads/zz4;->a:Lyg5;

    .line 137
    iput-object p1, v0, Lyads/wz4;->b:Lyads/a13;

    iput-object p2, v0, Lyads/wz4;->c:Ljava/lang/Object;

    iput-object p3, v0, Lyads/wz4;->d:Lyg5;

    iput v3, v0, Lyads/wz4;->g:I

    invoke-interface {p3, v4, v0}, Lyg5;->lock(Ljava/lang/Object;Le02;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_3

    return-object v1

    .line 138
    :cond_3
    :goto_1
    :try_start_0
    invoke-virtual {p0}, Lyads/zz4;->a()V

    .line 139
    iget-object v0, p0, Lyads/zz4;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_4

    .line 140
    iget-object p0, p0, Lyads/zz4;->b:Ljava/util/ArrayList;

    .line 141
    new-instance v0, Lyads/vz4;

    .line 142
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/32 v5, 0x5265c00

    add-long/2addr v1, v5

    .line 143
    invoke-direct {v0, p1, p2, v1, v2}, Lyads/vz4;-><init>(Lyads/a13;Ljava/lang/Object;J)V

    .line 144
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    .line 145
    :cond_4
    :goto_2
    sget-object p0, Lj59;->a:Lj59;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    invoke-interface {p3, v4}, Lyg5;->unlock(Ljava/lang/Object;)V

    return-object p0

    :goto_3
    invoke-interface {p3, v4}, Lyg5;->unlock(Ljava/lang/Object;)V

    throw p0
.end method

.method public final a()V
    .locals 8

    .line 147
    iget-object v0, p0, Lyads/zz4;->b:Ljava/util/ArrayList;

    .line 148
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 149
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lyads/nr2;

    .line 150
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 151
    check-cast v3, Lyads/vz4;

    .line 152
    iget-wide v6, v3, Lyads/vz4;->c:J

    cmp-long v3, v4, v6

    if-lez v3, :cond_0

    .line 153
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 154
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyads/vz4;

    .line 155
    iget-object v2, p0, Lyads/zz4;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    return-void
.end method
