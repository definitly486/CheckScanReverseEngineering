.class public final Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;
.super Lcom/google/protobuf/o;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/inappmessaging/CommonTypesProto$EventOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/inappmessaging/CommonTypesProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Event"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/inappmessaging/CommonTypesProto$Event$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/o<",
        "Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;",
        "Lcom/google/firebase/inappmessaging/CommonTypesProto$Event$Builder;",
        ">;",
        "Lcom/google/firebase/inappmessaging/CommonTypesProto$EventOrBuilder;"
    }
.end annotation


# static fields
.field public static final COUNT_FIELD_NUMBER:I = 0x5

.field private static final DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;

.field public static final NAME_FIELD_NUMBER:I = 0x2

.field private static volatile PARSER:Lx36; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx36<",
            "Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;",
            ">;"
        }
    .end annotation
.end field

.field public static final PREVIOUS_TIMESTAMP_MILLIS_FIELD_NUMBER:I = 0x4

.field public static final TIMESTAMP_MILLIS_FIELD_NUMBER:I = 0x3

.field public static final TRIGGER_PARAMS_FIELD_NUMBER:I = 0x1


# instance fields
.field private count_:I

.field private name_:Ljava/lang/String;

.field private previousTimestampMillis_:J

.field private timestampMillis_:J

.field private triggerParams_:Lcom/google/protobuf/q$j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/q$j<",
            "Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;

    invoke-direct {v0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;-><init>()V

    sput-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;

    const-class v1, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;

    invoke-static {v1, v0}, Lcom/google/protobuf/o;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/o;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/o;-><init>()V

    invoke-static {}, Lcom/google/protobuf/o;->emptyProtobufList()Lcom/google/protobuf/q$j;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;->triggerParams_:Lcom/google/protobuf/q$j;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;->name_:Ljava/lang/String;

    return-void
.end method

.method public static synthetic access$2000()Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;
    .locals 1

    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;

    return-object v0
.end method

.method public static synthetic access$2100(Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;ILcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;->setTriggerParams(ILcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;)V

    return-void
.end method

.method public static synthetic access$2200(Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;->addTriggerParams(Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;)V

    return-void
.end method

.method public static synthetic access$2300(Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;ILcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;->addTriggerParams(ILcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;)V

    return-void
.end method

.method public static synthetic access$2400(Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;Ljava/lang/Iterable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;->addAllTriggerParams(Ljava/lang/Iterable;)V

    return-void
.end method

.method public static synthetic access$2500(Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;->clearTriggerParams()V

    return-void
.end method

.method public static synthetic access$2600(Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;->removeTriggerParams(I)V

    return-void
.end method

.method public static synthetic access$2700(Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;->setName(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$2800(Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;->clearName()V

    return-void
.end method

.method public static synthetic access$2900(Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;Lfx0;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;->setNameBytes(Lfx0;)V

    return-void
.end method

.method public static synthetic access$3000(Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;->setTimestampMillis(J)V

    return-void
.end method

.method public static synthetic access$3100(Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;->clearTimestampMillis()V

    return-void
.end method

.method public static synthetic access$3200(Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;->setPreviousTimestampMillis(J)V

    return-void
.end method

.method public static synthetic access$3300(Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;->clearPreviousTimestampMillis()V

    return-void
.end method

.method public static synthetic access$3400(Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;->setCount(I)V

    return-void
.end method

.method public static synthetic access$3500(Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;->clearCount()V

    return-void
.end method

.method private addAllTriggerParams(Ljava/lang/Iterable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;->ensureTriggerParamsIsMutable()V

    iget-object p0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;->triggerParams_:Lcom/google/protobuf/q$j;

    invoke-static {p1, p0}, Lcom/google/protobuf/a;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private addTriggerParams(ILcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;)V
    .locals 0

    .line 12
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;->ensureTriggerParamsIsMutable()V

    .line 14
    iget-object p0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;->triggerParams_:Lcom/google/protobuf/q$j;

    invoke-interface {p0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addTriggerParams(Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;->ensureTriggerParamsIsMutable()V

    iget-object p0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;->triggerParams_:Lcom/google/protobuf/q$j;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private clearCount()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;->count_:I

    return-void
.end method

.method private clearName()V
    .locals 1

    invoke-static {}, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;->getDefaultInstance()Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;->name_:Ljava/lang/String;

    return-void
.end method

.method private clearPreviousTimestampMillis()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;->previousTimestampMillis_:J

    return-void
.end method

.method private clearTimestampMillis()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;->timestampMillis_:J

    return-void
.end method

.method private clearTriggerParams()V
    .locals 1

    invoke-static {}, Lcom/google/protobuf/o;->emptyProtobufList()Lcom/google/protobuf/q$j;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;->triggerParams_:Lcom/google/protobuf/q$j;

    return-void
.end method

.method private ensureTriggerParamsIsMutable()V
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;->triggerParams_:Lcom/google/protobuf/q$j;

    invoke-interface {v0}, Lcom/google/protobuf/q$j;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/google/protobuf/o;->mutableCopy(Lcom/google/protobuf/q$j;)Lcom/google/protobuf/q$j;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;->triggerParams_:Lcom/google/protobuf/q$j;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;
    .locals 1

    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/firebase/inappmessaging/CommonTypesProto$Event$Builder;
    .locals 1

    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;

    invoke-virtual {v0}, Lcom/google/protobuf/o;->createBuilder()Lcom/google/protobuf/o$a;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;)Lcom/google/firebase/inappmessaging/CommonTypesProto$Event$Builder;
    .locals 1

    .line 9
    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/o;->createBuilder(Lcom/google/protobuf/o;)Lcom/google/protobuf/o$a;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;
    .locals 1

    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;

    invoke-static {v0, p0}, Lcom/google/protobuf/o;->parseDelimitedFrom(Lcom/google/protobuf/o;Ljava/io/InputStream;)Lcom/google/protobuf/o;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/j;)Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;
    .locals 1

    .line 9
    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/o;->parseDelimitedFrom(Lcom/google/protobuf/o;Ljava/io/InputStream;Lcom/google/protobuf/j;)Lcom/google/protobuf/o;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/f;)Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;
    .locals 1

    .line 16
    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;

    invoke-static {v0, p0}, Lcom/google/protobuf/o;->parseFrom(Lcom/google/protobuf/o;Lcom/google/protobuf/f;)Lcom/google/protobuf/o;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/f;Lcom/google/protobuf/j;)Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;
    .locals 1

    .line 17
    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/o;->parseFrom(Lcom/google/protobuf/o;Lcom/google/protobuf/f;Lcom/google/protobuf/j;)Lcom/google/protobuf/o;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;

    return-object p0
.end method

.method public static parseFrom(Lfx0;)Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;
    .locals 1

    .line 10
    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;

    invoke-static {v0, p0}, Lcom/google/protobuf/o;->parseFrom(Lcom/google/protobuf/o;Lfx0;)Lcom/google/protobuf/o;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;

    return-object p0
.end method

.method public static parseFrom(Lfx0;Lcom/google/protobuf/j;)Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;
    .locals 1

    .line 11
    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/o;->parseFrom(Lcom/google/protobuf/o;Lfx0;Lcom/google/protobuf/j;)Lcom/google/protobuf/o;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;
    .locals 1

    .line 14
    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;

    invoke-static {v0, p0}, Lcom/google/protobuf/o;->parseFrom(Lcom/google/protobuf/o;Ljava/io/InputStream;)Lcom/google/protobuf/o;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/j;)Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;
    .locals 1

    .line 15
    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/o;->parseFrom(Lcom/google/protobuf/o;Ljava/io/InputStream;Lcom/google/protobuf/j;)Lcom/google/protobuf/o;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;
    .locals 1

    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;

    invoke-static {v0, p0}, Lcom/google/protobuf/o;->parseFrom(Lcom/google/protobuf/o;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/o;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/j;)Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;
    .locals 1

    .line 9
    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/o;->parseFrom(Lcom/google/protobuf/o;Ljava/nio/ByteBuffer;Lcom/google/protobuf/j;)Lcom/google/protobuf/o;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;
    .locals 1

    .line 12
    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;

    invoke-static {v0, p0}, Lcom/google/protobuf/o;->parseFrom(Lcom/google/protobuf/o;[B)Lcom/google/protobuf/o;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/j;)Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;
    .locals 1

    .line 13
    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/o;->parseFrom(Lcom/google/protobuf/o;[BLcom/google/protobuf/j;)Lcom/google/protobuf/o;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;

    return-object p0
.end method

.method public static parser()Lx36;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lx36<",
            "Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;

    invoke-virtual {v0}, Lcom/google/protobuf/o;->getParserForType()Lx36;

    move-result-object v0

    return-object v0
.end method

.method private removeTriggerParams(I)V
    .locals 0

    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;->ensureTriggerParamsIsMutable()V

    iget-object p0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;->triggerParams_:Lcom/google/protobuf/q$j;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private setCount(I)V
    .locals 0

    iput p1, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;->count_:I

    return-void
.end method

.method private setName(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;->name_:Ljava/lang/String;

    return-void
.end method

.method private setNameBytes(Lfx0;)V
    .locals 0

    invoke-static {p1}, Lcom/google/protobuf/a;->checkByteStringIsUtf8(Lfx0;)V

    invoke-virtual {p1}, Lfx0;->p()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;->name_:Ljava/lang/String;

    return-void
.end method

.method private setPreviousTimestampMillis(J)V
    .locals 0

    iput-wide p1, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;->previousTimestampMillis_:J

    return-void
.end method

.method private setTimestampMillis(J)V
    .locals 0

    iput-wide p1, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;->timestampMillis_:J

    return-void
.end method

.method private setTriggerParams(ILcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;)V
    .locals 0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;->ensureTriggerParamsIsMutable()V

    iget-object p0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;->triggerParams_:Lcom/google/protobuf/q$j;

    invoke-interface {p0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final dynamicMethod(Lcom/google/protobuf/o$f;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

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
    sget-object p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;->PARSER:Lx36;

    if-nez p0, :cond_1

    const-class p1, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;

    monitor-enter p1

    :try_start_0
    sget-object p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;->PARSER:Lx36;

    if-nez p0, :cond_0

    new-instance p0, Lcom/google/protobuf/o$b;

    sget-object p2, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;

    invoke-direct {p0, p2}, Lcom/google/protobuf/o$b;-><init>(Lcom/google/protobuf/o;)V

    sput-object p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;->PARSER:Lx36;

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
    sget-object p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;

    return-object p0

    :pswitch_4
    const-string v0, "triggerParams_"

    const-class v1, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;

    const-string v2, "name_"

    const-string v3, "timestampMillis_"

    const-string v4, "previousTimestampMillis_"

    const-string v5, "count_"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "\u0000\u0005\u0000\u0000\u0001\u0005\u0005\u0000\u0001\u0000\u0001\u001b\u0002\u0208\u0003\u0002\u0004\u0002\u0005\u0004"

    sget-object p2, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;

    invoke-static {p2, p1, p0}, Lcom/google/protobuf/o;->newMessageInfo(Lcom/google/protobuf/a0;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_5
    new-instance p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event$Builder;

    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event$Builder;-><init>(Lcom/google/firebase/inappmessaging/CommonTypesProto$1;)V

    return-object p0

    :pswitch_6
    new-instance p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;

    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;-><init>()V

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

.method public getCount()I
    .locals 0

    iget p0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;->count_:I

    return p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;->name_:Ljava/lang/String;

    return-object p0
.end method

.method public getNameBytes()Lfx0;
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;->name_:Ljava/lang/String;

    invoke-static {p0}, Lfx0;->f(Ljava/lang/String;)Lfx0$h;

    move-result-object p0

    return-object p0
.end method

.method public getPreviousTimestampMillis()J
    .locals 2

    iget-wide v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;->previousTimestampMillis_:J

    return-wide v0
.end method

.method public getTimestampMillis()J
    .locals 2

    iget-wide v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;->timestampMillis_:J

    return-wide v0
.end method

.method public getTriggerParams(I)Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;->triggerParams_:Lcom/google/protobuf/q$j;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;

    return-object p0
.end method

.method public getTriggerParamsCount()I
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;->triggerParams_:Lcom/google/protobuf/q$j;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getTriggerParamsList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;->triggerParams_:Lcom/google/protobuf/q$j;

    return-object p0
.end method

.method public getTriggerParamsOrBuilder(I)Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParamOrBuilder;
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;->triggerParams_:Lcom/google/protobuf/q$j;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParamOrBuilder;

    return-object p0
.end method

.method public getTriggerParamsOrBuilderList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParamOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;->triggerParams_:Lcom/google/protobuf/q$j;

    return-object p0
.end method
