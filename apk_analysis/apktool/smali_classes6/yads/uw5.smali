.class public final Lyads/uw5;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lyads/ox5;

.field public final c:Lyads/px5;

.field public final d:Lyads/qx5;

.field public final e:Lyads/rx5;

.field public final f:Lyads/ao2;

.field public g:Ljava/lang/Long;

.field public h:Ljava/lang/Long;

.field public i:Ljava/lang/Long;

.field public j:Ljava/lang/Long;

.field public k:Lyads/tw5;

.field public l:J

.field public m:J

.field public n:J

.field public final o:Lcl4;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lyads/ox5;Lyads/px5;Lyads/qx5;Lyads/rx5;Lyads/ao2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/uw5;->a:Ljava/lang/String;

    iput-object p2, p0, Lyads/uw5;->b:Lyads/ox5;

    iput-object p3, p0, Lyads/uw5;->c:Lyads/px5;

    iput-object p4, p0, Lyads/uw5;->d:Lyads/qx5;

    iput-object p5, p0, Lyads/uw5;->e:Lyads/rx5;

    iput-object p6, p0, Lyads/uw5;->f:Lyads/ao2;

    sget-object p1, Lyads/tw5;->b:Lyads/tw5;

    iput-object p1, p0, Lyads/uw5;->k:Lyads/tw5;

    const-wide/16 p1, -0x1

    iput-wide p1, p0, Lyads/uw5;->m:J

    iput-wide p1, p0, Lyads/uw5;->n:J

    sget-object p1, Lpo4;->NONE:Lpo4;

    new-instance p2, Lgi8;

    const/4 p3, 0x3

    invoke-direct {p2, p3}, Lgi8;-><init>(I)V

    invoke-static {p1, p2}, Lnm4;->a(Lpo4;Lll3;)Lcl4;

    move-result-object p1

    iput-object p1, p0, Lyads/uw5;->o:Lcl4;

    return-void
.end method

