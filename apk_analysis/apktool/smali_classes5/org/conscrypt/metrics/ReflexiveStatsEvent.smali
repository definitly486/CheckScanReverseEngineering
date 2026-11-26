.class public Lorg/conscrypt/metrics/ReflexiveStatsEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/conscrypt/metrics/ReflexiveStatsEvent$Builder;
    }
.end annotation


# static fields
.field private static final c_statsEvent:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static final newBuilder:Lorg/conscrypt/metrics/OptionalMethod;

.field private static final sdkVersionBiggerThan32:Z


# instance fields
.field private final statsEvent:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    invoke-static {}, Lorg/conscrypt/metrics/ReflexiveStatsEvent;->initStatsEventClass()Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/conscrypt/metrics/ReflexiveStatsEvent;->c_statsEvent:Ljava/lang/Class;

    new-instance v1, Lorg/conscrypt/metrics/OptionalMethod;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    const-string v3, "newBuilder"

    invoke-direct {v1, v0, v3, v2}, Lorg/conscrypt/metrics/OptionalMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v1, Lorg/conscrypt/metrics/ReflexiveStatsEvent;->newBuilder:Lorg/conscrypt/metrics/OptionalMethod;

    const/16 v0, 0x20

    invoke-static {v0}, Lorg/conscrypt/Platform;->isSdkGreater(I)Z

    move-result v0

    sput-boolean v0, Lorg/conscrypt/metrics/ReflexiveStatsEvent;->sdkVersionBiggerThan32:Z

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/conscrypt/metrics/ReflexiveStatsEvent;->statsEvent:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Lorg/conscrypt/metrics/ReflexiveStatsEvent$1;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1}, Lorg/conscrypt/metrics/ReflexiveStatsEvent;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic access$100()Lorg/conscrypt/metrics/OptionalMethod;
    .locals 1

    sget-object v0, Lorg/conscrypt/metrics/ReflexiveStatsEvent;->newBuilder:Lorg/conscrypt/metrics/OptionalMethod;

    return-object v0
.end method

.method public static synthetic access$200()Z
    .locals 1

    sget-boolean v0, Lorg/conscrypt/metrics/ReflexiveStatsEvent;->sdkVersionBiggerThan32:Z

    return v0
.end method

.method public static buildEvent(IZIIII)Lorg/conscrypt/metrics/ReflexiveStatsEvent;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 33
    invoke-static {}, Lorg/conscrypt/metrics/ReflexiveStatsEvent;->newBuilder()Lorg/conscrypt/metrics/ReflexiveStatsEvent$Builder;

    move-result-object v0

    .line 34
    invoke-virtual {v0, p0}, Lorg/conscrypt/metrics/ReflexiveStatsEvent$Builder;->setAtomId(I)Lorg/conscrypt/metrics/ReflexiveStatsEvent$Builder;

    .line 35
    invoke-virtual {v0, p1}, Lorg/conscrypt/metrics/ReflexiveStatsEvent$Builder;->writeBoolean(Z)Lorg/conscrypt/metrics/ReflexiveStatsEvent$Builder;

    .line 36
    invoke-virtual {v0, p2}, Lorg/conscrypt/metrics/ReflexiveStatsEvent$Builder;->writeInt(I)Lorg/conscrypt/metrics/ReflexiveStatsEvent$Builder;

    .line 37
    invoke-virtual {v0, p3}, Lorg/conscrypt/metrics/ReflexiveStatsEvent$Builder;->writeInt(I)Lorg/conscrypt/metrics/ReflexiveStatsEvent$Builder;

    .line 38
    invoke-virtual {v0, p4}, Lorg/conscrypt/metrics/ReflexiveStatsEvent$Builder;->writeInt(I)Lorg/conscrypt/metrics/ReflexiveStatsEvent$Builder;

    .line 39
    invoke-virtual {v0, p5}, Lorg/conscrypt/metrics/ReflexiveStatsEvent$Builder;->writeInt(I)Lorg/conscrypt/metrics/ReflexiveStatsEvent$Builder;

    .line 40
    invoke-virtual {v0}, Lorg/conscrypt/metrics/ReflexiveStatsEvent$Builder;->usePooledBuffer()V

    .line 41
    invoke-virtual {v0}, Lorg/conscrypt/metrics/ReflexiveStatsEvent$Builder;->build()Lorg/conscrypt/metrics/ReflexiveStatsEvent;

    move-result-object p0

    return-object p0
.end method

.method public static buildEvent(IZIIII[I)Lorg/conscrypt/metrics/ReflexiveStatsEvent;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lorg/conscrypt/metrics/ReflexiveStatsEvent;->newBuilder()Lorg/conscrypt/metrics/ReflexiveStatsEvent$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/conscrypt/metrics/ReflexiveStatsEvent$Builder;->setAtomId(I)Lorg/conscrypt/metrics/ReflexiveStatsEvent$Builder;

    invoke-virtual {v0, p1}, Lorg/conscrypt/metrics/ReflexiveStatsEvent$Builder;->writeBoolean(Z)Lorg/conscrypt/metrics/ReflexiveStatsEvent$Builder;

    invoke-virtual {v0, p2}, Lorg/conscrypt/metrics/ReflexiveStatsEvent$Builder;->writeInt(I)Lorg/conscrypt/metrics/ReflexiveStatsEvent$Builder;

    invoke-virtual {v0, p3}, Lorg/conscrypt/metrics/ReflexiveStatsEvent$Builder;->writeInt(I)Lorg/conscrypt/metrics/ReflexiveStatsEvent$Builder;

    invoke-virtual {v0, p4}, Lorg/conscrypt/metrics/ReflexiveStatsEvent$Builder;->writeInt(I)Lorg/conscrypt/metrics/ReflexiveStatsEvent$Builder;

    invoke-virtual {v0, p5}, Lorg/conscrypt/metrics/ReflexiveStatsEvent$Builder;->writeInt(I)Lorg/conscrypt/metrics/ReflexiveStatsEvent$Builder;

    invoke-virtual {v0, p6}, Lorg/conscrypt/metrics/ReflexiveStatsEvent$Builder;->writeIntArray([I)Lorg/conscrypt/metrics/ReflexiveStatsEvent$Builder;

    invoke-virtual {v0}, Lorg/conscrypt/metrics/ReflexiveStatsEvent$Builder;->usePooledBuffer()V

    invoke-virtual {v0}, Lorg/conscrypt/metrics/ReflexiveStatsEvent$Builder;->build()Lorg/conscrypt/metrics/ReflexiveStatsEvent;

    move-result-object p0

    return-object p0
.end method

.method private static initStatsEventClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    :try_start_0
    const-string v0, "android.util.StatsEvent"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static newBuilder()Lorg/conscrypt/metrics/ReflexiveStatsEvent$Builder;
    .locals 2

    new-instance v0, Lorg/conscrypt/metrics/ReflexiveStatsEvent$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/conscrypt/metrics/ReflexiveStatsEvent$Builder;-><init>(Lorg/conscrypt/metrics/ReflexiveStatsEvent$1;)V

    return-object v0
.end method


# virtual methods
.method public getStatsEvent()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/conscrypt/metrics/ReflexiveStatsEvent;->statsEvent:Ljava/lang/Object;

    return-object p0
.end method
