.class public final Lio/appmetrica/analytics/impl/rm;
.super Lio/appmetrica/analytics/impl/Y5;
.source "SourceFile"


# instance fields
.field public d:Ljava/util/List;

.field public e:Ljava/util/List;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/util/Map;

.field public i:Lio/appmetrica/analytics/impl/F3;

.field public j:Ljava/util/List;

.field public k:Z

.field public l:Z

.field public m:Ljava/lang/String;

.field public n:J

.field public final o:Lio/appmetrica/analytics/impl/sg;

.field public final p:Lio/appmetrica/analytics/impl/T7;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 22
    invoke-static {}, Lio/appmetrica/analytics/impl/Fa;->k()Lio/appmetrica/analytics/impl/Fa;

    move-result-object v0

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/Fa;->u()Lio/appmetrica/analytics/impl/sg;

    move-result-object v0

    new-instance v1, Lio/appmetrica/analytics/impl/T7;

    invoke-direct {v1}, Lio/appmetrica/analytics/impl/T7;-><init>()V

    .line 23
    invoke-direct {p0, v0, v1}, Lio/appmetrica/analytics/impl/rm;-><init>(Lio/appmetrica/analytics/impl/sg;Lio/appmetrica/analytics/impl/T7;)V

    return-void
.end method

.method public constructor <init>(Lio/appmetrica/analytics/impl/sg;Lio/appmetrica/analytics/impl/T7;)V
    .locals 3

    invoke-direct {p0}, Lio/appmetrica/analytics/impl/Y5;-><init>()V

    new-instance v0, Lio/appmetrica/analytics/impl/F3;

    sget-object v1, Lio/appmetrica/analytics/impl/f8;->d:Lio/appmetrica/analytics/impl/f8;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lio/appmetrica/analytics/impl/F3;-><init>(Ljava/util/Map;Lio/appmetrica/analytics/impl/f8;)V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/rm;->i:Lio/appmetrica/analytics/impl/F3;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lio/appmetrica/analytics/impl/rm;->n:J

    iput-object p1, p0, Lio/appmetrica/analytics/impl/rm;->o:Lio/appmetrica/analytics/impl/sg;

    iput-object p2, p0, Lio/appmetrica/analytics/impl/rm;->p:Lio/appmetrica/analytics/impl/T7;

    return-void
.end method


# virtual methods
.method public final a(J)J
    .locals 4

    iget-wide v0, p0, Lio/appmetrica/analytics/impl/rm;->n:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    iput-wide p1, p0, Lio/appmetrica/analytics/impl/rm;->n:J

    return-wide p1

    :cond_0
    return-wide v0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    .line 14
    iput-object p1, p0, Lio/appmetrica/analytics/impl/rm;->m:Ljava/lang/String;

    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 12
    iput-object p1, p0, Lio/appmetrica/analytics/impl/rm;->j:Ljava/util/List;

    return-void
.end method

.method public final a(Z)V
    .locals 0

    .line 13
    iput-boolean p1, p0, Lio/appmetrica/analytics/impl/rm;->k:Z

    return-void
.end method

.method public final c()Lio/appmetrica/analytics/impl/F3;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/rm;->i:Lio/appmetrica/analytics/impl/F3;

    return-object p0
.end method

.method public final d()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lio/appmetrica/analytics/impl/rm;->h:Ljava/util/Map;

    return-object p0
.end method

.method public final e()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/rm;->m:Ljava/lang/String;

    return-object p0
.end method

.method public final f()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/rm;->f:Ljava/lang/String;

    return-object p0
.end method

.method public final g()J
    .locals 2

    iget-wide v0, p0, Lio/appmetrica/analytics/impl/rm;->n:J

    return-wide v0
.end method

.method public final h()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/rm;->g:Ljava/lang/String;

    return-object p0
.end method

.method public final i()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lio/appmetrica/analytics/impl/rm;->j:Ljava/util/List;

    return-object p0
.end method

.method public final j()Lio/appmetrica/analytics/impl/sg;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/rm;->o:Lio/appmetrica/analytics/impl/sg;

    return-object p0
.end method

.method public final k()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iget-object v1, p0, Lio/appmetrica/analytics/impl/rm;->d:Ljava/util/List;

    invoke-static {v1}, Lio/appmetrica/analytics/impl/xo;->a(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lio/appmetrica/analytics/impl/rm;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_0
    iget-object v1, p0, Lio/appmetrica/analytics/impl/rm;->e:Ljava/util/List;

    invoke-static {v1}, Lio/appmetrica/analytics/impl/xo;->a(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lio/appmetrica/analytics/impl/rm;->e:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_1
    iget-object p0, p0, Lio/appmetrica/analytics/impl/rm;->p:Lio/appmetrica/analytics/impl/T7;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/T7;->a:Lio/appmetrica/analytics/impl/jn;

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/Ki;->a()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz p0, :cond_6

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    array-length v4, p0

    move v5, v1

    :goto_0
    if-ge v5, v4, :cond_4

    aget-object v6, p0, v5

    if-eqz v6, :cond_2

    invoke-static {v6}, Lta8;->M(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    goto :goto_1

    :cond_2
    move-object v6, v2

    :goto_1
    if-eqz v6, :cond_3

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_5

    goto :goto_2

    :cond_5
    move-object v3, v2

    :goto_2
    if-eqz v3, :cond_6

    goto :goto_5

    :cond_6
    sget-object p0, Lio/appmetrica/analytics/BuildConfig;->DEFAULT_HOSTS:[Ljava/lang/String;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    array-length v4, p0

    :goto_3
    if-ge v1, v4, :cond_9

    aget-object v5, p0, v1

    if-eqz v5, :cond_7

    invoke-static {v5}, Lta8;->M(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_7

    goto :goto_4

    :cond_7
    move-object v5, v2

    :goto_4
    if-eqz v5, :cond_8

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_9
    :goto_5
    invoke-interface {v0, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p0
.end method

.method public final l()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lio/appmetrica/analytics/impl/rm;->e:Ljava/util/List;

    return-object p0
.end method

.method public final m()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lio/appmetrica/analytics/impl/rm;->d:Ljava/util/List;

    return-object p0
.end method

.method public final n()Z
    .locals 0

    iget-boolean p0, p0, Lio/appmetrica/analytics/impl/rm;->k:Z

    return p0
.end method

.method public final o()Z
    .locals 0

    iget-boolean p0, p0, Lio/appmetrica/analytics/impl/rm;->l:Z

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "StartupRequestConfig{mStartupHostsFromStartup="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lio/appmetrica/analytics/impl/rm;->d:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mStartupHostsFromClient="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/rm;->e:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mDistributionReferrer=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/rm;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', mInstallReferrerSource=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/rm;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', mClidsFromClient="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/rm;->h:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mNewCustomHosts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/rm;->j:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mHasNewCustomHosts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lio/appmetrica/analytics/impl/rm;->k:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mSuccessfulStartup="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lio/appmetrica/analytics/impl/rm;->l:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mCountryInit=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/rm;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', mFirstStartupTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lio/appmetrica/analytics/impl/rm;->n:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "} "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Lio/appmetrica/analytics/impl/Y5;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
