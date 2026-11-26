.class public final Lorg/conscrypt/HpkeSuite;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/conscrypt/HpkeSuite$KEM;,
        Lorg/conscrypt/HpkeSuite$KDF;,
        Lorg/conscrypt/HpkeSuite$AEAD;
    }
.end annotation


# static fields
.field public static final AEAD_AES_128_GCM:I = 0x1

.field public static final AEAD_AES_256_GCM:I = 0x2

.field public static final AEAD_CHACHA20POLY1305:I = 0x3

.field public static final KDF_HKDF_SHA256:I = 0x1

.field public static final KEM_DHKEM_X25519_HKDF_SHA256:I = 0x20

.field public static final KEM_MLKEM_1024:I = 0x42

.field public static final KEM_MLKEM_768:I = 0x41

.field public static final KEM_XWING:I = 0x647a


# instance fields
.field private final mAead:Lorg/conscrypt/HpkeSuite$AEAD;

.field private final mKdf:Lorg/conscrypt/HpkeSuite$KDF;

.field private final mKem:Lorg/conscrypt/HpkeSuite$KEM;


# direct methods
.method public constructor <init>(III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lorg/conscrypt/HpkeSuite$KEM;->forId(I)Lorg/conscrypt/HpkeSuite$KEM;

    move-result-object p1

    iput-object p1, p0, Lorg/conscrypt/HpkeSuite;->mKem:Lorg/conscrypt/HpkeSuite$KEM;

    invoke-static {p2}, Lorg/conscrypt/HpkeSuite$KDF;->forId(I)Lorg/conscrypt/HpkeSuite$KDF;

    move-result-object p1

    iput-object p1, p0, Lorg/conscrypt/HpkeSuite;->mKdf:Lorg/conscrypt/HpkeSuite$KDF;

    invoke-static {p3}, Lorg/conscrypt/HpkeSuite$AEAD;->forId(I)Lorg/conscrypt/HpkeSuite$AEAD;

    move-result-object p1

    iput-object p1, p0, Lorg/conscrypt/HpkeSuite;->mAead:Lorg/conscrypt/HpkeSuite$AEAD;

    return-void
.end method


# virtual methods
.method public convertAead(I)Lorg/conscrypt/HpkeSuite$AEAD;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p1}, Lorg/conscrypt/HpkeSuite$AEAD;->forId(I)Lorg/conscrypt/HpkeSuite$AEAD;

    move-result-object p0

    return-object p0
.end method

.method public convertKdf(I)Lorg/conscrypt/HpkeSuite$KDF;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p1}, Lorg/conscrypt/HpkeSuite$KDF;->forId(I)Lorg/conscrypt/HpkeSuite$KDF;

    move-result-object p0

    return-object p0
.end method

.method public convertKem(I)Lorg/conscrypt/HpkeSuite$KEM;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p1}, Lorg/conscrypt/HpkeSuite$KEM;->forId(I)Lorg/conscrypt/HpkeSuite$KEM;

    move-result-object p0

    return-object p0
.end method

.method public getAead()Lorg/conscrypt/HpkeSuite$AEAD;
    .locals 0

    iget-object p0, p0, Lorg/conscrypt/HpkeSuite;->mAead:Lorg/conscrypt/HpkeSuite$AEAD;

    return-object p0
.end method

.method public getKdf()Lorg/conscrypt/HpkeSuite$KDF;
    .locals 0

    iget-object p0, p0, Lorg/conscrypt/HpkeSuite;->mKdf:Lorg/conscrypt/HpkeSuite$KDF;

    return-object p0
.end method

.method public getKem()Lorg/conscrypt/HpkeSuite$KEM;
    .locals 0

    iget-object p0, p0, Lorg/conscrypt/HpkeSuite;->mKem:Lorg/conscrypt/HpkeSuite$KEM;

    return-object p0
.end method

.method public name()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lorg/conscrypt/HpkeSuite;->mKem:Lorg/conscrypt/HpkeSuite$KEM;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/conscrypt/HpkeSuite;->mKdf:Lorg/conscrypt/HpkeSuite$KDF;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lorg/conscrypt/HpkeSuite;->mAead:Lorg/conscrypt/HpkeSuite$AEAD;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
