.class public final Lio/appmetrica/analytics/impl/Y9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/S8;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lio/appmetrica/analytics/impl/a6;)Lio/appmetrica/analytics/impl/K8;
    .locals 0

    .line 9
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public final a()Lio/appmetrica/analytics/impl/U8;
    .locals 0

    .line 10
    sget-object p0, Lio/appmetrica/analytics/impl/U8;->c:Lio/appmetrica/analytics/impl/U8;

    return-object p0
.end method

.method public final a([B)[B
    .locals 0

    const/4 p0, 0x0

    :try_start_0
    invoke-static {p1, p0}, Landroid/util/Base64;->decode([BI)[B

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    new-array p0, p0, [B

    return-object p0
.end method
