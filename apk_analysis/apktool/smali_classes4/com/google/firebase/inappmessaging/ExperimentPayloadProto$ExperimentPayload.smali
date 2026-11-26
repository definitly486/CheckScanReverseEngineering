.class public final Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;
.super Lcom/google/protobuf/o;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayloadOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/inappmessaging/ExperimentPayloadProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ExperimentPayload"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload$ExperimentOverflowPolicy;,
        Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/o<",
        "Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;",
        "Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload$Builder;",
        ">;",
        "Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayloadOrBuilder;"
    }
.end annotation


# static fields
.field public static final ACTIVATE_EVENT_TO_LOG_FIELD_NUMBER:I = 0x8

.field public static final CLEAR_EVENT_TO_LOG_FIELD_NUMBER:I = 0x9

.field private static final DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;

.field public static final EXPERIMENT_ID_FIELD_NUMBER:I = 0x1

.field public static final EXPERIMENT_START_TIME_MILLIS_FIELD_NUMBER:I = 0x3

.field public static final ONGOING_EXPERIMENTS_FIELD_NUMBER:I = 0xd

.field public static final OVERFLOW_POLICY_FIELD_NUMBER:I = 0xc

.field private static volatile PARSER:Lx36; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx36<",
            "Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;",
            ">;"
        }
    .end annotation
.end field

.field public static final SET_EVENT_TO_LOG_FIELD_NUMBER:I = 0x7

.field public static final TIMEOUT_EVENT_TO_LOG_FIELD_NUMBER:I = 0xa

.field public static final TIME_TO_LIVE_MILLIS_FIELD_NUMBER:I = 0x6

.field public static final TRIGGER_EVENT_FIELD_NUMBER:I = 0x4

.field public static final TRIGGER_TIMEOUT_MILLIS_FIELD_NUMBER:I = 0x5

.field public static final TTL_EXPIRY_EVENT_TO_LOG_FIELD_NUMBER:I = 0xb

.field public static final VARIANT_ID_FIELD_NUMBER:I = 0x2


# instance fields
.field private activateEventToLog_:Ljava/lang/String;

.field private clearEventToLog_:Ljava/lang/String;

.field private experimentId_:Ljava/lang/String;

.field private experimentStartTimeMillis_:J

.field private ongoingExperiments_:Lcom/google/protobuf/q$j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/q$j<",
            "Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentLite;",
            ">;"
        }
    .end annotation
.end field

.field private overflowPolicy_:I

.field private setEventToLog_:Ljava/lang/String;

.field private timeToLiveMillis_:J

.field private timeoutEventToLog_:Ljava/lang/String;

.field private triggerEvent_:Ljava/lang/String;

.field private triggerTimeoutMillis_:J

.field private ttlExpiryEventToLog_:Ljava/lang/String;

.field private variantId_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;

    invoke-direct {v0}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;-><init>()V

    sput-object v0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;

    const-class v1, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;

    invoke-static {v1, v0}, Lcom/google/protobuf/o;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/o;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/o;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->experimentId_:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->variantId_:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->triggerEvent_:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->setEventToLog_:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->activateEventToLog_:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->clearEventToLog_:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->timeoutEventToLog_:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->ttlExpiryEventToLog_:Ljava/lang/String;

    invoke-static {}, Lcom/google/protobuf/o;->emptyProtobufList()Lcom/google/protobuf/q$j;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->ongoingExperiments_:Lcom/google/protobuf/q$j;

    return-void
.end method

