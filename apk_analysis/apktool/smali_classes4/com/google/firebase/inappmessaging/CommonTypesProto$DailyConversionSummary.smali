.class public final Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyConversionSummary;
.super Lcom/google/protobuf/o;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyConversionSummaryOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/inappmessaging/CommonTypesProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DailyConversionSummary"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyConversionSummary$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/o<",
        "Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyConversionSummary;",
        "Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyConversionSummary$Builder;",
        ">;",
        "Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyConversionSummaryOrBuilder;"
    }
.end annotation


# static fields
.field public static final CONVERSIONS_FIELD_NUMBER:I = 0x2

.field private static final DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyConversionSummary;

.field private static volatile PARSER:Lx36; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx36<",
            "Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyConversionSummary;",
            ">;"
        }
    .end annotation
.end field

.field public static final START_OF_DAY_MILLIS_FIELD_NUMBER:I = 0x1


# instance fields
.field private conversions_:I

.field private startOfDayMillis_:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyConversionSummary;

    invoke-direct {v0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyConversionSummary;-><init>()V

    sput-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyConversionSummary;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyConversionSummary;

    const-class v1, Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyConversionSummary;

    invoke-static {v1, v0}, Lcom/google/protobuf/o;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/o;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/protobuf/o;-><init>()V

    return-void
.end method

.method public static synthetic access$7700()Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyConversionSummary;
    .locals 1

    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyConversionSummary;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyConversionSummary;

    return-object v0
.end method

.method public static synthetic access$7800(Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyConversionSummary;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyConversionSummary;->setStartOfDayMillis(J)V

    return-void
.end method

.method public static synthetic access$7900(Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyConversionSummary;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyConversionSummary;->clearStartOfDayMillis()V

    return-void
.end method

.method public static synthetic access$8000(Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyConversionSummary;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyConversionSummary;->setConversions(I)V

    return-void
.end method

.method public static synthetic access$8100(Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyConversionSummary;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyConversionSummary;->clearConversions()V

    return-void
.end method

.method private clearConversions()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyConversionSummary;->conversions_:I

    return-void
.end method

.method private clearStartOfDayMillis()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyConversionSummary;->startOfDayMillis_:J

    return-void
.end method

.method public static getDefaultInstance()Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyConversionSummary;
    .locals 1

    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyConversionSummary;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyConversionSummary;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyConversionSummary$Builder;
    .locals 1

    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyConversionSummary;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyConversionSummary;

    invoke-virtual {v0}, Lcom/google/protobuf/o;->createBuilder()Lcom/google/protobuf/o$a;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyConversionSummary$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyConversionSummary;)Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyConversionSummary$Builder;
    .locals 1

    .line 9
    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyConversionSummary;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyConversionSummary;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/o;->createBuilder(Lcom/google/protobuf/o;)Lcom/google/protobuf/o$a;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyConversionSummary$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyConversionSummary;
    .locals 1

    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyConversionSummary;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyConversionSummary;

    invoke-static {v0, p0}, Lcom/google/protobuf/o;->parseDelimitedFrom(Lcom/google/protobuf/o;Ljava/io/InputStream;)Lcom/google/protobuf/o;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyConversionSummary;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/j;)Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyConversionSummary;
    .locals 1

    .line 9
    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyConversionSummary;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyConversionSummary;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/o;->parseDelimitedFrom(Lcom/google/protobuf/o;Ljava/io/InputStream;Lcom/google/protobuf/j;)Lcom/google/protobuf/o;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyConversionSummary;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/f;)Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyConversionSummary;
    .locals 1

    .line 16
    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyConversionSummary;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyConversionSummary;

    invoke-static {v0, p0}, Lcom/google/protobuf/o;->parseFrom(Lcom/google/protobuf/o;Lcom/google/protobuf/f;)Lcom/google/protobuf/o;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyConversionSummary;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/f;Lcom/google/protobuf/j;)Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyConversionSummary;
    .locals 1

    .line 17
    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyConversionSummary;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyConversionSummary;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/o;->parseFrom(Lcom/google/protobuf/o;Lcom/google/protobuf/f;Lcom/google/protobuf/j;)Lcom/google/protobuf/o;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyConversionSummary;

    return-object p0
.end method

.method public static parseFrom(Lfx0;)Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyConversionSummary;
    .locals 1

    .line 10
    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyConversionSummary;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyConversionSummary;

    invoke-static {v0, p0}, Lcom/google/protobuf/o;->parseFrom(Lcom/google/protobuf/o;Lfx0;)Lcom/google/protobuf/o;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyConversionSummary;

    return-object p0
.end method

.method public static parseFrom(Lfx0;Lcom/google/protobuf/j;)Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyConversionSummary;
    .locals 1

    .line 11
    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyConversionSummary;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyConversionSummary;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/o;->parseFrom(Lcom/google/protobuf/o;Lfx0;Lcom/google/protobuf/j;)Lcom/google/protobuf/o;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyConversionSummary;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyConversionSummary;
    .locals 1

    .line 14
    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyConversionSummary;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyConversionSummary;

    invoke-static {v0, p0}, Lcom/google/protobuf/o;->parseFrom(Lcom/google/protobuf/o;Ljava/io/InputStream;)Lcom/google/protobuf/o;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyConversionSummary;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/j;)Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyConversionSummary;
    .locals 1

    .line 15
    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyConversionSummary;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyConversionSummary;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/o;->parseFrom(Lcom/google/protobuf/o;Ljava/io/InputStream;Lcom/google/protobuf/j;)Lcom/google/protobuf/o;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyConversionSummary;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyConversionSummary;
    .locals 1

    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyConversionSummary;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyConversionSummary;

    invoke-static {v0, p0}, Lcom/google/protobuf/o;->parseFrom(Lcom/google/protobuf/o;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/o;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyConversionSummary;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/j;)Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyConversionSummary;
    .locals 1

    .line 9
    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyConversionSummary;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyConversionSummary;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/o;->parseFrom(Lcom/google/protobuf/o;Ljava/nio/ByteBuffer;Lcom/google/protobuf/j;)Lcom/google/protobuf/o;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyConversionSummary;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyConversionSummary;
    .locals 1

    .line 12
    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyConversionSummary;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyConversionSummary;

    invoke-static {v0, p0}, Lcom/google/protobuf/o;->parseFrom(Lcom/google/protobuf/o;[B)Lcom/google/protobuf/o;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyConversionSummary;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/j;)Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyConversionSummary;
    .locals 1

    .line 13
    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyConversionSummary;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyConversionSummary;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/o;->parseFrom(Lcom/google/protobuf/o;[BLcom/google/protobuf/j;)Lcom/google/protobuf/o;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyConversionSummary;

    return-object p0
.end method

.method public static parser()Lx36;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lx36<",
            "Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyConversionSummary;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyConversionSummary;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyConversionSummary;

    invoke-virtual {v0}, Lcom/google/protobuf/o;->getParserForType()Lx36;

    move-result-object v0

    return-object v0
.end method

.method private setConversions(I)V
    .locals 0

    iput p1, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyConversionSummary;->conversions_:I

    return-void
.end method

.method private setStartOfDayMillis(J)V
    .locals 0

    iput-wide p1, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyConversionSummary;->startOfDayMillis_:J

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
    sget-object p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyConversionSummary;->PARSER:Lx36;

    if-nez p0, :cond_1

    const-class p1, Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyConversionSummary;

    monitor-enter p1

    :try_start_0
    sget-object p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyConversionSummary;->PARSER:Lx36;

    if-nez p0, :cond_0

    new-instance p0, Lcom/google/protobuf/o$b;

    sget-object p2, Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyConversionSummary;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyConversionSummary;

    invoke-direct {p0, p2}, Lcom/google/protobuf/o$b;-><init>(Lcom/google/protobuf/o;)V

    sput-object p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyConversionSummary;->PARSER:Lx36;

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
    sget-object p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyConversionSummary;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyConversionSummary;

    return-object p0

    :pswitch_4
    const-string p0, "startOfDayMillis_"

    const-string p1, "conversions_"

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u0002\u0002\u0004"

    sget-object p2, Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyConversionSummary;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyConversionSummary;

    invoke-static {p2, p1, p0}, Lcom/google/protobuf/o;->newMessageInfo(Lcom/google/protobuf/a0;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_5
    new-instance p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyConversionSummary$Builder;

    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyConversionSummary$Builder;-><init>(Lcom/google/firebase/inappmessaging/CommonTypesProto$1;)V

    return-object p0

    :pswitch_6
    new-instance p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyConversionSummary;

    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyConversionSummary;-><init>()V

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

.method public getConversions()I
    .locals 0

    iget p0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyConversionSummary;->conversions_:I

    return p0
.end method

.method public getStartOfDayMillis()J
    .locals 2

    iget-wide v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyConversionSummary;->startOfDayMillis_:J

    return-wide v0
.end method
