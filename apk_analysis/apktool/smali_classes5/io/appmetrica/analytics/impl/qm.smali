.class public final Lio/appmetrica/analytics/impl/qm;
.super Lio/appmetrica/analytics/impl/X5;
.source "SourceFile"


# instance fields
.field public final b:Lio/appmetrica/analytics/impl/N3;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lio/appmetrica/analytics/coreutils/internal/services/SafePackageManager;

    invoke-direct {v0}, Lio/appmetrica/analytics/coreutils/internal/services/SafePackageManager;-><init>()V

    invoke-static {}, Lio/appmetrica/analytics/impl/Fa;->k()Lio/appmetrica/analytics/impl/Fa;

    move-result-object v1

    invoke-virtual {v1}, Lio/appmetrica/analytics/impl/Fa;->f()Lio/appmetrica/analytics/impl/N3;

    move-result-object v1

    invoke-direct {p0, p1, p2, v0, v1}, Lio/appmetrica/analytics/impl/qm;-><init>(Landroid/content/Context;Ljava/lang/String;Lio/appmetrica/analytics/coreutils/internal/services/SafePackageManager;Lio/appmetrica/analytics/impl/N3;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lio/appmetrica/analytics/coreutils/internal/services/SafePackageManager;Lio/appmetrica/analytics/impl/N3;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1, p2, p3}, Lio/appmetrica/analytics/impl/X5;-><init>(Landroid/content/Context;Ljava/lang/String;Lio/appmetrica/analytics/coreutils/internal/services/SafePackageManager;)V

    .line 18
    iput-object p4, p0, Lio/appmetrica/analytics/impl/qm;->b:Lio/appmetrica/analytics/impl/N3;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Lio/appmetrica/analytics/impl/W5;)Lio/appmetrica/analytics/impl/Y5;
    .locals 0

    .line 6
    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/qm;->b(Lio/appmetrica/analytics/impl/W5;)Lio/appmetrica/analytics/impl/rm;

    move-result-object p0

    return-object p0
.end method

.method public final a()Lio/appmetrica/analytics/impl/rm;
    .locals 0

    new-instance p0, Lio/appmetrica/analytics/impl/rm;

    invoke-direct {p0}, Lio/appmetrica/analytics/impl/rm;-><init>()V

    return-object p0
.end method

