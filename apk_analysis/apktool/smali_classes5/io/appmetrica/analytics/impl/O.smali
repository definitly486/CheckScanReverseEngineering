.class public final Lio/appmetrica/analytics/impl/O;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/mf;

.field public final b:Lio/appmetrica/analytics/coreutils/internal/toggle/SavableToggle;

.field public final c:Lio/appmetrica/analytics/coreutils/internal/toggle/OuterStateToggle;

.field public final d:Lio/appmetrica/analytics/coreutils/internal/toggle/OuterStateToggle;

.field public final e:Lio/appmetrica/analytics/coreutils/internal/toggle/ConjunctiveCompositeThreadSafeToggle;

.field public final f:Lio/appmetrica/analytics/coreutils/internal/toggle/ConjunctiveCompositeThreadSafeToggle;

.field public final g:Lio/appmetrica/analytics/coreutils/internal/toggle/SavableToggle;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/vm;)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lio/appmetrica/analytics/impl/Fa;->k()Lio/appmetrica/analytics/impl/Fa;

    move-result-object v0

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/Fa;->y()Lio/appmetrica/analytics/impl/mf;

    move-result-object v0

    iput-object v0, p0, Lio/appmetrica/analytics/impl/O;->a:Lio/appmetrica/analytics/impl/mf;

    new-instance v0, Lio/appmetrica/analytics/coreutils/internal/toggle/SavableToggle;

    new-instance v1, Lio/appmetrica/analytics/impl/N;

    invoke-direct {v1, p0}, Lio/appmetrica/analytics/impl/N;-><init>(Lio/appmetrica/analytics/impl/O;)V

    const-string v2, "advIdsFromClientApi"

    invoke-direct {v0, v2, v1}, Lio/appmetrica/analytics/coreutils/internal/toggle/SavableToggle;-><init>(Ljava/lang/String;Lio/appmetrica/analytics/coreapi/internal/data/Savable;)V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/O;->b:Lio/appmetrica/analytics/coreutils/internal/toggle/SavableToggle;

    new-instance v1, Lio/appmetrica/analytics/coreutils/internal/toggle/OuterStateToggle;

    const-string v2, "GAID-remote-config"

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2}, Lio/appmetrica/analytics/coreutils/internal/toggle/OuterStateToggle;-><init>(ZLjava/lang/String;)V

    iput-object v1, p0, Lio/appmetrica/analytics/impl/O;->c:Lio/appmetrica/analytics/coreutils/internal/toggle/OuterStateToggle;

    new-instance v2, Lio/appmetrica/analytics/coreutils/internal/toggle/OuterStateToggle;

    const-string v4, "HOAID-remote-config"

    invoke-direct {v2, v3, v4}, Lio/appmetrica/analytics/coreutils/internal/toggle/OuterStateToggle;-><init>(ZLjava/lang/String;)V

    iput-object v2, p0, Lio/appmetrica/analytics/impl/O;->d:Lio/appmetrica/analytics/coreutils/internal/toggle/OuterStateToggle;

    new-instance v4, Lio/appmetrica/analytics/coreutils/internal/toggle/ConjunctiveCompositeThreadSafeToggle;

    const/4 v5, 0x2

    new-array v6, v5, [Lio/appmetrica/analytics/coreutils/internal/toggle/SimpleThreadSafeToggle;

    aput-object v0, v6, v3

    const/4 v7, 0x1

    aput-object v1, v6, v7

    invoke-static {v6}, Lu96;->i([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v6, "GAID"

    invoke-direct {v4, v1, v6}, Lio/appmetrica/analytics/coreutils/internal/toggle/ConjunctiveCompositeThreadSafeToggle;-><init>(Ljava/util/List;Ljava/lang/String;)V

    iput-object v4, p0, Lio/appmetrica/analytics/impl/O;->e:Lio/appmetrica/analytics/coreutils/internal/toggle/ConjunctiveCompositeThreadSafeToggle;

    new-instance v1, Lio/appmetrica/analytics/coreutils/internal/toggle/ConjunctiveCompositeThreadSafeToggle;

    new-array v4, v5, [Lio/appmetrica/analytics/coreutils/internal/toggle/SimpleThreadSafeToggle;

    aput-object v0, v4, v3

    aput-object v2, v4, v7

    invoke-static {v4}, Lu96;->i([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-string v3, "HOAID"

    invoke-direct {v1, v2, v3}, Lio/appmetrica/analytics/coreutils/internal/toggle/ConjunctiveCompositeThreadSafeToggle;-><init>(Ljava/util/List;Ljava/lang/String;)V

    iput-object v1, p0, Lio/appmetrica/analytics/impl/O;->f:Lio/appmetrica/analytics/coreutils/internal/toggle/ConjunctiveCompositeThreadSafeToggle;

    iput-object v0, p0, Lio/appmetrica/analytics/impl/O;->g:Lio/appmetrica/analytics/coreutils/internal/toggle/SavableToggle;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/O;->a(Lio/appmetrica/analytics/impl/vm;)V

    return-void
.end method


# virtual methods
.method public final a()Lio/appmetrica/analytics/impl/L;
    .locals 4

    new-instance v0, Lio/appmetrica/analytics/impl/L;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/O;->e:Lio/appmetrica/analytics/coreutils/internal/toggle/ConjunctiveCompositeThreadSafeToggle;

    invoke-virtual {v1}, Lio/appmetrica/analytics/coreutils/internal/toggle/ConjunctiveCompositeThreadSafeToggle;->getActualState()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lio/appmetrica/analytics/impl/M;->a:Lio/appmetrica/analytics/impl/M;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lio/appmetrica/analytics/impl/O;->b:Lio/appmetrica/analytics/coreutils/internal/toggle/SavableToggle;

    invoke-virtual {v1}, Lio/appmetrica/analytics/coreutils/internal/toggle/SimpleThreadSafeToggle;->getActualState()Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lio/appmetrica/analytics/impl/M;->b:Lio/appmetrica/analytics/impl/M;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lio/appmetrica/analytics/impl/O;->c:Lio/appmetrica/analytics/coreutils/internal/toggle/OuterStateToggle;

    invoke-virtual {v1}, Lio/appmetrica/analytics/coreutils/internal/toggle/SimpleThreadSafeToggle;->getActualState()Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lio/appmetrica/analytics/impl/M;->c:Lio/appmetrica/analytics/impl/M;

    goto :goto_0

    :cond_2
    sget-object v1, Lio/appmetrica/analytics/impl/M;->d:Lio/appmetrica/analytics/impl/M;

    :goto_0
    iget-object v2, p0, Lio/appmetrica/analytics/impl/O;->f:Lio/appmetrica/analytics/coreutils/internal/toggle/ConjunctiveCompositeThreadSafeToggle;

    invoke-virtual {v2}, Lio/appmetrica/analytics/coreutils/internal/toggle/ConjunctiveCompositeThreadSafeToggle;->getActualState()Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v2, Lio/appmetrica/analytics/impl/M;->a:Lio/appmetrica/analytics/impl/M;

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lio/appmetrica/analytics/impl/O;->b:Lio/appmetrica/analytics/coreutils/internal/toggle/SavableToggle;

    invoke-virtual {v2}, Lio/appmetrica/analytics/coreutils/internal/toggle/SimpleThreadSafeToggle;->getActualState()Z

    move-result v2

    if-nez v2, :cond_4

    sget-object v2, Lio/appmetrica/analytics/impl/M;->b:Lio/appmetrica/analytics/impl/M;

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lio/appmetrica/analytics/impl/O;->d:Lio/appmetrica/analytics/coreutils/internal/toggle/OuterStateToggle;

    invoke-virtual {v2}, Lio/appmetrica/analytics/coreutils/internal/toggle/SimpleThreadSafeToggle;->getActualState()Z

    move-result v2

    if-nez v2, :cond_5

    sget-object v2, Lio/appmetrica/analytics/impl/M;->c:Lio/appmetrica/analytics/impl/M;

    goto :goto_1

    :cond_5
    sget-object v2, Lio/appmetrica/analytics/impl/M;->d:Lio/appmetrica/analytics/impl/M;

    :goto_1
    iget-object v3, p0, Lio/appmetrica/analytics/impl/O;->g:Lio/appmetrica/analytics/coreutils/internal/toggle/SavableToggle;

    invoke-interface {v3}, Lio/appmetrica/analytics/coreapi/internal/control/Toggle;->getActualState()Z

    move-result v3

    if-eqz v3, :cond_6

    sget-object p0, Lio/appmetrica/analytics/impl/M;->a:Lio/appmetrica/analytics/impl/M;

    goto :goto_2

    :cond_6
    iget-object p0, p0, Lio/appmetrica/analytics/impl/O;->b:Lio/appmetrica/analytics/coreutils/internal/toggle/SavableToggle;

    invoke-virtual {p0}, Lio/appmetrica/analytics/coreutils/internal/toggle/SimpleThreadSafeToggle;->getActualState()Z

    move-result p0

    if-nez p0, :cond_7

    sget-object p0, Lio/appmetrica/analytics/impl/M;->b:Lio/appmetrica/analytics/impl/M;

    goto :goto_2

    :cond_7
    sget-object p0, Lio/appmetrica/analytics/impl/M;->d:Lio/appmetrica/analytics/impl/M;

    :goto_2
    invoke-direct {v0, v1, v2, p0}, Lio/appmetrica/analytics/impl/L;-><init>(Lio/appmetrica/analytics/impl/M;Lio/appmetrica/analytics/impl/M;Lio/appmetrica/analytics/impl/M;)V

    return-object v0
.end method

.method public final a(Lio/appmetrica/analytics/impl/vm;)V
    .locals 5

    .line 100
    iget-boolean v0, p1, Lio/appmetrica/analytics/impl/vm;->p:Z

    .line 101
    iget-object v1, p0, Lio/appmetrica/analytics/impl/O;->c:Lio/appmetrica/analytics/coreutils/internal/toggle/OuterStateToggle;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 102
    iget-object v4, p1, Lio/appmetrica/analytics/impl/vm;->n:Lio/appmetrica/analytics/impl/z4;

    .line 103
    iget-boolean v4, v4, Lio/appmetrica/analytics/impl/z4;->c:Z

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    move v4, v3

    goto :goto_1

    :cond_1
    :goto_0
    move v4, v2

    :goto_1
    invoke-virtual {v1, v4}, Lio/appmetrica/analytics/coreutils/internal/toggle/OuterStateToggle;->update(Z)V

    .line 104
    iget-object p0, p0, Lio/appmetrica/analytics/impl/O;->d:Lio/appmetrica/analytics/coreutils/internal/toggle/OuterStateToggle;

    if-eqz v0, :cond_3

    .line 105
    iget-object p1, p1, Lio/appmetrica/analytics/impl/vm;->n:Lio/appmetrica/analytics/impl/z4;

    .line 106
    iget-boolean p1, p1, Lio/appmetrica/analytics/impl/z4;->e:Z

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    move v2, v3

    :cond_3
    :goto_2
    invoke-virtual {p0, v2}, Lio/appmetrica/analytics/coreutils/internal/toggle/OuterStateToggle;->update(Z)V

    return-void
.end method
