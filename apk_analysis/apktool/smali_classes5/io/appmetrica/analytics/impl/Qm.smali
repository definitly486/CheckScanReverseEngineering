.class public final Lio/appmetrica/analytics/impl/Qm;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/Rm;

.field public final b:Ljava/lang/Object;

.field public volatile c:Lio/appmetrica/analytics/networktasks/internal/NetworkTask;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/Rm;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/Qm;->a:Lio/appmetrica/analytics/impl/Rm;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/Qm;->b:Ljava/lang/Object;

    return-void
.end method

.method public static final synthetic a(Lio/appmetrica/analytics/impl/Qm;)Lio/appmetrica/analytics/impl/Rm;
    .locals 0

    .line 236
    iget-object p0, p0, Lio/appmetrica/analytics/impl/Qm;->a:Lio/appmetrica/analytics/impl/Rm;

    return-object p0
.end method


# virtual methods
.method public final a()Lio/appmetrica/analytics/impl/b5;
    .locals 0

    .line 232
    iget-object p0, p0, Lio/appmetrica/analytics/impl/Qm;->a:Lio/appmetrica/analytics/impl/Rm;

    .line 233
    iget-object p0, p0, Lio/appmetrica/analytics/impl/Rm;->f:Lio/appmetrica/analytics/impl/H4;

    return-object p0
.end method

