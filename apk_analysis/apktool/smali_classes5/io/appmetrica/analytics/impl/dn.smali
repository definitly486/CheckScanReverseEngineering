.class public final Lio/appmetrica/analytics/impl/dn;
.super Lio/appmetrica/analytics/impl/hn;
.source "SourceFile"


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lio/appmetrica/analytics/coreapi/internal/data/ProtobufStateSerializer;

.field public final synthetic c:Lio/appmetrica/analytics/coreapi/internal/data/ProtobufConverter;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lio/appmetrica/analytics/coreapi/internal/data/ProtobufStateSerializer;Lio/appmetrica/analytics/coreapi/internal/data/ProtobufConverter;)V
    .locals 0

    iput-object p1, p0, Lio/appmetrica/analytics/impl/dn;->a:Ljava/lang/String;

    iput-object p2, p0, Lio/appmetrica/analytics/impl/dn;->b:Lio/appmetrica/analytics/coreapi/internal/data/ProtobufStateSerializer;

    iput-object p3, p0, Lio/appmetrica/analytics/impl/dn;->c:Lio/appmetrica/analytics/coreapi/internal/data/ProtobufConverter;

    invoke-direct {p0}, Lio/appmetrica/analytics/impl/hn;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Lio/appmetrica/analytics/coreapi/internal/data/IBinaryDataHelper;
    .locals 0

    .line 61
    sget-object p0, Lio/appmetrica/analytics/impl/Fa;->I:Lio/appmetrica/analytics/impl/Fa;

    .line 62
    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/Fa;->B()Lio/appmetrica/analytics/impl/Ok;

    move-result-object p0

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/Ok;->b(Landroid/content/Context;)Lio/appmetrica/analytics/coreapi/internal/data/IBinaryDataHelper;

    move-result-object p0

    return-object p0
.end method

.method public final a(Landroid/content/Context;Lio/appmetrica/analytics/coreapi/internal/data/IBinaryDataHelper;)Lio/appmetrica/analytics/coreapi/internal/data/ProtobufStateStorage;
    .locals 8

    new-instance v0, Lio/appmetrica/analytics/impl/ag;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/dn;->a:Ljava/lang/String;

    iget-object v2, p0, Lio/appmetrica/analytics/impl/dn;->b:Lio/appmetrica/analytics/coreapi/internal/data/ProtobufStateSerializer;

    new-instance v3, Lio/appmetrica/analytics/impl/L8;

    new-instance v4, Lio/appmetrica/analytics/coreutils/internal/encryption/AESEncrypter;

    const/16 v5, 0x10

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lio/appmetrica/analytics/impl/Xa;->a(Ljava/lang/String;)[B

    move-result-object v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    new-array v6, v5, [B

    :goto_0
    :try_start_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v7, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->reverse()Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/appmetrica/analytics/impl/Xa;->a(Ljava/lang/String;)[B

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    new-array p1, v5, [B

    :goto_1
    const-string v5, "AES/CBC/PKCS5Padding"

    invoke-direct {v4, v5, v6, p1}, Lio/appmetrica/analytics/coreutils/internal/encryption/AESEncrypter;-><init>(Ljava/lang/String;[B[B)V

    invoke-direct {v3, v2, v4}, Lio/appmetrica/analytics/impl/L8;-><init>(Lio/appmetrica/analytics/coreapi/internal/data/ProtobufStateSerializer;Lio/appmetrica/analytics/coreutils/internal/encryption/AESEncrypter;)V

    iget-object p0, p0, Lio/appmetrica/analytics/impl/dn;->c:Lio/appmetrica/analytics/coreapi/internal/data/ProtobufConverter;

    invoke-direct {v0, v1, p2, v3, p0}, Lio/appmetrica/analytics/impl/ag;-><init>(Ljava/lang/String;Lio/appmetrica/analytics/coreapi/internal/data/IBinaryDataHelper;Lio/appmetrica/analytics/coreapi/internal/data/ProtobufStateSerializer;Lio/appmetrica/analytics/coreapi/internal/data/ProtobufConverter;)V

    return-object v0
.end method

.method public final b(Landroid/content/Context;)Lio/appmetrica/analytics/coreapi/internal/data/IBinaryDataHelper;
    .locals 0

    sget-object p0, Lio/appmetrica/analytics/impl/Fa;->I:Lio/appmetrica/analytics/impl/Fa;

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/Fa;->B()Lio/appmetrica/analytics/impl/Ok;

    move-result-object p0

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/Ok;->a(Landroid/content/Context;)Lio/appmetrica/analytics/coreapi/internal/data/IBinaryDataHelper;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
