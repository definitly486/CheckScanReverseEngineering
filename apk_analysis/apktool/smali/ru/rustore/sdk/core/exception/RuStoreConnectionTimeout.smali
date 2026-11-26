.class public final Lru/rustore/sdk/core/exception/RuStoreConnectionTimeout;
.super Lru/rustore/sdk/core/exception/RuStoreException;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "Connect to RuStore timeout exception"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    return-void
.end method
