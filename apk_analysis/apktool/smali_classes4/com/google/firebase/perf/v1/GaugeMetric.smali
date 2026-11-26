.class public final Lcom/google/firebase/perf/v1/GaugeMetric;
.super Lcom/google/protobuf/o;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/perf/v1/GaugeMetricOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/perf/v1/GaugeMetric$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/o<",
        "Lcom/google/firebase/perf/v1/GaugeMetric;",
        "Lcom/google/firebase/perf/v1/GaugeMetric$Builder;",
        ">;",
        "Lcom/google/firebase/perf/v1/GaugeMetricOrBuilder;"
    }
.end annotation


# static fields
.field public static final ANDROID_MEMORY_READINGS_FIELD_NUMBER:I = 0x4

.field public static final CPU_METRIC_READINGS_FIELD_NUMBER:I = 0x2

.field private static final DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/GaugeMetric;

.field public static final GAUGE_METADATA_FIELD_NUMBER:I = 0x3

.field private static volatile PARSER:Lx36; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx36<",
            "Lcom/google/firebase/perf/v1/GaugeMetric;",
            ">;"
        }
    .end annotation
.end field

.field public static final SESSION_ID_FIELD_NUMBER:I = 0x1


# instance fields
.field private androidMemoryReadings_:Lcom/google/protobuf/q$j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/q$j<",
            "Lcom/google/firebase/perf/v1/AndroidMemoryReading;",
            ">;"
        }
    .end annotation
.end field

.field private bitField0_:I

.field private cpuMetricReadings_:Lcom/google/protobuf/q$j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/q$j<",
            "Lcom/google/firebase/perf/v1/CpuMetricReading;",
            ">;"
        }
    .end annotation
.end field

.field private gaugeMetadata_:Lcom/google/firebase/perf/v1/GaugeMetadata;

.field private sessionId_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/firebase/perf/v1/GaugeMetric;

    invoke-direct {v0}, Lcom/google/firebase/perf/v1/GaugeMetric;-><init>()V

    sput-object v0, Lcom/google/firebase/perf/v1/GaugeMetric;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/GaugeMetric;

    const-class v1, Lcom/google/firebase/perf/v1/GaugeMetric;

    invoke-static {v1, v0}, Lcom/google/protobuf/o;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/o;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/o;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/firebase/perf/v1/GaugeMetric;->sessionId_:Ljava/lang/String;

    invoke-static {}, Lcom/google/protobuf/o;->emptyProtobufList()Lcom/google/protobuf/q$j;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/perf/v1/GaugeMetric;->cpuMetricReadings_:Lcom/google/protobuf/q$j;

    invoke-static {}, Lcom/google/protobuf/o;->emptyProtobufList()Lcom/google/protobuf/q$j;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/perf/v1/GaugeMetric;->androidMemoryReadings_:Lcom/google/protobuf/q$j;

    return-void
.end method

.method public static synthetic access$000()Lcom/google/firebase/perf/v1/GaugeMetric;
    .locals 1

    sget-object v0, Lcom/google/firebase/perf/v1/GaugeMetric;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/GaugeMetric;

    return-object v0
.end method

