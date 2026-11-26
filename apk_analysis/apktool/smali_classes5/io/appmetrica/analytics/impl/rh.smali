.class public final Lio/appmetrica/analytics/impl/rh;
.super Lio/appmetrica/analytics/impl/Y5;
.source "SourceFile"


# instance fields
.field public d:Z

.field public e:Z

.field public f:I

.field public g:I

.field public h:Z

.field public i:I

.field public j:Ljava/lang/Boolean;

.field public k:Lio/appmetrica/analytics/impl/oh;

.field public final l:Lio/appmetrica/analytics/impl/qh;

.field public m:Ljava/lang/String;

.field public n:Z

.field public o:Z

.field public p:Ljava/lang/String;

.field public q:Ljava/util/List;

.field public r:I

.field public s:J

.field public t:J

.field public u:Z

.field public v:J

.field public w:Ljava/util/List;

.field public x:Ljava/util/Set;

.field public y:Z


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/i5;)V
    .locals 1

    invoke-direct {p0}, Lio/appmetrica/analytics/impl/Y5;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/rh;->x:Ljava/util/Set;

    iput-object p1, p0, Lio/appmetrica/analytics/impl/rh;->l:Lio/appmetrica/analytics/impl/qh;

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 0

    .line 7
    iput p1, p0, Lio/appmetrica/analytics/impl/rh;->r:I

    return-void
.end method

.method public final a(J)V
    .locals 0

    .line 5
    iput-wide p1, p0, Lio/appmetrica/analytics/impl/rh;->v:J

    return-void
.end method

.method public final a(Ljava/lang/Boolean;Lio/appmetrica/analytics/impl/oh;)V
    .locals 0

    iput-object p1, p0, Lio/appmetrica/analytics/impl/rh;->j:Ljava/lang/Boolean;

    iput-object p2, p0, Lio/appmetrica/analytics/impl/rh;->k:Lio/appmetrica/analytics/impl/oh;

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

    .line 6
    iput-object p1, p0, Lio/appmetrica/analytics/impl/rh;->w:Ljava/util/List;

    return-void
.end method

