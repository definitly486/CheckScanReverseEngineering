.class public abstract Lio/appmetrica/analytics/coreutils/internal/limitation/BaseTrimmer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/coreutils/internal/limitation/Trimmer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/appmetrica/analytics/coreutils/internal/limitation/Trimmer<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final a:I

.field private final b:Ljava/lang/String;

.field protected final mPublicLogger:Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;


# direct methods
.method public constructor <init>(ILjava/lang/String;Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lio/appmetrica/analytics/coreutils/internal/limitation/BaseTrimmer;->a:I

    iput-object p2, p0, Lio/appmetrica/analytics/coreutils/internal/limitation/BaseTrimmer;->b:Ljava/lang/String;

    iput-object p3, p0, Lio/appmetrica/analytics/coreutils/internal/limitation/BaseTrimmer;->mPublicLogger:Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    return-void
.end method


# virtual methods
.method public getLogName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/coreutils/internal/limitation/BaseTrimmer;->b:Ljava/lang/String;

    return-object p0
.end method

.method public getMaxSize()I
    .locals 0

    iget p0, p0, Lio/appmetrica/analytics/coreutils/internal/limitation/BaseTrimmer;->a:I

    return p0
.end method
