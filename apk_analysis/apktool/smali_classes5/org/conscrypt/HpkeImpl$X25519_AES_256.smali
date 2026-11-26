.class public Lorg/conscrypt/HpkeImpl$X25519_AES_256;
.super Lorg/conscrypt/HpkeImpl$HpkeX25519Impl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/conscrypt/HpkeImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "X25519_AES_256"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 4

    new-instance v0, Lorg/conscrypt/HpkeSuite;

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/16 v3, 0x20

    invoke-direct {v0, v3, v1, v2}, Lorg/conscrypt/HpkeSuite;-><init>(III)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/conscrypt/HpkeImpl$HpkeX25519Impl;-><init>(Lorg/conscrypt/HpkeSuite;Lorg/conscrypt/HpkeImpl$1;)V

    return-void
.end method
