.class public Lorg/conscrypt/HpkeImpl$XwingHkdfSha256Aes256Gcm;
.super Lorg/conscrypt/HpkeImpl$HpkeXwingImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/conscrypt/HpkeImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "XwingHkdfSha256Aes256Gcm"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 4

    new-instance v0, Lorg/conscrypt/HpkeSuite;

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/16 v3, 0x647a

    invoke-direct {v0, v3, v1, v2}, Lorg/conscrypt/HpkeSuite;-><init>(III)V

    invoke-direct {p0, v0}, Lorg/conscrypt/HpkeImpl$HpkeXwingImpl;-><init>(Lorg/conscrypt/HpkeSuite;)V

    return-void
.end method