.method public static final a(JLyads/uw5;Lq07;JLll3;)Lj59;
    .locals 8

    invoke-virtual {p2}, Lyads/uw5;->c()J

    move-result-wide v0

    sub-long/2addr p0, v0

    iget-object v0, p2, Lyads/uw5;->g:Ljava/lang/Long;

    iget-object v1, p2, Lyads/uw5;->e:Lyads/rx5;

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lyads/uw5;->c()J

    move-result-wide v2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-lez v0, :cond_0

    move-wide v2, v4

    :cond_0
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v0}, Lyads/rx5;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Lyads/uw5;->c()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v0}, Lyads/rx5;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    iget-wide v0, p3, Lq07;->b:J

    const-wide/16 v2, -0x1

    add-long/2addr v0, v2

    iput-wide v0, p3, Lq07;->b:J

    const-wide/16 v0, 0x1

    cmp-long p3, v0, p0

    if-gtz p3, :cond_2

    cmp-long p3, p0, p4

    if-gez p3, :cond_2

    invoke-virtual {p2}, Lyads/uw5;->b()V

    new-instance p5, Ldz0;

    const/4 p3, 0x3

    invoke-direct {p5, p6, p3}, Ldz0;-><init>(Ljava/lang/Object;I)V

    move-wide p3, p0

    move-wide v6, p0

    move-object p0, p2

    move-wide p1, v6

    invoke-virtual/range {p0 .. p5}, Lyads/uw5;->a(JJLll3;)V

    goto :goto_1

    :cond_2
    move-wide p1, p0

    const-wide/16 p3, 0x0

    cmp-long p0, p1, p3

    if-gtz p0, :cond_3

    invoke-interface {p6}, Lll3;->invoke()Ljava/lang/Object;

    :cond_3
    :goto_1
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public static final a(Lll3;)Lj59;
    .locals 0

    .line 127
    invoke-interface {p0}, Lll3;->invoke()Ljava/lang/Object;

    .line 128
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public static final a(Lq07;Lyads/uw5;J)Lj59;
    .locals 4

    .line 113
    iget-wide v0, p0, Lq07;->b:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-lez p0, :cond_0

    .line 114
    iget-object p0, p1, Lyads/uw5;->e:Lyads/rx5;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Lyads/rx5;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    :cond_0
    iget-object p0, p1, Lyads/uw5;->d:Lyads/qx5;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p0, p2}, Lyads/qx5;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    invoke-virtual {p1}, Lyads/uw5;->b()V

    const-wide/16 p2, -0x1

    .line 117
    iput-wide p2, p1, Lyads/uw5;->m:J

    .line 118
    iput-wide p2, p1, Lyads/uw5;->n:J

    .line 119
    iput-wide v2, p1, Lyads/uw5;->l:J

    .line 120
    sget-object p0, Lyads/tw5;->b:Lyads/tw5;

    iput-object p0, p1, Lyads/uw5;->k:Lyads/tw5;

    .line 121
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public static final a(Lyads/uw5;)Lj59;
    .locals 6

    .line 90
    iget-object v0, p0, Lyads/uw5;->g:Ljava/lang/Long;

    .line 91
    iget-object v1, p0, Lyads/uw5;->e:Lyads/rx5;

    if-eqz v0, :cond_1

    .line 92
    invoke-virtual {p0}, Lyads/uw5;->c()J

    move-result-wide v2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long p0, v2, v4

    if-lez p0, :cond_0

    move-wide v2, v4

    :cond_0
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v1, p0}, Lyads/rx5;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 93
    :cond_1
    invoke-virtual {p0}, Lyads/uw5;->c()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v1, p0}, Lyads/rx5;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    :goto_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public static final a(Lyads/uw5;J)Lj59;
    .locals 1

    .line 102
    invoke-virtual {p0}, Lyads/uw5;->b()V

    .line 103
    iget-object v0, p0, Lyads/uw5;->d:Lyads/qx5;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Lyads/qx5;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    sget-object p1, Lyads/tw5;->b:Lyads/tw5;

    iput-object p1, p0, Lyads/uw5;->k:Lyads/tw5;

    const-wide/16 p1, -0x1

    .line 105
    iput-wide p1, p0, Lyads/uw5;->m:J

    .line 106
    iput-wide p1, p0, Lyads/uw5;->n:J

    const-wide/16 p1, 0x0

    .line 107
    iput-wide p1, p0, Lyads/uw5;->l:J

    .line 108
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public static final j()Lyads/vx2;
    .locals 1

    new-instance v0, Lyads/vx2;

    invoke-direct {v0}, Lyads/vx2;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 132
    iget-object v0, p0, Lyads/uw5;->k:Lyads/tw5;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    return-void

    .line 133
    :cond_0
    sget-object v0, Lyads/tw5;->b:Lyads/tw5;

    iput-object v0, p0, Lyads/uw5;->k:Lyads/tw5;

    .line 134
    invoke-virtual {p0}, Lyads/uw5;->b()V

    .line 135
    iget-object v0, p0, Lyads/uw5;->b:Lyads/ox5;

    invoke-virtual {p0}, Lyads/uw5;->c()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lyads/ox5;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v0, -0x1

    .line 136
    iput-wide v0, p0, Lyads/uw5;->m:J

    .line 137
    iput-wide v0, p0, Lyads/uw5;->n:J

    const-wide/16 v0, 0x0

    .line 138
    iput-wide v0, p0, Lyads/uw5;->l:J

    return-void
.end method

.method public final a(J)V
    .locals 8

    .line 95
    invoke-virtual {p0}, Lyads/uw5;->c()J

    move-result-wide v0

    sub-long v3, p1, v0

    const-wide/16 v0, 0x0

    cmp-long v2, v3, v0

    if-ltz v2, :cond_0

    .line 96
    new-instance v7, Lsea;

    invoke-direct {v7, p0, p1, p2}, Lsea;-><init>(Lyads/uw5;J)V

    move-wide v5, v3

    move-object v2, p0

    .line 97
    invoke-virtual/range {v2 .. v7}, Lyads/uw5;->a(JJLll3;)V

    return-void

    :cond_0
    move-object v2, p0

    .line 98
    iget-object p0, v2, Lyads/uw5;->d:Lyads/qx5;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Lyads/qx5;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 p0, -0x1

    .line 99
    iput-wide p0, v2, Lyads/uw5;->m:J

    .line 100
    iput-wide p0, v2, Lyads/uw5;->n:J

    .line 101
    iput-wide v0, v2, Lyads/uw5;->l:J

    return-void
.end method

