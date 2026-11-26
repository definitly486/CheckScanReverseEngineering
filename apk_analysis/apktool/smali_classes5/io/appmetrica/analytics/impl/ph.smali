.class public final Lio/appmetrica/analytics/impl/ph;
.super Lio/appmetrica/analytics/impl/X5;
.source "SourceFile"


# instance fields
.field public final b:Lio/appmetrica/analytics/impl/i5;

.field public final c:Lio/appmetrica/analytics/impl/oh;

.field public final d:Lio/appmetrica/analytics/impl/Q3;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/i5;Lio/appmetrica/analytics/impl/oh;)V
    .locals 1

    .line 22
    new-instance v0, Lio/appmetrica/analytics/impl/Q3;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/Q3;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lio/appmetrica/analytics/impl/ph;-><init>(Lio/appmetrica/analytics/impl/i5;Lio/appmetrica/analytics/impl/oh;Lio/appmetrica/analytics/impl/Q3;)V

    return-void
.end method

.method public constructor <init>(Lio/appmetrica/analytics/impl/i5;Lio/appmetrica/analytics/impl/oh;Lio/appmetrica/analytics/impl/Q3;)V
    .locals 2

    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/i5;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/i5;->a()Lio/appmetrica/analytics/impl/b5;

    move-result-object v1

    invoke-virtual {v1}, Lio/appmetrica/analytics/impl/b5;->c()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lio/appmetrica/analytics/impl/X5;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/ph;->b:Lio/appmetrica/analytics/impl/i5;

    iput-object p2, p0, Lio/appmetrica/analytics/impl/ph;->c:Lio/appmetrica/analytics/impl/oh;

    iput-object p3, p0, Lio/appmetrica/analytics/impl/ph;->d:Lio/appmetrica/analytics/impl/Q3;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Lio/appmetrica/analytics/impl/W5;)Lio/appmetrica/analytics/impl/Y5;
    .locals 0

    .line 8
    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/ph;->b(Lio/appmetrica/analytics/impl/W5;)Lio/appmetrica/analytics/impl/rh;

    move-result-object p0

    return-object p0
.end method

.method public final a()Lio/appmetrica/analytics/impl/rh;
    .locals 1

    new-instance v0, Lio/appmetrica/analytics/impl/rh;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/ph;->b:Lio/appmetrica/analytics/impl/i5;

    invoke-direct {v0, p0}, Lio/appmetrica/analytics/impl/rh;-><init>(Lio/appmetrica/analytics/impl/i5;)V

    return-object v0
.end method

