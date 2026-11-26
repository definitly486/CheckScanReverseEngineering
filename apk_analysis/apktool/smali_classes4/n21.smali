.class public final Ln21;
.super Lcom/google/protobuf/o;
.source "SourceFile"

# interfaces
.implements Lha5;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln21$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/o<",
        "Ln21;",
        "Ln21$a;",
        ">;",
        "Lha5;"
    }
.end annotation


# static fields
.field public static final CAMPAIGN_END_TIME_MILLIS_FIELD_NUMBER:I = 0x4

.field public static final CAMPAIGN_ID_FIELD_NUMBER:I = 0x1

.field public static final CAMPAIGN_NAME_FIELD_NUMBER:I = 0x5

.field public static final CAMPAIGN_START_TIME_MILLIS_FIELD_NUMBER:I = 0x3

.field private static final DEFAULT_INSTANCE:Ln21;

.field public static final EXPERIMENTAL_CAMPAIGN_ID_FIELD_NUMBER:I = 0x2

.field private static volatile PARSER:Lx36;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx36<",
            "Ln21;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private campaignEndTimeMillis_:J

.field private campaignId_:Ljava/lang/String;

.field private campaignName_:Ljava/lang/String;

.field private campaignStartTimeMillis_:J

.field private experimentalCampaignId_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ln21;

    invoke-direct {v0}, Ln21;-><init>()V

    sput-object v0, Ln21;->DEFAULT_INSTANCE:Ln21;

    const-class v1, Ln21;

    invoke-static {v1, v0}, Lcom/google/protobuf/o;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/o;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/o;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Ln21;->campaignId_:Ljava/lang/String;

    iput-object v0, p0, Ln21;->experimentalCampaignId_:Ljava/lang/String;

    iput-object v0, p0, Ln21;->campaignName_:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a()Ln21;
    .locals 1

    sget-object v0, Ln21;->DEFAULT_INSTANCE:Ln21;

    return-object v0
.end method

.method public static e()Ln21;
    .locals 1

    sget-object v0, Ln21;->DEFAULT_INSTANCE:Ln21;

    return-object v0
.end method


# virtual methods
.method public final b()J
    .locals 2

    iget-wide v0, p0, Ln21;->campaignEndTimeMillis_:J

    return-wide v0
.end method

.method public final c()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Ln21;->campaignName_:Ljava/lang/String;

    return-object p0
.end method

.method public final d()J
    .locals 2

    iget-wide v0, p0, Ln21;->campaignStartTimeMillis_:J

    return-wide v0
.end method

.method public final dynamicMethod(Lcom/google/protobuf/o$f;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

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
    sget-object p0, Ln21;->PARSER:Lx36;

    if-nez p0, :cond_1

    const-class p1, Ln21;

    monitor-enter p1

    :try_start_0
    sget-object p0, Ln21;->PARSER:Lx36;

    if-nez p0, :cond_0

    new-instance p0, Lcom/google/protobuf/o$b;

    sget-object p2, Ln21;->DEFAULT_INSTANCE:Ln21;

    invoke-direct {p0, p2}, Lcom/google/protobuf/o$b;-><init>(Lcom/google/protobuf/o;)V

    sput-object p0, Ln21;->PARSER:Lx36;

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
    sget-object p0, Ln21;->DEFAULT_INSTANCE:Ln21;

    return-object p0

    :pswitch_4
    const-string p0, "campaignId_"

    const-string p1, "experimentalCampaignId_"

    const-string p2, "campaignStartTimeMillis_"

    const-string p3, "campaignEndTimeMillis_"

    const-string v0, "campaignName_"

    filled-new-array {p0, p1, p2, p3, v0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "\u0000\u0005\u0000\u0000\u0001\u0005\u0005\u0000\u0000\u0000\u0001\u0208\u0002\u0208\u0003\u0002\u0004\u0002\u0005\u0208"

    sget-object p2, Ln21;->DEFAULT_INSTANCE:Ln21;

    invoke-static {p2, p1, p0}, Lcom/google/protobuf/o;->newMessageInfo(Lcom/google/protobuf/a0;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_5
    new-instance p0, Ln21$a;

    invoke-static {}, Ln21;->a()Ln21;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/protobuf/o$a;-><init>(Lcom/google/protobuf/o;)V

    return-object p0

    :pswitch_6
    new-instance p0, Ln21;

    invoke-direct {p0}, Ln21;-><init>()V

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

.method public final getCampaignId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Ln21;->campaignId_:Ljava/lang/String;

    return-object p0
.end method
