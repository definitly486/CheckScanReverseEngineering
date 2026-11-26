.class public final Lorg/conscrypt/OpenSSLRandom;
.super Ljava/security/SecureRandomSpi;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x760c2179bb8f6dadL


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/security/SecureRandomSpi;-><init>()V

    return-void
.end method


# virtual methods
.method public engineGenerateSeed(I)[B
    .locals 0

    new-array p0, p1, [B

    invoke-static {p0}, Lorg/conscrypt/NativeCrypto;->RAND_bytes([B)V

    return-object p0
.end method

.method public engineNextBytes([B)V
    .locals 0

    invoke-static {p1}, Lorg/conscrypt/NativeCrypto;->RAND_bytes([B)V

    return-void
.end method

.method public engineSetSeed([B)V
    .locals 0

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const-string p0, "seed == null"

    invoke-static {p0}, Lo2;->d(Ljava/lang/String;)V

    return-void
.end method
