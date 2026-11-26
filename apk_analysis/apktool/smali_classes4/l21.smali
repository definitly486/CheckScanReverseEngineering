.class public final Ll21;
.super Lcom/google/protobuf/o;
.source "SourceFile"

# interfaces
.implements Lha5;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ll21$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/o<",
        "Ll21;",
        "Ll21$a;",
        ">;",
        "Lha5;"
    }
.end annotation


# static fields
.field public static final CAMPAIGN_END_TIME_MILLIS_FIELD_NUMBER:I = 0x4

.field public static final CAMPAIGN_ID_FIELD_NUMBER:I = 0x1

.field public static final CAMPAIGN_NAME_FIELD_NUMBER:I = 0x5

.field public static final CAMPAIGN_START_TIME_MILLIS_FIELD_NUMBER:I = 0x3

.field private static final DEFAULT_INSTANCE:Ll21;

.field public static final EXPERIMENT_PAYLOAD_FIELD_NUMBER:I = 0x2

.field private static volatile PARSER:Lx36;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx36<",
            "Ll21;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private bitField0_:I

.field private campaignEndTimeMillis_:J

.field private campaignId_:Ljava/lang/String;

.field private campaignName_:Ljava/lang/String;

.field private campaignStartTimeMillis_:J

.field private experimentPayload_:Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ll21;

    invoke-direct {v0}, Ll21;-><init>()V

    sput-object v0, Ll21;->DEFAULT_INSTANCE:Ll21;

    const-class v1, Ll21;

    invoke-static {v1, v0}, Lcom/google/protobuf/o;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/o;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/o;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Ll21;->campaignId_:Ljava/lang/String;

    iput-object v0, p0, Ll21;->campaignName_:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a()Ll21;
    .locals 1

    sget-object v0, Ll21;->DEFAULT_INSTANCE:Ll21;

    return-object v0
.end method

.method public static e()Ll21;
    .locals 1

    sget-object v0, Ll21;->DEFAULT_INSTANCE:Ll21;

    return-object v0
.end method


# virtual methods
.method public final b()J
    .locals 2

    iget-wide v0, p0, Ll21;->campaignEndTimeMillis_:J

    return-wide v0
.end method

.method public final c()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Ll21;->campaignName_:Ljava/lang/String;

    return-object p0
.end method

.method public final d()J
    .locals 2

    iget-wide v0, p0, Ll21;->campaignStartTimeMillis_:J

    return-wide v0
.end method

.method public final dynamicMethod(Lcom/google/protobuf/o$f;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object p0, Lk21;->a:[I

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
    sget-object p0, Ll21;->PARSER:Lx36;

    if-nez p0, :cond_1

    const-class p1, Ll21;

    monitor-enter p1

    :try_start_0
    sget-object p0, Ll21;->PARSER:Lx36;

    if-nez p0, :cond_0

    new-instance p0, Lcom/google/protobuf/o$b;

    sget-object p2, Ll21;->DEFAULT_INSTANCE:Ll21;

    invoke-direct {p0, p2}, Lcom/google/protobuf/o$b;-><init>(Lcom/google/protobuf/o;)V

    sput-object p0, Ll21;->PARSER:Lx36;

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
    sget-object p0, Ll21;->DEFAULT_INSTANCE:Ll21;

    return-object p0

    :pswitch_4
    const-string v0, "bitField0_"

    const-string v1, "campaignId_"

    const-string v2, "experimentPayload_"

    const-string v3, "campaignStartTimeMillis_"

    const-string v4, "campaignEndTimeMillis_"

    const-string v5, "campaignName_"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "\u0000\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0000\u0000\u0001\u0208\u0002\u1009\u0000\u0003\u0002\u0004\u0002\u0005\u0208"

    sget-object p2, Ll21;->DEFAULT_INSTANCE:Ll21;

    invoke-static {p2, p1, p0}, Lcom/google/protobuf/o;->newMessageInfo(Lcom/google/protobuf/a0;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_5
    new-instance p0, Ll21$a;

    invoke-static {}, Ll21;->a()Ll21;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/protobuf/o$a;-><init>(Lcom/google/protobuf/o;)V

    return-object p0

    :pswitch_6
    new-instance p0, Ll21;

    invoke-direct {p0}, Ll21;-><init>()V

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

.method public final f()Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;
    .locals 0

    iget-object p0, p0, Ll21;->experimentPayload_:Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;

    if-nez p0, :cond_0

    invoke-static {}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->getDefaultInstance()Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public final getCampaignId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Ll21;->campaignId_:Ljava/lang/String;

    return-object p0
.end method
