.class public final Lio/appmetrica/analytics/impl/wm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/coreapi/internal/data/ProtobufConverter;


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/Ie;

.field public final b:Lio/appmetrica/analytics/impl/ua;

.field public final c:Lio/appmetrica/analytics/impl/Xm;

.field public final d:Lio/appmetrica/analytics/impl/s3;

.field public final e:Lio/appmetrica/analytics/impl/C2;

.field public final f:Lio/appmetrica/analytics/impl/K6;

.field public final g:Lio/appmetrica/analytics/impl/Tm;

.field public final h:Lio/appmetrica/analytics/impl/Bd;

.field public final i:Lio/appmetrica/analytics/impl/P9;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lio/appmetrica/analytics/impl/Ie;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/Ie;-><init>()V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/wm;->a:Lio/appmetrica/analytics/impl/Ie;

    new-instance v0, Lio/appmetrica/analytics/impl/ua;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/ua;-><init>()V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/wm;->b:Lio/appmetrica/analytics/impl/ua;

    new-instance v0, Lio/appmetrica/analytics/impl/Xm;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/Xm;-><init>()V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/wm;->c:Lio/appmetrica/analytics/impl/Xm;

    new-instance v0, Lio/appmetrica/analytics/impl/s3;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/s3;-><init>()V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/wm;->d:Lio/appmetrica/analytics/impl/s3;

    new-instance v0, Lio/appmetrica/analytics/impl/C2;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/C2;-><init>()V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/wm;->e:Lio/appmetrica/analytics/impl/C2;

    new-instance v0, Lio/appmetrica/analytics/impl/K6;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/K6;-><init>()V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/wm;->f:Lio/appmetrica/analytics/impl/K6;

    new-instance v0, Lio/appmetrica/analytics/impl/Tm;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/Tm;-><init>()V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/wm;->g:Lio/appmetrica/analytics/impl/Tm;

    new-instance v0, Lio/appmetrica/analytics/impl/Bd;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/Bd;-><init>()V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/wm;->h:Lio/appmetrica/analytics/impl/Bd;

    new-instance v0, Lio/appmetrica/analytics/impl/P9;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/P9;-><init>()V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/wm;->i:Lio/appmetrica/analytics/impl/P9;

    return-void
.end method


