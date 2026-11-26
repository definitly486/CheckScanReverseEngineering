.class public final Lio/appmetrica/analytics/impl/ch;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    new-instance v0, Lio/appmetrica/analytics/coreutils/internal/time/TimePassedChecker;

    invoke-direct {v0}, Lio/appmetrica/analytics/coreutils/internal/time/TimePassedChecker;-><init>()V

    new-instance p0, Lio/appmetrica/analytics/coreutils/internal/time/SystemTimeProvider;

    invoke-direct {p0}, Lio/appmetrica/analytics/coreutils/internal/time/SystemTimeProvider;-><init>()V

    sget-object v1, Lio/appmetrica/analytics/impl/Fa;->I:Lio/appmetrica/analytics/impl/Fa;

    invoke-virtual {v1}, Lio/appmetrica/analytics/impl/Fa;->y()Lio/appmetrica/analytics/impl/mf;

    move-result-object v6

    invoke-virtual {v6}, Lio/appmetrica/analytics/impl/mf;->f()J

    move-result-wide v1

    const-wide/32 v3, 0x5265c00

    const-string v5, "[ReportKotlinVersionTask]"

    invoke-virtual/range {v0 .. v5}, Lio/appmetrica/analytics/coreutils/internal/time/TimePassedChecker;->didTimePassMillis(JJLjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lkotlin/KotlinVersion;->CURRENT:Lkotlin/KotlinVersion;

    invoke-virtual {v0}, Lkotlin/KotlinVersion;->getMajor()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lb36;

    const-string v3, "major"

    invoke-direct {v2, v3, v1}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lkotlin/KotlinVersion;->getMinor()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v3, Lb36;

    const-string v4, "minor"

    invoke-direct {v3, v4, v1}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lkotlin/KotlinVersion;->getPatch()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v4, Lb36;

    const-string v5, "patch"

    invoke-direct {v4, v5, v1}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lkotlin/KotlinVersion;->getMajor()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v5, 0x2e

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lkotlin/KotlinVersion;->getMinor()I

    move-result v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lkotlin/KotlinVersion;->getPatch()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lb36;

    const-string v5, "version"

    invoke-direct {v1, v5, v0}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {v2, v3, v4, v1}, [Lb36;

    move-result-object v0

    invoke-static {v0}, Ln05;->e([Lb36;)Ljava/util/Map;

    move-result-object v0

    sget-object v1, Lio/appmetrica/analytics/impl/Bj;->a:Lio/appmetrica/analytics/impl/ek;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lio/appmetrica/analytics/impl/dk;

    const-string v3, "kotlin_version"

    invoke-direct {v2, v3, v0}, Lio/appmetrica/analytics/impl/dk;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {v1, v2}, Lio/appmetrica/analytics/impl/ek;->a(Lio/appmetrica/analytics/impl/ab;)V

    invoke-virtual {p0}, Lio/appmetrica/analytics/coreutils/internal/time/SystemTimeProvider;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {v6, v0, v1}, Lio/appmetrica/analytics/impl/mf;->a(J)Lio/appmetrica/analytics/impl/mf;

    :cond_0
    return-void
.end method
