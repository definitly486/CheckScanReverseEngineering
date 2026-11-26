.class public Lio/appmetrica/analytics/coreutils/internal/limitation/BytesTrimmer;
.super Lio/appmetrica/analytics/coreutils/internal/limitation/BaseTrimmer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/appmetrica/analytics/coreutils/internal/limitation/BaseTrimmer<",
        "[B>;"
    }
.end annotation


# direct methods
.method public constructor <init>(ILjava/lang/String;Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lio/appmetrica/analytics/coreutils/internal/limitation/BaseTrimmer;-><init>(ILjava/lang/String;Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic trim(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 48
    check-cast p1, [B

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/coreutils/internal/limitation/BytesTrimmer;->trim([B)[B

    move-result-object p0

    return-object p0
.end method

.method public trim([B)[B
    .locals 3

    if-eqz p1, :cond_0

    array-length v0, p1

    invoke-virtual {p0}, Lio/appmetrica/analytics/coreutils/internal/limitation/BaseTrimmer;->getMaxSize()I

    move-result v1

    if-le v0, v1, :cond_0

    invoke-virtual {p0}, Lio/appmetrica/analytics/coreutils/internal/limitation/BaseTrimmer;->getMaxSize()I

    move-result v0

    new-array v0, v0, [B

    invoke-virtual {p0}, Lio/appmetrica/analytics/coreutils/internal/limitation/BaseTrimmer;->getMaxSize()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lio/appmetrica/analytics/coreutils/internal/limitation/BaseTrimmer;->mPublicLogger:Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    invoke-virtual {p0}, Lio/appmetrica/analytics/coreutils/internal/limitation/BaseTrimmer;->getLogName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lio/appmetrica/analytics/coreutils/internal/limitation/BaseTrimmer;->getMaxSize()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v2, p1, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "\"%s\" %s exceeded limit of %d bytes"

    invoke-virtual {v1, p1, p0}, Lio/appmetrica/analytics/logger/common/BaseReleaseLogger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    :cond_0
    return-object p1
.end method