.method public final a(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 9
    iput-object p1, p0, Lio/appmetrica/analytics/impl/rh;->x:Ljava/util/Set;

    return-void
.end method

.method public final a(Z)V
    .locals 0

    .line 8
    iput-boolean p1, p0, Lio/appmetrica/analytics/impl/rh;->u:Z

    return-void
.end method

.method public final b(I)V
    .locals 0

    .line 5
    iput p1, p0, Lio/appmetrica/analytics/impl/rh;->g:I

    return-void
.end method

.method public final b(J)V
    .locals 0

    .line 3
    iput-wide p1, p0, Lio/appmetrica/analytics/impl/rh;->s:J

    return-void
.end method

.method public final b(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lio/appmetrica/analytics/impl/rh;->q:Ljava/util/List;

    return-void
.end method

.method public final b(Z)V
    .locals 0

    .line 4
    iput-boolean p1, p0, Lio/appmetrica/analytics/impl/rh;->o:Z

    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/rh;->m:Ljava/lang/String;

    return-object p0
.end method

.method public final c(I)V
    .locals 0

    .line 5
    iput p1, p0, Lio/appmetrica/analytics/impl/rh;->i:I

    return-void
.end method

.method public final c(J)V
    .locals 0

    .line 3
    iput-wide p1, p0, Lio/appmetrica/analytics/impl/rh;->t:J

    return-void
.end method

.method public final c(Z)V
    .locals 0

    .line 4
    iput-boolean p1, p0, Lio/appmetrica/analytics/impl/rh;->e:Z

    return-void
.end method

.method public final d()I
    .locals 0

    .line 4
    iget p0, p0, Lio/appmetrica/analytics/impl/rh;->r:I

    return p0
.end method

.method public final d(I)V
    .locals 0

    .line 3
    iput p1, p0, Lio/appmetrica/analytics/impl/rh;->f:I

    return-void
.end method

.method public final d(Z)V
    .locals 0

    iput-boolean p1, p0, Lio/appmetrica/analytics/impl/rh;->d:Z

    return-void
.end method

.method public final e()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 3
    iget-object p0, p0, Lio/appmetrica/analytics/impl/rh;->x:Ljava/util/Set;

    return-object p0
.end method

.method public final e(Z)V
    .locals 0

    iput-boolean p1, p0, Lio/appmetrica/analytics/impl/rh;->h:Z

    return-void
.end method

.method public final f()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 3
    iget-object p0, p0, Lio/appmetrica/analytics/impl/rh;->w:Ljava/util/List;

    return-object p0
.end method

.method public final f(Z)V
    .locals 0

    iput-boolean p1, p0, Lio/appmetrica/analytics/impl/rh;->n:Z

    return-void
.end method

.method public final g()Z
    .locals 0

    iget-boolean p0, p0, Lio/appmetrica/analytics/impl/rh;->u:Z

    return p0
.end method

.method public final h()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lio/appmetrica/analytics/impl/rh;->p:Ljava/lang/String;

    const-string v0, ""

    invoke-static {p0, v0}, Lio/appmetrica/analytics/coreutils/internal/WrapUtils;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public final i()Z
    .locals 1

    iget-object v0, p0, Lio/appmetrica/analytics/impl/rh;->k:Lio/appmetrica/analytics/impl/oh;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/rh;->j:Ljava/lang/Boolean;

    invoke-interface {v0, p0}, Lio/appmetrica/analytics/impl/oh;->a(Ljava/lang/Boolean;)Z

    move-result p0

    return p0
.end method

.method public final j()I
    .locals 0

    iget p0, p0, Lio/appmetrica/analytics/impl/rh;->g:I

    return p0
.end method

.method public final k()J
    .locals 2

    iget-wide v0, p0, Lio/appmetrica/analytics/impl/rh;->v:J

    return-wide v0
.end method

.method public final l()I
    .locals 0

    iget p0, p0, Lio/appmetrica/analytics/impl/rh;->i:I

    return p0
.end method

.method public final m()J
    .locals 2

    iget-wide v0, p0, Lio/appmetrica/analytics/impl/rh;->s:J

    return-wide v0
.end method

.method public final n()J
    .locals 2

    iget-wide v0, p0, Lio/appmetrica/analytics/impl/rh;->t:J

    return-wide v0
.end method

.method public final o()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lio/appmetrica/analytics/impl/rh;->q:Ljava/util/List;

    return-object p0
.end method

.method public final p()I
    .locals 0

    iget p0, p0, Lio/appmetrica/analytics/impl/rh;->f:I

    return p0
.end method

.method public final q()Z
    .locals 0

    iget-boolean p0, p0, Lio/appmetrica/analytics/impl/rh;->o:Z

    return p0
.end method

.method public final r()Z
    .locals 0

    iget-boolean p0, p0, Lio/appmetrica/analytics/impl/rh;->e:Z

    return p0
.end method

.method public final s()Z
    .locals 0

    iget-boolean p0, p0, Lio/appmetrica/analytics/impl/rh;->d:Z

    return p0
.end method

.method public final t()Z
    .locals 0

    iget-boolean p0, p0, Lio/appmetrica/analytics/impl/rh;->y:Z

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ReportRequestConfig{mLocationTracking="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lio/appmetrica/analytics/impl/rh;->d:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mFirstActivationAsUpdate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lio/appmetrica/analytics/impl/rh;->e:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mSessionTimeout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/appmetrica/analytics/impl/rh;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mDispatchPeriod="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/appmetrica/analytics/impl/rh;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mLogEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lio/appmetrica/analytics/impl/rh;->h:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mMaxReportsCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/appmetrica/analytics/impl/rh;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", dataSendingEnabledFromArguments="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/rh;->j:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", dataSendingStrategy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/rh;->k:Lio/appmetrica/analytics/impl/oh;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mPreloadInfoSendingStrategy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/rh;->l:Lio/appmetrica/analytics/impl/qh;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mApiKey=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/rh;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', mPermissionsCollectingEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lio/appmetrica/analytics/impl/rh;->n:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mFeaturesCollectingEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lio/appmetrica/analytics/impl/rh;->o:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mClidsFromStartupResponse=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/rh;->p:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', mReportHosts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/rh;->q:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mAttributionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/appmetrica/analytics/impl/rh;->r:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mPermissionsCollectingIntervalSeconds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lio/appmetrica/analytics/impl/rh;->s:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mPermissionsForceSendIntervalSeconds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lio/appmetrica/analytics/impl/rh;->t:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mClidsFromClientMatchClidsFromStartupRequest="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lio/appmetrica/analytics/impl/rh;->u:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mMaxReportsInDbCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lio/appmetrica/analytics/impl/rh;->v:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mCertificates="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/rh;->w:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "} "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Lio/appmetrica/analytics/impl/Y5;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final u()Z
    .locals 0

    iget-boolean p0, p0, Lio/appmetrica/analytics/impl/rh;->n:Z

    return p0
.end method

.method public final v()Z
    .locals 1

    invoke-virtual {p0}, Lio/appmetrica/analytics/networktasks/internal/BaseRequestConfig;->isIdentifiersValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/appmetrica/analytics/impl/rh;->q:Ljava/util/List;

    invoke-static {v0}, Lio/appmetrica/analytics/impl/xo;->a(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean p0, p0, Lio/appmetrica/analytics/impl/rh;->u:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final w()Z
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/rh;->l:Lio/appmetrica/analytics/impl/qh;

    check-cast p0, Lio/appmetrica/analytics/impl/i5;

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/i5;->B()Z

    move-result p0

    return p0
.end method
