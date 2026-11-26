.class public final Lio/appmetrica/analytics/impl/ya;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/kc;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lio/appmetrica/analytics/impl/v7;)Lio/appmetrica/analytics/impl/l9;
    .locals 4

    const/4 p0, 0x0

    if-eqz p1, :cond_0

    iget-object v0, p1, Lio/appmetrica/analytics/impl/v7;->b:Ljava/lang/Double;

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    if-eqz v0, :cond_8

    iget-object v0, p1, Lio/appmetrica/analytics/impl/v7;->c:Ljava/lang/Double;

    if-eqz v0, :cond_8

    new-instance p0, Lio/appmetrica/analytics/impl/l9;

    invoke-direct {p0}, Lio/appmetrica/analytics/impl/l9;-><init>()V

    iget-object v0, p1, Lio/appmetrica/analytics/impl/v7;->b:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    iput-wide v0, p0, Lio/appmetrica/analytics/impl/l9;->b:D

    iget-object v0, p1, Lio/appmetrica/analytics/impl/v7;->c:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    iput-wide v0, p0, Lio/appmetrica/analytics/impl/l9;->a:D

    iget-object v0, p1, Lio/appmetrica/analytics/impl/v7;->d:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    iput v0, p0, Lio/appmetrica/analytics/impl/l9;->g:I

    :cond_1
    iget-object v0, p1, Lio/appmetrica/analytics/impl/v7;->e:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    iput v0, p0, Lio/appmetrica/analytics/impl/l9;->e:I

    :cond_2
    iget-object v0, p1, Lio/appmetrica/analytics/impl/v7;->f:Ljava/lang/Integer;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    iput v0, p0, Lio/appmetrica/analytics/impl/l9;->d:I

    :cond_3
    iget-object v0, p1, Lio/appmetrica/analytics/impl/v7;->g:Ljava/lang/Integer;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    iput v0, p0, Lio/appmetrica/analytics/impl/l9;->f:I

    :cond_4
    iget-object v0, p1, Lio/appmetrica/analytics/impl/v7;->h:Ljava/lang/Long;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p0, Lio/appmetrica/analytics/impl/l9;->c:J

    :cond_5
    iget-object v0, p1, Lio/appmetrica/analytics/impl/v7;->i:Ljava/lang/String;

    if-eqz v0, :cond_7

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v0, 0x1

    iput v0, p0, Lio/appmetrica/analytics/impl/l9;->h:I

    goto :goto_1

    :cond_6
    const-string v1, "network"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x2

    iput v0, p0, Lio/appmetrica/analytics/impl/l9;->h:I

    :cond_7
    :goto_1
    iget-object p1, p1, Lio/appmetrica/analytics/impl/v7;->j:Ljava/lang/String;

    if-eqz p1, :cond_8

    iput-object p1, p0, Lio/appmetrica/analytics/impl/l9;->i:Ljava/lang/String;

    :cond_8
    return-object p0
.end method
