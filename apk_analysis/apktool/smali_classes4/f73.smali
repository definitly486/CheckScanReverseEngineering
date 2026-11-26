.class public final Lf73;
.super Lcom/google/protobuf/o;
.source "SourceFile"

# interfaces
.implements Lha5;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf73$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/o<",
        "Lf73;",
        "Lf73$b;",
        ">;",
        "Lha5;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lf73;

.field public static final EXPIRATION_EPOCH_TIMESTAMP_MILLIS_FIELD_NUMBER:I = 0x2

.field public static final MESSAGES_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lx36;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx36<",
            "Lf73;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private expirationEpochTimestampMillis_:J

.field private messages_:Lcom/google/protobuf/q$j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/q$j<",
            "Lm21;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lf73;

    invoke-direct {v0}, Lf73;-><init>()V

    sput-object v0, Lf73;->DEFAULT_INSTANCE:Lf73;

    const-class v1, Lf73;

    invoke-static {v1, v0}, Lcom/google/protobuf/o;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/o;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/o;-><init>()V

    invoke-static {}, Lcom/google/protobuf/o;->emptyProtobufList()Lcom/google/protobuf/q$j;

    move-result-object v0

    iput-object v0, p0, Lf73;->messages_:Lcom/google/protobuf/q$j;

    return-void
.end method

.method public static synthetic a()Lf73;
    .locals 1

    sget-object v0, Lf73;->DEFAULT_INSTANCE:Lf73;

    return-object v0
.end method

.method public static b()Lf73;
    .locals 1

    sget-object v0, Lf73;->DEFAULT_INSTANCE:Lf73;

    return-object v0
.end method

.method public static e()Lf73$b;
    .locals 1

    sget-object v0, Lf73;->DEFAULT_INSTANCE:Lf73;

    invoke-virtual {v0}, Lcom/google/protobuf/o;->createBuilder()Lcom/google/protobuf/o$a;

    move-result-object v0

    check-cast v0, Lf73$b;

    return-object v0
.end method

.method public static parser()Lx36;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lx36<",
            "Lf73;",
            ">;"
        }
    .end annotation

    sget-object v0, Lf73;->DEFAULT_INSTANCE:Lf73;

    invoke-virtual {v0}, Lcom/google/protobuf/o;->getParserForType()Lx36;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final c()J
    .locals 2

    iget-wide v0, p0, Lf73;->expirationEpochTimestampMillis_:J

    return-wide v0
.end method

.method public final d()Lcom/google/protobuf/q$j;
    .locals 0

    iget-object p0, p0, Lf73;->messages_:Lcom/google/protobuf/q$j;

    return-object p0
.end method

.method public final dynamicMethod(Lcom/google/protobuf/o$f;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    sget-object p0, Lf73$a;->a:[I

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
    sget-object p0, Lf73;->PARSER:Lx36;

    if-nez p0, :cond_1

    const-class p1, Lf73;

    monitor-enter p1

    :try_start_0
    sget-object p0, Lf73;->PARSER:Lx36;

    if-nez p0, :cond_0

    new-instance p0, Lcom/google/protobuf/o$b;

    sget-object p2, Lf73;->DEFAULT_INSTANCE:Lf73;

    invoke-direct {p0, p2}, Lcom/google/protobuf/o$b;-><init>(Lcom/google/protobuf/o;)V

    sput-object p0, Lf73;->PARSER:Lx36;

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
    sget-object p0, Lf73;->DEFAULT_INSTANCE:Lf73;

    return-object p0

    :pswitch_4
    const-string p0, "messages_"

    const-class p1, Lm21;

    const-string p2, "expirationEpochTimestampMillis_"

    filled-new-array {p0, p1, p2}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0001\u0000\u0001\u001b\u0002\u0002"

    sget-object p2, Lf73;->DEFAULT_INSTANCE:Lf73;

    invoke-static {p2, p1, p0}, Lcom/google/protobuf/o;->newMessageInfo(Lcom/google/protobuf/a0;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_5
    new-instance p0, Lf73$b;

    invoke-direct {p0}, Lf73$b;-><init>()V

    return-object p0

    :pswitch_6
    new-instance p0, Lf73;

    invoke-direct {p0}, Lf73;-><init>()V

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

.method public final f(J)V
    .locals 0

    iput-wide p1, p0, Lf73;->expirationEpochTimestampMillis_:J

    return-void
.end method
