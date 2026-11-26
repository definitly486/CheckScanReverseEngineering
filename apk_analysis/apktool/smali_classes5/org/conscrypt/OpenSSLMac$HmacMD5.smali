.class public final Lorg/conscrypt/OpenSSLMac$HmacMD5;
.super Lorg/conscrypt/OpenSSLMac$Hmac;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/conscrypt/OpenSSLMac;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HmacMD5"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    sget-wide v0, Lorg/conscrypt/EvpMdRef$MD5;->EVP_MD:J

    sget v2, Lorg/conscrypt/EvpMdRef$MD5;->SIZE_BYTES:I

    invoke-direct {p0, v0, v1, v2}, Lorg/conscrypt/OpenSSLMac$Hmac;-><init>(JI)V

    return-void
.end method