.method public final a(JJ)V
    .locals 12

    .line 109
    invoke-virtual {p0}, Lyads/uw5;->c()J

    move-result-wide v3

    rem-long/2addr v3, p3

    sub-long v8, p3, v3

    .line 110
    new-instance v4, Lq07;

    invoke-direct {v4}, Lq07;-><init>()V

    div-long v5, p1, p3

    invoke-virtual {p0}, Lyads/uw5;->c()J

    move-result-wide v10

    div-long/2addr v10, p3

    sub-long/2addr v5, v10

    iput-wide v5, v4, Lq07;->b:J

    .line 111
    new-instance v7, Ltea;

    invoke-direct {v7, v4, p0, p1, p2}, Ltea;-><init>(Lq07;Lyads/uw5;J)V

    .line 112
    new-instance v0, Luea;

    move-object v3, p0

    move-wide v1, p1

    move-wide v5, p3

    invoke-direct/range {v0 .. v7}, Luea;-><init>(JLyads/uw5;Lq07;JLtea;)V

    move-object v10, v0

    move-wide v6, v5

    move-object v5, v3

    invoke-virtual/range {v5 .. v10}, Lyads/uw5;->a(JJLll3;)V

    return-void
.end method

.method public final a(JJLll3;)V
    .locals 2

    .line 122
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 123
    iput-wide v0, p0, Lyads/uw5;->m:J

    .line 124
    iget-object p0, p0, Lyads/uw5;->o:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/vx2;

    .line 125
    iget-object v0, p0, Lyads/vx2;->a:Landroid/os/Handler;

    .line 126
    new-instance v1, Lyads/ux2;

    invoke-direct {v1, p0, p1, p2, p5}, Lyads/ux2;-><init>(Lyads/vx2;JLll3;)V

    invoke-virtual {v0, v1, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    .line 129
    iget-object p0, p0, Lyads/uw5;->f:Lyads/ao2;

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 130
    iget-object p1, p0, Lyads/ao2;->b:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    invoke-virtual {p0}, Lyads/ao2;->a()V

    return-void
.end method

.method public final b()V
    .locals 1

    .line 19
    iget-object p0, p0, Lyads/uw5;->o:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/vx2;

    .line 20
    iget-object p0, p0, Lyads/vx2;->a:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 21
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public final b(J)V
    .locals 8

    invoke-virtual {p0}, Lyads/uw5;->c()J

    move-result-wide v0

    rem-long/2addr v0, p1

    sub-long v5, p1, v0

    new-instance v7, Laz0;

    const/4 v0, 0x5

    invoke-direct {v7, p0, v0}, Laz0;-><init>(Ljava/lang/Object;I)V

    move-object v2, p0

    move-wide v3, p1

    invoke-virtual/range {v2 .. v7}, Lyads/uw5;->a(JJLll3;)V

    return-void
.end method

.method public final c()J
    .locals 4

    iget-wide v0, p0, Lyads/uw5;->m:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lyads/uw5;->m:J

    sub-long/2addr v0, v2

    :goto_0
    iget-wide v2, p0, Lyads/uw5;->l:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public final d()V
    .locals 6

    iget-object v0, p0, Lyads/uw5;->k:Lyads/tw5;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const-string v1, "The timer \'"

    if-eqz v0, :cond_3

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lyads/uw5;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\' already paused!"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lyads/uw5;->a(Ljava/lang/String;)V

    return-void

    :cond_1
    sget-object v0, Lyads/tw5;->d:Lyads/tw5;

    iput-object v0, p0, Lyads/uw5;->k:Lyads/tw5;

    iget-object v0, p0, Lyads/uw5;->b:Lyads/ox5;

    invoke-virtual {p0}, Lyads/uw5;->c()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lyads/ox5;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v0, p0, Lyads/uw5;->m:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v4, p0, Lyads/uw5;->m:J

    sub-long/2addr v0, v4

    iget-wide v4, p0, Lyads/uw5;->l:J

    add-long/2addr v4, v0

    iput-wide v4, p0, Lyads/uw5;->l:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lyads/uw5;->n:J

    iput-wide v2, p0, Lyads/uw5;->m:J

    :cond_2
    invoke-virtual {p0}, Lyads/uw5;->b()V

    iput-wide v2, p0, Lyads/uw5;->m:J

    return-void

    :cond_3
    iget-object v0, p0, Lyads/uw5;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\' already stopped!"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lyads/uw5;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final e()V
    .locals 0

    invoke-virtual {p0}, Lyads/uw5;->a()V

    invoke-virtual {p0}, Lyads/uw5;->h()V

    return-void
.end method

.method public final f()V
    .locals 3

    iget-object v0, p0, Lyads/uw5;->k:Lyads/tw5;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const-string v1, "The timer \'"

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    sget-object v0, Lyads/tw5;->c:Lyads/tw5;

    iput-object v0, p0, Lyads/uw5;->k:Lyads/tw5;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lyads/uw5;->n:J

    invoke-virtual {p0}, Lyads/uw5;->g()V

    return-void

    :cond_1
    iget-object v0, p0, Lyads/uw5;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\' already working!"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lyads/uw5;->a(Ljava/lang/String;)V

    return-void

    :cond_2
    iget-object v0, p0, Lyads/uw5;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\' is stopped!"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lyads/uw5;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final g()V
    .locals 8

    iget-object v0, p0, Lyads/uw5;->j:Ljava/lang/Long;

    iget-object v1, p0, Lyads/uw5;->i:Ljava/lang/Long;

    if-eqz v0, :cond_2

    iget-wide v2, p0, Lyads/uw5;->n:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lyads/uw5;->n:J

    sub-long/2addr v2, v4

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    iget-object v2, p0, Lyads/uw5;->g:Ljava/lang/Long;

    iget-object v3, p0, Lyads/uw5;->e:Lyads/rx5;

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lyads/uw5;->c()J

    move-result-wide v4

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v2, v4, v6

    if-lez v2, :cond_0

    move-wide v4, v6

    :cond_0
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v3, v2}, Lyads/rx5;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lyads/uw5;->c()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v3, v2}, Lyads/rx5;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_0
    if-nez v0, :cond_3

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lyads/uw5;->a(J)V

    return-void

    :cond_3
    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {p0, v1, v2, v3, v4}, Lyads/uw5;->a(JJ)V

    return-void

    :cond_4
    if-eqz v0, :cond_5

    if-nez v1, :cond_5

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lyads/uw5;->b(J)V

    :cond_5
    return-void
