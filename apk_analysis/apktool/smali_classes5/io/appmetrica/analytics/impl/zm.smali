.class public final Lio/appmetrica/analytics/impl/zm;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final A:Ljava/util/Map;

.field public final B:Lio/appmetrica/analytics/impl/O9;

.field public final a:Ljava/lang/String;

.field public final b:Ljava/util/List;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/util/List;

.field public final g:Ljava/util/List;

.field public final h:Ljava/util/List;

.field public final i:Ljava/util/Map;

.field public final j:Ljava/lang/String;

.field public final k:Ljava/lang/String;

.field public final l:Ljava/lang/String;

.field public final m:Lio/appmetrica/analytics/impl/z4;

.field public final n:J

.field public final o:Z

.field public final p:Z

.field public final q:Ljava/lang/String;

.field public final r:Lio/appmetrica/analytics/impl/Wm;

.field public final s:Lio/appmetrica/analytics/impl/He;

.field public final t:Lio/appmetrica/analytics/networktasks/internal/RetryPolicyConfig;

.field public final u:J

.field public final v:J

.field public final w:Z

.field public final x:Lio/appmetrica/analytics/impl/q3;

.field public final y:Lio/appmetrica/analytics/impl/B2;

.field public final z:Lio/appmetrica/analytics/impl/Sm;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/ym;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lio/appmetrica/analytics/impl/ym;->a:Ljava/lang/String;

    iput-object v0, p0, Lio/appmetrica/analytics/impl/zm;->a:Ljava/lang/String;

    iget-object v0, p1, Lio/appmetrica/analytics/impl/ym;->b:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lio/appmetrica/analytics/coreutils/internal/collection/CollectionUtils;->unmodifiableListCopy(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lio/appmetrica/analytics/impl/zm;->b:Ljava/util/List;

    iget-object v0, p1, Lio/appmetrica/analytics/impl/ym;->c:Ljava/lang/String;

    iput-object v0, p0, Lio/appmetrica/analytics/impl/zm;->c:Ljava/lang/String;

    iget-object v0, p1, Lio/appmetrica/analytics/impl/ym;->d:Ljava/lang/String;

    iput-object v0, p0, Lio/appmetrica/analytics/impl/zm;->d:Ljava/lang/String;

    iget-object v0, p1, Lio/appmetrica/analytics/impl/ym;->e:Ljava/lang/String;

    iput-object v0, p0, Lio/appmetrica/analytics/impl/zm;->e:Ljava/lang/String;

    iget-object v0, p1, Lio/appmetrica/analytics/impl/ym;->f:Ljava/util/List;

    if-nez v0, :cond_1

    move-object v0, v1

    goto :goto_1

    :cond_1
    invoke-static {v0}, Lio/appmetrica/analytics/coreutils/internal/collection/CollectionUtils;->unmodifiableListCopy(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lio/appmetrica/analytics/impl/zm;->f:Ljava/util/List;

    iget-object v0, p1, Lio/appmetrica/analytics/impl/ym;->g:Ljava/util/List;

    if-nez v0, :cond_2

    move-object v0, v1

    goto :goto_2

    :cond_2
    invoke-static {v0}, Lio/appmetrica/analytics/coreutils/internal/collection/CollectionUtils;->unmodifiableListCopy(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    :goto_2
    iput-object v0, p0, Lio/appmetrica/analytics/impl/zm;->g:Ljava/util/List;

    iget-object v0, p1, Lio/appmetrica/analytics/impl/ym;->h:Ljava/util/List;

    if-nez v0, :cond_3

    move-object v0, v1

    goto :goto_3

    :cond_3
    invoke-static {v0}, Lio/appmetrica/analytics/coreutils/internal/collection/CollectionUtils;->unmodifiableListCopy(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    :goto_3
    iput-object v0, p0, Lio/appmetrica/analytics/impl/zm;->h:Ljava/util/List;

    iget-object v0, p1, Lio/appmetrica/analytics/impl/ym;->i:Ljava/util/Map;

    if-nez v0, :cond_4

    goto :goto_4

    :cond_4
    invoke-static {v0}, Lio/appmetrica/analytics/coreutils/internal/collection/CollectionUtils;->unmodifiableMapCopy(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    :goto_4
    iput-object v1, p0, Lio/appmetrica/analytics/impl/zm;->i:Ljava/util/Map;

    iget-object v0, p1, Lio/appmetrica/analytics/impl/ym;->j:Ljava/lang/String;

    iput-object v0, p0, Lio/appmetrica/analytics/impl/zm;->j:Ljava/lang/String;

    iget-object v0, p1, Lio/appmetrica/analytics/impl/ym;->k:Ljava/lang/String;

    iput-object v0, p0, Lio/appmetrica/analytics/impl/zm;->k:Ljava/lang/String;

    iget-object v0, p1, Lio/appmetrica/analytics/impl/ym;->m:Lio/appmetrica/analytics/impl/z4;

    iput-object v0, p0, Lio/appmetrica/analytics/impl/zm;->m:Lio/appmetrica/analytics/impl/z4;

    iget-object v0, p1, Lio/appmetrica/analytics/impl/ym;->n:Lio/appmetrica/analytics/impl/He;

    iput-object v0, p0, Lio/appmetrica/analytics/impl/zm;->s:Lio/appmetrica/analytics/impl/He;

    iget-wide v0, p1, Lio/appmetrica/analytics/impl/ym;->o:J

    iput-wide v0, p0, Lio/appmetrica/analytics/impl/zm;->n:J

    iget-boolean v0, p1, Lio/appmetrica/analytics/impl/ym;->p:Z

    iput-boolean v0, p0, Lio/appmetrica/analytics/impl/zm;->o:Z

    iget-object v0, p1, Lio/appmetrica/analytics/impl/ym;->l:Ljava/lang/String;

    iput-object v0, p0, Lio/appmetrica/analytics/impl/zm;->l:Ljava/lang/String;

    iget-boolean v0, p1, Lio/appmetrica/analytics/impl/ym;->q:Z

    iput-boolean v0, p0, Lio/appmetrica/analytics/impl/zm;->p:Z

    invoke-static {p1}, Lio/appmetrica/analytics/impl/ym;->a(Lio/appmetrica/analytics/impl/ym;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/appmetrica/analytics/impl/zm;->q:Ljava/lang/String;

    iget-object v0, p1, Lio/appmetrica/analytics/impl/ym;->s:Lio/appmetrica/analytics/impl/Wm;

    iput-object v0, p0, Lio/appmetrica/analytics/impl/zm;->r:Lio/appmetrica/analytics/impl/Wm;

    invoke-static {p1}, Lio/appmetrica/analytics/impl/ym;->b(Lio/appmetrica/analytics/impl/ym;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/appmetrica/analytics/impl/zm;->u:J

    invoke-static {p1}, Lio/appmetrica/analytics/impl/ym;->c(Lio/appmetrica/analytics/impl/ym;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/appmetrica/analytics/impl/zm;->v:J

    iget-boolean v0, p1, Lio/appmetrica/analytics/impl/ym;->v:Z

    iput-boolean v0, p0, Lio/appmetrica/analytics/impl/zm;->w:Z

    iget-object v0, p1, Lio/appmetrica/analytics/impl/ym;->w:Lio/appmetrica/analytics/networktasks/internal/RetryPolicyConfig;

    if-nez v0, :cond_5

    new-instance v0, Lio/appmetrica/analytics/impl/Mm;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/Mm;-><init>()V

    new-instance v1, Lio/appmetrica/analytics/networktasks/internal/RetryPolicyConfig;

    iget v2, v0, Lio/appmetrica/analytics/impl/Mm;->w:I

    iget v0, v0, Lio/appmetrica/analytics/impl/Mm;->x:I

    invoke-direct {v1, v2, v0}, Lio/appmetrica/analytics/networktasks/internal/RetryPolicyConfig;-><init>(II)V

    iput-object v1, p0, Lio/appmetrica/analytics/impl/zm;->t:Lio/appmetrica/analytics/networktasks/internal/RetryPolicyConfig;

    goto :goto_5

    :cond_5
    iput-object v0, p0, Lio/appmetrica/analytics/impl/zm;->t:Lio/appmetrica/analytics/networktasks/internal/RetryPolicyConfig;

    :goto_5
    iget-object v0, p1, Lio/appmetrica/analytics/impl/ym;->x:Lio/appmetrica/analytics/impl/q3;

    iput-object v0, p0, Lio/appmetrica/analytics/impl/zm;->x:Lio/appmetrica/analytics/impl/q3;

    iget-object v0, p1, Lio/appmetrica/analytics/impl/ym;->y:Lio/appmetrica/analytics/impl/B2;

    iput-object v0, p0, Lio/appmetrica/analytics/impl/zm;->y:Lio/appmetrica/analytics/impl/B2;

    invoke-static {p1}, Lio/appmetrica/analytics/impl/ym;->d(Lio/appmetrica/analytics/impl/ym;)Lio/appmetrica/analytics/impl/Sm;

    move-result-object v0

    if-nez v0, :cond_6

    new-instance v0, Lio/appmetrica/analytics/impl/Sm;

    sget-object v1, Lio/appmetrica/analytics/impl/U7;->b:Lio/appmetrica/analytics/impl/Km;

    iget v1, v1, Lio/appmetrica/analytics/impl/Km;->a:I

    invoke-direct {v0, v1}, Lio/appmetrica/analytics/impl/Sm;-><init>(I)V

    goto :goto_6

    :cond_6
    invoke-static {p1}, Lio/appmetrica/analytics/impl/ym;->d(Lio/appmetrica/analytics/impl/ym;)Lio/appmetrica/analytics/impl/Sm;

    move-result-object v0

    :goto_6
    iput-object v0, p0, Lio/appmetrica/analytics/impl/zm;->z:Lio/appmetrica/analytics/impl/Sm;

    invoke-static {p1}, Lio/appmetrica/analytics/impl/ym;->e(Lio/appmetrica/analytics/impl/ym;)Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_7

    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    goto :goto_7

    :cond_7
    invoke-static {p1}, Lio/appmetrica/analytics/impl/ym;->e(Lio/appmetrica/analytics/impl/ym;)Ljava/util/Map;

    move-result-object v0

    :goto_7
    iput-object v0, p0, Lio/appmetrica/analytics/impl/zm;->A:Ljava/util/Map;

    invoke-static {p1}, Lio/appmetrica/analytics/impl/ym;->f(Lio/appmetrica/analytics/impl/ym;)Lio/appmetrica/analytics/impl/O9;

    move-result-object p1

    iput-object p1, p0, Lio/appmetrica/analytics/impl/zm;->B:Lio/appmetrica/analytics/impl/O9;

    return-void
.end method


# virtual methods
.method public final a(Lio/appmetrica/analytics/impl/z4;)Lio/appmetrica/analytics/impl/ym;
    .locals 3

    new-instance v0, Lio/appmetrica/analytics/impl/ym;

    invoke-direct {v0, p1}, Lio/appmetrica/analytics/impl/ym;-><init>(Lio/appmetrica/analytics/impl/z4;)V

    iget-object p1, p0, Lio/appmetrica/analytics/impl/zm;->a:Ljava/lang/String;

    iput-object p1, v0, Lio/appmetrica/analytics/impl/ym;->a:Ljava/lang/String;

    iget-object p1, p0, Lio/appmetrica/analytics/impl/zm;->f:Ljava/util/List;

    iput-object p1, v0, Lio/appmetrica/analytics/impl/ym;->f:Ljava/util/List;

    iget-object p1, p0, Lio/appmetrica/analytics/impl/zm;->g:Ljava/util/List;

    iput-object p1, v0, Lio/appmetrica/analytics/impl/ym;->g:Ljava/util/List;

    iget-object p1, p0, Lio/appmetrica/analytics/impl/zm;->j:Ljava/lang/String;

    iput-object p1, v0, Lio/appmetrica/analytics/impl/ym;->j:Ljava/lang/String;

    iget-object p1, p0, Lio/appmetrica/analytics/impl/zm;->b:Ljava/util/List;

    iput-object p1, v0, Lio/appmetrica/analytics/impl/ym;->b:Ljava/util/List;

    iget-object p1, p0, Lio/appmetrica/analytics/impl/zm;->c:Ljava/lang/String;

    iput-object p1, v0, Lio/appmetrica/analytics/impl/ym;->c:Ljava/lang/String;

    iget-object p1, p0, Lio/appmetrica/analytics/impl/zm;->d:Ljava/lang/String;

    iput-object p1, v0, Lio/appmetrica/analytics/impl/ym;->d:Ljava/lang/String;

    iget-object p1, p0, Lio/appmetrica/analytics/impl/zm;->e:Ljava/lang/String;

    iput-object p1, v0, Lio/appmetrica/analytics/impl/ym;->e:Ljava/lang/String;

    iget-object p1, p0, Lio/appmetrica/analytics/impl/zm;->h:Ljava/util/List;

    iput-object p1, v0, Lio/appmetrica/analytics/impl/ym;->h:Ljava/util/List;

    iget-object p1, p0, Lio/appmetrica/analytics/impl/zm;->i:Ljava/util/Map;

    iput-object p1, v0, Lio/appmetrica/analytics/impl/ym;->i:Ljava/util/Map;

    iget-object p1, p0, Lio/appmetrica/analytics/impl/zm;->k:Ljava/lang/String;

    iput-object p1, v0, Lio/appmetrica/analytics/impl/ym;->k:Ljava/lang/String;

    iget-object p1, p0, Lio/appmetrica/analytics/impl/zm;->l:Ljava/lang/String;

    iput-object p1, v0, Lio/appmetrica/analytics/impl/ym;->l:Ljava/lang/String;

    iget-boolean p1, p0, Lio/appmetrica/analytics/impl/zm;->p:Z

    iput-boolean p1, v0, Lio/appmetrica/analytics/impl/ym;->q:Z

    iget-wide v1, p0, Lio/appmetrica/analytics/impl/zm;->n:J

    iput-wide v1, v0, Lio/appmetrica/analytics/impl/ym;->o:J

    iget-boolean p1, p0, Lio/appmetrica/analytics/impl/zm;->o:Z

    iput-boolean p1, v0, Lio/appmetrica/analytics/impl/ym;->p:Z

    iget-object p1, p0, Lio/appmetrica/analytics/impl/zm;->q:Ljava/lang/String;

    iput-object p1, v0, Lio/appmetrica/analytics/impl/ym;->r:Ljava/lang/String;

    iget-object p1, p0, Lio/appmetrica/analytics/impl/zm;->s:Lio/appmetrica/analytics/impl/He;

    iput-object p1, v0, Lio/appmetrica/analytics/impl/ym;->n:Lio/appmetrica/analytics/impl/He;

    iget-wide v1, p0, Lio/appmetrica/analytics/impl/zm;->u:J

    iput-wide v1, v0, Lio/appmetrica/analytics/impl/ym;->t:J

    iget-wide v1, p0, Lio/appmetrica/analytics/impl/zm;->v:J

    iput-wide v1, v0, Lio/appmetrica/analytics/impl/ym;->u:J

    iget-object p1, p0, Lio/appmetrica/analytics/impl/zm;->r:Lio/appmetrica/analytics/impl/Wm;

    iput-object p1, v0, Lio/appmetrica/analytics/impl/ym;->s:Lio/appmetrica/analytics/impl/Wm;

    iget-boolean p1, p0, Lio/appmetrica/analytics/impl/zm;->w:Z

    iput-boolean p1, v0, Lio/appmetrica/analytics/impl/ym;->v:Z

    iget-object p1, p0, Lio/appmetrica/analytics/impl/zm;->t:Lio/appmetrica/analytics/networktasks/internal/RetryPolicyConfig;

    iput-object p1, v0, Lio/appmetrica/analytics/impl/ym;->w:Lio/appmetrica/analytics/networktasks/internal/RetryPolicyConfig;

    iget-object p1, p0, Lio/appmetrica/analytics/impl/zm;->x:Lio/appmetrica/analytics/impl/q3;

    iput-object p1, v0, Lio/appmetrica/analytics/impl/ym;->x:Lio/appmetrica/analytics/impl/q3;

    iget-object p1, p0, Lio/appmetrica/analytics/impl/zm;->y:Lio/appmetrica/analytics/impl/B2;

    iput-object p1, v0, Lio/appmetrica/analytics/impl/ym;->y:Lio/appmetrica/analytics/impl/B2;

    iget-object p1, p0, Lio/appmetrica/analytics/impl/zm;->z:Lio/appmetrica/analytics/impl/Sm;

    iput-object p1, v0, Lio/appmetrica/analytics/impl/ym;->z:Lio/appmetrica/analytics/impl/Sm;

    iget-object p1, p0, Lio/appmetrica/analytics/impl/zm;->A:Ljava/util/Map;

    iput-object p1, v0, Lio/appmetrica/analytics/impl/ym;->A:Ljava/util/Map;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/zm;->B:Lio/appmetrica/analytics/impl/O9;

    iput-object p0, v0, Lio/appmetrica/analytics/impl/ym;->B:Lio/appmetrica/analytics/impl/O9;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "StartupStateModel{uuid=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lio/appmetrica/analytics/impl/zm;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', reportUrls="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/zm;->b:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", getAdUrl=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/zm;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', reportAdUrl=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/zm;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', certificateUrl=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/zm;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', hostUrlsFromStartup="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/zm;->f:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", hostUrlsFromClient="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/zm;->g:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", diagnosticUrls="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/zm;->h:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", customSdkHosts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/zm;->i:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", encodedClidsFromResponse=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/zm;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', lastClientClidsForStartupRequest=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/zm;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', lastChosenForRequestClids=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/zm;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', collectingFlags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/zm;->m:Lio/appmetrica/analytics/impl/z4;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", obtainTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lio/appmetrica/analytics/impl/zm;->n:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", hadFirstStartup="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lio/appmetrica/analytics/impl/zm;->o:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", startupDidNotOverrideClids="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lio/appmetrica/analytics/impl/zm;->p:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", countryInit=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/zm;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', statSending="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/zm;->r:Lio/appmetrica/analytics/impl/Wm;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", permissionsCollectingConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/zm;->s:Lio/appmetrica/analytics/impl/He;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", retryPolicyConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/zm;->t:Lio/appmetrica/analytics/networktasks/internal/RetryPolicyConfig;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", obtainServerTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lio/appmetrica/analytics/impl/zm;->u:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", firstStartupServerTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lio/appmetrica/analytics/impl/zm;->v:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", outdated="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lio/appmetrica/analytics/impl/zm;->w:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", cacheControl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/zm;->x:Lio/appmetrica/analytics/impl/q3;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", attributionConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/zm;->y:Lio/appmetrica/analytics/impl/B2;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", startupUpdateConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/zm;->z:Lio/appmetrica/analytics/impl/Sm;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", modulesRemoteConfigs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/zm;->A:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", externalAttributionConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/zm;->B:Lio/appmetrica/analytics/impl/O9;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
