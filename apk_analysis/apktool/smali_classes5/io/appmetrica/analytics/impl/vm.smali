.class public final Lio/appmetrica/analytics/impl/vm;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final A:Ljava/util/Map;

.field public final B:Lio/appmetrica/analytics/impl/O9;

.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Lio/appmetrica/analytics/impl/zm;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/util/List;

.field public final f:Ljava/util/List;

.field public final g:Ljava/util/List;

.field public final h:Ljava/util/Map;

.field public final i:Ljava/lang/String;

.field public final j:Ljava/lang/String;

.field public final k:Ljava/lang/String;

.field public final l:Ljava/lang/String;

.field public final m:Ljava/lang/String;

.field public final n:Lio/appmetrica/analytics/impl/z4;

.field public final o:J

.field public final p:Z

.field public final q:Z

.field public final r:Ljava/lang/String;

.field public final s:Lio/appmetrica/analytics/impl/He;

.field public final t:Lio/appmetrica/analytics/networktasks/internal/RetryPolicyConfig;

.field public final u:J

.field public final v:J

.field public final w:Z

.field public final x:Lio/appmetrica/analytics/impl/q3;

.field public final y:Lio/appmetrica/analytics/impl/B2;

.field public final z:Lio/appmetrica/analytics/impl/Sm;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lio/appmetrica/analytics/impl/zm;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/vm;->a:Ljava/lang/String;

    iput-object p2, p0, Lio/appmetrica/analytics/impl/vm;->b:Ljava/lang/String;

    iput-object p3, p0, Lio/appmetrica/analytics/impl/vm;->c:Lio/appmetrica/analytics/impl/zm;

    iget-object p1, p3, Lio/appmetrica/analytics/impl/zm;->a:Ljava/lang/String;

    iput-object p1, p0, Lio/appmetrica/analytics/impl/vm;->d:Ljava/lang/String;

    iget-object p1, p3, Lio/appmetrica/analytics/impl/zm;->b:Ljava/util/List;

    iput-object p1, p0, Lio/appmetrica/analytics/impl/vm;->e:Ljava/util/List;

    iget-object p1, p3, Lio/appmetrica/analytics/impl/zm;->f:Ljava/util/List;

    iput-object p1, p0, Lio/appmetrica/analytics/impl/vm;->f:Ljava/util/List;

    iget-object p1, p3, Lio/appmetrica/analytics/impl/zm;->g:Ljava/util/List;

    iput-object p1, p0, Lio/appmetrica/analytics/impl/vm;->g:Ljava/util/List;

    iget-object p1, p3, Lio/appmetrica/analytics/impl/zm;->i:Ljava/util/Map;

    iput-object p1, p0, Lio/appmetrica/analytics/impl/vm;->h:Ljava/util/Map;

    iget-object p1, p3, Lio/appmetrica/analytics/impl/zm;->c:Ljava/lang/String;

    iput-object p1, p0, Lio/appmetrica/analytics/impl/vm;->i:Ljava/lang/String;

    iget-object p1, p3, Lio/appmetrica/analytics/impl/zm;->d:Ljava/lang/String;

    iput-object p1, p0, Lio/appmetrica/analytics/impl/vm;->j:Ljava/lang/String;

    iget-object p1, p3, Lio/appmetrica/analytics/impl/zm;->j:Ljava/lang/String;

    iput-object p1, p0, Lio/appmetrica/analytics/impl/vm;->k:Ljava/lang/String;

    iget-object p1, p3, Lio/appmetrica/analytics/impl/zm;->k:Ljava/lang/String;

    iput-object p1, p0, Lio/appmetrica/analytics/impl/vm;->l:Ljava/lang/String;

    iget-object p1, p3, Lio/appmetrica/analytics/impl/zm;->l:Ljava/lang/String;

    iput-object p1, p0, Lio/appmetrica/analytics/impl/vm;->m:Ljava/lang/String;

    iget-object p1, p3, Lio/appmetrica/analytics/impl/zm;->m:Lio/appmetrica/analytics/impl/z4;

    iput-object p1, p0, Lio/appmetrica/analytics/impl/vm;->n:Lio/appmetrica/analytics/impl/z4;

    iget-wide p1, p3, Lio/appmetrica/analytics/impl/zm;->n:J

    iput-wide p1, p0, Lio/appmetrica/analytics/impl/vm;->o:J

    iget-boolean p1, p3, Lio/appmetrica/analytics/impl/zm;->o:Z

    iput-boolean p1, p0, Lio/appmetrica/analytics/impl/vm;->p:Z

    iget-boolean p1, p3, Lio/appmetrica/analytics/impl/zm;->p:Z

    iput-boolean p1, p0, Lio/appmetrica/analytics/impl/vm;->q:Z

    iget-object p1, p3, Lio/appmetrica/analytics/impl/zm;->q:Ljava/lang/String;

    iput-object p1, p0, Lio/appmetrica/analytics/impl/vm;->r:Ljava/lang/String;

    iget-object p1, p3, Lio/appmetrica/analytics/impl/zm;->s:Lio/appmetrica/analytics/impl/He;

    iput-object p1, p0, Lio/appmetrica/analytics/impl/vm;->s:Lio/appmetrica/analytics/impl/He;

    iget-object p1, p3, Lio/appmetrica/analytics/impl/zm;->t:Lio/appmetrica/analytics/networktasks/internal/RetryPolicyConfig;

    iput-object p1, p0, Lio/appmetrica/analytics/impl/vm;->t:Lio/appmetrica/analytics/networktasks/internal/RetryPolicyConfig;

    iget-wide p1, p3, Lio/appmetrica/analytics/impl/zm;->u:J

    iput-wide p1, p0, Lio/appmetrica/analytics/impl/vm;->u:J

    iget-wide p1, p3, Lio/appmetrica/analytics/impl/zm;->v:J

    iput-wide p1, p0, Lio/appmetrica/analytics/impl/vm;->v:J

    iget-boolean p1, p3, Lio/appmetrica/analytics/impl/zm;->w:Z

    iput-boolean p1, p0, Lio/appmetrica/analytics/impl/vm;->w:Z

    iget-object p1, p3, Lio/appmetrica/analytics/impl/zm;->x:Lio/appmetrica/analytics/impl/q3;

    iput-object p1, p0, Lio/appmetrica/analytics/impl/vm;->x:Lio/appmetrica/analytics/impl/q3;

    iget-object p1, p3, Lio/appmetrica/analytics/impl/zm;->y:Lio/appmetrica/analytics/impl/B2;

    iput-object p1, p0, Lio/appmetrica/analytics/impl/vm;->y:Lio/appmetrica/analytics/impl/B2;

    iget-object p1, p3, Lio/appmetrica/analytics/impl/zm;->z:Lio/appmetrica/analytics/impl/Sm;

    iput-object p1, p0, Lio/appmetrica/analytics/impl/vm;->z:Lio/appmetrica/analytics/impl/Sm;

    iget-object p1, p3, Lio/appmetrica/analytics/impl/zm;->A:Ljava/util/Map;

    iput-object p1, p0, Lio/appmetrica/analytics/impl/vm;->A:Ljava/util/Map;

    iget-object p1, p3, Lio/appmetrica/analytics/impl/zm;->B:Lio/appmetrica/analytics/impl/O9;

    iput-object p1, p0, Lio/appmetrica/analytics/impl/vm;->B:Lio/appmetrica/analytics/impl/O9;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/vm;->a:Ljava/lang/String;

    return-object p0
.end method

.method public final b()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/vm;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final c()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/vm;->d:Ljava/lang/String;

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "StartupState(deviceId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lio/appmetrica/analytics/impl/vm;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", deviceIdHash="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/vm;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", startupStateModel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/vm;->c:Lio/appmetrica/analytics/impl/zm;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
