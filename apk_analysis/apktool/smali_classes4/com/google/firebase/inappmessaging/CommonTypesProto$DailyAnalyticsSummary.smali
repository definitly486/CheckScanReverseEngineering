.class public final Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;
.super Lcom/google/protobuf/o;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummaryOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/inappmessaging/CommonTypesProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DailyAnalyticsSummary"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/o<",
        "Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;",
        "Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary$Builder;",
        ">;",
        "Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummaryOrBuilder;"
    }
.end annotation


# static fields
.field public static final CLICKS_FIELD_NUMBER:I = 0x3

.field private static final DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;

.field public static final ERRORS_FIELD_NUMBER:I = 0x4

.field public static final IMPRESSIONS_FIELD_NUMBER:I = 0x2

.field private static volatile PARSER:Lx36; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx36<",
            "Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;",
            ">;"
        }
    .end annotation
.end field

.field public static final START_OF_DAY_MILLIS_FIELD_NUMBER:I = 0x1


# instance fields
.field private clicks_:I

.field private errors_:I

.field private impressions_:I

.field private startOfDayMillis_:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;

    invoke-direct {v0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;-><init>()V

    sput-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;

    const-class v1, Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;

    invoke-static {v1, v0}, Lcom/google/protobuf/o;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/o;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/protobuf/o;-><init>()V

    return-void
.end method

.method public static synthetic access$6700()Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;
    .locals 1

    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;

    return-object v0
.end method

.method public static synthetic access$6800(Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;->setStartOfDayMillis(J)V

    return-void
.end method

.method public static synthetic access$6900(Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;->clearStartOfDayMillis()V

    return-void
.end method

.method public static synthetic access$7000(Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;->setImpressions(I)V

    return-void
.end method

.method public static synthetic access$7100(Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;->clearImpressions()V

    return-void
.end method

.method public static synthetic access$7200(Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;->setClicks(I)V

    return-void
.end method

.method public static synthetic access$7300(Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;->clearClicks()V

    return-void
.end method

.method public static synthetic access$7400(Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;->setErrors(I)V

    return-void
.end method

.method public static synthetic access$7500(Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;->clearErrors()V

    return-void
.end method

.method private clearClicks()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;->clicks_:I

    return-void
.end method

.method private clearErrors()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;->errors_:I

    return-void
.end method

.method private clearImpressions()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;->impressions_:I

    return-void
.end method

.method private clearStartOfDayMillis()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;->startOfDayMillis_:J

    return-void
.end method

.method public static getDefaultInstance()Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;
    .locals 1

    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary$Builder;
    .locals 1

    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;

    invoke-virtual {v0}, Lcom/google/protobuf/o;->createBuilder()Lcom/google/protobuf/o$a;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;)Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary$Builder;
    .locals 1

    .line 9
    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/o;->createBuilder(Lcom/google/protobuf/o;)Lcom/google/protobuf/o$a;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;
    .locals 1

    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;

    invoke-static {v0, p0}, Lcom/google/protobuf/o;->parseDelimitedFrom(Lcom/google/protobuf/o;Ljava/io/InputStream;)Lcom/google/protobuf/o;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/j;)Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;
    .locals 1

    .line 9
    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/o;->parseDelimitedFrom(Lcom/google/protobuf/o;Ljava/io/InputStream;Lcom/google/protobuf/j;)Lcom/google/protobuf/o;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/f;)Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;
    .locals 1

    .line 16
    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;

    invoke-static {v0, p0}, Lcom/google/protobuf/o;->parseFrom(Lcom/google/protobuf/o;Lcom/google/protobuf/f;)Lcom/google/protobuf/o;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/f;Lcom/google/protobuf/j;)Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;
    .locals 1

    .line 17
    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/o;->parseFrom(Lcom/google/protobuf/o;Lcom/google/protobuf/f;Lcom/google/protobuf/j;)Lcom/google/protobuf/o;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;

    return-object p0
.end method

.method public static parseFrom(Lfx0;)Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;
    .locals 1

    .line 10
    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;

    invoke-static {v0, p0}, Lcom/google/protobuf/o;->parseFrom(Lcom/google/protobuf/o;Lfx0;)Lcom/google/protobuf/o;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;

    return-object p0
.end method

.method public static parseFrom(Lfx0;Lcom/google/protobuf/j;)Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;
    .locals 1

    .line 11
    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/o;->parseFrom(Lcom/google/protobuf/o;Lfx0;Lcom/google/protobuf/j;)Lcom/google/protobuf/o;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;
    .locals 1

    .line 14
    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;

    invoke-static {v0, p0}, Lcom/google/protobuf/o;->parseFrom(Lcom/google/protobuf/o;Ljava/io/InputStream;)Lcom/google/protobuf/o;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/j;)Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;
    .locals 1

    .line 15
    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/o;->parseFrom(Lcom/google/protobuf/o;Ljava/io/InputStream;Lcom/google/protobuf/j;)Lcom/google/protobuf/o;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;
    .locals 1

    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;

    invoke-static {v0, p0}, Lcom/google/protobuf/o;->parseFrom(Lcom/google/protobuf/o;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/o;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/j;)Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;
    .locals 1

    .line 9
    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/o;->parseFrom(Lcom/google/protobuf/o;Ljava/nio/ByteBuffer;Lcom/google/protobuf/j;)Lcom/google/protobuf/o;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;
    .locals 1

    .line 12
    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;

    invoke-static {v0, p0}, Lcom/google/protobuf/o;->parseFrom(Lcom/google/protobuf/o;[B)Lcom/google/protobuf/o;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/j;)Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;
    .locals 1

    .line 13
    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/o;->parseFrom(Lcom/google/protobuf/o;[BLcom/google/protobuf/j;)Lcom/google/protobuf/o;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;

    return-object p0
.end method

.method public static parser()Lx36;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lx36<",
            "Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;

    invoke-virtual {v0}, Lcom/google/protobuf/o;->getParserForType()Lx36;

    move-result-object v0

    return-object v0
.end method

.method private setClicks(I)V
    .locals 0

    iput p1, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;->clicks_:I

    return-void
.end method

.method private setErrors(I)V
    .locals 0

    iput p1, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;->errors_:I

    return-void
.end method

.method private setImpressions(I)V
    .locals 0

    iput p1, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;->impressions_:I

    return-void
.end method

.method private setStartOfDayMillis(J)V
    .locals 0

    iput-wide p1, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;->startOfDayMillis_:J

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
    sget-object p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;->PARSER:Lx36;

    if-nez p0, :cond_1

    const-class p1, Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;

    monitor-enter p1

    :try_start_0
    sget-object p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;->PARSER:Lx36;

    if-nez p0, :cond_0

    new-instance p0, Lcom/google/protobuf/o$b;

    sget-object p2, Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;

    invoke-direct {p0, p2}, Lcom/google/protobuf/o$b;-><init>(Lcom/google/protobuf/o;)V

    sput-object p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;->PARSER:Lx36;

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
    sget-object p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;

    return-object p0

    :pswitch_4
    const-string p0, "startOfDayMillis_"

    const-string p1, "impressions_"

    const-string p2, "clicks_"

    const-string p3, "errors_"

    filled-new-array {p0, p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "\u0000\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0000\u0000\u0001\u0002\u0002\u0004\u0003\u0004\u0004\u0004"

    sget-object p2, Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;

    invoke-static {p2, p1, p0}, Lcom/google/protobuf/o;->newMessageInfo(Lcom/google/protobuf/a0;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_5
    new-instance p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary$Builder;

    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary$Builder;-><init>(Lcom/google/firebase/inappmessaging/CommonTypesProto$1;)V

    return-object p0

    :pswitch_6
    new-instance p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;

    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;-><init>()V

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

.method public getClicks()I
    .locals 0

    iget p0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;->clicks_:I

    return p0
.end method

.method public getErrors()I
    .locals 0

    iget p0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;->errors_:I

    return p0
.end method

.method public getImpressions()I
    .locals 0

    iget p0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;->impressions_:I

    return p0
.end method

.method public getStartOfDayMillis()J
    .locals 2

    iget-wide v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$DailyAnalyticsSummary;->startOfDayMillis_:J

    return-wide v0
.end method
