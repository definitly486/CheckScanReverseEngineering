.class public final Lio/appmetrica/analytics/impl/bg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/Co;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lio/appmetrica/analytics/impl/Z8;Lio/appmetrica/analytics/impl/rh;)[B
    .locals 2

    iget-object p0, p1, Lio/appmetrica/analytics/impl/Z8;->b:Ljava/lang/String;

    invoke-static {p0}, Lio/appmetrica/analytics/coreutils/internal/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p0

    const/4 p2, 0x0

    if-nez p0, :cond_4

    :try_start_0
    iget-object p0, p1, Lio/appmetrica/analytics/impl/Z8;->b:Ljava/lang/String;

    invoke-static {p0, p2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    if-eqz p0, :cond_1

    array-length p1, p0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lio/appmetrica/analytics/impl/og;

    invoke-direct {p1, p0}, Lio/appmetrica/analytics/impl/og;-><init>([B)V

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    :goto_1
    new-instance p0, Lio/appmetrica/analytics/impl/jg;

    invoke-direct {p0}, Lio/appmetrica/analytics/impl/jg;-><init>()V

    iget-object v0, p1, Lio/appmetrica/analytics/impl/og;->a:Ljava/lang/String;

    if-nez v0, :cond_2

    new-array v0, p2, [B

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    :goto_2
    iput-object v0, p0, Lio/appmetrica/analytics/impl/jg;->a:[B

    iget-wide v0, p1, Lio/appmetrica/analytics/impl/og;->b:J

    iput-wide v0, p0, Lio/appmetrica/analytics/impl/jg;->c:J

    iget-wide v0, p1, Lio/appmetrica/analytics/impl/og;->c:J

    iput-wide v0, p0, Lio/appmetrica/analytics/impl/jg;->b:J

    iget p1, p1, Lio/appmetrica/analytics/impl/og;->d:I

    invoke-static {p1}, Lio/appmetrica/analytics/impl/W7;->a(I)I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    move v0, p2

    :cond_3
    iput v0, p0, Lio/appmetrica/analytics/impl/jg;->d:I

    invoke-static {p0}, Lio/appmetrica/analytics/protobuf/nano/MessageNano;->toByteArray(Lio/appmetrica/analytics/protobuf/nano/MessageNano;)[B

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    :cond_4
    new-array p0, p2, [B

    return-object p0
.end method