.method public final a(Lio/appmetrica/analytics/impl/tm;Lio/appmetrica/analytics/impl/rm;J)Lio/appmetrica/analytics/impl/vm;
    .locals 8

    iget-object v0, p2, Lio/appmetrica/analytics/impl/rm;->h:Ljava/util/Map;

    invoke-static {v0}, Lio/appmetrica/analytics/impl/Vm;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p2, Lio/appmetrica/analytics/impl/rm;->i:Lio/appmetrica/analytics/impl/F3;

    iget-object v1, v1, Lio/appmetrica/analytics/impl/F3;->a:Ljava/util/Map;

    iget-object v2, p1, Lio/appmetrica/analytics/impl/tm;->j:Ljava/lang/String;

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/Qm;->e()Lio/appmetrica/analytics/impl/vm;

    move-result-object v3

    iget-object v3, v3, Lio/appmetrica/analytics/impl/vm;->k:Ljava/lang/String;

    invoke-static {v2}, Lio/appmetrica/analytics/impl/Vm;->a(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v4

    invoke-static {v4}, Lio/appmetrica/analytics/impl/Vm;->a(Ljava/util/HashMap;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v3}, Lio/appmetrica/analytics/impl/Vm;->a(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v2

    invoke-static {v2}, Lio/appmetrica/analytics/impl/Vm;->a(Ljava/util/HashMap;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v2, v3

    goto :goto_0

    :cond_1
    move-object v2, v5

    :goto_0
    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/Qm;->e()Lio/appmetrica/analytics/impl/vm;

    move-result-object v3

    iget-object v3, v3, Lio/appmetrica/analytics/impl/vm;->a:Ljava/lang/String;

    if-eqz v3, :cond_3

    invoke-static {v3}, Lta8;->M(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    move-object v5, v3

    :cond_2
    if-nez v5, :cond_4

    :cond_3
    iget-object v5, p1, Lio/appmetrica/analytics/impl/tm;->h:Ljava/lang/String;

    :cond_4
    new-instance v3, Lio/appmetrica/analytics/impl/ym;

    iget-object v4, p1, Lio/appmetrica/analytics/impl/tm;->b:Lio/appmetrica/analytics/impl/z4;

    invoke-direct {v3, v4}, Lio/appmetrica/analytics/impl/ym;-><init>(Lio/appmetrica/analytics/impl/z4;)V

    iget-object v4, p1, Lio/appmetrica/analytics/impl/tm;->i:Ljava/lang/String;

    iget-object v6, p0, Lio/appmetrica/analytics/impl/Qm;->a:Lio/appmetrica/analytics/impl/Rm;

    iget-object v6, v6, Lio/appmetrica/analytics/impl/Rm;->i:Lio/appmetrica/analytics/coreutils/internal/time/SystemTimeProvider;

    invoke-virtual {v6}, Lio/appmetrica/analytics/coreutils/internal/time/SystemTimeProvider;->currentTimeSeconds()J

    move-result-wide v6

    iput-wide v6, v3, Lio/appmetrica/analytics/impl/ym;->o:J

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/Qm;->e()Lio/appmetrica/analytics/impl/vm;

    move-result-object v6

    iget-object v6, v6, Lio/appmetrica/analytics/impl/vm;->d:Ljava/lang/String;

    iput-object v6, v3, Lio/appmetrica/analytics/impl/ym;->a:Ljava/lang/String;

    iget-object v6, p1, Lio/appmetrica/analytics/impl/tm;->d:Ljava/lang/String;

    iput-object v6, v3, Lio/appmetrica/analytics/impl/ym;->c:Ljava/lang/String;

    iget-object v6, p1, Lio/appmetrica/analytics/impl/tm;->c:Ljava/util/List;

    iput-object v6, v3, Lio/appmetrica/analytics/impl/ym;->f:Ljava/util/List;

    iget-object p2, p2, Lio/appmetrica/analytics/impl/rm;->e:Ljava/util/List;

    iput-object p2, v3, Lio/appmetrica/analytics/impl/ym;->g:Ljava/util/List;

    iget-object p2, p1, Lio/appmetrica/analytics/impl/tm;->e:Ljava/util/List;

    iput-object p2, v3, Lio/appmetrica/analytics/impl/ym;->b:Ljava/util/List;

    iget-object p2, p1, Lio/appmetrica/analytics/impl/tm;->f:Ljava/lang/String;

    iput-object p2, v3, Lio/appmetrica/analytics/impl/ym;->d:Ljava/lang/String;

    iget-object p2, p1, Lio/appmetrica/analytics/impl/tm;->g:Ljava/lang/String;

    iput-object p2, v3, Lio/appmetrica/analytics/impl/ym;->e:Ljava/lang/String;

    iget-object p2, p1, Lio/appmetrica/analytics/impl/tm;->n:Ljava/util/List;

    iput-object p2, v3, Lio/appmetrica/analytics/impl/ym;->h:Ljava/util/List;

    iget-object p2, p1, Lio/appmetrica/analytics/impl/tm;->o:Ljava/util/Map;

    iput-object p2, v3, Lio/appmetrica/analytics/impl/ym;->i:Ljava/util/Map;

    iput-object v2, v3, Lio/appmetrica/analytics/impl/ym;->j:Ljava/lang/String;

    iput-object v0, v3, Lio/appmetrica/analytics/impl/ym;->k:Ljava/lang/String;

    iget-object p2, p0, Lio/appmetrica/analytics/impl/Qm;->a:Lio/appmetrica/analytics/impl/Rm;

    iget-object p2, p2, Lio/appmetrica/analytics/impl/Rm;->k:Lio/appmetrica/analytics/impl/Q3;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lio/appmetrica/analytics/impl/Vm;->a(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p2

    invoke-static {v1}, Lio/appmetrica/analytics/impl/xo;->a(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {p2}, Lio/appmetrica/analytics/impl/xo;->a(Ljava/util/Map;)Z

    move-result p2

    goto :goto_1

    :cond_5
    invoke-interface {p2, v1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result p2

    :goto_1
    iput-boolean p2, v3, Lio/appmetrica/analytics/impl/ym;->q:Z

    invoke-static {v1}, Lio/appmetrica/analytics/impl/Vm;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v3, Lio/appmetrica/analytics/impl/ym;->l:Ljava/lang/String;

    iget-object p2, p1, Lio/appmetrica/analytics/impl/tm;->m:Ljava/lang/String;

    iput-object p2, v3, Lio/appmetrica/analytics/impl/ym;->r:Ljava/lang/String;

    iget-object p2, p1, Lio/appmetrica/analytics/impl/tm;->k:Lio/appmetrica/analytics/impl/He;

    iput-object p2, v3, Lio/appmetrica/analytics/impl/ym;->n:Lio/appmetrica/analytics/impl/He;

    iget-object p2, p1, Lio/appmetrica/analytics/impl/tm;->p:Lio/appmetrica/analytics/impl/Wm;

    iput-object p2, v3, Lio/appmetrica/analytics/impl/ym;->s:Lio/appmetrica/analytics/impl/Wm;

    const/4 p2, 0x1

    iput-boolean p2, v3, Lio/appmetrica/analytics/impl/ym;->p:Z

    iput-wide p3, v3, Lio/appmetrica/analytics/impl/ym;->t:J

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/Qm;->d()Lio/appmetrica/analytics/impl/rm;

    move-result-object p0

    iget-wide v0, p0, Lio/appmetrica/analytics/impl/rm;->n:J

    const-wide/16 v6, 0x0

    cmp-long p2, v0, v6

    if-nez p2, :cond_6

    iput-wide p3, p0, Lio/appmetrica/analytics/impl/rm;->n:J

    goto :goto_2

    :cond_6
    move-wide p3, v0

    :goto_2
    iput-wide p3, v3, Lio/appmetrica/analytics/impl/ym;->u:J

    const/4 p0, 0x0

    iput-boolean p0, v3, Lio/appmetrica/analytics/impl/ym;->v:Z

    iget-object p0, p1, Lio/appmetrica/analytics/impl/tm;->q:Lio/appmetrica/analytics/networktasks/internal/RetryPolicyConfig;

    iput-object p0, v3, Lio/appmetrica/analytics/impl/ym;->w:Lio/appmetrica/analytics/networktasks/internal/RetryPolicyConfig;

    iget-object p0, p1, Lio/appmetrica/analytics/impl/tm;->r:Lio/appmetrica/analytics/impl/q3;

    iput-object p0, v3, Lio/appmetrica/analytics/impl/ym;->x:Lio/appmetrica/analytics/impl/q3;

    iget-object p0, p1, Lio/appmetrica/analytics/impl/tm;->s:Lio/appmetrica/analytics/impl/B2;

    iput-object p0, v3, Lio/appmetrica/analytics/impl/ym;->y:Lio/appmetrica/analytics/impl/B2;

    iget-object p0, p1, Lio/appmetrica/analytics/impl/tm;->t:Lio/appmetrica/analytics/impl/Sm;

    iput-object p0, v3, Lio/appmetrica/analytics/impl/ym;->z:Lio/appmetrica/analytics/impl/Sm;

    iget-object p0, p1, Lio/appmetrica/analytics/impl/tm;->u:Ljava/util/Map;

    iput-object p0, v3, Lio/appmetrica/analytics/impl/ym;->A:Ljava/util/Map;

    iget-object p0, p1, Lio/appmetrica/analytics/impl/tm;->v:Lio/appmetrica/analytics/impl/O9;

    iput-object p0, v3, Lio/appmetrica/analytics/impl/ym;->B:Lio/appmetrica/analytics/impl/O9;

    new-instance p0, Lio/appmetrica/analytics/impl/vm;

    new-instance p1, Lio/appmetrica/analytics/impl/zm;

    invoke-direct {p1, v3}, Lio/appmetrica/analytics/impl/zm;-><init>(Lio/appmetrica/analytics/impl/ym;)V

    invoke-direct {p0, v5, v4, p1}, Lio/appmetrica/analytics/impl/vm;-><init>(Ljava/lang/String;Ljava/lang/String;Lio/appmetrica/analytics/impl/zm;)V

    return-object p0
.end method

.method public final a(Lio/appmetrica/analytics/impl/Zl;)V
    .locals 3

    const/4 v0, 0x0

    .line 254
    iput-object v0, p0, Lio/appmetrica/analytics/impl/Qm;->c:Lio/appmetrica/analytics/networktasks/internal/NetworkTask;

    .line 255
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Qm;->a:Lio/appmetrica/analytics/impl/Rm;

    .line 256
    iget-object v1, v0, Lio/appmetrica/analytics/impl/Rm;->d:Lio/appmetrica/analytics/impl/Vl;

    .line 257
    iget-object v0, v0, Lio/appmetrica/analytics/impl/Rm;->f:Lio/appmetrica/analytics/impl/H4;

    .line 258
    iget-object v0, v0, Lio/appmetrica/analytics/impl/b5;->a:Ljava/lang/String;

    .line 259
    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/Qm;->e()Lio/appmetrica/analytics/impl/vm;

    move-result-object p0

    .line 260
    iget-object v2, v1, Lio/appmetrica/analytics/impl/Vl;->a:Lio/appmetrica/analytics/impl/Xl;

    .line 261
    iget-object v2, v2, Lio/appmetrica/analytics/impl/Xl;->b:Ljava/util/HashMap;

    .line 262
    monitor-enter v2

    .line 263
    :try_start_0
    iget-object v1, v1, Lio/appmetrica/analytics/impl/Vl;->a:Lio/appmetrica/analytics/impl/Xl;

    .line 264
    iget-object v1, v1, Lio/appmetrica/analytics/impl/Xl;->a:Lio/appmetrica/analytics/impl/Ka;

    .line 265
    iget-object v1, v1, Lio/appmetrica/analytics/impl/Ka;->a:Ljava/util/HashMap;

    .line 266
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    if-nez v0, :cond_0

    .line 267
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 268
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v0, v1

    .line 269
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 270
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/appmetrica/analytics/impl/gm;

    .line 271
    invoke-interface {v1, p1, p0}, Lio/appmetrica/analytics/impl/gm;->a(Lio/appmetrica/analytics/impl/Zl;Lio/appmetrica/analytics/impl/vm;)V

    goto :goto_1

    :cond_1
    return-void

    .line 272
    :goto_2
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final a(Lio/appmetrica/analytics/impl/pm;)V
    .locals 4

    .line 273
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Qm;->a:Lio/appmetrica/analytics/impl/Rm;

    .line 274
    iget-object v0, v0, Lio/appmetrica/analytics/impl/Rm;->l:Lio/appmetrica/analytics/impl/Yl;

    .line 275
    invoke-virtual {v0, p1}, Lio/appmetrica/analytics/impl/Yl;->a(Lio/appmetrica/analytics/impl/pm;)V

    .line 276
    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/Qm;->d()Lio/appmetrica/analytics/impl/rm;

    move-result-object p1

    .line 277
    iget-boolean v0, p1, Lio/appmetrica/analytics/impl/rm;->k:Z

    if-eqz v0, :cond_2

    .line 278
    iget-object v0, p1, Lio/appmetrica/analytics/impl/rm;->j:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 279
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 280
    :cond_0
    iget-object p1, p1, Lio/appmetrica/analytics/impl/rm;->e:Ljava/util/List;

    .line 281
    invoke-static {v0, p1}, Lio/appmetrica/analytics/impl/xo;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 282
    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/Qm;->e()Lio/appmetrica/analytics/impl/vm;

    move-result-object p1

    .line 283
    iget-object v1, p1, Lio/appmetrica/analytics/impl/vm;->c:Lio/appmetrica/analytics/impl/zm;

    .line 284
    iget-object v2, v1, Lio/appmetrica/analytics/impl/zm;->m:Lio/appmetrica/analytics/impl/z4;

    .line 285
    invoke-virtual {v1, v2}, Lio/appmetrica/analytics/impl/zm;->a(Lio/appmetrica/analytics/impl/z4;)Lio/appmetrica/analytics/impl/ym;

    move-result-object v1

    .line 286
    iget-object v2, p1, Lio/appmetrica/analytics/impl/vm;->a:Ljava/lang/String;

    .line 287
    iget-object p1, p1, Lio/appmetrica/analytics/impl/vm;->b:Ljava/lang/String;

    .line 288
    iput-object v0, v1, Lio/appmetrica/analytics/impl/ym;->g:Ljava/util/List;

    .line 289
    new-instance v0, Lio/appmetrica/analytics/impl/vm;

    .line 290
    new-instance v3, Lio/appmetrica/analytics/impl/zm;

    .line 291
    invoke-direct {v3, v1}, Lio/appmetrica/analytics/impl/zm;-><init>(Lio/appmetrica/analytics/impl/ym;)V

    .line 292
    invoke-direct {v0, v2, p1, v3}, Lio/appmetrica/analytics/impl/vm;-><init>(Ljava/lang/String;Ljava/lang/String;Lio/appmetrica/analytics/impl/zm;)V

    .line 293
    invoke-virtual {p0, v0}, Lio/appmetrica/analytics/impl/Qm;->b(Lio/appmetrica/analytics/impl/vm;)V

    .line 294
    invoke-virtual {p0, v0}, Lio/appmetrica/analytics/impl/Qm;->a(Lio/appmetrica/analytics/impl/vm;)V

    return-void

    .line 295
    :cond_1
    :goto_0
    iget-object p1, p1, Lio/appmetrica/analytics/impl/rm;->e:Ljava/util/List;

    if-eqz p1, :cond_2

    .line 296
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    const/4 v0, 0x1

    xor-int/2addr p1, v0

    if-ne p1, v0, :cond_2

    .line 297
    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/Qm;->e()Lio/appmetrica/analytics/impl/vm;

    move-result-object p1

    .line 298
    iget-object v0, p1, Lio/appmetrica/analytics/impl/vm;->c:Lio/appmetrica/analytics/impl/zm;

    .line 299
    iget-object v1, v0, Lio/appmetrica/analytics/impl/zm;->m:Lio/appmetrica/analytics/impl/z4;

    .line 300
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/impl/zm;->a(Lio/appmetrica/analytics/impl/z4;)Lio/appmetrica/analytics/impl/ym;

    move-result-object v0

    .line 301
    iget-object v1, p1, Lio/appmetrica/analytics/impl/vm;->a:Ljava/lang/String;

    .line 302
    iget-object p1, p1, Lio/appmetrica/analytics/impl/vm;->b:Ljava/lang/String;

    const/4 v2, 0x0

    .line 303
    iput-object v2, v0, Lio/appmetrica/analytics/impl/ym;->g:Ljava/util/List;

    .line 304
    new-instance v2, Lio/appmetrica/analytics/impl/vm;

    .line 305
    new-instance v3, Lio/appmetrica/analytics/impl/zm;

    .line 306
    invoke-direct {v3, v0}, Lio/appmetrica/analytics/impl/zm;-><init>(Lio/appmetrica/analytics/impl/ym;)V

    .line 307
    invoke-direct {v2, v1, p1, v3}, Lio/appmetrica/analytics/impl/vm;-><init>(Ljava/lang/String;Ljava/lang/String;Lio/appmetrica/analytics/impl/zm;)V

    .line 308
    invoke-virtual {p0, v2}, Lio/appmetrica/analytics/impl/Qm;->b(Lio/appmetrica/analytics/impl/vm;)V

    .line 309
    invoke-virtual {p0, v2}, Lio/appmetrica/analytics/impl/Qm;->a(Lio/appmetrica/analytics/impl/vm;)V

    :cond_2
    return-void
.end method

.method public final a(Lio/appmetrica/analytics/impl/tm;Lio/appmetrica/analytics/impl/rm;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/appmetrica/analytics/impl/tm;",
            "Lio/appmetrica/analytics/impl/rm;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 310
    invoke-static {p3}, Lio/appmetrica/analytics/impl/xo;->a(Ljava/util/Map;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 311
    const-string v0, "Date"

    invoke-static {p3, v0}, Lio/appmetrica/analytics/coreutils/internal/collection/CollectionUtils;->getFromMapIgnoreCase(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/List;

    .line 312
    invoke-static {p3}, Lio/appmetrica/analytics/impl/xo;->a(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 313
    :try_start_0
    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 314
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v2, "E, d MMM yyyy HH:mm:ss z"

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 315
    invoke-virtual {v0, p3}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    :cond_0
    move-object p3, v1

    :goto_0
    if-eqz p3, :cond_1

    .line 316
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    goto :goto_1

    :cond_1
    const-wide/16 v2, 0x0

    .line 317
    :goto_1
    iget-object p3, p1, Lio/appmetrica/analytics/impl/tm;->l:Ljava/lang/Long;

    .line 318
    sget-object v0, Lio/appmetrica/analytics/impl/mk;->a:Lio/appmetrica/analytics/impl/nk;

    .line 319
    invoke-virtual {v0, v2, v3, p3}, Lio/appmetrica/analytics/impl/nk;->a(JLjava/lang/Long;)V

    .line 320
    invoke-virtual {p0, p1, p2, v2, v3}, Lio/appmetrica/analytics/impl/Qm;->a(Lio/appmetrica/analytics/impl/tm;Lio/appmetrica/analytics/impl/rm;J)Lio/appmetrica/analytics/impl/vm;

    move-result-object p1

    .line 321
    iput-object v1, p0, Lio/appmetrica/analytics/impl/Qm;->c:Lio/appmetrica/analytics/networktasks/internal/NetworkTask;

    .line 322
    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/Qm;->b(Lio/appmetrica/analytics/impl/vm;)V

    .line 323
    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/Qm;->a(Lio/appmetrica/analytics/impl/vm;)V

    return-void
.end method

.method public final a(Lio/appmetrica/analytics/impl/vm;)V
    .locals 2

    .line 237
    iget-object p0, p0, Lio/appmetrica/analytics/impl/Qm;->a:Lio/appmetrica/analytics/impl/Rm;

    .line 238
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Rm;->d:Lio/appmetrica/analytics/impl/Vl;

    .line 239
    iget-object p0, p0, Lio/appmetrica/analytics/impl/Rm;->b:Ljava/lang/String;

    .line 240
    iget-object v1, v0, Lio/appmetrica/analytics/impl/Vl;->a:Lio/appmetrica/analytics/impl/Xl;

    .line 241
    iget-object v1, v1, Lio/appmetrica/analytics/impl/Xl;->b:Ljava/util/HashMap;

    .line 242
    monitor-enter v1

    .line 243
    :try_start_0
    iget-object v0, v0, Lio/appmetrica/analytics/impl/Vl;->a:Lio/appmetrica/analytics/impl/Xl;

    .line 244
    iput-object p1, v0, Lio/appmetrica/analytics/impl/Xl;->c:Lio/appmetrica/analytics/impl/vm;

    .line 245
    iget-object v0, v0, Lio/appmetrica/analytics/impl/Xl;->a:Lio/appmetrica/analytics/impl/Ka;

    .line 246
    iget-object v0, v0, Lio/appmetrica/analytics/impl/Ka;->a:Ljava/util/HashMap;

    .line 247
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    if-nez p0, :cond_0

    .line 248
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 249
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object p0, v0

    .line 250
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 251
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/appmetrica/analytics/impl/gm;

    .line 252
    invoke-interface {v0, p1}, Lio/appmetrica/analytics/impl/gm;->a(Lio/appmetrica/analytics/impl/vm;)V

    goto :goto_1

    :cond_1
    return-void

    .line 253
    :goto_2
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final a(Ljava/util/List;Ljava/util/Map;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 234
    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/Qm;->e()Lio/appmetrica/analytics/impl/vm;

    move-result-object v0

    .line 235
    new-instance v1, Lio/appmetrica/analytics/impl/Pm;

    invoke-direct {v1, p0}, Lio/appmetrica/analytics/impl/Pm;-><init>(Lio/appmetrica/analytics/impl/Qm;)V

    invoke-static {v0, p1, p2, v1}, Lio/appmetrica/analytics/impl/sm;->a(Lio/appmetrica/analytics/impl/vm;Ljava/util/Collection;Ljava/util/Map;Lll3;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final b()Landroid/content/Context;
    .locals 0

    .line 54
    iget-object p0, p0, Lio/appmetrica/analytics/impl/Qm;->a:Lio/appmetrica/analytics/impl/Rm;

    .line 55
    iget-object p0, p0, Lio/appmetrica/analytics/impl/Rm;->a:Landroid/content/Context;

    return-object p0
.end method

.method public final b(Lio/appmetrica/analytics/impl/vm;)V
    .locals 3

    iget-object v0, p0, Lio/appmetrica/analytics/impl/Qm;->a:Lio/appmetrica/analytics/impl/Rm;

    iget-object v0, v0, Lio/appmetrica/analytics/impl/Rm;->l:Lio/appmetrica/analytics/impl/Yl;

    invoke-virtual {v0, p1}, Lio/appmetrica/analytics/impl/z5;->a(Lio/appmetrica/analytics/impl/vm;)V

    iget-object v0, p0, Lio/appmetrica/analytics/impl/Qm;->a:Lio/appmetrica/analytics/impl/Rm;

    iget-object v0, v0, Lio/appmetrica/analytics/impl/Rm;->g:Lio/appmetrica/analytics/impl/um;

    iget-object v1, v0, Lio/appmetrica/analytics/impl/um;->b:Lio/appmetrica/analytics/impl/Fo;

    iget-object v2, p1, Lio/appmetrica/analytics/impl/vm;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lio/appmetrica/analytics/impl/Fo;->a(Ljava/lang/String;)V

    iget-object v1, v0, Lio/appmetrica/analytics/impl/um;->b:Lio/appmetrica/analytics/impl/Fo;

    iget-object v2, p1, Lio/appmetrica/analytics/impl/vm;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lio/appmetrica/analytics/impl/Fo;->b(Ljava/lang/String;)V

    iget-object v1, v0, Lio/appmetrica/analytics/impl/um;->b:Lio/appmetrica/analytics/impl/Fo;

    iget-object v1, v1, Lio/appmetrica/analytics/impl/Fo;->a:Lio/appmetrica/analytics/impl/Ho;

    iget-object v2, v1, Lio/appmetrica/analytics/impl/Ho;->a:Lio/appmetrica/analytics/impl/Ko;

    invoke-static {v2}, Lio/appmetrica/analytics/impl/Ho;->a(Lio/appmetrica/analytics/impl/Ko;)V

    iget-object v1, v1, Lio/appmetrica/analytics/impl/Ho;->b:Lio/appmetrica/analytics/impl/Ko;

    invoke-static {v1}, Lio/appmetrica/analytics/impl/Ho;->a(Lio/appmetrica/analytics/impl/Ko;)V

    iget-object v0, v0, Lio/appmetrica/analytics/impl/um;->a:Lio/appmetrica/analytics/coreapi/internal/data/ProtobufStateStorage;

    iget-object v1, p1, Lio/appmetrica/analytics/impl/vm;->c:Lio/appmetrica/analytics/impl/zm;

    invoke-interface {v0, v1}, Lio/appmetrica/analytics/coreapi/internal/data/ProtobufStateStorage;->save(Ljava/lang/Object;)V

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Qm;->a:Lio/appmetrica/analytics/impl/Rm;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Rm;->e:Lio/appmetrica/analytics/impl/xm;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/xm;->a(Lio/appmetrica/analytics/impl/vm;)V

    return-void
.end method

.method public final c()Lio/appmetrica/analytics/networktasks/internal/NetworkTask;
    .locals 3

    iget-object v0, p0, Lio/appmetrica/analytics/impl/Qm;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/Qm;->g()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lio/appmetrica/analytics/impl/Qm;->c:Lio/appmetrica/analytics/networktasks/internal/NetworkTask;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lio/appmetrica/analytics/networktasks/internal/NetworkTask;->isRemoved()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/Qm;->d()Lio/appmetrica/analytics/impl/rm;

    move-result-object v1

    invoke-static {p0, v1}, Lio/appmetrica/analytics/impl/ie;->a(Lio/appmetrica/analytics/impl/Qm;Lio/appmetrica/analytics/impl/rm;)Lio/appmetrica/analytics/networktasks/internal/NetworkTask;

    move-result-object v1

    iput-object v1, p0, Lio/appmetrica/analytics/impl/Qm;->c:Lio/appmetrica/analytics/networktasks/internal/NetworkTask;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_1
    monitor-exit v0

    return-object v1

    :goto_2
    monitor-exit v0

    throw p0
.end method

.method public final d()Lio/appmetrica/analytics/impl/rm;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Qm;->a:Lio/appmetrica/analytics/impl/Rm;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Rm;->l:Lio/appmetrica/analytics/impl/Yl;

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/z5;->a()Lio/appmetrica/analytics/networktasks/internal/BaseRequestConfig;

    move-result-object p0

    check-cast p0, Lio/appmetrica/analytics/impl/rm;

    return-object p0
.end method

.method public final e()Lio/appmetrica/analytics/impl/vm;
    .locals 1

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Qm;->a:Lio/appmetrica/analytics/impl/Rm;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Rm;->l:Lio/appmetrica/analytics/impl/Yl;

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/z5;->c:Lio/appmetrica/analytics/impl/W5;

    iget-object v0, v0, Lio/appmetrica/analytics/impl/W5;->a:Lio/appmetrica/analytics/impl/vm;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final f()V
    .locals 10

    iget-object v0, p0, Lio/appmetrica/analytics/impl/Qm;->a:Lio/appmetrica/analytics/impl/Rm;

    iget-object v0, v0, Lio/appmetrica/analytics/impl/Rm;->l:Lio/appmetrica/analytics/impl/Yl;

    monitor-enter v0

    :try_start_0
    iget-object v1, v0, Lio/appmetrica/analytics/impl/z5;->c:Lio/appmetrica/analytics/impl/W5;

    iget-object v1, v1, Lio/appmetrica/analytics/impl/W5;->a:Lio/appmetrica/analytics/impl/vm;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    iget-object v0, v1, Lio/appmetrica/analytics/impl/vm;->c:Lio/appmetrica/analytics/impl/zm;

    iget-object v2, v0, Lio/appmetrica/analytics/impl/zm;->m:Lio/appmetrica/analytics/impl/z4;

    invoke-virtual {v0, v2}, Lio/appmetrica/analytics/impl/zm;->a(Lio/appmetrica/analytics/impl/z4;)Lio/appmetrica/analytics/impl/ym;

    move-result-object v0

    iget-object v2, v1, Lio/appmetrica/analytics/impl/vm;->a:Ljava/lang/String;

    iget-object v3, v1, Lio/appmetrica/analytics/impl/vm;->b:Ljava/lang/String;

    iget-object v4, p0, Lio/appmetrica/analytics/impl/Qm;->a:Lio/appmetrica/analytics/impl/Rm;

    iget-object v4, v4, Lio/appmetrica/analytics/impl/Rm;->m:Lio/appmetrica/analytics/impl/Hd;

    invoke-virtual {v4}, Lio/appmetrica/analytics/impl/Hd;->a()Lio/appmetrica/analytics/internal/IdentifiersResult;

    move-result-object v4

    iget-object v4, v4, Lio/appmetrica/analytics/internal/IdentifiersResult;->id:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v5, v1, Lio/appmetrica/analytics/impl/vm;->d:Ljava/lang/String;

    invoke-static {v5}, Lio/appmetrica/analytics/coreutils/internal/StringUtils;->isNotNullOrEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, v1, Lio/appmetrica/analytics/impl/vm;->d:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    :cond_0
    iget-object v5, v1, Lio/appmetrica/analytics/impl/vm;->d:Ljava/lang/String;

    sget-object v6, Lio/appmetrica/analytics/impl/Bj;->a:Lio/appmetrica/analytics/impl/ek;

    if-nez v4, :cond_1

    const-string v7, "null_uuid"

    goto :goto_0

    :cond_1
    const-string v7, "wrong_uuid"

    :goto_0
    const-string v8, "_on_service"

    invoke-virtual {v7, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "The only true uuid: "

    const-string v9, "; backup uuid: "

    invoke-static {v8, v4, v9, v5}, Lpg;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v7, v5}, Lio/appmetrica/analytics/impl/ek;->reportError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    if-nez v4, :cond_3

    iget-object v4, v1, Lio/appmetrica/analytics/impl/vm;->d:Ljava/lang/String;

    :cond_3
    iput-object v4, v0, Lio/appmetrica/analytics/impl/ym;->a:Ljava/lang/String;

    iget-object v1, v1, Lio/appmetrica/analytics/impl/vm;->a:Ljava/lang/String;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_5

    :cond_4
    iget-object v1, p0, Lio/appmetrica/analytics/impl/Qm;->a:Lio/appmetrica/analytics/impl/Rm;

    iget-object v1, v1, Lio/appmetrica/analytics/impl/Rm;->h:Lio/appmetrica/analytics/impl/Y7;

    invoke-virtual {v1}, Lio/appmetrica/analytics/impl/Y7;->a()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    :cond_5
    iget-object v1, p0, Lio/appmetrica/analytics/impl/Qm;->a:Lio/appmetrica/analytics/impl/Rm;

    iget-object v1, v1, Lio/appmetrica/analytics/impl/Rm;->c:Lio/appmetrica/analytics/impl/pm;

    iget-object v1, v1, Lio/appmetrica/analytics/impl/pm;->e:Ljava/util/List;

    if-eqz v1, :cond_6

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_6

    goto :goto_1

    :cond_6
    const/4 v1, 0x0

    :goto_1
    iput-object v1, v0, Lio/appmetrica/analytics/impl/ym;->g:Ljava/util/List;

    new-instance v1, Lio/appmetrica/analytics/impl/vm;

    new-instance v4, Lio/appmetrica/analytics/impl/zm;

    invoke-direct {v4, v0}, Lio/appmetrica/analytics/impl/zm;-><init>(Lio/appmetrica/analytics/impl/ym;)V

    invoke-direct {v1, v2, v3, v4}, Lio/appmetrica/analytics/impl/vm;-><init>(Ljava/lang/String;Ljava/lang/String;Lio/appmetrica/analytics/impl/zm;)V

    invoke-virtual {p0, v1}, Lio/appmetrica/analytics/impl/Qm;->b(Lio/appmetrica/analytics/impl/vm;)V

    invoke-virtual {p0, v1}, Lio/appmetrica/analytics/impl/Qm;->a(Lio/appmetrica/analytics/impl/vm;)V

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final g()Z
    .locals 8

    sget-object v0, Lio/appmetrica/analytics/impl/Fa;->I:Lio/appmetrica/analytics/impl/Fa;

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/Fa;->h()Lio/appmetrica/analytics/impl/S6;

    move-result-object v0

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/S6;->isRestrictedForSdk()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/Qm;->e()Lio/appmetrica/analytics/impl/vm;

    move-result-object v0

    sget-object v2, Lio/appmetrica/analytics/impl/sm;->a:Ljava/util/Set;

    iget-boolean v2, v0, Lio/appmetrica/analytics/impl/vm;->w:Z

    const/4 v3, 0x1

    if-nez v2, :cond_2

    iget-wide v4, v0, Lio/appmetrica/analytics/impl/vm;->o:J

    iget-object v2, v0, Lio/appmetrica/analytics/impl/vm;->z:Lio/appmetrica/analytics/impl/Sm;

    iget v2, v2, Lio/appmetrica/analytics/impl/Sm;->a:I

    int-to-long v6, v2

    add-long/2addr v4, v6

    sget-object v2, Lio/appmetrica/analytics/impl/sm;->b:Lio/appmetrica/analytics/coreutils/internal/time/SystemTimeProvider;

    invoke-virtual {v2}, Lio/appmetrica/analytics/coreutils/internal/time/SystemTimeProvider;->currentTimeSeconds()J

    move-result-wide v6

    cmp-long v2, v6, v4

    if-lez v2, :cond_1

    goto :goto_0

    :cond_1
    move v2, v1

    goto :goto_1

    :cond_2
    :goto_0
    move v2, v3

    :goto_1
    if-nez v2, :cond_4

    iget-object v2, v0, Lio/appmetrica/analytics/impl/vm;->d:Ljava/lang/String;

    invoke-static {v2}, Lio/appmetrica/analytics/impl/sm;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, v0, Lio/appmetrica/analytics/impl/vm;->a:Ljava/lang/String;

    invoke-static {v2}, Lio/appmetrica/analytics/impl/sm;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, v0, Lio/appmetrica/analytics/impl/vm;->b:Ljava/lang/String;

    invoke-static {v2}, Lio/appmetrica/analytics/impl/sm;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    move v1, v3

    :cond_3
    xor-int/lit8 v2, v1, 0x1

    iget-object v4, p0, Lio/appmetrica/analytics/impl/Qm;->a:Lio/appmetrica/analytics/impl/Rm;

    iget-object v4, v4, Lio/appmetrica/analytics/impl/Rm;->k:Lio/appmetrica/analytics/impl/Q3;

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/Qm;->d()Lio/appmetrica/analytics/impl/rm;

    move-result-object v5

    iget-object v5, v5, Lio/appmetrica/analytics/impl/rm;->h:Ljava/util/Map;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Qm;->a:Lio/appmetrica/analytics/impl/Rm;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Rm;->j:Lio/appmetrica/analytics/impl/N3;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5, v0, p0}, Lio/appmetrica/analytics/impl/Q3;->a(Ljava/util/Map;Lio/appmetrica/analytics/impl/vm;Lio/appmetrica/analytics/impl/N3;)Z

    move-result p0

    if-eqz v1, :cond_4

    if-nez p0, :cond_4

    return v3

    :cond_4
    return v2
.end method
