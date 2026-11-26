.class public final Lio/appmetrica/analytics/impl/A4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/networktasks/internal/ArgumentsMerger;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/Boolean;

.field public final c:Landroid/location/Location;

.field public final d:Ljava/lang/Boolean;

.field public final e:Ljava/lang/Integer;

.field public final f:Ljava/lang/Integer;

.field public final g:Ljava/lang/Integer;

.field public final h:Ljava/lang/Boolean;

.field public final i:Ljava/lang/Boolean;

.field public final j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final k:Ljava/lang/Integer;

.field public final l:Ljava/lang/Boolean;

.field public final m:Ljava/lang/Boolean;

.field public final n:Ljava/lang/Boolean;

.field public final o:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 16

    .line 85
    new-instance v15, Ljava/util/HashSet;

    invoke-direct {v15}, Ljava/util/HashSet;-><init>()V

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v15}, Lio/appmetrica/analytics/impl/A4;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Landroid/location/Location;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/Map;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/Set;)V

    return-void
.end method

.method public constructor <init>(Lio/appmetrica/analytics/internal/CounterConfiguration;Ljava/util/Map;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/appmetrica/analytics/internal/CounterConfiguration;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual/range {p1 .. p1}, Lio/appmetrica/analytics/internal/CounterConfiguration;->getApiKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lio/appmetrica/analytics/internal/CounterConfiguration;->isLocationTrackingEnabled()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lio/appmetrica/analytics/internal/CounterConfiguration;->getManualLocation()Landroid/location/Location;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lio/appmetrica/analytics/internal/CounterConfiguration;->isFirstActivationAsUpdate()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lio/appmetrica/analytics/internal/CounterConfiguration;->getSessionTimeout()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lio/appmetrica/analytics/internal/CounterConfiguration;->getMaxReportsCount()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lio/appmetrica/analytics/internal/CounterConfiguration;->getDispatchPeriod()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Lio/appmetrica/analytics/internal/CounterConfiguration;->isLogEnabled()Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Lio/appmetrica/analytics/internal/CounterConfiguration;->getDataSendingEnabled()Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual/range {p1 .. p1}, Lio/appmetrica/analytics/internal/CounterConfiguration;->getMaxReportsInDbCount()Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual/range {p1 .. p1}, Lio/appmetrica/analytics/internal/CounterConfiguration;->getReportNativeCrashesEnabled()Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Lio/appmetrica/analytics/internal/CounterConfiguration;->isRevenueAutoTrackingEnabled()Ljava/lang/Boolean;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Lio/appmetrica/analytics/internal/CounterConfiguration;->isAdvIdentifiersTrackingEnabled()Ljava/lang/Boolean;

    move-result-object v14

    new-instance v15, Ljava/util/HashSet;

    invoke-virtual/range {p1 .. p1}, Lio/appmetrica/analytics/internal/CounterConfiguration;->getAutoCollectedDataSubscribers()Ljava/util/List;

    move-result-object v0

    invoke-direct {v15, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    move-object/from16 v0, p0

    move-object/from16 v10, p2

    invoke-direct/range {v0 .. v15}, Lio/appmetrica/analytics/impl/A4;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Landroid/location/Location;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/Map;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/Set;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Boolean;Landroid/location/Location;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/Map;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/Set;)V
    .locals 0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Lio/appmetrica/analytics/impl/A4;->a:Ljava/lang/String;

    .line 71
    iput-object p2, p0, Lio/appmetrica/analytics/impl/A4;->b:Ljava/lang/Boolean;

    .line 72
    iput-object p3, p0, Lio/appmetrica/analytics/impl/A4;->c:Landroid/location/Location;

    .line 73
    iput-object p4, p0, Lio/appmetrica/analytics/impl/A4;->d:Ljava/lang/Boolean;

    .line 74
    iput-object p5, p0, Lio/appmetrica/analytics/impl/A4;->e:Ljava/lang/Integer;

    .line 75
    iput-object p6, p0, Lio/appmetrica/analytics/impl/A4;->f:Ljava/lang/Integer;

    .line 76
    iput-object p7, p0, Lio/appmetrica/analytics/impl/A4;->g:Ljava/lang/Integer;

    .line 77
    iput-object p8, p0, Lio/appmetrica/analytics/impl/A4;->h:Ljava/lang/Boolean;

    .line 78
    iput-object p9, p0, Lio/appmetrica/analytics/impl/A4;->i:Ljava/lang/Boolean;

    .line 79
    iput-object p10, p0, Lio/appmetrica/analytics/impl/A4;->j:Ljava/util/Map;

    .line 80
    iput-object p11, p0, Lio/appmetrica/analytics/impl/A4;->k:Ljava/lang/Integer;

    .line 81
    iput-object p12, p0, Lio/appmetrica/analytics/impl/A4;->l:Ljava/lang/Boolean;

    .line 82
    iput-object p13, p0, Lio/appmetrica/analytics/impl/A4;->m:Ljava/lang/Boolean;

    .line 83
    iput-object p14, p0, Lio/appmetrica/analytics/impl/A4;->n:Ljava/lang/Boolean;

    .line 84
    iput-object p15, p0, Lio/appmetrica/analytics/impl/A4;->o:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final a(Lio/appmetrica/analytics/impl/A4;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/A4;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final b(Lio/appmetrica/analytics/impl/A4;)Lio/appmetrica/analytics/impl/A4;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    new-instance v2, Lio/appmetrica/analytics/impl/A4;

    iget-object v3, v0, Lio/appmetrica/analytics/impl/A4;->a:Ljava/lang/String;

    iget-object v4, v1, Lio/appmetrica/analytics/impl/A4;->a:Ljava/lang/String;

    invoke-static {v3, v4}, Lio/appmetrica/analytics/coreutils/internal/WrapUtils;->getOrDefaultNullable(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, v0, Lio/appmetrica/analytics/impl/A4;->b:Ljava/lang/Boolean;

    iget-object v5, v1, Lio/appmetrica/analytics/impl/A4;->b:Ljava/lang/Boolean;

    invoke-static {v4, v5}, Lio/appmetrica/analytics/coreutils/internal/WrapUtils;->getOrDefaultNullable(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    iget-object v5, v0, Lio/appmetrica/analytics/impl/A4;->c:Landroid/location/Location;

    iget-object v6, v1, Lio/appmetrica/analytics/impl/A4;->c:Landroid/location/Location;

    invoke-static {v5, v6}, Lio/appmetrica/analytics/coreutils/internal/WrapUtils;->getOrDefaultNullable(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/location/Location;

    iget-object v6, v0, Lio/appmetrica/analytics/impl/A4;->d:Ljava/lang/Boolean;

    iget-object v7, v1, Lio/appmetrica/analytics/impl/A4;->d:Ljava/lang/Boolean;

    invoke-static {v6, v7}, Lio/appmetrica/analytics/coreutils/internal/WrapUtils;->getOrDefaultNullable(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    iget-object v7, v0, Lio/appmetrica/analytics/impl/A4;->e:Ljava/lang/Integer;

    iget-object v8, v1, Lio/appmetrica/analytics/impl/A4;->e:Ljava/lang/Integer;

    invoke-static {v7, v8}, Lio/appmetrica/analytics/coreutils/internal/WrapUtils;->getOrDefaultNullable(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    iget-object v8, v0, Lio/appmetrica/analytics/impl/A4;->f:Ljava/lang/Integer;

    iget-object v9, v1, Lio/appmetrica/analytics/impl/A4;->f:Ljava/lang/Integer;

    invoke-static {v8, v9}, Lio/appmetrica/analytics/coreutils/internal/WrapUtils;->getOrDefaultNullable(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    iget-object v9, v0, Lio/appmetrica/analytics/impl/A4;->g:Ljava/lang/Integer;

    iget-object v10, v1, Lio/appmetrica/analytics/impl/A4;->g:Ljava/lang/Integer;

    invoke-static {v9, v10}, Lio/appmetrica/analytics/coreutils/internal/WrapUtils;->getOrDefaultNullable(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    iget-object v10, v0, Lio/appmetrica/analytics/impl/A4;->h:Ljava/lang/Boolean;

    iget-object v11, v1, Lio/appmetrica/analytics/impl/A4;->h:Ljava/lang/Boolean;

    invoke-static {v10, v11}, Lio/appmetrica/analytics/coreutils/internal/WrapUtils;->getOrDefaultNullable(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    iget-object v11, v0, Lio/appmetrica/analytics/impl/A4;->i:Ljava/lang/Boolean;

    iget-object v12, v1, Lio/appmetrica/analytics/impl/A4;->i:Ljava/lang/Boolean;

    invoke-static {v11, v12}, Lio/appmetrica/analytics/coreutils/internal/WrapUtils;->getOrDefaultNullable(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Boolean;

    iget-object v12, v0, Lio/appmetrica/analytics/impl/A4;->j:Ljava/util/Map;

    iget-object v13, v1, Lio/appmetrica/analytics/impl/A4;->j:Ljava/util/Map;

    invoke-static {v12, v13}, Lio/appmetrica/analytics/coreutils/internal/WrapUtils;->getOrDefaultNullable(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map;

    iget-object v13, v0, Lio/appmetrica/analytics/impl/A4;->k:Ljava/lang/Integer;

    iget-object v14, v1, Lio/appmetrica/analytics/impl/A4;->k:Ljava/lang/Integer;

    invoke-static {v13, v14}, Lio/appmetrica/analytics/coreutils/internal/WrapUtils;->getOrDefaultNullable(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    iget-object v14, v0, Lio/appmetrica/analytics/impl/A4;->l:Ljava/lang/Boolean;

    iget-object v15, v1, Lio/appmetrica/analytics/impl/A4;->l:Ljava/lang/Boolean;

    invoke-static {v14, v15}, Lio/appmetrica/analytics/coreutils/internal/WrapUtils;->getOrDefaultNullable(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Boolean;

    iget-object v15, v0, Lio/appmetrica/analytics/impl/A4;->m:Ljava/lang/Boolean;

    move-object/from16 v16, v2

    iget-object v2, v1, Lio/appmetrica/analytics/impl/A4;->m:Ljava/lang/Boolean;

    invoke-static {v15, v2}, Lio/appmetrica/analytics/coreutils/internal/WrapUtils;->getOrDefaultNullable(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    iget-object v15, v0, Lio/appmetrica/analytics/impl/A4;->n:Ljava/lang/Boolean;

    move-object/from16 v17, v2

    iget-object v2, v1, Lio/appmetrica/analytics/impl/A4;->n:Ljava/lang/Boolean;

    invoke-static {v15, v2}, Lio/appmetrica/analytics/coreutils/internal/WrapUtils;->getOrDefaultNullable(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    iget-object v0, v0, Lio/appmetrica/analytics/impl/A4;->o:Ljava/util/Set;

    iget-object v1, v1, Lio/appmetrica/analytics/impl/A4;->o:Ljava/util/Set;

    invoke-static {v0, v1}, Lio/appmetrica/analytics/coreutils/internal/collection/CollectionUtils;->merge(Ljava/util/Set;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v15

    move-object v0, v14

    move-object v14, v2

    move-object v2, v4

    move-object v4, v6

    move-object v6, v8

    move-object v8, v10

    move-object v10, v12

    move-object v12, v0

    move-object v1, v3

    move-object v3, v5

    move-object v5, v7

    move-object v7, v9

    move-object v9, v11

    move-object v11, v13

    move-object/from16 v0, v16

    move-object/from16 v13, v17

    invoke-direct/range {v0 .. v15}, Lio/appmetrica/analytics/impl/A4;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Landroid/location/Location;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/Map;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/Set;)V

    return-object v0
.end method

.method public final compareWithOtherArguments(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lio/appmetrica/analytics/impl/A4;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/A4;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lio/appmetrica/analytics/impl/A4;

    if-eq v2, v1, :cond_0

    goto/16 :goto_0

    :cond_0
    check-cast p1, Lio/appmetrica/analytics/impl/A4;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/A4;->a:Ljava/lang/String;

    iget-object v2, p1, Lio/appmetrica/analytics/impl/A4;->a:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lio/appmetrica/analytics/impl/A4;->b:Ljava/lang/Boolean;

    iget-object v2, p1, Lio/appmetrica/analytics/impl/A4;->b:Ljava/lang/Boolean;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lio/appmetrica/analytics/impl/A4;->c:Landroid/location/Location;

    iget-object v2, p1, Lio/appmetrica/analytics/impl/A4;->c:Landroid/location/Location;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lio/appmetrica/analytics/impl/A4;->d:Ljava/lang/Boolean;

    iget-object v2, p1, Lio/appmetrica/analytics/impl/A4;->d:Ljava/lang/Boolean;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lio/appmetrica/analytics/impl/A4;->e:Ljava/lang/Integer;

    iget-object v2, p1, Lio/appmetrica/analytics/impl/A4;->e:Ljava/lang/Integer;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lio/appmetrica/analytics/impl/A4;->f:Ljava/lang/Integer;

    iget-object v2, p1, Lio/appmetrica/analytics/impl/A4;->f:Ljava/lang/Integer;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lio/appmetrica/analytics/impl/A4;->g:Ljava/lang/Integer;

    iget-object v2, p1, Lio/appmetrica/analytics/impl/A4;->g:Ljava/lang/Integer;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lio/appmetrica/analytics/impl/A4;->h:Ljava/lang/Boolean;

    iget-object v2, p1, Lio/appmetrica/analytics/impl/A4;->h:Ljava/lang/Boolean;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lio/appmetrica/analytics/impl/A4;->i:Ljava/lang/Boolean;

    iget-object v2, p1, Lio/appmetrica/analytics/impl/A4;->i:Ljava/lang/Boolean;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lio/appmetrica/analytics/impl/A4;->j:Ljava/util/Map;

    iget-object v2, p1, Lio/appmetrica/analytics/impl/A4;->j:Ljava/util/Map;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lio/appmetrica/analytics/impl/A4;->k:Ljava/lang/Integer;

    iget-object v2, p1, Lio/appmetrica/analytics/impl/A4;->k:Ljava/lang/Integer;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lio/appmetrica/analytics/impl/A4;->l:Ljava/lang/Boolean;

    iget-object v2, p1, Lio/appmetrica/analytics/impl/A4;->l:Ljava/lang/Boolean;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lio/appmetrica/analytics/impl/A4;->m:Ljava/lang/Boolean;

    iget-object v2, p1, Lio/appmetrica/analytics/impl/A4;->m:Ljava/lang/Boolean;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lio/appmetrica/analytics/impl/A4;->n:Ljava/lang/Boolean;

    iget-object v2, p1, Lio/appmetrica/analytics/impl/A4;->n:Ljava/lang/Boolean;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Lio/appmetrica/analytics/impl/A4;->o:Ljava/util/Set;

    iget-object p1, p1, Lio/appmetrica/analytics/impl/A4;->o:Ljava/util/Set;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    return v0
.end method

.method public final hashCode()I
    .locals 15

    iget-object v0, p0, Lio/appmetrica/analytics/impl/A4;->a:Ljava/lang/String;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/A4;->b:Ljava/lang/Boolean;

    iget-object v2, p0, Lio/appmetrica/analytics/impl/A4;->c:Landroid/location/Location;

    iget-object v3, p0, Lio/appmetrica/analytics/impl/A4;->d:Ljava/lang/Boolean;

    iget-object v4, p0, Lio/appmetrica/analytics/impl/A4;->e:Ljava/lang/Integer;

    iget-object v5, p0, Lio/appmetrica/analytics/impl/A4;->f:Ljava/lang/Integer;

    iget-object v6, p0, Lio/appmetrica/analytics/impl/A4;->g:Ljava/lang/Integer;

    iget-object v7, p0, Lio/appmetrica/analytics/impl/A4;->h:Ljava/lang/Boolean;

    iget-object v8, p0, Lio/appmetrica/analytics/impl/A4;->i:Ljava/lang/Boolean;

    iget-object v9, p0, Lio/appmetrica/analytics/impl/A4;->j:Ljava/util/Map;

    iget-object v10, p0, Lio/appmetrica/analytics/impl/A4;->k:Ljava/lang/Integer;

    iget-object v11, p0, Lio/appmetrica/analytics/impl/A4;->l:Ljava/lang/Boolean;

    iget-object v12, p0, Lio/appmetrica/analytics/impl/A4;->m:Ljava/lang/Boolean;

    iget-object v13, p0, Lio/appmetrica/analytics/impl/A4;->n:Ljava/lang/Boolean;

    iget-object v14, p0, Lio/appmetrica/analytics/impl/A4;->o:Ljava/util/Set;

    filled-new-array/range {v0 .. v14}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final bridge synthetic mergeFrom(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lio/appmetrica/analytics/impl/A4;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/A4;->b(Lio/appmetrica/analytics/impl/A4;)Lio/appmetrica/analytics/impl/A4;

    move-result-object p0

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ReporterArguments{apiKey=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lio/appmetrica/analytics/impl/A4;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', locationTracking="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/A4;->b:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", manualLocation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/A4;->c:Landroid/location/Location;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", firstActivationAsUpdate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/A4;->d:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", sessionTimeout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/A4;->e:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", maxReportsCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/A4;->f:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", dispatchPeriod="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/A4;->g:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", logEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/A4;->h:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", dataSendingEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/A4;->i:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", clidsFromClient="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/A4;->j:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", maxReportsInDbCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/A4;->k:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", nativeCrashesEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/A4;->l:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", revenueAutoTrackingEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/A4;->m:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", advIdentifiersTrackingEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/A4;->n:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", autoCollectedDataSubscribers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/A4;->o:Ljava/util/Set;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
