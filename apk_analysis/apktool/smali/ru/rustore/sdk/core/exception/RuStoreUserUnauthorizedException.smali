.class public final Lru/rustore/sdk/core/exception/RuStoreUserUnauthorizedException;
.super Lru/rustore/sdk/core/exception/RuStoreException;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "RuStore User Not Authorized"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    return-void
.end method