.end method

.method public final h()V
    .locals 3

    iget-object v0, p0, Lyads/uw5;->k:Lyads/tw5;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    const-string v2, "The timer \'"

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lyads/uw5;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\' paused!"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lyads/uw5;->a(Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v0, p0, Lyads/uw5;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\' already working!"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lyads/uw5;->a(Ljava/lang/String;)V

    return-void

    :cond_2
    invoke-virtual {p0}, Lyads/uw5;->b()V

    iget-object v0, p0, Lyads/uw5;->g:Ljava/lang/Long;

    iput-object v0, p0, Lyads/uw5;->i:Ljava/lang/Long;

    iget-object v0, p0, Lyads/uw5;->h:Ljava/lang/Long;

    iput-object v0, p0, Lyads/uw5;->j:Ljava/lang/Long;

    sget-object v0, Lyads/tw5;->c:Lyads/tw5;

    iput-object v0, p0, Lyads/uw5;->k:Lyads/tw5;

    iget-object v0, p0, Lyads/uw5;->c:Lyads/px5;

    invoke-virtual {p0}, Lyads/uw5;->c()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lyads/px5;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lyads/uw5;->g()V

    return-void
.end method

.method public final i()V
    .locals 3

    iget-object v0, p0, Lyads/uw5;->k:Lyads/tw5;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    sget-object v0, Lyads/tw5;->b:Lyads/tw5;

    iput-object v0, p0, Lyads/uw5;->k:Lyads/tw5;

    iget-object v0, p0, Lyads/uw5;->d:Lyads/qx5;

    invoke-virtual {p0}, Lyads/uw5;->c()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lyads/qx5;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lyads/uw5;->b()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lyads/uw5;->m:J

    iput-wide v0, p0, Lyads/uw5;->n:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lyads/uw5;->l:J

    return-void

    :cond_1
    iget-object v0, p0, Lyads/uw5;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "The timer \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\' already stopped!"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lyads/uw5;->a(Ljava/lang/String;)V

    return-void
.end method
