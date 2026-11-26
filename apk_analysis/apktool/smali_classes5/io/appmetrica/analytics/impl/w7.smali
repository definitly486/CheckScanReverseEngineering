.class public final Lio/appmetrica/analytics/impl/w7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/coreapi/internal/data/Converter;


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/ve;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 15
    invoke-direct {p0, v0, v1, v0}, Lio/appmetrica/analytics/impl/w7;-><init>(Lio/appmetrica/analytics/impl/ve;ILjh2;)V

    return-void
.end method

.method public constructor <init>(Lio/appmetrica/analytics/impl/ve;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lio/appmetrica/analytics/impl/w7;->a:Lio/appmetrica/analytics/impl/ve;

    return-void
.end method

.method public synthetic constructor <init>(Lio/appmetrica/analytics/impl/ve;ILjh2;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    new-instance p1, Lio/appmetrica/analytics/impl/ve;

    invoke-direct {p1}, Lio/appmetrica/analytics/impl/ve;-><init>()V

    :cond_0
    invoke-direct {p0, p1}, Lio/appmetrica/analytics/impl/w7;-><init>(Lio/appmetrica/analytics/impl/ve;)V

    return-void
.end method


# virtual methods
.method public final a(Lio/appmetrica/analytics/impl/v7;)Lio/appmetrica/analytics/impl/A7;
    .locals 3

    .line 171
    new-instance v0, Lio/appmetrica/analytics/impl/A7;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/A7;-><init>()V

    .line 172
    iget-object v1, p1, Lio/appmetrica/analytics/impl/v7;->a:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 173
    iget-object p0, p0, Lio/appmetrica/analytics/impl/w7;->a:Lio/appmetrica/analytics/impl/ve;

    invoke-virtual {p0, v1}, Lio/appmetrica/analytics/impl/ve;->a(Ljava/lang/Boolean;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    iput p0, v0, Lio/appmetrica/analytics/impl/A7;->a:I

    .line 174
    :cond_0
    iget-object p0, p1, Lio/appmetrica/analytics/impl/v7;->c:Ljava/lang/Double;

    if-eqz p0, :cond_1

    .line 175
    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    .line 176
    iput-wide v1, v0, Lio/appmetrica/analytics/impl/A7;->c:D

    .line 177
    :cond_1
    iget-object p0, p1, Lio/appmetrica/analytics/impl/v7;->b:Ljava/lang/Double;

    if-eqz p0, :cond_2

    .line 178
    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    .line 179
    iput-wide v1, v0, Lio/appmetrica/analytics/impl/A7;->b:D

    .line 180
    :cond_2
    iget-object p0, p1, Lio/appmetrica/analytics/impl/v7;->h:Ljava/lang/Long;

    if-eqz p0, :cond_3

    .line 181
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    .line 182
    iput-wide v1, v0, Lio/appmetrica/analytics/impl/A7;->h:J

    .line 183
    :cond_3
    iget-object p0, p1, Lio/appmetrica/analytics/impl/v7;->f:Ljava/lang/Integer;

    if-eqz p0, :cond_4

    .line 184
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    .line 185
    iput p0, v0, Lio/appmetrica/analytics/impl/A7;->f:I

    .line 186
    :cond_4
    iget-object p0, p1, Lio/appmetrica/analytics/impl/v7;->e:Ljava/lang/Integer;

    if-eqz p0, :cond_5

    .line 187
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    .line 188
    iput p0, v0, Lio/appmetrica/analytics/impl/A7;->e:I

    .line 189
    :cond_5
    iget-object p0, p1, Lio/appmetrica/analytics/impl/v7;->g:Ljava/lang/Integer;

    if-eqz p0, :cond_6

    .line 190
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    .line 191
    iput p0, v0, Lio/appmetrica/analytics/impl/A7;->g:I

    .line 192
    :cond_6
    iget-object p0, p1, Lio/appmetrica/analytics/impl/v7;->d:Ljava/lang/Integer;

    if-eqz p0, :cond_7

    .line 193
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    .line 194
    iput p0, v0, Lio/appmetrica/analytics/impl/A7;->d:I

    .line 195
    :cond_7
    iget-object p0, p1, Lio/appmetrica/analytics/impl/v7;->i:Ljava/lang/String;

    if-eqz p0, :cond_8

    .line 196
    iput-object p0, v0, Lio/appmetrica/analytics/impl/A7;->i:Ljava/lang/String;

    .line 197
    :cond_8
    iget-object p0, p1, Lio/appmetrica/analytics/impl/v7;->j:Ljava/lang/String;

    if-eqz p0, :cond_9

    .line 198
    iput-object p0, v0, Lio/appmetrica/analytics/impl/A7;->j:Ljava/lang/String;

    :cond_9
    return-object v0
.end method

.method public final a(Lio/appmetrica/analytics/impl/A7;)Lio/appmetrica/analytics/impl/v7;
    .locals 13

    if-nez p1, :cond_0

    new-instance v0, Lio/appmetrica/analytics/impl/v7;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v10}, Lio/appmetrica/analytics/impl/v7;-><init>(Ljava/lang/Boolean;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_0
    new-instance v0, Lio/appmetrica/analytics/impl/A7;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/A7;-><init>()V

    iget-object p0, p0, Lio/appmetrica/analytics/impl/w7;->a:Lio/appmetrica/analytics/impl/ve;

    iget v1, p1, Lio/appmetrica/analytics/impl/A7;->a:I

    invoke-virtual {p0, v1}, Lio/appmetrica/analytics/impl/ve;->a(I)Ljava/lang/Boolean;

    move-result-object v3

    iget-wide v1, p1, Lio/appmetrica/analytics/impl/A7;->c:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    iget-wide v4, v0, Lio/appmetrica/analytics/impl/A7;->c:D

    cmpg-double v1, v1, v4

    const/4 v2, 0x0

    const/4 v4, 0x1

    if-nez v1, :cond_1

    move v1, v4

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    const/4 v5, 0x0

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    move-object p0, v5

    :goto_1
    iget-wide v6, p1, Lio/appmetrica/analytics/impl/A7;->b:D

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iget-wide v8, v0, Lio/appmetrica/analytics/impl/A7;->b:D

    cmpg-double v6, v6, v8

    if-nez v6, :cond_3

    move v2, v4

    :cond_3
    if-nez v2, :cond_4

    move-object v4, v1

    goto :goto_2

    :cond_4
    move-object v4, v5

    :goto_2
    iget-wide v1, p1, Lio/appmetrica/analytics/impl/A7;->h:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    iget-wide v7, v0, Lio/appmetrica/analytics/impl/A7;->h:J

    cmp-long v1, v1, v7

    if-eqz v1, :cond_5

    move-object v10, v6

    goto :goto_3

    :cond_5
    move-object v10, v5

    :goto_3
    iget v1, p1, Lio/appmetrica/analytics/impl/A7;->f:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v6, v0, Lio/appmetrica/analytics/impl/A7;->f:I

    if-eq v1, v6, :cond_6

    move-object v8, v2

    goto :goto_4

    :cond_6
    move-object v8, v5

    :goto_4
    iget v1, p1, Lio/appmetrica/analytics/impl/A7;->e:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v6, v0, Lio/appmetrica/analytics/impl/A7;->e:I

    if-eq v1, v6, :cond_7

    move-object v7, v2

    goto :goto_5

    :cond_7
    move-object v7, v5

    :goto_5
    iget v1, p1, Lio/appmetrica/analytics/impl/A7;->g:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v6, v0, Lio/appmetrica/analytics/impl/A7;->g:I

    if-eq v1, v6, :cond_8

    move-object v9, v2

    goto :goto_6

    :cond_8
    move-object v9, v5

    :goto_6
    iget v1, p1, Lio/appmetrica/analytics/impl/A7;->d:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v6, v0, Lio/appmetrica/analytics/impl/A7;->d:I

    if-eq v1, v6, :cond_9

    move-object v6, v2

    goto :goto_7

    :cond_9
    move-object v6, v5

    :goto_7
    iget-object v1, p1, Lio/appmetrica/analytics/impl/A7;->i:Ljava/lang/String;

    iget-object v2, v0, Lio/appmetrica/analytics/impl/A7;->i:Ljava/lang/String;

    invoke-static {v1, v2}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    move-object v11, v1

    goto :goto_8

    :cond_a
    move-object v11, v5

    :goto_8
    iget-object p1, p1, Lio/appmetrica/analytics/impl/A7;->j:Ljava/lang/String;

    iget-object v0, v0, Lio/appmetrica/analytics/impl/A7;->j:Ljava/lang/String;

    invoke-static {p1, v0}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    move-object v12, p1

    goto :goto_9

    :cond_b
    move-object v12, v5

    :goto_9
    new-instance v2, Lio/appmetrica/analytics/impl/v7;

    move-object v5, p0

    invoke-direct/range {v2 .. v12}, Lio/appmetrica/analytics/impl/v7;-><init>(Ljava/lang/Boolean;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method public final bridge synthetic fromModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lio/appmetrica/analytics/impl/v7;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/w7;->a(Lio/appmetrica/analytics/impl/v7;)Lio/appmetrica/analytics/impl/A7;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic toModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lio/appmetrica/analytics/impl/A7;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/w7;->a(Lio/appmetrica/analytics/impl/A7;)Lio/appmetrica/analytics/impl/v7;

    move-result-object p0

    return-object p0
.end method