# virtual methods
.method public final a(Lio/appmetrica/analytics/impl/zm;)Lio/appmetrica/analytics/impl/Mm;
    .locals 5

    new-instance v0, Lio/appmetrica/analytics/impl/Mm;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/Mm;-><init>()V

    iget-wide v1, p1, Lio/appmetrica/analytics/impl/zm;->u:J

    iput-wide v1, v0, Lio/appmetrica/analytics/impl/Mm;->s:J

    iget-wide v1, p1, Lio/appmetrica/analytics/impl/zm;->v:J

    iput-wide v1, v0, Lio/appmetrica/analytics/impl/Mm;->t:J

    iget-object v1, p1, Lio/appmetrica/analytics/impl/zm;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    iput-object v1, v0, Lio/appmetrica/analytics/impl/Mm;->a:Ljava/lang/String;

    :cond_0
    iget-object v1, p1, Lio/appmetrica/analytics/impl/zm;->f:Ljava/util/List;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, v0, Lio/appmetrica/analytics/impl/Mm;->f:[Ljava/lang/String;

    :cond_1
    iget-object v1, p1, Lio/appmetrica/analytics/impl/zm;->g:Ljava/util/List;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, v0, Lio/appmetrica/analytics/impl/Mm;->g:[Ljava/lang/String;

    :cond_2
    iget-object v1, p1, Lio/appmetrica/analytics/impl/zm;->b:Ljava/util/List;

    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, v0, Lio/appmetrica/analytics/impl/Mm;->c:[Ljava/lang/String;

    :cond_3
    iget-object v1, p1, Lio/appmetrica/analytics/impl/zm;->h:Ljava/util/List;

    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, v0, Lio/appmetrica/analytics/impl/Mm;->o:[Ljava/lang/String;

    :cond_4
    iget-object v1, p1, Lio/appmetrica/analytics/impl/zm;->i:Ljava/util/Map;

    if-eqz v1, :cond_5

    iget-object v2, p0, Lio/appmetrica/analytics/impl/wm;->f:Lio/appmetrica/analytics/impl/K6;

    invoke-virtual {v2, v1}, Lio/appmetrica/analytics/impl/K6;->a(Ljava/util/Map;)[Lio/appmetrica/analytics/impl/Fm;

    move-result-object v1

    iput-object v1, v0, Lio/appmetrica/analytics/impl/Mm;->h:[Lio/appmetrica/analytics/impl/Fm;

    :cond_5
    iget-object v1, p1, Lio/appmetrica/analytics/impl/zm;->s:Lio/appmetrica/analytics/impl/He;

    if-eqz v1, :cond_6

    iget-object v2, p0, Lio/appmetrica/analytics/impl/wm;->a:Lio/appmetrica/analytics/impl/Ie;

    invoke-virtual {v2, v1}, Lio/appmetrica/analytics/impl/Ie;->a(Lio/appmetrica/analytics/impl/He;)Lio/appmetrica/analytics/impl/Jm;

    move-result-object v1

    iput-object v1, v0, Lio/appmetrica/analytics/impl/Mm;->v:Lio/appmetrica/analytics/impl/Jm;

    :cond_6
    iget-object v1, p1, Lio/appmetrica/analytics/impl/zm;->j:Ljava/lang/String;

    if-eqz v1, :cond_7

    iput-object v1, v0, Lio/appmetrica/analytics/impl/Mm;->j:Ljava/lang/String;

    :cond_7
    iget-object v1, p1, Lio/appmetrica/analytics/impl/zm;->c:Ljava/lang/String;

    if-eqz v1, :cond_8

    iput-object v1, v0, Lio/appmetrica/analytics/impl/Mm;->d:Ljava/lang/String;

    :cond_8
    iget-object v1, p1, Lio/appmetrica/analytics/impl/zm;->d:Ljava/lang/String;

    if-eqz v1, :cond_9

    iput-object v1, v0, Lio/appmetrica/analytics/impl/Mm;->e:Ljava/lang/String;

    :cond_9
    iget-object v1, p1, Lio/appmetrica/analytics/impl/zm;->e:Ljava/lang/String;

    if-eqz v1, :cond_a

    iput-object v1, v0, Lio/appmetrica/analytics/impl/Mm;->r:Ljava/lang/String;

    :cond_a
    iget-object v1, p0, Lio/appmetrica/analytics/impl/wm;->b:Lio/appmetrica/analytics/impl/ua;

    iget-object v2, p1, Lio/appmetrica/analytics/impl/zm;->m:Lio/appmetrica/analytics/impl/z4;

    invoke-virtual {v1, v2}, Lio/appmetrica/analytics/impl/ua;->a(Lio/appmetrica/analytics/impl/z4;)Lio/appmetrica/analytics/impl/Hm;

    move-result-object v1

    iput-object v1, v0, Lio/appmetrica/analytics/impl/Mm;->i:Lio/appmetrica/analytics/impl/Hm;

    iget-object v1, p1, Lio/appmetrica/analytics/impl/zm;->k:Ljava/lang/String;

    if-eqz v1, :cond_b

    iput-object v1, v0, Lio/appmetrica/analytics/impl/Mm;->k:Ljava/lang/String;

    :cond_b
    iget-object v1, p1, Lio/appmetrica/analytics/impl/zm;->l:Ljava/lang/String;

    if-eqz v1, :cond_c

    iput-object v1, v0, Lio/appmetrica/analytics/impl/Mm;->l:Ljava/lang/String;

    :cond_c
    iget-boolean v1, p1, Lio/appmetrica/analytics/impl/zm;->p:Z

    iput-boolean v1, v0, Lio/appmetrica/analytics/impl/Mm;->m:Z

    iget-wide v1, p1, Lio/appmetrica/analytics/impl/zm;->n:J

    iput-wide v1, v0, Lio/appmetrica/analytics/impl/Mm;->b:J

    iget-boolean v1, p1, Lio/appmetrica/analytics/impl/zm;->o:Z

    iput-boolean v1, v0, Lio/appmetrica/analytics/impl/Mm;->q:Z

    iget-object v1, p1, Lio/appmetrica/analytics/impl/zm;->t:Lio/appmetrica/analytics/networktasks/internal/RetryPolicyConfig;

    iget v2, v1, Lio/appmetrica/analytics/networktasks/internal/RetryPolicyConfig;->maxIntervalSeconds:I

    iput v2, v0, Lio/appmetrica/analytics/impl/Mm;->w:I

    iget v1, v1, Lio/appmetrica/analytics/networktasks/internal/RetryPolicyConfig;->exponentialMultiplier:I

    iput v1, v0, Lio/appmetrica/analytics/impl/Mm;->x:I

    iget-object v1, p1, Lio/appmetrica/analytics/impl/zm;->q:Ljava/lang/String;

    if-eqz v1, :cond_d

    iput-object v1, v0, Lio/appmetrica/analytics/impl/Mm;->n:Ljava/lang/String;

    :cond_d
    iget-object v1, p1, Lio/appmetrica/analytics/impl/zm;->r:Lio/appmetrica/analytics/impl/Wm;

    if-eqz v1, :cond_e

    iget-object v2, p0, Lio/appmetrica/analytics/impl/wm;->c:Lio/appmetrica/analytics/impl/Xm;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lio/appmetrica/analytics/impl/Lm;

    invoke-direct {v2}, Lio/appmetrica/analytics/impl/Lm;-><init>()V

    iget-wide v3, v1, Lio/appmetrica/analytics/impl/Wm;->a:J

    iput-wide v3, v2, Lio/appmetrica/analytics/impl/Lm;->a:J

    iput-object v2, v0, Lio/appmetrica/analytics/impl/Mm;->p:Lio/appmetrica/analytics/impl/Lm;

    :cond_e
    iget-boolean v1, p1, Lio/appmetrica/analytics/impl/zm;->w:Z

    iput-boolean v1, v0, Lio/appmetrica/analytics/impl/Mm;->u:Z

    iget-object v1, p1, Lio/appmetrica/analytics/impl/zm;->x:Lio/appmetrica/analytics/impl/q3;

    if-eqz v1, :cond_f

    iget-object v2, p0, Lio/appmetrica/analytics/impl/wm;->d:Lio/appmetrica/analytics/impl/s3;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lio/appmetrica/analytics/impl/Em;

    invoke-direct {v2}, Lio/appmetrica/analytics/impl/Em;-><init>()V

    iget-wide v3, v1, Lio/appmetrica/analytics/impl/q3;->a:J

    iput-wide v3, v2, Lio/appmetrica/analytics/impl/Em;->a:J

    iput-object v2, v0, Lio/appmetrica/analytics/impl/Mm;->y:Lio/appmetrica/analytics/impl/Em;

    :cond_f
    iget-object v1, p1, Lio/appmetrica/analytics/impl/zm;->y:Lio/appmetrica/analytics/impl/B2;

    if-eqz v1, :cond_10

    iget-object v2, p0, Lio/appmetrica/analytics/impl/wm;->e:Lio/appmetrica/analytics/impl/C2;

    invoke-virtual {v2, v1}, Lio/appmetrica/analytics/impl/C2;->a(Lio/appmetrica/analytics/impl/B2;)Lio/appmetrica/analytics/impl/Dm;

    move-result-object v1

    iput-object v1, v0, Lio/appmetrica/analytics/impl/Mm;->z:Lio/appmetrica/analytics/impl/Dm;

    :cond_10
    iget-object v1, p0, Lio/appmetrica/analytics/impl/wm;->g:Lio/appmetrica/analytics/impl/Tm;

    iget-object v2, p1, Lio/appmetrica/analytics/impl/zm;->z:Lio/appmetrica/analytics/impl/Sm;

    invoke-virtual {v1, v2}, Lio/appmetrica/analytics/impl/Tm;->a(Lio/appmetrica/analytics/impl/Sm;)Lio/appmetrica/analytics/impl/Km;

    move-result-object v1

    iput-object v1, v0, Lio/appmetrica/analytics/impl/Mm;->A:Lio/appmetrica/analytics/impl/Km;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/wm;->h:Lio/appmetrica/analytics/impl/Bd;

    iget-object v2, p1, Lio/appmetrica/analytics/impl/zm;->A:Ljava/util/Map;

    invoke-virtual {v1, v2}, Lio/appmetrica/analytics/impl/Bd;->a(Ljava/util/Map;)[Lio/appmetrica/analytics/impl/Im;

    move-result-object v1

    iput-object v1, v0, Lio/appmetrica/analytics/impl/Mm;->B:[Lio/appmetrica/analytics/impl/Im;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/wm;->i:Lio/appmetrica/analytics/impl/P9;

    iget-object p1, p1, Lio/appmetrica/analytics/impl/zm;->B:Lio/appmetrica/analytics/impl/O9;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/P9;->a(Lio/appmetrica/analytics/impl/O9;)Lio/appmetrica/analytics/impl/Gm;

    move-result-object p0

    iput-object p0, v0, Lio/appmetrica/analytics/impl/Mm;->C:Lio/appmetrica/analytics/impl/Gm;

    return-object v0
.end method

.method public final a(Lio/appmetrica/analytics/impl/Mm;)Lio/appmetrica/analytics/impl/zm;
    .locals 7

    .line 276
    new-instance v0, Lio/appmetrica/analytics/impl/ym;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/wm;->b:Lio/appmetrica/analytics/impl/ua;

    iget-object v2, p1, Lio/appmetrica/analytics/impl/Mm;->i:Lio/appmetrica/analytics/impl/Hm;

    .line 277
    invoke-virtual {v1, v2}, Lio/appmetrica/analytics/impl/ua;->a(Lio/appmetrica/analytics/impl/Hm;)Lio/appmetrica/analytics/impl/z4;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/appmetrica/analytics/impl/ym;-><init>(Lio/appmetrica/analytics/impl/z4;)V

    iget-object v1, p1, Lio/appmetrica/analytics/impl/Mm;->a:Ljava/lang/String;

    .line 278
    iput-object v1, v0, Lio/appmetrica/analytics/impl/ym;->a:Ljava/lang/String;

    .line 279
    iget-object v1, p1, Lio/appmetrica/analytics/impl/Mm;->j:Ljava/lang/String;

    .line 280
    iput-object v1, v0, Lio/appmetrica/analytics/impl/ym;->j:Ljava/lang/String;

    .line 281
    iget-object v1, p1, Lio/appmetrica/analytics/impl/Mm;->d:Ljava/lang/String;

    .line 282
    iput-object v1, v0, Lio/appmetrica/analytics/impl/ym;->c:Ljava/lang/String;

    .line 283
    iget-object v1, p1, Lio/appmetrica/analytics/impl/Mm;->c:[Ljava/lang/String;

    .line 284
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 285
    iput-object v1, v0, Lio/appmetrica/analytics/impl/ym;->b:Ljava/util/List;

    .line 286
    iget-object v1, p1, Lio/appmetrica/analytics/impl/Mm;->g:[Ljava/lang/String;

    .line 287
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 288
    iput-object v1, v0, Lio/appmetrica/analytics/impl/ym;->g:Ljava/util/List;

    .line 289
    iget-object v1, p1, Lio/appmetrica/analytics/impl/Mm;->f:[Ljava/lang/String;

    .line 290
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 291
    iput-object v1, v0, Lio/appmetrica/analytics/impl/ym;->f:Ljava/util/List;

    .line 292
    iget-object v1, p1, Lio/appmetrica/analytics/impl/Mm;->e:Ljava/lang/String;

    .line 293
    iput-object v1, v0, Lio/appmetrica/analytics/impl/ym;->d:Ljava/lang/String;

    .line 294
    iget-object v1, p1, Lio/appmetrica/analytics/impl/Mm;->r:Ljava/lang/String;

    .line 295
    iput-object v1, v0, Lio/appmetrica/analytics/impl/ym;->e:Ljava/lang/String;

    .line 296
    iget-object v1, p1, Lio/appmetrica/analytics/impl/Mm;->o:[Ljava/lang/String;

    .line 297
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 298
    iput-object v1, v0, Lio/appmetrica/analytics/impl/ym;->h:Ljava/util/List;

    .line 299
    iget-object v1, p1, Lio/appmetrica/analytics/impl/Mm;->k:Ljava/lang/String;

    .line 300
    iput-object v1, v0, Lio/appmetrica/analytics/impl/ym;->k:Ljava/lang/String;

    .line 301
    iget-object v1, p1, Lio/appmetrica/analytics/impl/Mm;->l:Ljava/lang/String;

    .line 302
    iput-object v1, v0, Lio/appmetrica/analytics/impl/ym;->l:Ljava/lang/String;

    .line 303
    iget-boolean v1, p1, Lio/appmetrica/analytics/impl/Mm;->m:Z

    .line 304
    iput-boolean v1, v0, Lio/appmetrica/analytics/impl/ym;->q:Z

    .line 305
    iget-wide v1, p1, Lio/appmetrica/analytics/impl/Mm;->b:J

    .line 306
    iput-wide v1, v0, Lio/appmetrica/analytics/impl/ym;->o:J

    .line 307
    iget-boolean v1, p1, Lio/appmetrica/analytics/impl/Mm;->q:Z

    .line 308
    iput-boolean v1, v0, Lio/appmetrica/analytics/impl/ym;->p:Z

    .line 309
    iget-wide v1, p1, Lio/appmetrica/analytics/impl/Mm;->s:J

    .line 310
    iput-wide v1, v0, Lio/appmetrica/analytics/impl/ym;->t:J

    .line 311
    iget-wide v1, p1, Lio/appmetrica/analytics/impl/Mm;->t:J

    .line 312
    iput-wide v1, v0, Lio/appmetrica/analytics/impl/ym;->u:J

    .line 313
    iget-object v1, p1, Lio/appmetrica/analytics/impl/Mm;->n:Ljava/lang/String;

    .line 314
    iput-object v1, v0, Lio/appmetrica/analytics/impl/ym;->r:Ljava/lang/String;

    .line 315
    iget-boolean v1, p1, Lio/appmetrica/analytics/impl/Mm;->u:Z

    .line 316
    iput-boolean v1, v0, Lio/appmetrica/analytics/impl/ym;->v:Z

    .line 317
    new-instance v1, Lio/appmetrica/analytics/networktasks/internal/RetryPolicyConfig;

    iget v2, p1, Lio/appmetrica/analytics/impl/Mm;->w:I

    iget v3, p1, Lio/appmetrica/analytics/impl/Mm;->x:I

    invoke-direct {v1, v2, v3}, Lio/appmetrica/analytics/networktasks/internal/RetryPolicyConfig;-><init>(II)V

    .line 318
    iput-object v1, v0, Lio/appmetrica/analytics/impl/ym;->w:Lio/appmetrica/analytics/networktasks/internal/RetryPolicyConfig;

    .line 319
    iget-object v1, p0, Lio/appmetrica/analytics/impl/wm;->f:Lio/appmetrica/analytics/impl/K6;

    iget-object v2, p1, Lio/appmetrica/analytics/impl/Mm;->h:[Lio/appmetrica/analytics/impl/Fm;

    .line 320
    invoke-virtual {v1, v2}, Lio/appmetrica/analytics/impl/K6;->a([Lio/appmetrica/analytics/impl/Fm;)Ljava/util/Map;

    move-result-object v1

    .line 321
    iput-object v1, v0, Lio/appmetrica/analytics/impl/ym;->i:Ljava/util/Map;

    .line 322
    iget-object v1, p1, Lio/appmetrica/analytics/impl/Mm;->v:Lio/appmetrica/analytics/impl/Jm;

    if-eqz v1, :cond_0

    .line 323
    iget-object v2, p0, Lio/appmetrica/analytics/impl/wm;->a:Lio/appmetrica/analytics/impl/Ie;

    .line 324
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 325
    new-instance v2, Lio/appmetrica/analytics/impl/He;

    iget-wide v3, v1, Lio/appmetrica/analytics/impl/Jm;->a:J

    iget-wide v5, v1, Lio/appmetrica/analytics/impl/Jm;->b:J

    invoke-direct {v2, v3, v4, v5, v6}, Lio/appmetrica/analytics/impl/He;-><init>(JJ)V

    .line 326
    iput-object v2, v0, Lio/appmetrica/analytics/impl/ym;->n:Lio/appmetrica/analytics/impl/He;

    .line 327
    :cond_0
    iget-object v1, p1, Lio/appmetrica/analytics/impl/Mm;->p:Lio/appmetrica/analytics/impl/Lm;

    if-eqz v1, :cond_1

    .line 328
    iget-object v2, p0, Lio/appmetrica/analytics/impl/wm;->c:Lio/appmetrica/analytics/impl/Xm;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 329
    new-instance v2, Lio/appmetrica/analytics/impl/Wm;

    iget-wide v3, v1, Lio/appmetrica/analytics/impl/Lm;->a:J

    invoke-direct {v2, v3, v4}, Lio/appmetrica/analytics/impl/Wm;-><init>(J)V

    .line 330
    iput-object v2, v0, Lio/appmetrica/analytics/impl/ym;->s:Lio/appmetrica/analytics/impl/Wm;

    .line 331
    :cond_1
    iget-object v1, p1, Lio/appmetrica/analytics/impl/Mm;->y:Lio/appmetrica/analytics/impl/Em;

    if-eqz v1, :cond_2

    .line 332
    iget-object v2, p0, Lio/appmetrica/analytics/impl/wm;->d:Lio/appmetrica/analytics/impl/s3;

    .line 333
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 334
    new-instance v2, Lio/appmetrica/analytics/impl/q3;

    iget-wide v3, v1, Lio/appmetrica/analytics/impl/Em;->a:J

    invoke-direct {v2, v3, v4}, Lio/appmetrica/analytics/impl/q3;-><init>(J)V

    .line 335
    iput-object v2, v0, Lio/appmetrica/analytics/impl/ym;->x:Lio/appmetrica/analytics/impl/q3;

    .line 336
    :cond_2
    iget-object v1, p1, Lio/appmetrica/analytics/impl/Mm;->z:Lio/appmetrica/analytics/impl/Dm;

    if-eqz v1, :cond_3

    .line 337
    iget-object v2, p0, Lio/appmetrica/analytics/impl/wm;->e:Lio/appmetrica/analytics/impl/C2;

    invoke-virtual {v2, v1}, Lio/appmetrica/analytics/impl/C2;->a(Lio/appmetrica/analytics/impl/Dm;)Lio/appmetrica/analytics/impl/B2;

    move-result-object v1

    .line 338
    iput-object v1, v0, Lio/appmetrica/analytics/impl/ym;->y:Lio/appmetrica/analytics/impl/B2;

    .line 339
    :cond_3
    iget-object v1, p1, Lio/appmetrica/analytics/impl/Mm;->A:Lio/appmetrica/analytics/impl/Km;

    if-eqz v1, :cond_4

    .line 340
    iget-object v2, p0, Lio/appmetrica/analytics/impl/wm;->g:Lio/appmetrica/analytics/impl/Tm;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 341
    new-instance v2, Lio/appmetrica/analytics/impl/Sm;

    iget v1, v1, Lio/appmetrica/analytics/impl/Km;->a:I

    invoke-direct {v2, v1}, Lio/appmetrica/analytics/impl/Sm;-><init>(I)V

    .line 342
    iput-object v2, v0, Lio/appmetrica/analytics/impl/ym;->z:Lio/appmetrica/analytics/impl/Sm;

    .line 343
    :cond_4
    iget-object v1, p0, Lio/appmetrica/analytics/impl/wm;->h:Lio/appmetrica/analytics/impl/Bd;

    iget-object v2, p1, Lio/appmetrica/analytics/impl/Mm;->B:[Lio/appmetrica/analytics/impl/Im;

    invoke-virtual {v1, v2}, Lio/appmetrica/analytics/impl/Bd;->a([Lio/appmetrica/analytics/impl/Im;)Ljava/util/Map;

    move-result-object v1

    .line 344
    iput-object v1, v0, Lio/appmetrica/analytics/impl/ym;->A:Ljava/util/Map;

    .line 345
    iget-object p1, p1, Lio/appmetrica/analytics/impl/Mm;->C:Lio/appmetrica/analytics/impl/Gm;

    if-eqz p1, :cond_5

    .line 346
    iget-object p0, p0, Lio/appmetrica/analytics/impl/wm;->i:Lio/appmetrica/analytics/impl/P9;

    .line 347
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 348
    new-instance p0, Lio/appmetrica/analytics/impl/O9;

    .line 349
    iget-wide v1, p1, Lio/appmetrica/analytics/impl/Gm;->a:J

    .line 350
    invoke-direct {p0, v1, v2}, Lio/appmetrica/analytics/impl/O9;-><init>(J)V

    .line 351
    iput-object p0, v0, Lio/appmetrica/analytics/impl/ym;->B:Lio/appmetrica/analytics/impl/O9;

    .line 352
    :cond_5
    new-instance p0, Lio/appmetrica/analytics/impl/zm;

    .line 353
    invoke-direct {p0, v0}, Lio/appmetrica/analytics/impl/zm;-><init>(Lio/appmetrica/analytics/impl/ym;)V

    return-object p0
.end method

.method public final bridge synthetic fromModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lio/appmetrica/analytics/impl/zm;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/wm;->a(Lio/appmetrica/analytics/impl/zm;)Lio/appmetrica/analytics/impl/Mm;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic toModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lio/appmetrica/analytics/impl/Mm;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/wm;->a(Lio/appmetrica/analytics/impl/Mm;)Lio/appmetrica/analytics/impl/zm;

    move-result-object p0

    return-object p0
.end method
