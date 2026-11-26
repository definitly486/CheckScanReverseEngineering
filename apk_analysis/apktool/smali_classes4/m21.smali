.class public final Lm21;
.super Lcom/google/protobuf/o;
.source "SourceFile"

# interfaces
.implements Lha5;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lm21$c;,
        Lm21$a;,
        Lm21$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/o<",
        "Lm21;",
        "Lm21$a;",
        ">;",
        "Lha5;"
    }
.end annotation


# static fields
.field public static final CONTENT_FIELD_NUMBER:I = 0x3

.field public static final DATA_BUNDLE_FIELD_NUMBER:I = 0x8

.field private static final DEFAULT_INSTANCE:Lm21;

.field public static final EXPERIMENTAL_PAYLOAD_FIELD_NUMBER:I = 0x2

.field public static final IS_TEST_CAMPAIGN_FIELD_NUMBER:I = 0x7

.field private static volatile PARSER:Lx36; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx36<",
            "Lm21;",
            ">;"
        }
    .end annotation
.end field

.field public static final PRIORITY_FIELD_NUMBER:I = 0x4

.field public static final TRIGGERING_CONDITIONS_FIELD_NUMBER:I = 0x5

.field public static final VANILLA_PAYLOAD_FIELD_NUMBER:I = 0x1


# instance fields
.field private bitField0_:I

.field private content_:Lcom/google/firebase/inappmessaging/MessagesProto$Content;

.field private dataBundle_:Lcom/google/protobuf/x;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/x<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private isTestCampaign_:Z

.field private payloadCase_:I

.field private payload_:Ljava/lang/Object;

.field private priority_:Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;

.field private triggeringConditions_:Lcom/google/protobuf/q$j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/q$j<",
            "Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lm21;

    invoke-direct {v0}, Lm21;-><init>()V

    sput-object v0, Lm21;->DEFAULT_INSTANCE:Lm21;

    const-class v1, Lm21;

    invoke-static {v1, v0}, Lcom/google/protobuf/o;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/o;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/o;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lm21;->payloadCase_:I

    sget-object v0, Lcom/google/protobuf/x;->c:Lcom/google/protobuf/x;

    iput-object v0, p0, Lm21;->dataBundle_:Lcom/google/protobuf/x;

    invoke-static {}, Lcom/google/protobuf/o;->emptyProtobufList()Lcom/google/protobuf/q$j;

    move-result-object v0

    iput-object v0, p0, Lm21;->triggeringConditions_:Lcom/google/protobuf/q$j;

    return-void
.end method

.method public static synthetic a()Lm21;
    .locals 1

    sget-object v0, Lm21;->DEFAULT_INSTANCE:Lm21;

    return-object v0
.end method


# virtual methods
.method public final b()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lm21;->dataBundle_:Lcom/google/protobuf/x;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public final c()Ll21;
    .locals 2

    iget v0, p0, Lm21;->payloadCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lm21;->payload_:Ljava/lang/Object;

    check-cast p0, Ll21;

    return-object p0

    :cond_0
    invoke-static {}, Ll21;->e()Ll21;

    move-result-object p0

    return-object p0
.end method

.method public final d()Z
    .locals 0

    iget-boolean p0, p0, Lm21;->isTestCampaign_:Z

    return p0
.end method

.method public final dynamicMethod(Lcom/google/protobuf/o$f;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

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
    sget-object p0, Lm21;->PARSER:Lx36;

    if-nez p0, :cond_1

    const-class p1, Lm21;

    monitor-enter p1

    :try_start_0
    sget-object p0, Lm21;->PARSER:Lx36;

    if-nez p0, :cond_0

    new-instance p0, Lcom/google/protobuf/o$b;

    sget-object p2, Lm21;->DEFAULT_INSTANCE:Lm21;

    invoke-direct {p0, p2}, Lcom/google/protobuf/o$b;-><init>(Lcom/google/protobuf/o;)V

    sput-object p0, Lm21;->PARSER:Lx36;

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
    sget-object p0, Lm21;->DEFAULT_INSTANCE:Lm21;

    return-object p0

    :pswitch_4
    const-string v0, "payload_"

    const-string v1, "payloadCase_"

    const-string v2, "bitField0_"

    const-class v3, Ln21;

    const-class v4, Ll21;

    const-string v5, "content_"

    const-string v6, "priority_"

    const-string v7, "triggeringConditions_"

    const-class v8, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;

    const-string v9, "isTestCampaign_"

    const-string v10, "dataBundle_"

    sget-object v11, Lm21$b;->a:Lcom/google/protobuf/w;

    filled-new-array/range {v0 .. v11}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "\u0000\u0007\u0001\u0001\u0001\u0008\u0007\u0001\u0001\u0000\u0001<\u0000\u0002<\u0000\u0003\u1009\u0000\u0004\u1009\u0001\u0005\u001b\u0007\u0007\u00082"

    sget-object p2, Lm21;->DEFAULT_INSTANCE:Lm21;

    invoke-static {p2, p1, p0}, Lcom/google/protobuf/o;->newMessageInfo(Lcom/google/protobuf/a0;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_5
    new-instance p0, Lm21$a;

    invoke-static {}, Lm21;->a()Lm21;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/protobuf/o$a;-><init>(Lcom/google/protobuf/o;)V

    return-object p0

    :pswitch_6
    new-instance p0, Lm21;

    invoke-direct {p0}, Lm21;-><init>()V

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

.method public final e()Lm21$c;
    .locals 1

    iget p0, p0, Lm21;->payloadCase_:I

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object p0, Lm21$c;->EXPERIMENTAL_PAYLOAD:Lm21$c;

    return-object p0

    :cond_1
    sget-object p0, Lm21$c;->VANILLA_PAYLOAD:Lm21$c;

    return-object p0

    :cond_2
    sget-object p0, Lm21$c;->PAYLOAD_NOT_SET:Lm21$c;

    return-object p0
.end method

.method public final f()Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;
    .locals 0

    iget-object p0, p0, Lm21;->priority_:Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;

    if-nez p0, :cond_0

    invoke-static {}, Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;->getDefaultInstance()Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public final g()Lcom/google/protobuf/q$j;
    .locals 0

    iget-object p0, p0, Lm21;->triggeringConditions_:Lcom/google/protobuf/q$j;

    return-object p0
.end method

.method public final getContent()Lcom/google/firebase/inappmessaging/MessagesProto$Content;
    .locals 0

    iget-object p0, p0, Lm21;->content_:Lcom/google/firebase/inappmessaging/MessagesProto$Content;

    if-nez p0, :cond_0

    invoke-static {}, Lcom/google/firebase/inappmessaging/MessagesProto$Content;->getDefaultInstance()Lcom/google/firebase/inappmessaging/MessagesProto$Content;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public final h()Ln21;
    .locals 2

    iget v0, p0, Lm21;->payloadCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lm21;->payload_:Ljava/lang/Object;

    check-cast p0, Ln21;

    return-object p0

    :cond_0
    invoke-static {}, Ln21;->e()Ln21;

    move-result-object p0

    return-object p0
.end method