.method public final b(Lio/appmetrica/analytics/impl/W5;)Lio/appmetrica/analytics/impl/rm;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/appmetrica/analytics/impl/W5;",
            ")",
            "Lio/appmetrica/analytics/impl/rm;"
        }
    .end annotation

    invoke-super {p0, p1}, Lio/appmetrica/analytics/impl/X5;->a(Lio/appmetrica/analytics/impl/W5;)Lio/appmetrica/analytics/impl/Y5;

    move-result-object v0

    check-cast v0, Lio/appmetrica/analytics/impl/rm;

    iget-object v1, p1, Lio/appmetrica/analytics/impl/W5;->a:Lio/appmetrica/analytics/impl/vm;

    iget-object v2, v1, Lio/appmetrica/analytics/impl/vm;->f:Ljava/util/List;

    iput-object v2, v0, Lio/appmetrica/analytics/impl/rm;->d:Ljava/util/List;

    iget-object v1, v1, Lio/appmetrica/analytics/impl/vm;->g:Ljava/util/List;

    iput-object v1, v0, Lio/appmetrica/analytics/impl/rm;->e:Ljava/util/List;

    iget-object v1, p1, Lio/appmetrica/analytics/networktasks/internal/BaseRequestConfig$DataSource;->componentArguments:Ljava/lang/Object;

    check-cast v1, Lio/appmetrica/analytics/impl/pm;

    iget-object v2, v1, Lio/appmetrica/analytics/impl/pm;->a:Ljava/lang/String;

    if-eqz v2, :cond_0

    iput-object v2, v0, Lio/appmetrica/analytics/impl/rm;->f:Ljava/lang/String;

    iget-object v2, v1, Lio/appmetrica/analytics/impl/pm;->b:Ljava/lang/String;

    iput-object v2, v0, Lio/appmetrica/analytics/impl/rm;->g:Ljava/lang/String;

    :cond_0
    iget-object v1, v1, Lio/appmetrica/analytics/impl/pm;->c:Ljava/util/Map;

    iput-object v1, v0, Lio/appmetrica/analytics/impl/rm;->h:Ljava/util/Map;

    new-instance v2, Lio/appmetrica/analytics/impl/F3;

    sget-object v3, Lio/appmetrica/analytics/impl/f8;->d:Lio/appmetrica/analytics/impl/f8;

    invoke-direct {v2, v1, v3}, Lio/appmetrica/analytics/impl/F3;-><init>(Ljava/util/Map;Lio/appmetrica/analytics/impl/f8;)V

    iget-object p0, p0, Lio/appmetrica/analytics/impl/qm;->b:Lio/appmetrica/analytics/impl/N3;

    invoke-virtual {p0, v2}, Lio/appmetrica/analytics/impl/b8;->a(Lio/appmetrica/analytics/impl/g8;)Lio/appmetrica/analytics/impl/g8;

    move-result-object p0

    check-cast p0, Lio/appmetrica/analytics/impl/F3;

    iput-object p0, v0, Lio/appmetrica/analytics/impl/rm;->i:Lio/appmetrica/analytics/impl/F3;

    iget-object p0, p1, Lio/appmetrica/analytics/networktasks/internal/BaseRequestConfig$DataSource;->componentArguments:Ljava/lang/Object;

    check-cast p0, Lio/appmetrica/analytics/impl/pm;

    iget-boolean v1, p0, Lio/appmetrica/analytics/impl/pm;->d:Z

    iput-boolean v1, v0, Lio/appmetrica/analytics/impl/rm;->k:Z

    iget-object p0, p0, Lio/appmetrica/analytics/impl/pm;->e:Ljava/util/List;

    iput-object p0, v0, Lio/appmetrica/analytics/impl/rm;->j:Ljava/util/List;

    iget-object p0, p1, Lio/appmetrica/analytics/impl/W5;->a:Lio/appmetrica/analytics/impl/vm;

    iget-boolean p1, p0, Lio/appmetrica/analytics/impl/vm;->p:Z

    iput-boolean p1, v0, Lio/appmetrica/analytics/impl/rm;->l:Z

    iget-object p1, p0, Lio/appmetrica/analytics/impl/vm;->r:Ljava/lang/String;

    iput-object p1, v0, Lio/appmetrica/analytics/impl/rm;->m:Ljava/lang/String;

    iget-wide p0, p0, Lio/appmetrica/analytics/impl/vm;->v:J

    iget-wide v1, v0, Lio/appmetrica/analytics/impl/rm;->n:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    iput-wide p0, v0, Lio/appmetrica/analytics/impl/rm;->n:J

    :cond_1
    return-object v0
.end method

.method public final createBlankConfig()Lio/appmetrica/analytics/networktasks/internal/BaseRequestConfig;
    .locals 0

    new-instance p0, Lio/appmetrica/analytics/impl/rm;

    invoke-direct {p0}, Lio/appmetrica/analytics/impl/rm;-><init>()V

    return-object p0
.end method

.method public final bridge synthetic load(Lio/appmetrica/analytics/networktasks/internal/BaseRequestConfig$DataSource;)Lio/appmetrica/analytics/networktasks/internal/BaseRequestConfig;
    .locals 0

    check-cast p1, Lio/appmetrica/analytics/impl/W5;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/qm;->b(Lio/appmetrica/analytics/impl/W5;)Lio/appmetrica/analytics/impl/rm;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic load(Ljava/lang/Object;)Lio/appmetrica/analytics/networktasks/internal/BaseRequestConfig;
    .locals 0

    .line 7
    check-cast p1, Lio/appmetrica/analytics/impl/W5;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/qm;->b(Lio/appmetrica/analytics/impl/W5;)Lio/appmetrica/analytics/impl/rm;

    move-result-object p0

    return-object p0
.end method
