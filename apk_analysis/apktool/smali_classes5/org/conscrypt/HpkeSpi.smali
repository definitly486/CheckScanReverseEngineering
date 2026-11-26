.class public interface abstract Lorg/conscrypt/HpkeSpi;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DEFAULT_PSK:[B

.field public static final DEFAULT_PSK_ID:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lorg/conscrypt/HpkeSpi;->DEFAULT_PSK:[B

    sput-object v0, Lorg/conscrypt/HpkeSpi;->DEFAULT_PSK_ID:[B

    return-void
.end method


# virtual methods
.method public abstract engineExport(I[B)[B
.end method

.method public abstract engineInitRecipient([BLjava/security/PrivateKey;[BLjava/security/PublicKey;[B[B)V
.end method

.method public abstract engineInitSender(Ljava/security/PublicKey;[BLjava/security/PrivateKey;[B[B)V
.end method

.method public abstract engineInitSenderForTesting(Ljava/security/PublicKey;[BLjava/security/PrivateKey;[B[B[B)V
.end method

.method public abstract engineOpen([B[B)[B
.end method

.method public abstract engineSeal([B[B)[B
.end method

.method public abstract getEncapsulated()[B
.end method
