.class public final Lio/appmetrica/analytics/impl/ih;
.super Lio/appmetrica/analytics/impl/Ug;
.source "SourceFile"


# instance fields
.field public final b:Lio/appmetrica/analytics/impl/Ge;

.field public final c:Lio/appmetrica/analytics/coreapi/internal/data/ProtobufStateStorage;

.field public final d:Lio/appmetrica/analytics/impl/N2;

.field public final e:Lio/appmetrica/analytics/impl/r2;

.field public final f:Lio/appmetrica/analytics/impl/G2;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/i5;Lio/appmetrica/analytics/impl/Ge;)V
    .locals 9

    const-class v0, Lio/appmetrica/analytics/impl/i2;

    invoke-static {v0}, Lio/appmetrica/analytics/impl/fn;->a(Ljava/lang/Class;)Lio/appmetrica/analytics/impl/gn;

    move-result-object v0

    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/i5;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v0, Lio/appmetrica/analytics/impl/hn;

    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/impl/hn;->create(Landroid/content/Context;)Lio/appmetrica/analytics/coreapi/internal/data/ProtobufStateStorage;

    move-result-object v5

    new-instance v6, Lio/appmetrica/analytics/impl/N2;

    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/i5;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v6, v0}, Lio/appmetrica/analytics/impl/N2;-><init>(Landroid/content/Context;)V

    new-instance v7, Lio/appmetrica/analytics/impl/r2;

    invoke-direct {v7}, Lio/appmetrica/analytics/impl/r2;-><init>()V

    new-instance v8, Lio/appmetrica/analytics/impl/G2;

    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/i5;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v8, v0}, Lio/appmetrica/analytics/impl/G2;-><init>(Landroid/content/Context;)V

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v2 .. v8}, Lio/appmetrica/analytics/impl/ih;-><init>(Lio/appmetrica/analytics/impl/i5;Lio/appmetrica/analytics/impl/Ge;Lio/appmetrica/analytics/coreapi/internal/data/ProtobufStateStorage;Lio/appmetrica/analytics/impl/N2;Lio/appmetrica/analytics/impl/r2;Lio/appmetrica/analytics/impl/G2;)V

    return-void
.end method

