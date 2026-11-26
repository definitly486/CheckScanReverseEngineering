.class public final Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;
.super Lcom/google/protobuf/o;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringConditionOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/inappmessaging/CommonTypesProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TriggeringCondition"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition$ConditionCase;,
        Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/o<",
        "Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;",
        "Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition$Builder;",
        ">;",
        "Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringConditionOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;

.field public static final EVENT_FIELD_NUMBER:I = 0x2

.field public static final FIAM_TRIGGER_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lx36;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx36<",
            "Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private conditionCase_:I

.field private condition_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;

    invoke-direct {v0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;-><init>()V

    sput-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;

    const-class v1, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;

    invoke-static {v1, v0}, Lcom/google/protobuf/o;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/o;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/o;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;->conditionCase_:I

    return-void
.end method

.method public static synthetic access$1100()Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;
    .locals 1

    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;

    return-object v0
.end method

.method public static synthetic access$1200(Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;->clearCondition()V

    return-void
.end method

.method public static synthetic access$1300(Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;->setFiamTriggerValue(I)V

    return-void
.end method

.method public static synthetic access$1400(Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;Lcom/google/firebase/inappmessaging/CommonTypesProto$Trigger;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;->setFiamTrigger(Lcom/google/firebase/inappmessaging/CommonTypesProto$Trigger;)V

    return-void
.end method

.method public static synthetic access$1500(Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;->clearFiamTrigger()V

    return-void
.end method

.method public static synthetic access$1600(Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;->setEvent(Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;)V

    return-void
.end method

.method public static synthetic access$1700(Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;->mergeEvent(Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;)V

    return-void
.end method

.method public static synthetic access$1800(Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;->clearEvent()V

    return-void
.end method

.method private clearCondition()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;->conditionCase_:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;->condition_:Ljava/lang/Object;

    return-void
.end method

.method private clearEvent()V
    .locals 2

    iget v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;->conditionCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;->conditionCase_:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;->condition_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearFiamTrigger()V
    .locals 2

    iget v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;->conditionCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;->conditionCase_:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;->condition_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;
    .locals 1

    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;

    return-object v0
.end method

.method private mergeEvent(Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;->conditionCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;->condition_:Ljava/lang/Object;

    invoke-static {}, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;->getDefaultInstance()Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;

    move-result-object v2

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;->condition_:Ljava/lang/Object;

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;

    invoke-static {v0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;->newBuilder(Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;)Lcom/google/firebase/inappmessaging/CommonTypesProto$Event$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/o$a;->mergeFrom(Lcom/google/protobuf/o;)Lcom/google/protobuf/o$a;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/o$a;->buildPartial()Lcom/google/protobuf/o;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;->condition_:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;->condition_:Ljava/lang/Object;

    :goto_0
    iput v1, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;->conditionCase_:I

    return-void
.end method

.method public static newBuilder()Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition$Builder;
    .locals 1

    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;

    invoke-virtual {v0}, Lcom/google/protobuf/o;->createBuilder()Lcom/google/protobuf/o$a;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;)Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition$Builder;
    .locals 1

    .line 9
    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/o;->createBuilder(Lcom/google/protobuf/o;)Lcom/google/protobuf/o$a;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;
    .locals 1

    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;

    invoke-static {v0, p0}, Lcom/google/protobuf/o;->parseDelimitedFrom(Lcom/google/protobuf/o;Ljava/io/InputStream;)Lcom/google/protobuf/o;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/j;)Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;
    .locals 1

    .line 9
    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/o;->parseDelimitedFrom(Lcom/google/protobuf/o;Ljava/io/InputStream;Lcom/google/protobuf/j;)Lcom/google/protobuf/o;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/f;)Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;
    .locals 1

    .line 16
    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;

    invoke-static {v0, p0}, Lcom/google/protobuf/o;->parseFrom(Lcom/google/protobuf/o;Lcom/google/protobuf/f;)Lcom/google/protobuf/o;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/f;Lcom/google/protobuf/j;)Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;
    .locals 1

    .line 17
    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/o;->parseFrom(Lcom/google/protobuf/o;Lcom/google/protobuf/f;Lcom/google/protobuf/j;)Lcom/google/protobuf/o;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;

    return-object p0
.end method

.method public static parseFrom(Lfx0;)Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;
    .locals 1

    .line 10
    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;

    invoke-static {v0, p0}, Lcom/google/protobuf/o;->parseFrom(Lcom/google/protobuf/o;Lfx0;)Lcom/google/protobuf/o;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;

    return-object p0
.end method

.method public static parseFrom(Lfx0;Lcom/google/protobuf/j;)Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;
    .locals 1

    .line 11
    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/o;->parseFrom(Lcom/google/protobuf/o;Lfx0;Lcom/google/protobuf/j;)Lcom/google/protobuf/o;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;
    .locals 1

    .line 14
    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;

    invoke-static {v0, p0}, Lcom/google/protobuf/o;->parseFrom(Lcom/google/protobuf/o;Ljava/io/InputStream;)Lcom/google/protobuf/o;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/j;)Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;
    .locals 1

    .line 15
    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/o;->parseFrom(Lcom/google/protobuf/o;Ljava/io/InputStream;Lcom/google/protobuf/j;)Lcom/google/protobuf/o;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;
    .locals 1

    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;

    invoke-static {v0, p0}, Lcom/google/protobuf/o;->parseFrom(Lcom/google/protobuf/o;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/o;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/j;)Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;
    .locals 1

    .line 9
    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/o;->parseFrom(Lcom/google/protobuf/o;Ljava/nio/ByteBuffer;Lcom/google/protobuf/j;)Lcom/google/protobuf/o;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;
    .locals 1

    .line 12
    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;

    invoke-static {v0, p0}, Lcom/google/protobuf/o;->parseFrom(Lcom/google/protobuf/o;[B)Lcom/google/protobuf/o;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/j;)Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;
    .locals 1

    .line 13
    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/o;->parseFrom(Lcom/google/protobuf/o;[BLcom/google/protobuf/j;)Lcom/google/protobuf/o;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;

    return-object p0
.end method

.method public static parser()Lx36;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lx36<",
            "Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;

    invoke-virtual {v0}, Lcom/google/protobuf/o;->getParserForType()Lx36;

    move-result-object v0

    return-object v0
.end method

.method private setEvent(Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;->condition_:Ljava/lang/Object;

    const/4 p1, 0x2

    iput p1, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;->conditionCase_:I

    return-void
.end method

.method private setFiamTrigger(Lcom/google/firebase/inappmessaging/CommonTypesProto$Trigger;)V
    .locals 0

    invoke-virtual {p1}, Lcom/google/firebase/inappmessaging/CommonTypesProto$Trigger;->getNumber()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;->condition_:Ljava/lang/Object;

    const/4 p1, 0x1

    iput p1, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;->conditionCase_:I

    return-void
.end method

.method private setFiamTriggerValue(I)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;->conditionCase_:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;->condition_:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final dynamicMethod(Lcom/google/protobuf/o$f;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

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
    sget-object p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;->PARSER:Lx36;

    if-nez p0, :cond_1

    const-class p1, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;

    monitor-enter p1

    :try_start_0
    sget-object p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;->PARSER:Lx36;

    if-nez p0, :cond_0

    new-instance p0, Lcom/google/protobuf/o$b;

    sget-object p2, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;

    invoke-direct {p0, p2}, Lcom/google/protobuf/o$b;-><init>(Lcom/google/protobuf/o;)V

    sput-object p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;->PARSER:Lx36;

    goto :goto_0

    :catchall_0
    move-exception p0

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
    sget-object p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;

    return-object p0

    :pswitch_4
    const-string p0, "condition_"

    const-string p1, "conditionCase_"

    const-class p2, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;

    filled-new-array {p0, p1, p2}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "\u0000\u0002\u0001\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001?\u0000\u0002<\u0000"

    sget-object p2, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;

    invoke-static {p2, p1, p0}, Lcom/google/protobuf/o;->newMessageInfo(Lcom/google/protobuf/a0;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_5
    new-instance p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition$Builder;

    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition$Builder;-><init>(Lcom/google/firebase/inappmessaging/CommonTypesProto$1;)V

    return-object p0

    :pswitch_6
    new-instance p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;

    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;-><init>()V

    return-object p0

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

.method public getConditionCase()Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition$ConditionCase;
    .locals 0

    iget p0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;->conditionCase_:I

    invoke-static {p0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition$ConditionCase;->forNumber(I)Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition$ConditionCase;

    move-result-object p0

    return-object p0
.end method

.method public getEvent()Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;
    .locals 2

    iget v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;->conditionCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;->condition_:Ljava/lang/Object;

    check-cast p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;

    return-object p0

    :cond_0
    invoke-static {}, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;->getDefaultInstance()Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;

    move-result-object p0

    return-object p0
.end method

.method public getFiamTrigger()Lcom/google/firebase/inappmessaging/CommonTypesProto$Trigger;
    .locals 2

    iget v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;->conditionCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object p0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;->condition_:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$Trigger;->forNumber(I)Lcom/google/firebase/inappmessaging/CommonTypesProto$Trigger;

    move-result-object p0

    if-nez p0, :cond_0

    sget-object p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Trigger;->UNRECOGNIZED:Lcom/google/firebase/inappmessaging/CommonTypesProto$Trigger;

    :cond_0
    return-object p0

    :cond_1
    sget-object p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Trigger;->UNKNOWN_TRIGGER:Lcom/google/firebase/inappmessaging/CommonTypesProto$Trigger;

    return-object p0
.end method

.method public getFiamTriggerValue()I
    .locals 2

    iget v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;->conditionCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;->condition_:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public hasEvent()Z
    .locals 1

    iget p0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;->conditionCase_:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public hasFiamTrigger()Z
    .locals 1

    iget p0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;->conditionCase_:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
