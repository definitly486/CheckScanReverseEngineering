.class public final Le73;
.super Lcom/google/protobuf/o;
.source "SourceFile"

# interfaces
.implements Lha5;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le73$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/o<",
        "Le73;",
        "Le73$b;",
        ">;",
        "Lha5;"
    }
.end annotation


# static fields
.field public static final ALREADY_SEEN_CAMPAIGNS_FIELD_NUMBER:I = 0x3

.field public static final CLIENT_SIGNALS_FIELD_NUMBER:I = 0x4

.field private static final DEFAULT_INSTANCE:Le73;

.field private static volatile PARSER:Lx36; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx36<",
            "Le73;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROJECT_NUMBER_FIELD_NUMBER:I = 0x1

.field public static final REQUESTING_CLIENT_APP_FIELD_NUMBER:I = 0x2


# instance fields
.field private alreadySeenCampaigns_:Lcom/google/protobuf/q$j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/q$j<",
            "Li21;",
            ">;"
        }
    .end annotation
.end field

.field private bitField0_:I

.field private clientSignals_:Lbm1;

.field private projectNumber_:Ljava/lang/String;

.field private requestingClientApp_:Lql1;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Le73;

    invoke-direct {v0}, Le73;-><init>()V

    sput-object v0, Le73;->DEFAULT_INSTANCE:Le73;

    const-class v1, Le73;

    invoke-static {v1, v0}, Lcom/google/protobuf/o;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/o;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/o;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Le73;->projectNumber_:Ljava/lang/String;

    invoke-static {}, Lcom/google/protobuf/o;->emptyProtobufList()Lcom/google/protobuf/q$j;

    move-result-object v0

    iput-object v0, p0, Le73;->alreadySeenCampaigns_:Lcom/google/protobuf/q$j;

    return-void
.end method

.method public static synthetic a()Le73;
    .locals 1

    sget-object v0, Le73;->DEFAULT_INSTANCE:Le73;

    return-object v0
.end method

.method public static c()Le73;
    .locals 1

    sget-object v0, Le73;->DEFAULT_INSTANCE:Le73;

    return-object v0
.end method

.method public static d()Le73$b;
    .locals 1

    sget-object v0, Le73;->DEFAULT_INSTANCE:Le73;

    invoke-virtual {v0}, Lcom/google/protobuf/o;->createBuilder()Lcom/google/protobuf/o$a;

    move-result-object v0

    check-cast v0, Le73$b;

    return-object v0
.end method


# virtual methods
.method public final b(Ljava/lang/Iterable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Li21;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Le73;->alreadySeenCampaigns_:Lcom/google/protobuf/q$j;

    invoke-interface {v0}, Lcom/google/protobuf/q$j;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/google/protobuf/o;->mutableCopy(Lcom/google/protobuf/q$j;)Lcom/google/protobuf/q$j;

    move-result-object v0

    iput-object v0, p0, Le73;->alreadySeenCampaigns_:Lcom/google/protobuf/q$j;

    :cond_0
    iget-object p0, p0, Le73;->alreadySeenCampaigns_:Lcom/google/protobuf/q$j;

    invoke-static {p1, p0}, Lcom/google/protobuf/a;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method public final dynamicMethod(Lcom/google/protobuf/o$f;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object p0, Le73$a;->a:[I

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
    sget-object p0, Le73;->PARSER:Lx36;

    if-nez p0, :cond_1

    const-class p1, Le73;

    monitor-enter p1

    :try_start_0
    sget-object p0, Le73;->PARSER:Lx36;

    if-nez p0, :cond_0

    new-instance p0, Lcom/google/protobuf/o$b;

    sget-object p2, Le73;->DEFAULT_INSTANCE:Le73;

    invoke-direct {p0, p2}, Lcom/google/protobuf/o$b;-><init>(Lcom/google/protobuf/o;)V

    sput-object p0, Le73;->PARSER:Lx36;

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
    sget-object p0, Le73;->DEFAULT_INSTANCE:Le73;

    return-object p0

    :pswitch_4
    const-string v0, "bitField0_"

    const-string v1, "projectNumber_"

    const-string v2, "requestingClientApp_"

    const-string v3, "alreadySeenCampaigns_"

    const-class v4, Li21;

    const-string v5, "clientSignals_"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "\u0000\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0001\u0000\u0001\u0208\u0002\u1009\u0000\u0003\u001b\u0004\u1009\u0001"

    sget-object p2, Le73;->DEFAULT_INSTANCE:Le73;

    invoke-static {p2, p1, p0}, Lcom/google/protobuf/o;->newMessageInfo(Lcom/google/protobuf/a0;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_5
    new-instance p0, Le73$b;

    invoke-direct {p0}, Le73$b;-><init>()V

    return-object p0

    :pswitch_6
    new-instance p0, Le73;

    invoke-direct {p0}, Le73;-><init>()V

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

.method public final e(Lbm1;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Le73;->clientSignals_:Lbm1;

    iget p1, p0, Le73;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Le73;->bitField0_:I

    return-void
.end method

.method public final f(Lql1;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Le73;->requestingClientApp_:Lql1;

    iget p1, p0, Le73;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Le73;->bitField0_:I

    return-void
.end method

.method public final setProjectNumber(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Le73;->projectNumber_:Ljava/lang/String;

    return-void
.end method