.method public constructor <init>(Lio/appmetrica/analytics/impl/i5;Lio/appmetrica/analytics/impl/Ge;Lio/appmetrica/analytics/coreapi/internal/data/ProtobufStateStorage;Lio/appmetrica/analytics/impl/N2;Lio/appmetrica/analytics/impl/r2;Lio/appmetrica/analytics/impl/G2;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lio/appmetrica/analytics/impl/Ug;-><init>(Lio/appmetrica/analytics/impl/i5;)V

    .line 47
    iput-object p2, p0, Lio/appmetrica/analytics/impl/ih;->b:Lio/appmetrica/analytics/impl/Ge;

    .line 48
    iput-object p3, p0, Lio/appmetrica/analytics/impl/ih;->c:Lio/appmetrica/analytics/coreapi/internal/data/ProtobufStateStorage;

    .line 49
    iput-object p4, p0, Lio/appmetrica/analytics/impl/ih;->d:Lio/appmetrica/analytics/impl/N2;

    .line 50
    iput-object p5, p0, Lio/appmetrica/analytics/impl/ih;->e:Lio/appmetrica/analytics/impl/r2;

    .line 51
    iput-object p6, p0, Lio/appmetrica/analytics/impl/ih;->f:Lio/appmetrica/analytics/impl/G2;

    return-void
.end method


# virtual methods
.method public final a(Lio/appmetrica/analytics/impl/a6;)Z
    .locals 12

    iget-object v0, p0, Lio/appmetrica/analytics/impl/Ug;->a:Lio/appmetrica/analytics/impl/i5;

    iget-object v1, v0, Lio/appmetrica/analytics/impl/i5;->b:Lio/appmetrica/analytics/impl/b5;

    invoke-virtual {v1}, Lio/appmetrica/analytics/impl/b5;->toString()Ljava/lang/String;

    iget-object v1, v0, Lio/appmetrica/analytics/impl/i5;->t:Lio/appmetrica/analytics/impl/Go;

    invoke-virtual {v1}, Lio/appmetrica/analytics/impl/Go;->c()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/i5;->x()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lio/appmetrica/analytics/impl/ih;->c:Lio/appmetrica/analytics/coreapi/internal/data/ProtobufStateStorage;

    invoke-interface {v1}, Lio/appmetrica/analytics/coreapi/internal/data/ProtobufStateStorage;->read()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/appmetrica/analytics/impl/i2;

    iget-object v2, v1, Lio/appmetrica/analytics/impl/i2;->a:Ljava/util/List;

    iget-object v3, v1, Lio/appmetrica/analytics/impl/i2;->b:Lio/appmetrica/analytics/impl/M2;

    iget-object v4, p0, Lio/appmetrica/analytics/impl/ih;->d:Lio/appmetrica/analytics/impl/N2;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v5, 0x1c

    invoke-static {v5}, Lio/appmetrica/analytics/coreutils/internal/AndroidUtils;->isApiAchieved(I)Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_0

    iget-object v5, v4, Lio/appmetrica/analytics/impl/N2;->a:Landroid/content/Context;

    iget-object v4, v4, Lio/appmetrica/analytics/impl/N2;->b:Lio/appmetrica/analytics/impl/r2;

    invoke-static {v5, v4}, Lio/appmetrica/analytics/impl/J2;->a(Landroid/content/Context;Lio/appmetrica/analytics/impl/r2;)Lio/appmetrica/analytics/impl/M2;

    move-result-object v4

    goto :goto_0

    :cond_0
    move-object v4, v6

    :goto_0
    iget-object v5, v1, Lio/appmetrica/analytics/impl/i2;->c:Ljava/util/List;

    iget-object v7, p0, Lio/appmetrica/analytics/impl/ih;->f:Lio/appmetrica/analytics/impl/G2;

    iget-object v7, v7, Lio/appmetrica/analytics/impl/G2;->a:Landroid/location/LocationManager;

    sget-object v8, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    new-instance v9, Lio/appmetrica/analytics/impl/F2;

    invoke-direct {v9}, Lio/appmetrica/analytics/impl/F2;-><init>()V

    const-string v10, "getting available providers"

    const-string v11, "location manager"

    invoke-static {v7, v10, v11, v8, v9}, Lio/appmetrica/analytics/coreutils/internal/system/SystemServiceUtils;->accessSystemServiceSafelyOrDefault(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lio/appmetrica/analytics/coreapi/internal/backport/FunctionWithThrowable;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    iget-object v8, p0, Lio/appmetrica/analytics/impl/ih;->b:Lio/appmetrica/analytics/impl/Ge;

    iget-object v9, p0, Lio/appmetrica/analytics/impl/Ug;->a:Lio/appmetrica/analytics/impl/i5;

    iget-object v9, v9, Lio/appmetrica/analytics/impl/i5;->a:Landroid/content/Context;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v8, Lio/appmetrica/analytics/impl/cj;

    new-instance v10, Lio/appmetrica/analytics/coreutils/internal/services/SafePackageManager;

    invoke-direct {v10}, Lio/appmetrica/analytics/coreutils/internal/services/SafePackageManager;-><init>()V

    invoke-direct {v8, v9, v10}, Lio/appmetrica/analytics/impl/cj;-><init>(Landroid/content/Context;Lio/appmetrica/analytics/coreutils/internal/services/SafePackageManager;)V

    invoke-virtual {v8}, Lio/appmetrica/analytics/impl/cj;->a()Ljava/util/ArrayList;

    move-result-object v8

    invoke-static {v8, v2}, Lio/appmetrica/analytics/coreutils/internal/collection/CollectionUtils;->areCollectionsEqual(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v9

    if-eqz v9, :cond_1

    move-object v8, v6

    :cond_1
    if-nez v8, :cond_2

    invoke-static {v3, v4}, Lio/appmetrica/analytics/impl/xo;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {v5, v7}, Lio/appmetrica/analytics/coreutils/internal/collection/CollectionUtils;->areCollectionsEqual(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    new-instance v6, Lio/appmetrica/analytics/impl/i2;

    if-nez v8, :cond_3

    goto :goto_1

    :cond_3
    move-object v2, v8

    :goto_1
    invoke-direct {v6, v2, v4, v7}, Lio/appmetrica/analytics/impl/i2;-><init>(Ljava/util/List;Lio/appmetrica/analytics/impl/M2;Ljava/util/List;)V

    :goto_2
    if-nez v6, :cond_4

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/i5;->A()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v0, v0, Lio/appmetrica/analytics/impl/i5;->n:Lio/appmetrica/analytics/impl/w9;

    iget-object v2, v1, Lio/appmetrica/analytics/impl/i2;->a:Ljava/util/List;

    iget-object v3, v1, Lio/appmetrica/analytics/impl/i2;->b:Lio/appmetrica/analytics/impl/M2;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/ih;->e:Lio/appmetrica/analytics/impl/r2;

    iget-object v1, v1, Lio/appmetrica/analytics/impl/i2;->c:Ljava/util/List;

    invoke-static {p1, v2, v3, p0, v1}, Lio/appmetrica/analytics/impl/a6;->a(Lio/appmetrica/analytics/impl/a6;Ljava/util/Collection;Lio/appmetrica/analytics/impl/M2;Lio/appmetrica/analytics/impl/r2;Ljava/util/List;)Lio/appmetrica/analytics/impl/a6;

    move-result-object p0

    iget-object p1, v0, Lio/appmetrica/analytics/impl/w9;->c:Lio/appmetrica/analytics/impl/jl;

    invoke-virtual {p1, p0}, Lio/appmetrica/analytics/impl/jl;->b(Lio/appmetrica/analytics/impl/a6;)Lio/appmetrica/analytics/impl/Tk;

    move-result-object p1

    iget-wide v1, p0, Lio/appmetrica/analytics/impl/a6;->i:J

    invoke-static {p1, v1, v2}, Lio/appmetrica/analytics/impl/jl;->a(Lio/appmetrica/analytics/impl/Tk;J)Lio/appmetrica/analytics/impl/ml;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lio/appmetrica/analytics/impl/w9;->a(Lio/appmetrica/analytics/impl/a6;Lio/appmetrica/analytics/impl/ml;)V

    iget-object p0, v0, Lio/appmetrica/analytics/impl/w9;->i:Lio/appmetrica/analytics/coreutils/internal/time/TimeProvider;

    invoke-interface {p0}, Lio/appmetrica/analytics/coreutils/internal/time/TimeProvider;->currentTimeSeconds()J

    move-result-wide p0

    iput-wide p0, v0, Lio/appmetrica/analytics/impl/w9;->k:J

    iget-object v0, v0, Lio/appmetrica/analytics/impl/w9;->a:Lio/appmetrica/analytics/impl/jf;

    invoke-virtual {v0, p0, p1}, Lio/appmetrica/analytics/impl/jf;->a(J)Lio/appmetrica/analytics/impl/jf;

    goto :goto_3

    :cond_4
    iget-object v0, v0, Lio/appmetrica/analytics/impl/i5;->n:Lio/appmetrica/analytics/impl/w9;

    iget-object v1, v6, Lio/appmetrica/analytics/impl/i2;->a:Ljava/util/List;

    iget-object v2, v6, Lio/appmetrica/analytics/impl/i2;->b:Lio/appmetrica/analytics/impl/M2;

    iget-object v3, p0, Lio/appmetrica/analytics/impl/ih;->e:Lio/appmetrica/analytics/impl/r2;

    iget-object v4, v6, Lio/appmetrica/analytics/impl/i2;->c:Ljava/util/List;

    invoke-static {p1, v1, v2, v3, v4}, Lio/appmetrica/analytics/impl/a6;->a(Lio/appmetrica/analytics/impl/a6;Ljava/util/Collection;Lio/appmetrica/analytics/impl/M2;Lio/appmetrica/analytics/impl/r2;Ljava/util/List;)Lio/appmetrica/analytics/impl/a6;

    move-result-object p1

    iget-object v1, v0, Lio/appmetrica/analytics/impl/w9;->c:Lio/appmetrica/analytics/impl/jl;

    invoke-virtual {v1, p1}, Lio/appmetrica/analytics/impl/jl;->b(Lio/appmetrica/analytics/impl/a6;)Lio/appmetrica/analytics/impl/Tk;

    move-result-object v1

    iget-wide v2, p1, Lio/appmetrica/analytics/impl/a6;->i:J

    invoke-static {v1, v2, v3}, Lio/appmetrica/analytics/impl/jl;->a(Lio/appmetrica/analytics/impl/Tk;J)Lio/appmetrica/analytics/impl/ml;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lio/appmetrica/analytics/impl/w9;->a(Lio/appmetrica/analytics/impl/a6;Lio/appmetrica/analytics/impl/ml;)V

    iget-object p1, v0, Lio/appmetrica/analytics/impl/w9;->i:Lio/appmetrica/analytics/coreutils/internal/time/TimeProvider;

    invoke-interface {p1}, Lio/appmetrica/analytics/coreutils/internal/time/TimeProvider;->currentTimeSeconds()J

    move-result-wide v1

    iput-wide v1, v0, Lio/appmetrica/analytics/impl/w9;->k:J

    iget-object p1, v0, Lio/appmetrica/analytics/impl/w9;->a:Lio/appmetrica/analytics/impl/jf;

    invoke-virtual {p1, v1, v2}, Lio/appmetrica/analytics/impl/jf;->a(J)Lio/appmetrica/analytics/impl/jf;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/ih;->c:Lio/appmetrica/analytics/coreapi/internal/data/ProtobufStateStorage;

    invoke-interface {p0, v6}, Lio/appmetrica/analytics/coreapi/internal/data/ProtobufStateStorage;->save(Ljava/lang/Object;)V

    :cond_5
    :goto_3
    const/4 p0, 0x0

    return p0
.end method
