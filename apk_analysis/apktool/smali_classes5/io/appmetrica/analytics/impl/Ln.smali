.class public final Lio/appmetrica/analytics/impl/Ln;
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

    invoke-direct {p0, v0}, Lio/appmetrica/analytics/impl/Ln;-><init>(Lio/appmetrica/analytics/impl/Rl;)V

    return-void
.end method

.method public constructor <init>(Lio/appmetrica/analytics/impl/Rl;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lio/appmetrica/analytics/impl/Ln;->a:Lio/appmetrica/analytics/impl/Rl;

    return-void
.end method


# virtual methods
.method public final a(Lio/appmetrica/analytics/impl/l6;)Lio/appmetrica/analytics/impl/Kn;
    .locals 0

    .line 74
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public final a(Lio/appmetrica/analytics/impl/Kn;)Lio/appmetrica/analytics/impl/l6;
    .locals 4

    new-instance v0, Lio/appmetrica/analytics/impl/l6;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/l6;-><init>()V

    iget-object v1, p1, Lio/appmetrica/analytics/impl/Kn;->e:Ljava/lang/Integer;

    if-nez v1, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_0
    iput v1, v0, Lio/appmetrica/analytics/impl/l6;->e:I

    iget-object v1, p1, Lio/appmetrica/analytics/impl/Kn;->d:Ljava/lang/String;

    iput-object v1, v0, Lio/appmetrica/analytics/impl/l6;->d:Ljava/lang/String;

    iget v1, p1, Lio/appmetrica/analytics/impl/Kn;->b:I

    iput v1, v0, Lio/appmetrica/analytics/impl/l6;->b:I

    iget-object v1, p1, Lio/appmetrica/analytics/impl/Kn;->a:Ljava/lang/String;

    iput-object v1, v0, Lio/appmetrica/analytics/impl/l6;->a:Ljava/lang/String;

    iget-wide v1, p1, Lio/appmetrica/analytics/impl/Kn;->c:J

    iput-wide v1, v0, Lio/appmetrica/analytics/impl/l6;->c:J

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Ln;->a:Lio/appmetrica/analytics/impl/Rl;

    iget-object p1, p1, Lio/appmetrica/analytics/impl/Kn;->f:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/StackTraceElement;

    new-instance v3, Lio/appmetrica/analytics/impl/Tl;

    invoke-direct {v3, v2}, Lio/appmetrica/analytics/impl/Tl;-><init>(Ljava/lang/StackTraceElement;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v1}, Lio/appmetrica/analytics/impl/Rl;->a(Ljava/util/List;)[Lio/appmetrica/analytics/impl/k6;

    move-result-object p0

    iput-object p0, v0, Lio/appmetrica/analytics/impl/l6;->f:[Lio/appmetrica/analytics/impl/k6;

    return-object v0
.end method

.method public final bridge synthetic fromModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lio/appmetrica/analytics/impl/Kn;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/Ln;->a(Lio/appmetrica/analytics/impl/Kn;)Lio/appmetrica/analytics/impl/l6;

    move-result-object p0

    return-object p0
.end method

.method public final toModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lio/appmetrica/analytics/impl/l6;

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method
