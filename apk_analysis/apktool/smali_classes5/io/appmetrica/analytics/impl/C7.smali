.class public final Lio/appmetrica/analytics/impl/C7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/coreapi/internal/data/ProtobufConverter;


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/ve;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 15
    invoke-direct {p0, v0, v1, v0}, Lio/appmetrica/analytics/impl/C7;-><init>(Lio/appmetrica/analytics/impl/ve;ILjh2;)V

    return-void
.end method

.method public constructor <init>(Lio/appmetrica/analytics/impl/ve;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lio/appmetrica/analytics/impl/C7;->a:Lio/appmetrica/analytics/impl/ve;

    return-void
.end method

.method public synthetic constructor <init>(Lio/appmetrica/analytics/impl/ve;ILjh2;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    new-instance p1, Lio/appmetrica/analytics/impl/ve;

    invoke-direct {p1}, Lio/appmetrica/analytics/impl/ve;-><init>()V

    :cond_0
    invoke-direct {p0, p1}, Lio/appmetrica/analytics/impl/C7;-><init>(Lio/appmetrica/analytics/impl/ve;)V

    return-void
.end method


# virtual methods
.method public final a(Lio/appmetrica/analytics/impl/E7;)Lio/appmetrica/analytics/impl/B7;
    .locals 3

    .line 47
    new-instance v0, Lio/appmetrica/analytics/impl/B7;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/B7;-><init>()V

    .line 48
    iget-object v1, p1, Lio/appmetrica/analytics/impl/E7;->a:Ljava/lang/Long;

    if-eqz v1, :cond_0

    .line 49
    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    .line 50
    iput-wide v1, v0, Lio/appmetrica/analytics/impl/B7;->a:J

    .line 51
    :cond_0
    iget-object v1, p1, Lio/appmetrica/analytics/impl/E7;->b:Ljava/lang/Long;

    if-eqz v1, :cond_1

    .line 52
    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    .line 53
    iput-wide v1, v0, Lio/appmetrica/analytics/impl/B7;->b:J

    .line 54
    :cond_1
    iget-object p1, p1, Lio/appmetrica/analytics/impl/E7;->c:Ljava/lang/Boolean;

    if-eqz p1, :cond_2

    .line 55
    iget-object p0, p0, Lio/appmetrica/analytics/impl/C7;->a:Lio/appmetrica/analytics/impl/ve;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/ve;->a(Ljava/lang/Boolean;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    iput p0, v0, Lio/appmetrica/analytics/impl/B7;->c:I

    :cond_2
    return-object v0
.end method

.method public final a(Lio/appmetrica/analytics/impl/B7;)Lio/appmetrica/analytics/impl/E7;
    .locals 8

    new-instance v0, Lio/appmetrica/analytics/impl/B7;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/B7;-><init>()V

    iget-wide v1, p1, Lio/appmetrica/analytics/impl/B7;->a:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-wide v4, v0, Lio/appmetrica/analytics/impl/B7;->a:J

    cmp-long v1, v1, v4

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v3, v2

    :goto_0
    iget-wide v4, p1, Lio/appmetrica/analytics/impl/B7;->b:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-wide v6, v0, Lio/appmetrica/analytics/impl/B7;->b:J

    cmp-long v0, v4, v6

    if-eqz v0, :cond_1

    move-object v2, v1

    :cond_1
    iget-object p0, p0, Lio/appmetrica/analytics/impl/C7;->a:Lio/appmetrica/analytics/impl/ve;

    iget p1, p1, Lio/appmetrica/analytics/impl/B7;->c:I

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/ve;->a(I)Ljava/lang/Boolean;

    move-result-object p0

    new-instance p1, Lio/appmetrica/analytics/impl/E7;

    invoke-direct {p1, v3, v2, p0}, Lio/appmetrica/analytics/impl/E7;-><init>(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V

    return-object p1
.end method

.method public final bridge synthetic fromModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lio/appmetrica/analytics/impl/E7;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/C7;->a(Lio/appmetrica/analytics/impl/E7;)Lio/appmetrica/analytics/impl/B7;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic toModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lio/appmetrica/analytics/impl/B7;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/C7;->a(Lio/appmetrica/analytics/impl/B7;)Lio/appmetrica/analytics/impl/E7;

    move-result-object p0

    return-object p0
.end method