.method public static synthetic access$100(Lcom/google/firebase/perf/v1/GaugeMetric;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/perf/v1/GaugeMetric;->setSessionId(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$1000(Lcom/google/firebase/perf/v1/GaugeMetric;Ljava/lang/Iterable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/perf/v1/GaugeMetric;->addAllCpuMetricReadings(Ljava/lang/Iterable;)V

    return-void
.end method

.method public static synthetic access$1100(Lcom/google/firebase/perf/v1/GaugeMetric;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/firebase/perf/v1/GaugeMetric;->clearCpuMetricReadings()V

    return-void
.end method

.method public static synthetic access$1200(Lcom/google/firebase/perf/v1/GaugeMetric;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/perf/v1/GaugeMetric;->removeCpuMetricReadings(I)V

    return-void
.end method

.method public static synthetic access$1300(Lcom/google/firebase/perf/v1/GaugeMetric;ILcom/google/firebase/perf/v1/AndroidMemoryReading;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/firebase/perf/v1/GaugeMetric;->setAndroidMemoryReadings(ILcom/google/firebase/perf/v1/AndroidMemoryReading;)V

    return-void
.end method

.method public static synthetic access$1400(Lcom/google/firebase/perf/v1/GaugeMetric;Lcom/google/firebase/perf/v1/AndroidMemoryReading;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/perf/v1/GaugeMetric;->addAndroidMemoryReadings(Lcom/google/firebase/perf/v1/AndroidMemoryReading;)V

    return-void
.end method

.method public static synthetic access$1500(Lcom/google/firebase/perf/v1/GaugeMetric;ILcom/google/firebase/perf/v1/AndroidMemoryReading;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/firebase/perf/v1/GaugeMetric;->addAndroidMemoryReadings(ILcom/google/firebase/perf/v1/AndroidMemoryReading;)V

    return-void
.end method

.method public static synthetic access$1600(Lcom/google/firebase/perf/v1/GaugeMetric;Ljava/lang/Iterable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/perf/v1/GaugeMetric;->addAllAndroidMemoryReadings(Ljava/lang/Iterable;)V

    return-void
.end method

.method public static synthetic access$1700(Lcom/google/firebase/perf/v1/GaugeMetric;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/firebase/perf/v1/GaugeMetric;->clearAndroidMemoryReadings()V

    return-void
.end method

.method public static synthetic access$1800(Lcom/google/firebase/perf/v1/GaugeMetric;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/perf/v1/GaugeMetric;->removeAndroidMemoryReadings(I)V

    return-void
.end method

.method public static synthetic access$200(Lcom/google/firebase/perf/v1/GaugeMetric;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/firebase/perf/v1/GaugeMetric;->clearSessionId()V

    return-void
.end method

.method public static synthetic access$300(Lcom/google/firebase/perf/v1/GaugeMetric;Lfx0;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/perf/v1/GaugeMetric;->setSessionIdBytes(Lfx0;)V

    return-void
.end method

.method public static synthetic access$400(Lcom/google/firebase/perf/v1/GaugeMetric;Lcom/google/firebase/perf/v1/GaugeMetadata;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/perf/v1/GaugeMetric;->setGaugeMetadata(Lcom/google/firebase/perf/v1/GaugeMetadata;)V

    return-void
.end method

.method public static synthetic access$500(Lcom/google/firebase/perf/v1/GaugeMetric;Lcom/google/firebase/perf/v1/GaugeMetadata;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/perf/v1/GaugeMetric;->mergeGaugeMetadata(Lcom/google/firebase/perf/v1/GaugeMetadata;)V

    return-void
.end method

.method public static synthetic access$600(Lcom/google/firebase/perf/v1/GaugeMetric;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/firebase/perf/v1/GaugeMetric;->clearGaugeMetadata()V

    return-void
.end method

.method public static synthetic access$700(Lcom/google/firebase/perf/v1/GaugeMetric;ILcom/google/firebase/perf/v1/CpuMetricReading;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/firebase/perf/v1/GaugeMetric;->setCpuMetricReadings(ILcom/google/firebase/perf/v1/CpuMetricReading;)V

    return-void
.end method

.method public static synthetic access$800(Lcom/google/firebase/perf/v1/GaugeMetric;Lcom/google/firebase/perf/v1/CpuMetricReading;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/perf/v1/GaugeMetric;->addCpuMetricReadings(Lcom/google/firebase/perf/v1/CpuMetricReading;)V

    return-void
.end method

.method public static synthetic access$900(Lcom/google/firebase/perf/v1/GaugeMetric;ILcom/google/firebase/perf/v1/CpuMetricReading;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/firebase/perf/v1/GaugeMetric;->addCpuMetricReadings(ILcom/google/firebase/perf/v1/CpuMetricReading;)V

    return-void
.end method

.method private addAllAndroidMemoryReadings(Ljava/lang/Iterable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/firebase/perf/v1/AndroidMemoryReading;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/firebase/perf/v1/GaugeMetric;->ensureAndroidMemoryReadingsIsMutable()V

    iget-object p0, p0, Lcom/google/firebase/perf/v1/GaugeMetric;->androidMemoryReadings_:Lcom/google/protobuf/q$j;

    invoke-static {p1, p0}, Lcom/google/protobuf/a;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private addAllCpuMetricReadings(Ljava/lang/Iterable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/firebase/perf/v1/CpuMetricReading;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/firebase/perf/v1/GaugeMetric;->ensureCpuMetricReadingsIsMutable()V

    iget-object p0, p0, Lcom/google/firebase/perf/v1/GaugeMetric;->cpuMetricReadings_:Lcom/google/protobuf/q$j;

    invoke-static {p1, p0}, Lcom/google/protobuf/a;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private addAndroidMemoryReadings(ILcom/google/firebase/perf/v1/AndroidMemoryReading;)V
    .locals 0

    .line 12
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    invoke-direct {p0}, Lcom/google/firebase/perf/v1/GaugeMetric;->ensureAndroidMemoryReadingsIsMutable()V

    .line 14
    iget-object p0, p0, Lcom/google/firebase/perf/v1/GaugeMetric;->androidMemoryReadings_:Lcom/google/protobuf/q$j;

    invoke-interface {p0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addAndroidMemoryReadings(Lcom/google/firebase/perf/v1/AndroidMemoryReading;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/google/firebase/perf/v1/GaugeMetric;->ensureAndroidMemoryReadingsIsMutable()V

    iget-object p0, p0, Lcom/google/firebase/perf/v1/GaugeMetric;->androidMemoryReadings_:Lcom/google/protobuf/q$j;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addCpuMetricReadings(ILcom/google/firebase/perf/v1/CpuMetricReading;)V
    .locals 0

    .line 12
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    invoke-direct {p0}, Lcom/google/firebase/perf/v1/GaugeMetric;->ensureCpuMetricReadingsIsMutable()V

    .line 14
    iget-object p0, p0, Lcom/google/firebase/perf/v1/GaugeMetric;->cpuMetricReadings_:Lcom/google/protobuf/q$j;

    invoke-interface {p0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addCpuMetricReadings(Lcom/google/firebase/perf/v1/CpuMetricReading;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/google/firebase/perf/v1/GaugeMetric;->ensureCpuMetricReadingsIsMutable()V

    iget-object p0, p0, Lcom/google/firebase/perf/v1/GaugeMetric;->cpuMetricReadings_:Lcom/google/protobuf/q$j;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private clearAndroidMemoryReadings()V
    .locals 1

    invoke-static {}, Lcom/google/protobuf/o;->emptyProtobufList()Lcom/google/protobuf/q$j;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/perf/v1/GaugeMetric;->androidMemoryReadings_:Lcom/google/protobuf/q$j;

    return-void
.end method

.method private clearCpuMetricReadings()V
    .locals 1

    invoke-static {}, Lcom/google/protobuf/o;->emptyProtobufList()Lcom/google/protobuf/q$j;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/perf/v1/GaugeMetric;->cpuMetricReadings_:Lcom/google/protobuf/q$j;

    return-void
.end method

.method private clearGaugeMetadata()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firebase/perf/v1/GaugeMetric;->gaugeMetadata_:Lcom/google/firebase/perf/v1/GaugeMetadata;

    iget v0, p0, Lcom/google/firebase/perf/v1/GaugeMetric;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/firebase/perf/v1/GaugeMetric;->bitField0_:I

    return-void
.end method

.method private clearSessionId()V
    .locals 1

    iget v0, p0, Lcom/google/firebase/perf/v1/GaugeMetric;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/firebase/perf/v1/GaugeMetric;->bitField0_:I

    invoke-static {}, Lcom/google/firebase/perf/v1/GaugeMetric;->getDefaultInstance()Lcom/google/firebase/perf/v1/GaugeMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/GaugeMetric;->getSessionId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/perf/v1/GaugeMetric;->sessionId_:Ljava/lang/String;

    return-void
.end method

.method private ensureAndroidMemoryReadingsIsMutable()V
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/perf/v1/GaugeMetric;->androidMemoryReadings_:Lcom/google/protobuf/q$j;

    invoke-interface {v0}, Lcom/google/protobuf/q$j;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/google/protobuf/o;->mutableCopy(Lcom/google/protobuf/q$j;)Lcom/google/protobuf/q$j;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/perf/v1/GaugeMetric;->androidMemoryReadings_:Lcom/google/protobuf/q$j;

    :cond_0
    return-void
.end method

.method private ensureCpuMetricReadingsIsMutable()V
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/perf/v1/GaugeMetric;->cpuMetricReadings_:Lcom/google/protobuf/q$j;

    invoke-interface {v0}, Lcom/google/protobuf/q$j;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/google/protobuf/o;->mutableCopy(Lcom/google/protobuf/q$j;)Lcom/google/protobuf/q$j;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/perf/v1/GaugeMetric;->cpuMetricReadings_:Lcom/google/protobuf/q$j;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/firebase/perf/v1/GaugeMetric;
    .locals 1

    sget-object v0, Lcom/google/firebase/perf/v1/GaugeMetric;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/GaugeMetric;

    return-object v0
.end method

.method private mergeGaugeMetadata(Lcom/google/firebase/perf/v1/GaugeMetadata;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/google/firebase/perf/v1/GaugeMetric;->gaugeMetadata_:Lcom/google/firebase/perf/v1/GaugeMetadata;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/firebase/perf/v1/GaugeMetadata;->getDefaultInstance()Lcom/google/firebase/perf/v1/GaugeMetadata;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/firebase/perf/v1/GaugeMetric;->gaugeMetadata_:Lcom/google/firebase/perf/v1/GaugeMetadata;

    invoke-static {v0}, Lcom/google/firebase/perf/v1/GaugeMetadata;->newBuilder(Lcom/google/firebase/perf/v1/GaugeMetadata;)Lcom/google/firebase/perf/v1/GaugeMetadata$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/o$a;->mergeFrom(Lcom/google/protobuf/o;)Lcom/google/protobuf/o$a;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/perf/v1/GaugeMetadata$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/o$a;->buildPartial()Lcom/google/protobuf/o;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/perf/v1/GaugeMetadata;

    iput-object p1, p0, Lcom/google/firebase/perf/v1/GaugeMetric;->gaugeMetadata_:Lcom/google/firebase/perf/v1/GaugeMetadata;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/google/firebase/perf/v1/GaugeMetric;->gaugeMetadata_:Lcom/google/firebase/perf/v1/GaugeMetadata;

    :goto_0
    iget p1, p0, Lcom/google/firebase/perf/v1/GaugeMetric;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/google/firebase/perf/v1/GaugeMetric;->bitField0_:I

    return-void
.end method

.method public static newBuilder()Lcom/google/firebase/perf/v1/GaugeMetric$Builder;
    .locals 1

    sget-object v0, Lcom/google/firebase/perf/v1/GaugeMetric;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/GaugeMetric;

    invoke-virtual {v0}, Lcom/google/protobuf/o;->createBuilder()Lcom/google/protobuf/o$a;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/perf/v1/GaugeMetric$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/firebase/perf/v1/GaugeMetric;)Lcom/google/firebase/perf/v1/GaugeMetric$Builder;
    .locals 1

    .line 9
    sget-object v0, Lcom/google/firebase/perf/v1/GaugeMetric;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/GaugeMetric;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/o;->createBuilder(Lcom/google/protobuf/o;)Lcom/google/protobuf/o$a;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/perf/v1/GaugeMetric$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/firebase/perf/v1/GaugeMetric;
    .locals 1

    sget-object v0, Lcom/google/firebase/perf/v1/GaugeMetric;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/GaugeMetric;

    invoke-static {v0, p0}, Lcom/google/protobuf/o;->parseDelimitedFrom(Lcom/google/protobuf/o;Ljava/io/InputStream;)Lcom/google/protobuf/o;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/perf/v1/GaugeMetric;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/j;)Lcom/google/firebase/perf/v1/GaugeMetric;
    .locals 1

    .line 9
    sget-object v0, Lcom/google/firebase/perf/v1/GaugeMetric;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/GaugeMetric;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/o;->parseDelimitedFrom(Lcom/google/protobuf/o;Ljava/io/InputStream;Lcom/google/protobuf/j;)Lcom/google/protobuf/o;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/perf/v1/GaugeMetric;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/f;)Lcom/google/firebase/perf/v1/GaugeMetric;
    .locals 1

    .line 16
    sget-object v0, Lcom/google/firebase/perf/v1/GaugeMetric;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/GaugeMetric;

    invoke-static {v0, p0}, Lcom/google/protobuf/o;->parseFrom(Lcom/google/protobuf/o;Lcom/google/protobuf/f;)Lcom/google/protobuf/o;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/perf/v1/GaugeMetric;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/f;Lcom/google/protobuf/j;)Lcom/google/firebase/perf/v1/GaugeMetric;
    .locals 1

    .line 17
    sget-object v0, Lcom/google/firebase/perf/v1/GaugeMetric;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/GaugeMetric;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/o;->parseFrom(Lcom/google/protobuf/o;Lcom/google/protobuf/f;Lcom/google/protobuf/j;)Lcom/google/protobuf/o;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/perf/v1/GaugeMetric;

    return-object p0
.end method

.method public static parseFrom(Lfx0;)Lcom/google/firebase/perf/v1/GaugeMetric;
    .locals 1

    .line 10
    sget-object v0, Lcom/google/firebase/perf/v1/GaugeMetric;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/GaugeMetric;

    invoke-static {v0, p0}, Lcom/google/protobuf/o;->parseFrom(Lcom/google/protobuf/o;Lfx0;)Lcom/google/protobuf/o;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/perf/v1/GaugeMetric;

    return-object p0
.end method

.method public static parseFrom(Lfx0;Lcom/google/protobuf/j;)Lcom/google/firebase/perf/v1/GaugeMetric;
    .locals 1

    .line 11
    sget-object v0, Lcom/google/firebase/perf/v1/GaugeMetric;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/GaugeMetric;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/o;->parseFrom(Lcom/google/protobuf/o;Lfx0;Lcom/google/protobuf/j;)Lcom/google/protobuf/o;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/perf/v1/GaugeMetric;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/firebase/perf/v1/GaugeMetric;
    .locals 1

    .line 14
    sget-object v0, Lcom/google/firebase/perf/v1/GaugeMetric;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/GaugeMetric;

    invoke-static {v0, p0}, Lcom/google/protobuf/o;->parseFrom(Lcom/google/protobuf/o;Ljava/io/InputStream;)Lcom/google/protobuf/o;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/perf/v1/GaugeMetric;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/j;)Lcom/google/firebase/perf/v1/GaugeMetric;
    .locals 1

    .line 15
    sget-object v0, Lcom/google/firebase/perf/v1/GaugeMetric;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/GaugeMetric;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/o;->parseFrom(Lcom/google/protobuf/o;Ljava/io/InputStream;Lcom/google/protobuf/j;)Lcom/google/protobuf/o;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/perf/v1/GaugeMetric;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/firebase/perf/v1/GaugeMetric;
    .locals 1

    sget-object v0, Lcom/google/firebase/perf/v1/GaugeMetric;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/GaugeMetric;

    invoke-static {v0, p0}, Lcom/google/protobuf/o;->parseFrom(Lcom/google/protobuf/o;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/o;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/perf/v1/GaugeMetric;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/j;)Lcom/google/firebase/perf/v1/GaugeMetric;
    .locals 1

    .line 9
    sget-object v0, Lcom/google/firebase/perf/v1/GaugeMetric;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/GaugeMetric;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/o;->parseFrom(Lcom/google/protobuf/o;Ljava/nio/ByteBuffer;Lcom/google/protobuf/j;)Lcom/google/protobuf/o;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/perf/v1/GaugeMetric;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/firebase/perf/v1/GaugeMetric;
    .locals 1

    .line 12
    sget-object v0, Lcom/google/firebase/perf/v1/GaugeMetric;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/GaugeMetric;

    invoke-static {v0, p0}, Lcom/google/protobuf/o;->parseFrom(Lcom/google/protobuf/o;[B)Lcom/google/protobuf/o;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/perf/v1/GaugeMetric;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/j;)Lcom/google/firebase/perf/v1/GaugeMetric;
    .locals 1

    .line 13
    sget-object v0, Lcom/google/firebase/perf/v1/GaugeMetric;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/GaugeMetric;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/o;->parseFrom(Lcom/google/protobuf/o;[BLcom/google/protobuf/j;)Lcom/google/protobuf/o;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/perf/v1/GaugeMetric;

    return-object p0
.end method

.method public static parser()Lx36;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lx36<",
            "Lcom/google/firebase/perf/v1/GaugeMetric;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/firebase/perf/v1/GaugeMetric;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/GaugeMetric;

    invoke-virtual {v0}, Lcom/google/protobuf/o;->getParserForType()Lx36;

    move-result-object v0

    return-object v0
.end method

.method private removeAndroidMemoryReadings(I)V
    .locals 0

    invoke-direct {p0}, Lcom/google/firebase/perf/v1/GaugeMetric;->ensureAndroidMemoryReadingsIsMutable()V

    iget-object p0, p0, Lcom/google/firebase/perf/v1/GaugeMetric;->androidMemoryReadings_:Lcom/google/protobuf/q$j;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private removeCpuMetricReadings(I)V
    .locals 0

    invoke-direct {p0}, Lcom/google/firebase/perf/v1/GaugeMetric;->ensureCpuMetricReadingsIsMutable()V

    iget-object p0, p0, Lcom/google/firebase/perf/v1/GaugeMetric;->cpuMetricReadings_:Lcom/google/protobuf/q$j;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private setAndroidMemoryReadings(ILcom/google/firebase/perf/v1/AndroidMemoryReading;)V
    .locals 0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/google/firebase/perf/v1/GaugeMetric;->ensureAndroidMemoryReadingsIsMutable()V

    iget-object p0, p0, Lcom/google/firebase/perf/v1/GaugeMetric;->androidMemoryReadings_:Lcom/google/protobuf/q$j;

    invoke-interface {p0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setCpuMetricReadings(ILcom/google/firebase/perf/v1/CpuMetricReading;)V
    .locals 0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/google/firebase/perf/v1/GaugeMetric;->ensureCpuMetricReadingsIsMutable()V

    iget-object p0, p0, Lcom/google/firebase/perf/v1/GaugeMetric;->cpuMetricReadings_:Lcom/google/protobuf/q$j;

    invoke-interface {p0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setGaugeMetadata(Lcom/google/firebase/perf/v1/GaugeMetadata;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/firebase/perf/v1/GaugeMetric;->gaugeMetadata_:Lcom/google/firebase/perf/v1/GaugeMetadata;

    iget p1, p0, Lcom/google/firebase/perf/v1/GaugeMetric;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/google/firebase/perf/v1/GaugeMetric;->bitField0_:I

    return-void
.end method

.method private setSessionId(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/firebase/perf/v1/GaugeMetric;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/firebase/perf/v1/GaugeMetric;->bitField0_:I

    iput-object p1, p0, Lcom/google/firebase/perf/v1/GaugeMetric;->sessionId_:Ljava/lang/String;

    return-void
.end method

.method private setSessionIdBytes(Lfx0;)V
    .locals 0

    invoke-virtual {p1}, Lfx0;->p()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/perf/v1/GaugeMetric;->sessionId_:Ljava/lang/String;

    iget p1, p0, Lcom/google/firebase/perf/v1/GaugeMetric;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/firebase/perf/v1/GaugeMetric;->bitField0_:I

    return-void
.end method


# virtual methods
.method public final dynamicMethod(Lcom/google/protobuf/o$f;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    sget-object p0, Lcom/google/firebase/perf/v1/GaugeMetric$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x0

    packed-switch p0, :pswitch_data_0

    invoke-static {}, Lud;->d()V

    :pswitch_0
    return-object p1

    :pswitch_1
    const/4 p0, 0x1

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    :pswitch_2
    sget-object p0, Lcom/google/firebase/perf/v1/GaugeMetric;->PARSER:Lx36;

    if-nez p0, :cond_1

    const-class p1, Lcom/google/firebase/perf/v1/GaugeMetric;

    monitor-enter p1

    :try_start_0
    sget-object p0, Lcom/google/firebase/perf/v1/GaugeMetric;->PARSER:Lx36;

    if-nez p0, :cond_0

    new-instance p0, Lcom/google/protobuf/o$b;

    sget-object p2, Lcom/google/firebase/perf/v1/GaugeMetric;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/GaugeMetric;

    invoke-direct {p0, p2}, Lcom/google/protobuf/o$b;-><init>(Lcom/google/protobuf/o;)V

    sput-object p0, Lcom/google/firebase/perf/v1/GaugeMetric;->PARSER:Lx36;

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p1

    return-object p0

    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    return-object p0

    :pswitch_3
    sget-object p0, Lcom/google/firebase/perf/v1/GaugeMetric;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/GaugeMetric;

    return-object p0

    :pswitch_4
    const-string v0, "bitField0_"

    const-string v1, "sessionId_"

    const-string v2, "cpuMetricReadings_"

    const-class v3, Lcom/google/firebase/perf/v1/CpuMetricReading;

    const-string v4, "gaugeMetadata_"

    const-string v5, "androidMemoryReadings_"

    const-class v6, Lcom/google/firebase/perf/v1/AndroidMemoryReading;

    filled-new-array/range {v0 .. v6}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0002\u0000\u0001\u1008\u0000\u0002\u001b\u0003\u1009\u0001\u0004\u001b"

    sget-object p2, Lcom/google/firebase/perf/v1/GaugeMetric;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/GaugeMetric;

    invoke-static {p2, p1, p0}, Lcom/google/protobuf/o;->newMessageInfo(Lcom/google/protobuf/a0;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_5
    new-instance p0, Lcom/google/firebase/perf/v1/GaugeMetric$Builder;

    invoke-direct {p0, p1}, Lcom/google/firebase/perf/v1/GaugeMetric$Builder;-><init>(Lcom/google/firebase/perf/v1/GaugeMetric$1;)V

    return-object p0

    :pswitch_6
    new-instance p0, Lcom/google/firebase/perf/v1/GaugeMetric;

    invoke-direct {p0}, Lcom/google/firebase/perf/v1/GaugeMetric;-><init>()V

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getAndroidMemoryReadings(I)Lcom/google/firebase/perf/v1/AndroidMemoryReading;
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/perf/v1/GaugeMetric;->androidMemoryReadings_:Lcom/google/protobuf/q$j;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/perf/v1/AndroidMemoryReading;

    return-object p0
.end method

.method public getAndroidMemoryReadingsCount()I
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/perf/v1/GaugeMetric;->androidMemoryReadings_:Lcom/google/protobuf/q$j;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getAndroidMemoryReadingsList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/firebase/perf/v1/AndroidMemoryReading;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/google/firebase/perf/v1/GaugeMetric;->androidMemoryReadings_:Lcom/google/protobuf/q$j;

    return-object p0
.end method

.method public getAndroidMemoryReadingsOrBuilder(I)Lcom/google/firebase/perf/v1/AndroidMemoryReadingOrBuilder;
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/perf/v1/GaugeMetric;->androidMemoryReadings_:Lcom/google/protobuf/q$j;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/perf/v1/AndroidMemoryReadingOrBuilder;

    return-object p0
.end method

.method public getAndroidMemoryReadingsOrBuilderList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/firebase/perf/v1/AndroidMemoryReadingOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/google/firebase/perf/v1/GaugeMetric;->androidMemoryReadings_:Lcom/google/protobuf/q$j;

    return-object p0
.end method

.method public getCpuMetricReadings(I)Lcom/google/firebase/perf/v1/CpuMetricReading;
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/perf/v1/GaugeMetric;->cpuMetricReadings_:Lcom/google/protobuf/q$j;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/perf/v1/CpuMetricReading;

    return-object p0
.end method

.method public getCpuMetricReadingsCount()I
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/perf/v1/GaugeMetric;->cpuMetricReadings_:Lcom/google/protobuf/q$j;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getCpuMetricReadingsList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/firebase/perf/v1/CpuMetricReading;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/google/firebase/perf/v1/GaugeMetric;->cpuMetricReadings_:Lcom/google/protobuf/q$j;

    return-object p0
.end method

.method public getCpuMetricReadingsOrBuilder(I)Lcom/google/firebase/perf/v1/CpuMetricReadingOrBuilder;
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/perf/v1/GaugeMetric;->cpuMetricReadings_:Lcom/google/protobuf/q$j;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/perf/v1/CpuMetricReadingOrBuilder;

    return-object p0
.end method

.method public getCpuMetricReadingsOrBuilderList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/firebase/perf/v1/CpuMetricReadingOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/google/firebase/perf/v1/GaugeMetric;->cpuMetricReadings_:Lcom/google/protobuf/q$j;

    return-object p0
.end method

.method public getGaugeMetadata()Lcom/google/firebase/perf/v1/GaugeMetadata;
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/perf/v1/GaugeMetric;->gaugeMetadata_:Lcom/google/firebase/perf/v1/GaugeMetadata;

    if-nez p0, :cond_0

    invoke-static {}, Lcom/google/firebase/perf/v1/GaugeMetadata;->getDefaultInstance()Lcom/google/firebase/perf/v1/GaugeMetadata;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public getSessionId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/perf/v1/GaugeMetric;->sessionId_:Ljava/lang/String;

    return-object p0
.end method

.method public getSessionIdBytes()Lfx0;
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/perf/v1/GaugeMetric;->sessionId_:Ljava/lang/String;

    invoke-static {p0}, Lfx0;->f(Ljava/lang/String;)Lfx0$h;

    move-result-object p0

    return-object p0
.end method

.method public hasGaugeMetadata()Z
    .locals 0

    iget p0, p0, Lcom/google/firebase/perf/v1/GaugeMetric;->bitField0_:I

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public hasSessionId()Z
    .locals 1

    iget p0, p0, Lcom/google/firebase/perf/v1/GaugeMetric;->bitField0_:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
