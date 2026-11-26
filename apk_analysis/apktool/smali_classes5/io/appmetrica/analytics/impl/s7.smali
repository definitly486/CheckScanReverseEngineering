.class public final Lio/appmetrica/analytics/impl/s7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/coreapi/internal/data/Converter;


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/p7;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 16
    invoke-direct {p0, v0, v1, v0}, Lio/appmetrica/analytics/impl/s7;-><init>(Lio/appmetrica/analytics/impl/p7;ILjh2;)V

    return-void
.end method

.method public constructor <init>(Lio/appmetrica/analytics/impl/p7;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lio/appmetrica/analytics/impl/s7;->a:Lio/appmetrica/analytics/impl/p7;

    return-void
.end method

.method public synthetic constructor <init>(Lio/appmetrica/analytics/impl/p7;ILjh2;)V
    .locals 0

    const/4 p3, 0x1

    and-int/2addr p2, p3

    if-eqz p2, :cond_0

    new-instance p1, Lio/appmetrica/analytics/impl/p7;

    const/4 p2, 0x0

    invoke-direct {p1, p2, p3, p2}, Lio/appmetrica/analytics/impl/p7;-><init>(Lio/appmetrica/analytics/impl/o7;ILjh2;)V

    :cond_0
    invoke-direct {p0, p1}, Lio/appmetrica/analytics/impl/s7;-><init>(Lio/appmetrica/analytics/impl/p7;)V

    return-void
.end method


# virtual methods
.method public final a(Lio/appmetrica/analytics/impl/r7;)Landroid/content/ContentValues;
    .locals 3

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iget-object v1, p1, Lio/appmetrica/analytics/impl/r7;->a:Ljava/lang/Long;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "session_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_0
    iget-object v1, p1, Lio/appmetrica/analytics/impl/r7;->b:Lio/appmetrica/analytics/impl/ol;

    if-eqz v1, :cond_1

    iget v1, v1, Lio/appmetrica/analytics/impl/ol;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "session_type"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_1
    iget-object v1, p1, Lio/appmetrica/analytics/impl/r7;->c:Ljava/lang/Long;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "number_in_session"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_2
    iget-object v1, p1, Lio/appmetrica/analytics/impl/r7;->d:Lio/appmetrica/analytics/impl/pb;

    if-eqz v1, :cond_3

    iget v1, v1, Lio/appmetrica/analytics/impl/pb;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "type"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_3
    iget-object v1, p1, Lio/appmetrica/analytics/impl/r7;->e:Ljava/lang/Long;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "global_number"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_4
    iget-object v1, p1, Lio/appmetrica/analytics/impl/r7;->f:Ljava/lang/Long;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "time"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_5
    iget-object p0, p0, Lio/appmetrica/analytics/impl/s7;->a:Lio/appmetrica/analytics/impl/p7;

    iget-object p1, p1, Lio/appmetrica/analytics/impl/r7;->g:Lio/appmetrica/analytics/impl/q7;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/p7;->a:Lio/appmetrica/analytics/impl/o7;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/o7;->a(Lio/appmetrica/analytics/impl/q7;)Lio/appmetrica/analytics/impl/z7;

    move-result-object p0

    invoke-static {p0}, Lio/appmetrica/analytics/protobuf/nano/MessageNano;->toByteArray(Lio/appmetrica/analytics/protobuf/nano/MessageNano;)[B

    move-result-object p0

    const-string p1, "event_description"

    invoke-virtual {v0, p1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    return-object v0
.end method

.method public final a(Landroid/content/ContentValues;)Lio/appmetrica/analytics/impl/r7;
    .locals 9

    .line 123
    const-string v0, "session_id"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    .line 124
    const-string v0, "session_type"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 125
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 126
    sget-object v3, Lio/appmetrica/analytics/impl/ol;->b:Lio/appmetrica/analytics/impl/ol;

    if-eqz v0, :cond_2

    const/4 v4, 0x1

    if-eq v0, v4, :cond_0

    goto :goto_0

    .line 127
    :cond_0
    sget-object v3, Lio/appmetrica/analytics/impl/ol;->c:Lio/appmetrica/analytics/impl/ol;

    goto :goto_0

    :cond_1
    move-object v3, v1

    .line 128
    :cond_2
    :goto_0
    const-string v0, "number_in_session"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    .line 129
    const-string v0, "type"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 130
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-static {v0}, Lio/appmetrica/analytics/impl/pb;->a(I)Lio/appmetrica/analytics/impl/pb;

    move-result-object v1

    :cond_3
    move-object v5, v1

    .line 131
    const-string v0, "global_number"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    .line 132
    const-string v0, "time"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    .line 133
    iget-object p0, p0, Lio/appmetrica/analytics/impl/s7;->a:Lio/appmetrica/analytics/impl/p7;

    .line 134
    const-string v0, "event_description"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsByteArray(Ljava/lang/String;)[B

    move-result-object p1

    .line 135
    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/p7;->a([B)Lio/appmetrica/analytics/impl/q7;

    move-result-object v8

    .line 136
    new-instance v1, Lio/appmetrica/analytics/impl/r7;

    invoke-direct/range {v1 .. v8}, Lio/appmetrica/analytics/impl/r7;-><init>(Ljava/lang/Long;Lio/appmetrica/analytics/impl/ol;Ljava/lang/Long;Lio/appmetrica/analytics/impl/pb;Ljava/lang/Long;Ljava/lang/Long;Lio/appmetrica/analytics/impl/q7;)V

    return-object v1
.end method

.method public final bridge synthetic fromModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lio/appmetrica/analytics/impl/r7;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/s7;->a(Lio/appmetrica/analytics/impl/r7;)Landroid/content/ContentValues;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic toModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroid/content/ContentValues;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/s7;->a(Landroid/content/ContentValues;)Lio/appmetrica/analytics/impl/r7;

    move-result-object p0

    return-object p0
.end method
