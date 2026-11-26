.class public final Li21;
.super Lcom/google/protobuf/o;
.source "SourceFile"

# interfaces
.implements Lha5;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li21$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/o<",
        "Li21;",
        "Li21$b;",
        ">;",
        "Lha5;"
    }
.end annotation


# static fields
.field public static final CAMPAIGN_ID_FIELD_NUMBER:I = 0x1

.field private static final DEFAULT_INSTANCE:Li21;

.field public static final IMPRESSION_TIMESTAMP_MILLIS_FIELD_NUMBER:I = 0x2

.field private static volatile PARSER:Lx36;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx36<",
            "Li21;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private campaignId_:Ljava/lang/String;

.field private impressionTimestampMillis_:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Li21;

    invoke-direct {v0}, Li21;-><init>()V

    sput-object v0, Li21;->DEFAULT_INSTANCE:Li21;

    const-class v1, Li21;

    invoke-static {v1, v0}, Lcom/google/protobuf/o;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/o;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/o;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Li21;->campaignId_:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a()Li21;
    .locals 1

    sget-object v0, Li21;->DEFAULT_INSTANCE:Li21;

    return-object v0
.end method

.method public static b()Li21$b;
    .locals 1

    sget-object v0, Li21;->DEFAULT_INSTANCE:Li21;

    invoke-virtual {v0}, Lcom/google/protobuf/o;->createBuilder()Lcom/google/protobuf/o$a;

    move-result-object v0

    check-cast v0, Li21$b;

    return-object v0
.end method


# virtual methods
.method public final c(J)V
    .locals 0

    iput-wide p1, p0, Li21;->impressionTimestampMillis_:J

    return-void
.end method

.method public final dynamicMethod(Lcom/google/protobuf/o$f;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    sget-object p0, Li21$a;->a:[I

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
    sget-object p0, Li21;->PARSER:Lx36;

    if-nez p0, :cond_1

    const-class p1, Li21;

    monitor-enter p1

    :try_start_0
    sget-object p0, Li21;->PARSER:Lx36;

    if-nez p0, :cond_0

    new-instance p0, Lcom/google/protobuf/o$b;

    sget-object p2, Li21;->DEFAULT_INSTANCE:Li21;

    invoke-direct {p0, p2}, Lcom/google/protobuf/o$b;-><init>(Lcom/google/protobuf/o;)V

    sput-object p0, Li21;->PARSER:Lx36;

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
    sget-object p0, Li21;->DEFAULT_INSTANCE:Li21;

    return-object p0

    :pswitch_4
    const-string p0, "campaignId_"

    const-string p1, "impressionTimestampMillis_"

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u0208\u0002\u0002"

    sget-object p2, Li21;->DEFAULT_INSTANCE:Li21;

    invoke-static {p2, p1, p0}, Lcom/google/protobuf/o;->newMessageInfo(Lcom/google/protobuf/a0;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_5
    new-instance p0, Li21$b;

    invoke-direct {p0}, Li21$b;-><init>()V

    return-object p0

    :pswitch_6
    new-instance p0, Li21;

    invoke-direct {p0}, Li21;-><init>()V

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

    iget-object p0, p0, Li21;->campaignId_:Ljava/lang/String;

    return-object p0
.end method

.method public final setCampaignId(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Li21;->campaignId_:Ljava/lang/String;

    return-void
.end method
