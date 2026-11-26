.class public final Lio/appmetrica/analytics/impl/bo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/Co;


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/T8;


# direct methods
.method public constructor <init>()V
    .locals 1

    new-instance v0, Lio/appmetrica/analytics/impl/T8;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/T8;-><init>()V

    invoke-direct {p0, v0}, Lio/appmetrica/analytics/impl/bo;-><init>(Lio/appmetrica/analytics/impl/T8;)V

    return-void
.end method

.method public constructor <init>(Lio/appmetrica/analytics/impl/T8;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lio/appmetrica/analytics/impl/bo;->a:Lio/appmetrica/analytics/impl/T8;

    return-void
.end method


# virtual methods
.method public final a()Lio/appmetrica/analytics/impl/T8;
    .locals 0

    .line 30
    iget-object p0, p0, Lio/appmetrica/analytics/impl/bo;->a:Lio/appmetrica/analytics/impl/T8;

    return-object p0
.end method

.method public final a(Lio/appmetrica/analytics/impl/Z8;Lio/appmetrica/analytics/impl/rh;)[B
    .locals 2

    const/4 p2, 0x0

    new-array v0, p2, [B

    :try_start_0
    iget-object v1, p1, Lio/appmetrica/analytics/impl/Z8;->b:Ljava/lang/String;

    invoke-static {v1}, Lio/appmetrica/analytics/coreutils/internal/io/Base64Utils;->decompressBase64GzipAsBytes(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    iget-object p0, p0, Lio/appmetrica/analytics/impl/bo;->a:Lio/appmetrica/analytics/impl/T8;

    iget-object p1, p1, Lio/appmetrica/analytics/impl/Z8;->o:Lio/appmetrica/analytics/impl/U8;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/T8;->a:Lio/appmetrica/analytics/impl/Qc;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/Qc;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/appmetrica/analytics/impl/S8;

    invoke-interface {p0, v0}, Lio/appmetrica/analytics/impl/S8;->a([B)[B

    move-result-object p0

    if-nez p0, :cond_0

    new-array p0, p2, [B

    :cond_0
    return-object p0
.end method
