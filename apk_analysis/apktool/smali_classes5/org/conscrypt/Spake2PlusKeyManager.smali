.class public Lorg/conscrypt/Spake2PlusKeyManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/net/ssl/KeyManager;


# instance fields
.field private final context:[B

.field private final handshakeLimit:I

.field private final idProver:[B

.field private final idVerifier:[B

.field private final isClient:Z

.field private final password:[B


# direct methods
.method public constructor <init>([B[B[B[BZI)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    if-nez p1, :cond_0

    new-array p1, v0, [B

    :cond_0
    iput-object p1, p0, Lorg/conscrypt/Spake2PlusKeyManager;->context:[B

    iput-object p2, p0, Lorg/conscrypt/Spake2PlusKeyManager;->password:[B

    if-nez p3, :cond_1

    new-array p3, v0, [B

    :cond_1
    iput-object p3, p0, Lorg/conscrypt/Spake2PlusKeyManager;->idProver:[B

    if-nez p4, :cond_2

    new-array p4, v0, [B

    :cond_2
    iput-object p4, p0, Lorg/conscrypt/Spake2PlusKeyManager;->idVerifier:[B

    iput-boolean p5, p0, Lorg/conscrypt/Spake2PlusKeyManager;->isClient:Z

    iput p6, p0, Lorg/conscrypt/Spake2PlusKeyManager;->handshakeLimit:I

    return-void
.end method


# virtual methods
.method public chooseEngineAlias(Ljava/lang/String;[Ljava/security/Principal;Ljavax/net/ssl/SSLEngine;)Ljava/lang/String;
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Not implemented"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public chooseEngineClientAlias([Ljava/lang/String;[Ljava/security/Principal;Ljavax/net/ssl/SSLEngine;)Ljava/lang/String;
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Not implemented"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getContext()[B
    .locals 0

    iget-object p0, p0, Lorg/conscrypt/Spake2PlusKeyManager;->context:[B

    return-object p0
.end method

.method public getHandshakeLimit()I
    .locals 0

    iget p0, p0, Lorg/conscrypt/Spake2PlusKeyManager;->handshakeLimit:I

    return p0
.end method

.method public getIdProver()[B
    .locals 0

    iget-object p0, p0, Lorg/conscrypt/Spake2PlusKeyManager;->idProver:[B

    return-object p0
.end method

.method public getIdVerifier()[B
    .locals 0

    iget-object p0, p0, Lorg/conscrypt/Spake2PlusKeyManager;->idVerifier:[B

    return-object p0
.end method

.method public getPassword()[B
    .locals 0

    iget-object p0, p0, Lorg/conscrypt/Spake2PlusKeyManager;->password:[B

    return-object p0
.end method

.method public isClient()Z
    .locals 0

    iget-boolean p0, p0, Lorg/conscrypt/Spake2PlusKeyManager;->isClient:Z

    return p0
.end method
