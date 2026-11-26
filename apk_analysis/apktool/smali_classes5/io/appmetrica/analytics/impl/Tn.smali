.class public final Lio/appmetrica/analytics/impl/Tn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/coreapi/internal/data/ProtobufConverter;


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/Rl;


# direct methods
.method public constructor <init>()V
    .locals 1

    new-instance v0, Lio/appmetrica/analytics/impl/Rl;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/Rl;-><init>()V

    invoke-direct {p0, v0}, Lio/appmetrica/analytics/impl/Tn;-><init>(Lio/appmetrica/analytics/impl/Rl;)V

    return-void
.end method

.method public constructor <init>(Lio/appmetrica/analytics/impl/Rl;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lio/appmetrica/analytics/impl/Tn;->a:Lio/appmetrica/analytics/impl/Rl;

    return-void
.end method


# virtual methods
.method public final a(Lio/appmetrica/analytics/impl/m6;)Lio/appmetrica/analytics/impl/Un;
    .locals 0

    .line 100
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public final a(Lio/appmetrica/analytics/impl/Un;)Lio/appmetrica/analytics/impl/m6;
    .locals 5

    new-instance v0, Lio/appmetrica/analytics/impl/m6;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/m6;-><init>()V

    iget-object v1, p1, Lio/appmetrica/analytics/impl/Un;->a:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v2}, Lio/appmetrica/analytics/coreutils/internal/WrapUtils;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lio/appmetrica/analytics/impl/m6;->a:Ljava/lang/String;

    iget-object v1, p1, Lio/appmetrica/analytics/impl/Un;->b:Ljava/lang/String;

    invoke-static {v1, v2}, Lio/appmetrica/analytics/coreutils/internal/WrapUtils;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lio/appmetrica/analytics/coreutils/internal/StringUtils;->correctIllFormedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lio/appmetrica/analytics/impl/m6;->b:Ljava/lang/String;

    iget-object v1, p1, Lio/appmetrica/analytics/impl/Un;->c:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lio/appmetrica/analytics/impl/Tn;->a:Lio/appmetrica/analytics/impl/Rl;

    invoke-virtual {v2, v1}, Lio/appmetrica/analytics/impl/Rl;->a(Ljava/util/List;)[Lio/appmetrica/analytics/impl/k6;

    move-result-object v1

    iput-object v1, v0, Lio/appmetrica/analytics/impl/m6;->c:[Lio/appmetrica/analytics/impl/k6;

    :cond_0
    iget-object v1, p1, Lio/appmetrica/analytics/impl/Un;->d:Lio/appmetrica/analytics/impl/Un;

    if-eqz v1, :cond_1

    invoke-virtual {p0, v1}, Lio/appmetrica/analytics/impl/Tn;->a(Lio/appmetrica/analytics/impl/Un;)Lio/appmetrica/analytics/impl/m6;

    move-result-object v1

    iput-object v1, v0, Lio/appmetrica/analytics/impl/m6;->d:Lio/appmetrica/analytics/impl/m6;

    :cond_1
    iget-object p1, p1, Lio/appmetrica/analytics/impl/Un;->e:Ljava/util/List;

    const/4 v1, 0x0

    if-nez p1, :cond_2

    new-array p0, v1, [Lio/appmetrica/analytics/impl/m6;

    iput-object p0, v0, Lio/appmetrica/analytics/impl/m6;->e:[Lio/appmetrica/analytics/impl/m6;

    return-object v0

    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lio/appmetrica/analytics/impl/m6;

    iput-object v2, v0, Lio/appmetrica/analytics/impl/m6;->e:[Lio/appmetrica/analytics/impl/m6;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/appmetrica/analytics/impl/Un;

    iget-object v3, v0, Lio/appmetrica/analytics/impl/m6;->e:[Lio/appmetrica/analytics/impl/m6;

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p0, v2}, Lio/appmetrica/analytics/impl/Tn;->a(Lio/appmetrica/analytics/impl/Un;)Lio/appmetrica/analytics/impl/m6;

    move-result-object v2

    aput-object v2, v3, v1

    move v1, v4

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public final bridge synthetic fromModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lio/appmetrica/analytics/impl/Un;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/Tn;->a(Lio/appmetrica/analytics/impl/Un;)Lio/appmetrica/analytics/impl/m6;

    move-result-object p0

    return-object p0
.end method

.method public final toModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lio/appmetrica/analytics/impl/m6;

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method
