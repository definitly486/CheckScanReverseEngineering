.class final Lorg/conscrypt/OpenSSLX509CRLEntry;
.super Ljava/security/cert/X509CRLEntry;
.source "SourceFile"


# instance fields
.field private final mContext:J

.field private final revocationDate:Ljava/util/Date;


# direct methods
.method public constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/security/cert/X509CRLEntry;-><init>()V

    iput-wide p1, p0, Lorg/conscrypt/OpenSSLX509CRLEntry;->mContext:J

    invoke-static {p1, p2, p0}, Lorg/conscrypt/NativeCrypto;->get_X509_REVOKED_revocationDate(JLorg/conscrypt/OpenSSLX509CRLEntry;)J

    move-result-wide p1

    invoke-static {p1, p2}, Lorg/conscrypt/OpenSSLX509CRL;->toDate(J)Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Lorg/conscrypt/OpenSSLX509CRLEntry;->revocationDate:Ljava/util/Date;

    return-void
.end method


# virtual methods
.method public finalize()V
    .locals 4

    :try_start_0
    iget-wide v0, p0, Lorg/conscrypt/OpenSSLX509CRLEntry;->mContext:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    invoke-static {v0, v1, p0}, Lorg/conscrypt/NativeCrypto;->X509_REVOKED_free(JLorg/conscrypt/OpenSSLX509CRLEntry;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :goto_1
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getCriticalExtensionOIDs()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-wide v0, p0, Lorg/conscrypt/OpenSSLX509CRLEntry;->mContext:J

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, p0}, Lorg/conscrypt/NativeCrypto;->get_X509_REVOKED_ext_oids(JILorg/conscrypt/OpenSSLX509CRLEntry;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    if-nez v1, :cond_0

    iget-wide v1, p0, Lorg/conscrypt/OpenSSLX509CRLEntry;->mContext:J

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, p0}, Lorg/conscrypt/NativeCrypto;->get_X509_REVOKED_ext_oids(JILorg/conscrypt/OpenSSLX509CRLEntry;)[Ljava/lang/String;

    move-result-object p0

    array-length p0, p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance p0, Ljava/util/HashSet;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object p0
.end method

.method public getEncoded()[B
    .locals 2

    iget-wide v0, p0, Lorg/conscrypt/OpenSSLX509CRLEntry;->mContext:J

    invoke-static {v0, v1, p0}, Lorg/conscrypt/NativeCrypto;->i2d_X509_REVOKED(JLorg/conscrypt/OpenSSLX509CRLEntry;)[B

    move-result-object p0

    return-object p0
.end method

.method public getExtensionValue(Ljava/lang/String;)[B
    .locals 2

    iget-wide v0, p0, Lorg/conscrypt/OpenSSLX509CRLEntry;->mContext:J

    invoke-static {v0, v1, p1, p0}, Lorg/conscrypt/NativeCrypto;->X509_REVOKED_get_ext_oid(JLjava/lang/String;Lorg/conscrypt/OpenSSLX509CRLEntry;)[B

    move-result-object p0

    return-object p0
.end method

.method public getNonCriticalExtensionOIDs()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-wide v0, p0, Lorg/conscrypt/OpenSSLX509CRLEntry;->mContext:J

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p0}, Lorg/conscrypt/NativeCrypto;->get_X509_REVOKED_ext_oids(JILorg/conscrypt/OpenSSLX509CRLEntry;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    if-nez v1, :cond_0

    iget-wide v1, p0, Lorg/conscrypt/OpenSSLX509CRLEntry;->mContext:J

    const/4 v3, 0x1

    invoke-static {v1, v2, v3, p0}, Lorg/conscrypt/NativeCrypto;->get_X509_REVOKED_ext_oids(JILorg/conscrypt/OpenSSLX509CRLEntry;)[Ljava/lang/String;

    move-result-object p0

    array-length p0, p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance p0, Ljava/util/HashSet;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object p0
.end method

.method public getRevocationDate()Ljava/util/Date;
    .locals 0

    iget-object p0, p0, Lorg/conscrypt/OpenSSLX509CRLEntry;->revocationDate:Ljava/util/Date;

    invoke-virtual {p0}, Ljava/util/Date;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Date;

    return-object p0
.end method

.method public getSerialNumber()Ljava/math/BigInteger;
    .locals 3

    new-instance v0, Ljava/math/BigInteger;

    iget-wide v1, p0, Lorg/conscrypt/OpenSSLX509CRLEntry;->mContext:J

    invoke-static {v1, v2, p0}, Lorg/conscrypt/NativeCrypto;->X509_REVOKED_get_serialNumber(JLorg/conscrypt/OpenSSLX509CRLEntry;)[B

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/math/BigInteger;-><init>([B)V

    return-object v0
.end method

.method public hasExtensions()Z
    .locals 5

    iget-wide v0, p0, Lorg/conscrypt/OpenSSLX509CRLEntry;->mContext:J

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p0}, Lorg/conscrypt/NativeCrypto;->get_X509_REVOKED_ext_oids(JILorg/conscrypt/OpenSSLX509CRLEntry;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget-wide v3, p0, Lorg/conscrypt/OpenSSLX509CRLEntry;->mContext:J

    invoke-static {v3, v4, v1, p0}, Lorg/conscrypt/NativeCrypto;->get_X509_REVOKED_ext_oids(JILorg/conscrypt/OpenSSLX509CRLEntry;)[Ljava/lang/String;

    move-result-object p0

    array-length p0, p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    return v2

    :cond_1
    :goto_0
    return v1
.end method

.method public hasUnsupportedCriticalExtension()Z
    .locals 8

    iget-wide v0, p0, Lorg/conscrypt/OpenSSLX509CRLEntry;->mContext:J

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, p0}, Lorg/conscrypt/NativeCrypto;->get_X509_REVOKED_ext_oids(JILorg/conscrypt/OpenSSLX509CRLEntry;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v1, :cond_1

    aget-object v5, v0, v4

    iget-wide v6, p0, Lorg/conscrypt/OpenSSLX509CRLEntry;->mContext:J

    invoke-static {v6, v7, v5, p0}, Lorg/conscrypt/NativeCrypto;->X509_REVOKED_get_ext(JLjava/lang/String;Lorg/conscrypt/OpenSSLX509CRLEntry;)J

    move-result-wide v5

    invoke-static {v5, v6}, Lorg/conscrypt/NativeCrypto;->X509_supported_extension(J)I

    move-result v5

    if-eq v5, v2, :cond_0

    return v2

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return v3
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-static {v0}, Lorg/conscrypt/NativeCrypto;->create_BIO_OutputStream(Ljava/io/OutputStream;)J

    move-result-wide v1

    :try_start_0
    iget-wide v3, p0, Lorg/conscrypt/OpenSSLX509CRLEntry;->mContext:J

    invoke-static {v1, v2, v3, v4, p0}, Lorg/conscrypt/NativeCrypto;->X509_REVOKED_print(JJLorg/conscrypt/OpenSSLX509CRLEntry;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1, v2}, Lorg/conscrypt/NativeCrypto;->BIO_free_all(J)V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {v1, v2}, Lorg/conscrypt/NativeCrypto;->BIO_free_all(J)V

    throw p0
.end method