.method public final b(Lio/appmetrica/analytics/impl/W5;)Lio/appmetrica/analytics/impl/rh;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/appmetrica/analytics/impl/W5;",
            ")",
            "Lio/appmetrica/analytics/impl/rh;"
        }
    .end annotation

    invoke-super {p0, p1}, Lio/appmetrica/analytics/impl/X5;->a(Lio/appmetrica/analytics/impl/W5;)Lio/appmetrica/analytics/impl/Y5;

    move-result-object v0

    check-cast v0, Lio/appmetrica/analytics/impl/rh;

    iget-object v1, p1, Lio/appmetrica/analytics/networktasks/internal/BaseRequestConfig$DataSource;->componentArguments:Ljava/lang/Object;

    check-cast v1, Lio/appmetrica/analytics/impl/mh;

    iget-object v1, v1, Lio/appmetrica/analytics/impl/mh;->a:Ljava/lang/String;

    iput-object v1, v0, Lio/appmetrica/analytics/impl/rh;->m:Ljava/lang/String;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/ph;->b:Lio/appmetrica/analytics/impl/i5;

    iget-object v1, v1, Lio/appmetrica/analytics/impl/i5;->t:Lio/appmetrica/analytics/impl/Go;

    invoke-virtual {v1}, Lio/appmetrica/analytics/impl/Go;->a()I

    move-result v1

    iput v1, v0, Lio/appmetrica/analytics/impl/rh;->r:I

    iget-object v1, p0, Lio/appmetrica/analytics/impl/ph;->b:Lio/appmetrica/analytics/impl/i5;

    iget-object v1, v1, Lio/appmetrica/analytics/impl/i5;->q:Lio/appmetrica/analytics/impl/A3;

    invoke-virtual {v1}, Lio/appmetrica/analytics/impl/A3;->a()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lio/appmetrica/analytics/impl/rh;->w:Ljava/util/List;

    iget-object v1, p1, Lio/appmetrica/analytics/networktasks/internal/BaseRequestConfig$DataSource;->componentArguments:Ljava/lang/Object;

    check-cast v1, Lio/appmetrica/analytics/impl/mh;

    iget-boolean v2, v1, Lio/appmetrica/analytics/impl/mh;->b:Z

    iput-boolean v2, v0, Lio/appmetrica/analytics/impl/rh;->d:Z

    iget-boolean v2, v1, Lio/appmetrica/analytics/impl/mh;->c:Z

    iput-boolean v2, v0, Lio/appmetrica/analytics/impl/rh;->e:Z

    iget v2, v1, Lio/appmetrica/analytics/impl/mh;->d:I

    iput v2, v0, Lio/appmetrica/analytics/impl/rh;->f:I

    iget v2, v1, Lio/appmetrica/analytics/impl/mh;->e:I

    iput v2, v0, Lio/appmetrica/analytics/impl/rh;->i:I

    iget v2, v1, Lio/appmetrica/analytics/impl/mh;->f:I

    iput v2, v0, Lio/appmetrica/analytics/impl/rh;->g:I

    iget-boolean v2, v1, Lio/appmetrica/analytics/impl/mh;->g:Z

    iput-boolean v2, v0, Lio/appmetrica/analytics/impl/rh;->h:Z

    iget-boolean v1, v1, Lio/appmetrica/analytics/impl/mh;->h:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-object v2, p0, Lio/appmetrica/analytics/impl/ph;->c:Lio/appmetrica/analytics/impl/oh;

    iput-object v1, v0, Lio/appmetrica/analytics/impl/rh;->j:Ljava/lang/Boolean;

    iput-object v2, v0, Lio/appmetrica/analytics/impl/rh;->k:Lio/appmetrica/analytics/impl/oh;

    iget-object v1, p1, Lio/appmetrica/analytics/networktasks/internal/BaseRequestConfig$DataSource;->componentArguments:Ljava/lang/Object;

    check-cast v1, Lio/appmetrica/analytics/impl/mh;

    iget v2, v1, Lio/appmetrica/analytics/impl/mh;->j:I

    int-to-long v2, v2

    iput-wide v2, v0, Lio/appmetrica/analytics/impl/rh;->v:J

    iget-object p1, p1, Lio/appmetrica/analytics/impl/W5;->a:Lio/appmetrica/analytics/impl/vm;

    iget-object v2, p1, Lio/appmetrica/analytics/impl/vm;->n:Lio/appmetrica/analytics/impl/z4;

    iget-boolean v3, v2, Lio/appmetrica/analytics/impl/z4;->a:Z

    iput-boolean v3, v0, Lio/appmetrica/analytics/impl/rh;->n:Z

    iget-object v3, p1, Lio/appmetrica/analytics/impl/vm;->s:Lio/appmetrica/analytics/impl/He;

    if-eqz v3, :cond_0

    iget-wide v4, v3, Lio/appmetrica/analytics/impl/He;->a:J

    iput-wide v4, v0, Lio/appmetrica/analytics/impl/rh;->s:J

    iget-wide v3, v3, Lio/appmetrica/analytics/impl/He;->b:J

    iput-wide v3, v0, Lio/appmetrica/analytics/impl/rh;->t:J

    :cond_0
    iget-boolean v2, v2, Lio/appmetrica/analytics/impl/z4;->b:Z

    iput-boolean v2, v0, Lio/appmetrica/analytics/impl/rh;->o:Z

    iget-object v2, p1, Lio/appmetrica/analytics/impl/vm;->e:Ljava/util/List;

    iput-object v2, v0, Lio/appmetrica/analytics/impl/rh;->q:Ljava/util/List;

    iget-object v2, p1, Lio/appmetrica/analytics/impl/vm;->k:Ljava/lang/String;

    iput-object v2, v0, Lio/appmetrica/analytics/impl/rh;->p:Ljava/lang/String;

    iget-object v2, p0, Lio/appmetrica/analytics/impl/ph;->d:Lio/appmetrica/analytics/impl/Q3;

    iget-object v1, v1, Lio/appmetrica/analytics/impl/mh;->i:Ljava/util/Map;

    sget-object v3, Lio/appmetrica/analytics/impl/Fa;->I:Lio/appmetrica/analytics/impl/Fa;

    invoke-virtual {v3}, Lio/appmetrica/analytics/impl/Fa;->f()Lio/appmetrica/analytics/impl/N3;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, p1, v3}, Lio/appmetrica/analytics/impl/Q3;->a(Ljava/util/Map;Lio/appmetrica/analytics/impl/vm;Lio/appmetrica/analytics/impl/N3;)Z

    move-result p1

    iput-boolean p1, v0, Lio/appmetrica/analytics/impl/rh;->u:Z

    iget-object p1, p0, Lio/appmetrica/analytics/impl/ph;->b:Lio/appmetrica/analytics/impl/i5;

    iget-object p1, p1, Lio/appmetrica/analytics/impl/i5;->v:Lio/appmetrica/analytics/impl/E2;

    iget-object p1, p1, Lio/appmetrica/analytics/impl/E2;->e:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    iput-object p1, v0, Lio/appmetrica/analytics/impl/rh;->x:Ljava/util/Set;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/ph;->b:Lio/appmetrica/analytics/impl/i5;

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/i5;->b()Lio/appmetrica/analytics/internal/CounterConfigurationReporterType;

    move-result-object p0

    sget-object p1, Lio/appmetrica/analytics/internal/CounterConfigurationReporterType;->MAIN:Lio/appmetrica/analytics/internal/CounterConfigurationReporterType;

    if-ne p0, p1, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    iput-boolean p0, v0, Lio/appmetrica/analytics/impl/rh;->y:Z

    return-object v0
.end method

.method public final createBlankConfig()Lio/appmetrica/analytics/networktasks/internal/BaseRequestConfig;
    .locals 1

    new-instance v0, Lio/appmetrica/analytics/impl/rh;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/ph;->b:Lio/appmetrica/analytics/impl/i5;

    invoke-direct {v0, p0}, Lio/appmetrica/analytics/impl/rh;-><init>(Lio/appmetrica/analytics/impl/i5;)V

    return-object v0
.end method

.method public final bridge synthetic load(Lio/appmetrica/analytics/networktasks/internal/BaseRequestConfig$DataSource;)Lio/appmetrica/analytics/networktasks/internal/BaseRequestConfig;
    .locals 0

    check-cast p1, Lio/appmetrica/analytics/impl/W5;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/ph;->b(Lio/appmetrica/analytics/impl/W5;)Lio/appmetrica/analytics/impl/rh;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic load(Ljava/lang/Object;)Lio/appmetrica/analytics/networktasks/internal/BaseRequestConfig;
    .locals 0

    .line 7
    check-cast p1, Lio/appmetrica/analytics/impl/W5;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/ph;->b(Lio/appmetrica/analytics/impl/W5;)Lio/appmetrica/analytics/impl/rh;

    move-result-object p0

    return-object p0
.end method