.method public static synthetic access$1000(Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->clearVariantId()V

    return-void
.end method

.method public static synthetic access$1100(Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;Lfx0;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->setVariantIdBytes(Lfx0;)V

    return-void
.end method

.method public static synthetic access$1200(Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->setExperimentStartTimeMillis(J)V

    return-void
.end method

.method public static synthetic access$1300(Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->clearExperimentStartTimeMillis()V

    return-void
.end method

.method public static synthetic access$1400(Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->setTriggerEvent(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$1500(Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->clearTriggerEvent()V

    return-void
.end method

.method public static synthetic access$1600(Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;Lfx0;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->setTriggerEventBytes(Lfx0;)V

    return-void
.end method

.method public static synthetic access$1700(Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->setTriggerTimeoutMillis(J)V

    return-void
.end method

.method public static synthetic access$1800(Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->clearTriggerTimeoutMillis()V

    return-void
.end method

.method public static synthetic access$1900(Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->setTimeToLiveMillis(J)V

    return-void
.end method

.method public static synthetic access$2000(Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->clearTimeToLiveMillis()V

    return-void
.end method

.method public static synthetic access$2100(Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->setSetEventToLog(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$2200(Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->clearSetEventToLog()V

    return-void
.end method

.method public static synthetic access$2300(Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;Lfx0;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->setSetEventToLogBytes(Lfx0;)V

    return-void
.end method

.method public static synthetic access$2400(Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->setActivateEventToLog(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$2500(Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->clearActivateEventToLog()V

    return-void
.end method

.method public static synthetic access$2600(Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;Lfx0;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->setActivateEventToLogBytes(Lfx0;)V

    return-void
.end method

.method public static synthetic access$2700(Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->setClearEventToLog(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$2800(Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->clearClearEventToLog()V

    return-void
.end method

.method public static synthetic access$2900(Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;Lfx0;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->setClearEventToLogBytes(Lfx0;)V

    return-void
.end method

.method public static synthetic access$3000(Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->setTimeoutEventToLog(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$3100(Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->clearTimeoutEventToLog()V

    return-void
.end method

.method public static synthetic access$3200(Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;Lfx0;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->setTimeoutEventToLogBytes(Lfx0;)V

    return-void
.end method

.method public static synthetic access$3300(Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->setTtlExpiryEventToLog(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$3400(Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->clearTtlExpiryEventToLog()V

    return-void
.end method

.method public static synthetic access$3500(Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;Lfx0;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->setTtlExpiryEventToLogBytes(Lfx0;)V

    return-void
.end method

.method public static synthetic access$3600(Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->setOverflowPolicyValue(I)V

    return-void
.end method

.method public static synthetic access$3700(Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload$ExperimentOverflowPolicy;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->setOverflowPolicy(Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload$ExperimentOverflowPolicy;)V

    return-void
.end method

.method public static synthetic access$3800(Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->clearOverflowPolicy()V

    return-void
.end method

.method public static synthetic access$3900(Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;ILcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentLite;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->setOngoingExperiments(ILcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentLite;)V

    return-void
.end method

.method public static synthetic access$4000(Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentLite;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->addOngoingExperiments(Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentLite;)V

    return-void
.end method

.method public static synthetic access$4100(Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;ILcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentLite;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->addOngoingExperiments(ILcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentLite;)V

    return-void
.end method

.method public static synthetic access$4200(Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;Ljava/lang/Iterable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->addAllOngoingExperiments(Ljava/lang/Iterable;)V

    return-void
.end method

.method public static synthetic access$4300(Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->clearOngoingExperiments()V

    return-void
.end method

.method public static synthetic access$4400(Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->removeOngoingExperiments(I)V

    return-void
.end method

.method public static synthetic access$500()Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;
    .locals 1

    sget-object v0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;

    return-object v0
.end method

.method public static synthetic access$600(Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->setExperimentId(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$700(Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->clearExperimentId()V

    return-void
.end method

.method public static synthetic access$800(Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;Lfx0;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->setExperimentIdBytes(Lfx0;)V

    return-void
.end method

.method public static synthetic access$900(Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->setVariantId(Ljava/lang/String;)V

    return-void
.end method

.method private addAllOngoingExperiments(Ljava/lang/Iterable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentLite;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->ensureOngoingExperimentsIsMutable()V

    iget-object p0, p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->ongoingExperiments_:Lcom/google/protobuf/q$j;

    invoke-static {p1, p0}, Lcom/google/protobuf/a;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private addOngoingExperiments(ILcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentLite;)V
    .locals 0

    .line 12
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->ensureOngoingExperimentsIsMutable()V

    .line 14
    iget-object p0, p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->ongoingExperiments_:Lcom/google/protobuf/q$j;

    invoke-interface {p0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addOngoingExperiments(Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentLite;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->ensureOngoingExperimentsIsMutable()V

    iget-object p0, p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->ongoingExperiments_:Lcom/google/protobuf/q$j;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private clearActivateEventToLog()V
    .locals 1

    invoke-static {}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->getDefaultInstance()Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->getActivateEventToLog()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->activateEventToLog_:Ljava/lang/String;

    return-void
.end method

.method private clearClearEventToLog()V
    .locals 1

    invoke-static {}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->getDefaultInstance()Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->getClearEventToLog()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->clearEventToLog_:Ljava/lang/String;

    return-void
.end method

.method private clearExperimentId()V
    .locals 1

    invoke-static {}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->getDefaultInstance()Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->getExperimentId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->experimentId_:Ljava/lang/String;

    return-void
.end method

.method private clearExperimentStartTimeMillis()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->experimentStartTimeMillis_:J

    return-void
.end method

.method private clearOngoingExperiments()V
    .locals 1

    invoke-static {}, Lcom/google/protobuf/o;->emptyProtobufList()Lcom/google/protobuf/q$j;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->ongoingExperiments_:Lcom/google/protobuf/q$j;

    return-void
.end method

.method private clearOverflowPolicy()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->overflowPolicy_:I

    return-void
.end method

.method private clearSetEventToLog()V
    .locals 1

    invoke-static {}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->getDefaultInstance()Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->getSetEventToLog()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->setEventToLog_:Ljava/lang/String;

    return-void
.end method

.method private clearTimeToLiveMillis()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->timeToLiveMillis_:J

    return-void
.end method

.method private clearTimeoutEventToLog()V
    .locals 1

    invoke-static {}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->getDefaultInstance()Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->getTimeoutEventToLog()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->timeoutEventToLog_:Ljava/lang/String;

    return-void
.end method

.method private clearTriggerEvent()V
    .locals 1

    invoke-static {}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->getDefaultInstance()Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->getTriggerEvent()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->triggerEvent_:Ljava/lang/String;

    return-void
.end method

.method private clearTriggerTimeoutMillis()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->triggerTimeoutMillis_:J

    return-void
.end method

.method private clearTtlExpiryEventToLog()V
    .locals 1

    invoke-static {}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->getDefaultInstance()Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->getTtlExpiryEventToLog()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->ttlExpiryEventToLog_:Ljava/lang/String;

    return-void
.end method

.method private clearVariantId()V
    .locals 1

    invoke-static {}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->getDefaultInstance()Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->getVariantId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->variantId_:Ljava/lang/String;

    return-void
.end method

.method private ensureOngoingExperimentsIsMutable()V
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->ongoingExperiments_:Lcom/google/protobuf/q$j;

    invoke-interface {v0}, Lcom/google/protobuf/q$j;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/google/protobuf/o;->mutableCopy(Lcom/google/protobuf/q$j;)Lcom/google/protobuf/q$j;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->ongoingExperiments_:Lcom/google/protobuf/q$j;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;
    .locals 1

    sget-object v0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload$Builder;
    .locals 1

    sget-object v0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;

    invoke-virtual {v0}, Lcom/google/protobuf/o;->createBuilder()Lcom/google/protobuf/o$a;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;)Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload$Builder;
    .locals 1

    .line 9
    sget-object v0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/o;->createBuilder(Lcom/google/protobuf/o;)Lcom/google/protobuf/o$a;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;
    .locals 1

    sget-object v0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;

    invoke-static {v0, p0}, Lcom/google/protobuf/o;->parseDelimitedFrom(Lcom/google/protobuf/o;Ljava/io/InputStream;)Lcom/google/protobuf/o;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/j;)Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;
    .locals 1

    .line 9
    sget-object v0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/o;->parseDelimitedFrom(Lcom/google/protobuf/o;Ljava/io/InputStream;Lcom/google/protobuf/j;)Lcom/google/protobuf/o;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/f;)Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;
    .locals 1

    .line 16
    sget-object v0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;

    invoke-static {v0, p0}, Lcom/google/protobuf/o;->parseFrom(Lcom/google/protobuf/o;Lcom/google/protobuf/f;)Lcom/google/protobuf/o;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/f;Lcom/google/protobuf/j;)Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;
    .locals 1

    .line 17
    sget-object v0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/o;->parseFrom(Lcom/google/protobuf/o;Lcom/google/protobuf/f;Lcom/google/protobuf/j;)Lcom/google/protobuf/o;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;

    return-object p0
.end method

.method public static parseFrom(Lfx0;)Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;
    .locals 1

    .line 10
    sget-object v0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;

    invoke-static {v0, p0}, Lcom/google/protobuf/o;->parseFrom(Lcom/google/protobuf/o;Lfx0;)Lcom/google/protobuf/o;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;

    return-object p0
.end method

.method public static parseFrom(Lfx0;Lcom/google/protobuf/j;)Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;
    .locals 1

    .line 11
    sget-object v0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/o;->parseFrom(Lcom/google/protobuf/o;Lfx0;Lcom/google/protobuf/j;)Lcom/google/protobuf/o;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;
    .locals 1

    .line 14
    sget-object v0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;

    invoke-static {v0, p0}, Lcom/google/protobuf/o;->parseFrom(Lcom/google/protobuf/o;Ljava/io/InputStream;)Lcom/google/protobuf/o;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/j;)Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;
    .locals 1

    .line 15
    sget-object v0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/o;->parseFrom(Lcom/google/protobuf/o;Ljava/io/InputStream;Lcom/google/protobuf/j;)Lcom/google/protobuf/o;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;
    .locals 1

    sget-object v0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;

    invoke-static {v0, p0}, Lcom/google/protobuf/o;->parseFrom(Lcom/google/protobuf/o;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/o;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/j;)Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;
    .locals 1

    .line 9
    sget-object v0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/o;->parseFrom(Lcom/google/protobuf/o;Ljava/nio/ByteBuffer;Lcom/google/protobuf/j;)Lcom/google/protobuf/o;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;
    .locals 1

    .line 12
    sget-object v0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;

    invoke-static {v0, p0}, Lcom/google/protobuf/o;->parseFrom(Lcom/google/protobuf/o;[B)Lcom/google/protobuf/o;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/j;)Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;
    .locals 1

    .line 13
    sget-object v0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/o;->parseFrom(Lcom/google/protobuf/o;[BLcom/google/protobuf/j;)Lcom/google/protobuf/o;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;

    return-object p0
.end method

.method public static parser()Lx36;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lx36<",
            "Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;

    invoke-virtual {v0}, Lcom/google/protobuf/o;->getParserForType()Lx36;

    move-result-object v0

    return-object v0
.end method

.method private removeOngoingExperiments(I)V
    .locals 0

    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->ensureOngoingExperimentsIsMutable()V

    iget-object p0, p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->ongoingExperiments_:Lcom/google/protobuf/q$j;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private setActivateEventToLog(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->activateEventToLog_:Ljava/lang/String;

    return-void
.end method

.method private setActivateEventToLogBytes(Lfx0;)V
    .locals 0

    invoke-static {p1}, Lcom/google/protobuf/a;->checkByteStringIsUtf8(Lfx0;)V

    invoke-virtual {p1}, Lfx0;->p()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->activateEventToLog_:Ljava/lang/String;

    return-void
.end method

.method private setClearEventToLog(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->clearEventToLog_:Ljava/lang/String;

    return-void
.end method

.method private setClearEventToLogBytes(Lfx0;)V
    .locals 0

    invoke-static {p1}, Lcom/google/protobuf/a;->checkByteStringIsUtf8(Lfx0;)V

    invoke-virtual {p1}, Lfx0;->p()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->clearEventToLog_:Ljava/lang/String;

    return-void
.end method

.method private setExperimentId(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->experimentId_:Ljava/lang/String;

    return-void
.end method

.method private setExperimentIdBytes(Lfx0;)V
    .locals 0

    invoke-static {p1}, Lcom/google/protobuf/a;->checkByteStringIsUtf8(Lfx0;)V

    invoke-virtual {p1}, Lfx0;->p()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->experimentId_:Ljava/lang/String;

    return-void
.end method

.method private setExperimentStartTimeMillis(J)V
    .locals 0

    iput-wide p1, p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->experimentStartTimeMillis_:J

    return-void
.end method

.method private setOngoingExperiments(ILcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentLite;)V
    .locals 0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->ensureOngoingExperimentsIsMutable()V

    iget-object p0, p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->ongoingExperiments_:Lcom/google/protobuf/q$j;

    invoke-interface {p0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setOverflowPolicy(Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload$ExperimentOverflowPolicy;)V
    .locals 0

    invoke-virtual {p1}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload$ExperimentOverflowPolicy;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->overflowPolicy_:I

    return-void
.end method

.method private setOverflowPolicyValue(I)V
    .locals 0

    iput p1, p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->overflowPolicy_:I

    return-void
.end method

.method private setSetEventToLog(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->setEventToLog_:Ljava/lang/String;

    return-void
.end method

.method private setSetEventToLogBytes(Lfx0;)V
    .locals 0

    invoke-static {p1}, Lcom/google/protobuf/a;->checkByteStringIsUtf8(Lfx0;)V

    invoke-virtual {p1}, Lfx0;->p()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->setEventToLog_:Ljava/lang/String;

    return-void
.end method

.method private setTimeToLiveMillis(J)V
    .locals 0

    iput-wide p1, p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->timeToLiveMillis_:J

    return-void
.end method

.method private setTimeoutEventToLog(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->timeoutEventToLog_:Ljava/lang/String;

    return-void
.end method

.method private setTimeoutEventToLogBytes(Lfx0;)V
    .locals 0

    invoke-static {p1}, Lcom/google/protobuf/a;->checkByteStringIsUtf8(Lfx0;)V

    invoke-virtual {p1}, Lfx0;->p()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->timeoutEventToLog_:Ljava/lang/String;

    return-void
.end method

.method private setTriggerEvent(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->triggerEvent_:Ljava/lang/String;

    return-void
.end method

.method private setTriggerEventBytes(Lfx0;)V
    .locals 0

    invoke-static {p1}, Lcom/google/protobuf/a;->checkByteStringIsUtf8(Lfx0;)V

    invoke-virtual {p1}, Lfx0;->p()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->triggerEvent_:Ljava/lang/String;

    return-void
.end method

.method private setTriggerTimeoutMillis(J)V
    .locals 0

    iput-wide p1, p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->triggerTimeoutMillis_:J

    return-void
.end method

.method private setTtlExpiryEventToLog(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->ttlExpiryEventToLog_:Ljava/lang/String;

    return-void
.end method

.method private setTtlExpiryEventToLogBytes(Lfx0;)V
    .locals 0

    invoke-static {p1}, Lcom/google/protobuf/a;->checkByteStringIsUtf8(Lfx0;)V

    invoke-virtual {p1}, Lfx0;->p()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->ttlExpiryEventToLog_:Ljava/lang/String;

    return-void
.end method

.method private setVariantId(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->variantId_:Ljava/lang/String;

    return-void
.end method

.method private setVariantIdBytes(Lfx0;)V
    .locals 0

    invoke-static {p1}, Lcom/google/protobuf/a;->checkByteStringIsUtf8(Lfx0;)V

    invoke-virtual {p1}, Lfx0;->p()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->variantId_:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final dynamicMethod(Lcom/google/protobuf/o$f;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    sget-object p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p0, p0, v0

    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_0

    invoke-static {}, Lud;->d()V

    :pswitch_0
    return-object v0

    :pswitch_1
    const/4 p0, 0x1

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    :pswitch_2
    sget-object p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->PARSER:Lx36;

    if-nez p0, :cond_1

    const-class v1, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;

    monitor-enter v1

    :try_start_0
    sget-object p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->PARSER:Lx36;

    if-nez p0, :cond_0

    new-instance p0, Lcom/google/protobuf/o$b;

    sget-object v0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;

    invoke-direct {p0, v0}, Lcom/google/protobuf/o$b;-><init>(Lcom/google/protobuf/o;)V

    sput-object p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->PARSER:Lx36;

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v1

    return-object p0

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    return-object p0

    :pswitch_3
    sget-object p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;

    return-object p0

    :pswitch_4
    const-string v0, "experimentId_"

    const-string v1, "variantId_"

    const-string v2, "experimentStartTimeMillis_"

    const-string v3, "triggerEvent_"

    const-string v4, "triggerTimeoutMillis_"

    const-string v5, "timeToLiveMillis_"

    const-string v6, "setEventToLog_"

    const-string v7, "activateEventToLog_"

    const-string v8, "clearEventToLog_"

    const-string v9, "timeoutEventToLog_"

    const-string v10, "ttlExpiryEventToLog_"

    const-string v11, "overflowPolicy_"

    const-string v12, "ongoingExperiments_"

    const-class v13, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentLite;

    filled-new-array/range {v0 .. v13}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "\u0000\r\u0000\u0000\u0001\r\r\u0000\u0001\u0000\u0001\u0208\u0002\u0208\u0003\u0002\u0004\u0208\u0005\u0002\u0006\u0002\u0007\u0208\u0008\u0208\t\u0208\n\u0208\u000b\u0208\u000c\u000c\r\u001b"

    sget-object v1, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;

    invoke-static {v1, v0, p0}, Lcom/google/protobuf/o;->newMessageInfo(Lcom/google/protobuf/a0;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_5
    new-instance p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload$Builder;

    invoke-direct {p0, v0}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload$Builder;-><init>(Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$1;)V

    return-object p0

    :pswitch_6
    new-instance p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;

    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;-><init>()V

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

.method public getActivateEventToLog()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->activateEventToLog_:Ljava/lang/String;

    return-object p0
.end method

.method public getActivateEventToLogBytes()Lfx0;
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->activateEventToLog_:Ljava/lang/String;

    invoke-static {p0}, Lfx0;->f(Ljava/lang/String;)Lfx0$h;

    move-result-object p0

    return-object p0
.end method

.method public getClearEventToLog()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->clearEventToLog_:Ljava/lang/String;

    return-object p0
.end method

.method public getClearEventToLogBytes()Lfx0;
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->clearEventToLog_:Ljava/lang/String;

    invoke-static {p0}, Lfx0;->f(Ljava/lang/String;)Lfx0$h;

    move-result-object p0

    return-object p0
.end method

.method public getExperimentId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->experimentId_:Ljava/lang/String;

    return-object p0
.end method

.method public getExperimentIdBytes()Lfx0;
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->experimentId_:Ljava/lang/String;

    invoke-static {p0}, Lfx0;->f(Ljava/lang/String;)Lfx0$h;

    move-result-object p0

    return-object p0
.end method

.method public getExperimentStartTimeMillis()J
    .locals 2

    iget-wide v0, p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->experimentStartTimeMillis_:J

    return-wide v0
.end method

.method public getOngoingExperiments(I)Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentLite;
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->ongoingExperiments_:Lcom/google/protobuf/q$j;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentLite;

    return-object p0
.end method

.method public getOngoingExperimentsCount()I
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->ongoingExperiments_:Lcom/google/protobuf/q$j;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getOngoingExperimentsList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentLite;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->ongoingExperiments_:Lcom/google/protobuf/q$j;

    return-object p0
.end method

.method public getOngoingExperimentsOrBuilder(I)Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentLiteOrBuilder;
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->ongoingExperiments_:Lcom/google/protobuf/q$j;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentLiteOrBuilder;

    return-object p0
.end method

.method public getOngoingExperimentsOrBuilderList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentLiteOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->ongoingExperiments_:Lcom/google/protobuf/q$j;

    return-object p0
.end method

.method public getOverflowPolicy()Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload$ExperimentOverflowPolicy;
    .locals 0

    iget p0, p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->overflowPolicy_:I

    invoke-static {p0}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload$ExperimentOverflowPolicy;->forNumber(I)Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload$ExperimentOverflowPolicy;

    move-result-object p0

    if-nez p0, :cond_0

    sget-object p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload$ExperimentOverflowPolicy;->UNRECOGNIZED:Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload$ExperimentOverflowPolicy;

    :cond_0
    return-object p0
.end method

.method public getOverflowPolicyValue()I
    .locals 0

    iget p0, p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->overflowPolicy_:I

    return p0
.end method

.method public getSetEventToLog()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->setEventToLog_:Ljava/lang/String;

    return-object p0
.end method

.method public getSetEventToLogBytes()Lfx0;
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->setEventToLog_:Ljava/lang/String;

    invoke-static {p0}, Lfx0;->f(Ljava/lang/String;)Lfx0$h;

    move-result-object p0

    return-object p0
.end method

.method public getTimeToLiveMillis()J
    .locals 2

    iget-wide v0, p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->timeToLiveMillis_:J

    return-wide v0
.end method

.method public getTimeoutEventToLog()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->timeoutEventToLog_:Ljava/lang/String;

    return-object p0
.end method

.method public getTimeoutEventToLogBytes()Lfx0;
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->timeoutEventToLog_:Ljava/lang/String;

    invoke-static {p0}, Lfx0;->f(Ljava/lang/String;)Lfx0$h;

    move-result-object p0

    return-object p0
.end method

.method public getTriggerEvent()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->triggerEvent_:Ljava/lang/String;

    return-object p0
.end method

.method public getTriggerEventBytes()Lfx0;
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->triggerEvent_:Ljava/lang/String;

    invoke-static {p0}, Lfx0;->f(Ljava/lang/String;)Lfx0$h;

    move-result-object p0

    return-object p0
.end method

.method public getTriggerTimeoutMillis()J
    .locals 2

    iget-wide v0, p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->triggerTimeoutMillis_:J

    return-wide v0
.end method

.method public getTtlExpiryEventToLog()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->ttlExpiryEventToLog_:Ljava/lang/String;

    return-object p0
.end method

.method public getTtlExpiryEventToLogBytes()Lfx0;
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->ttlExpiryEventToLog_:Ljava/lang/String;

    invoke-static {p0}, Lfx0;->f(Ljava/lang/String;)Lfx0$h;

    move-result-object p0

    return-object p0
.end method

.method public getVariantId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->variantId_:Ljava/lang/String;

    return-object p0
.end method

.method public getVariantIdBytes()Lfx0;
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->variantId_:Ljava/lang/String;

    invoke-static {p0}, Lfx0;->f(Ljava/lang/String;)Lfx0$h;

    move-result-object p0

    return-object p0
.end method
