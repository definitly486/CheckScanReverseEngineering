.class public Lio/appmetrica/analytics/coreutils/internal/limitation/MapTrimmers;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DEFAULT_KEY_MAX_LENGTH:I = 0x32

.field public static final DEFAULT_MAP_MAX_SIZE:I = 0x1e

.field public static final DEFAULT_VALUE_MAX_LENGTH:I = 0xfa0


# instance fields
.field private final a:Lio/appmetrica/analytics/coreutils/internal/limitation/StringTrimmer;

.field private final b:Lio/appmetrica/analytics/coreutils/internal/limitation/StringTrimmer;

.field private final c:Lio/appmetrica/analytics/coreutils/internal/limitation/CollectionLimitation;

.field private final d:Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

.field private final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(IIILjava/lang/String;Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;)V
    .locals 2

    move v0, p1

    new-instance p1, Lio/appmetrica/analytics/coreutils/internal/limitation/CollectionLimitation;

    invoke-direct {p1, v0}, Lio/appmetrica/analytics/coreutils/internal/limitation/CollectionLimitation;-><init>(I)V

    move v0, p2

    new-instance p2, Lio/appmetrica/analytics/coreutils/internal/limitation/StringTrimmer;

    const-string v1, "map key"

    invoke-static {p4, v1}, Lni0;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, v0, v1, p5}, Lio/appmetrica/analytics/coreutils/internal/limitation/StringTrimmer;-><init>(ILjava/lang/String;Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;)V

    move v0, p3

    new-instance p3, Lio/appmetrica/analytics/coreutils/internal/limitation/StringTrimmer;

    const-string v1, "map value"

    invoke-static {p4, v1}, Lni0;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p3, v0, v1, p5}, Lio/appmetrica/analytics/coreutils/internal/limitation/StringTrimmer;-><init>(ILjava/lang/String;Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;)V

    invoke-direct/range {p0 .. p5}, Lio/appmetrica/analytics/coreutils/internal/limitation/MapTrimmers;-><init>(Lio/appmetrica/analytics/coreutils/internal/limitation/CollectionLimitation;Lio/appmetrica/analytics/coreutils/internal/limitation/StringTrimmer;Lio/appmetrica/analytics/coreutils/internal/limitation/StringTrimmer;Ljava/lang/String;Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;)V

    return-void
.end method

.method public constructor <init>(Lio/appmetrica/analytics/coreutils/internal/limitation/CollectionLimitation;Lio/appmetrica/analytics/coreutils/internal/limitation/StringTrimmer;Lio/appmetrica/analytics/coreutils/internal/limitation/StringTrimmer;Ljava/lang/String;Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lio/appmetrica/analytics/coreutils/internal/limitation/MapTrimmers;->c:Lio/appmetrica/analytics/coreutils/internal/limitation/CollectionLimitation;

    .line 36
    iput-object p2, p0, Lio/appmetrica/analytics/coreutils/internal/limitation/MapTrimmers;->a:Lio/appmetrica/analytics/coreutils/internal/limitation/StringTrimmer;

    .line 37
    iput-object p3, p0, Lio/appmetrica/analytics/coreutils/internal/limitation/MapTrimmers;->b:Lio/appmetrica/analytics/coreutils/internal/limitation/StringTrimmer;

    .line 38
    iput-object p4, p0, Lio/appmetrica/analytics/coreutils/internal/limitation/MapTrimmers;->e:Ljava/lang/String;

    .line 39
    iput-object p5, p0, Lio/appmetrica/analytics/coreutils/internal/limitation/MapTrimmers;->d:Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    return-void
.end method


# virtual methods
.method public getCollectionLimitation()Lio/appmetrica/analytics/coreutils/internal/limitation/CollectionLimitation;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/coreutils/internal/limitation/MapTrimmers;->c:Lio/appmetrica/analytics/coreutils/internal/limitation/CollectionLimitation;

    return-object p0
.end method

.method public getKeyTrimmer()Lio/appmetrica/analytics/coreutils/internal/limitation/StringTrimmer;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/coreutils/internal/limitation/MapTrimmers;->a:Lio/appmetrica/analytics/coreutils/internal/limitation/StringTrimmer;

    return-object p0
.end method

.method public getValueTrimmer()Lio/appmetrica/analytics/coreutils/internal/limitation/StringTrimmer;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/coreutils/internal/limitation/MapTrimmers;->b:Lio/appmetrica/analytics/coreutils/internal/limitation/StringTrimmer;

    return-object p0
.end method

.method public logContainerLimitReached(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lio/appmetrica/analytics/coreutils/internal/limitation/MapTrimmers;->d:Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    iget-object v1, p0, Lio/appmetrica/analytics/coreutils/internal/limitation/MapTrimmers;->e:Ljava/lang/String;

    iget-object p0, p0, Lio/appmetrica/analytics/coreutils/internal/limitation/MapTrimmers;->c:Lio/appmetrica/analytics/coreutils/internal/limitation/CollectionLimitation;

    invoke-virtual {p0}, Lio/appmetrica/analytics/coreutils/internal/limitation/CollectionLimitation;->getMaxSize()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v1, p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "The %s has reached the limit of %d items. Item with key %s will be ignored"

    invoke-virtual {v0, p1, p0}, Lio/appmetrica/analytics/logger/common/BaseReleaseLogger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
