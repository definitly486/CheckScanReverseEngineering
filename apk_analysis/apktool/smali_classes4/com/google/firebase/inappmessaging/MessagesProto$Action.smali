.class public final Lcom/google/firebase/inappmessaging/MessagesProto$Action;
.super Lcom/google/protobuf/o;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/inappmessaging/MessagesProto$ActionOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/inappmessaging/MessagesProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Action"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/inappmessaging/MessagesProto$Action$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/o<",
        "Lcom/google/firebase/inappmessaging/MessagesProto$Action;",
        "Lcom/google/firebase/inappmessaging/MessagesProto$Action$Builder;",
        ">;",
        "Lcom/google/firebase/inappmessaging/MessagesProto$ActionOrBuilder;"
    }
.end annotation


# static fields
.field public static final ACTION_URL_FIELD_NUMBER:I = 0x1

.field private static final DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/MessagesProto$Action;

.field private static volatile PARSER:Lx36;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx36<",
            "Lcom/google/firebase/inappmessaging/MessagesProto$Action;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private actionUrl_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/firebase/inappmessaging/MessagesProto$Action;

    invoke-direct {v0}, Lcom/google/firebase/inappmessaging/MessagesProto$Action;-><init>()V

    sput-object v0, Lcom/google/firebase/inappmessaging/MessagesProto$Action;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/MessagesProto$Action;

    const-class v1, Lcom/google/firebase/inappmessaging/MessagesProto$Action;

    invoke-static {v1, v0}, Lcom/google/protobuf/o;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/o;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/o;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$Action;->actionUrl_:Ljava/lang/String;

    return-void
.end method

.method public static synthetic access$10500()Lcom/google/firebase/inappmessaging/MessagesProto$Action;
    .locals 1

    sget-object v0, Lcom/google/firebase/inappmessaging/MessagesProto$Action;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/MessagesProto$Action;

    return-object v0
.end method

.method public static synthetic access$10600(Lcom/google/firebase/inappmessaging/MessagesProto$Action;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/MessagesProto$Action;->setActionUrl(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$10700(Lcom/google/firebase/inappmessaging/MessagesProto$Action;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/MessagesProto$Action;->clearActionUrl()V

    return-void
.end method

.method public static synthetic access$10800(Lcom/google/firebase/inappmessaging/MessagesProto$Action;Lfx0;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/MessagesProto$Action;->setActionUrlBytes(Lfx0;)V

    return-void
.end method

.method private clearActionUrl()V
    .locals 1

    invoke-static {}, Lcom/google/firebase/inappmessaging/MessagesProto$Action;->getDefaultInstance()Lcom/google/firebase/inappmessaging/MessagesProto$Action;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/MessagesProto$Action;->getActionUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$Action;->actionUrl_:Ljava/lang/String;

    return-void
.end method

.method public static getDefaultInstance()Lcom/google/firebase/inappmessaging/MessagesProto$Action;
    .locals 1

    sget-object v0, Lcom/google/firebase/inappmessaging/MessagesProto$Action;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/MessagesProto$Action;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/firebase/inappmessaging/MessagesProto$Action$Builder;
    .locals 1

    sget-object v0, Lcom/google/firebase/inappmessaging/MessagesProto$Action;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/MessagesProto$Action;

    invoke-virtual {v0}, Lcom/google/protobuf/o;->createBuilder()Lcom/google/protobuf/o$a;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/MessagesProto$Action$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/firebase/inappmessaging/MessagesProto$Action;)Lcom/google/firebase/inappmessaging/MessagesProto$Action$Builder;
    .locals 1

    .line 9
    sget-object v0, Lcom/google/firebase/inappmessaging/MessagesProto$Action;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/MessagesProto$Action;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/o;->createBuilder(Lcom/google/protobuf/o;)Lcom/google/protobuf/o$a;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/MessagesProto$Action$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/firebase/inappmessaging/MessagesProto$Action;
    .locals 1

    sget-object v0, Lcom/google/firebase/inappmessaging/MessagesProto$Action;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/MessagesProto$Action;

    invoke-static {v0, p0}, Lcom/google/protobuf/o;->parseDelimitedFrom(Lcom/google/protobuf/o;Ljava/io/InputStream;)Lcom/google/protobuf/o;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/MessagesProto$Action;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/j;)Lcom/google/firebase/inappmessaging/MessagesProto$Action;
    .locals 1

    .line 9
    sget-object v0, Lcom/google/firebase/inappmessaging/MessagesProto$Action;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/MessagesProto$Action;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/o;->parseDelimitedFrom(Lcom/google/protobuf/o;Ljava/io/InputStream;Lcom/google/protobuf/j;)Lcom/google/protobuf/o;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/MessagesProto$Action;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/f;)Lcom/google/firebase/inappmessaging/MessagesProto$Action;
    .locals 1

    .line 16
    sget-object v0, Lcom/google/firebase/inappmessaging/MessagesProto$Action;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/MessagesProto$Action;

    invoke-static {v0, p0}, Lcom/google/protobuf/o;->parseFrom(Lcom/google/protobuf/o;Lcom/google/protobuf/f;)Lcom/google/protobuf/o;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/MessagesProto$Action;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/f;Lcom/google/protobuf/j;)Lcom/google/firebase/inappmessaging/MessagesProto$Action;
    .locals 1

    .line 17
    sget-object v0, Lcom/google/firebase/inappmessaging/MessagesProto$Action;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/MessagesProto$Action;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/o;->parseFrom(Lcom/google/protobuf/o;Lcom/google/protobuf/f;Lcom/google/protobuf/j;)Lcom/google/protobuf/o;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/MessagesProto$Action;

    return-object p0
.end method

.method public static parseFrom(Lfx0;)Lcom/google/firebase/inappmessaging/MessagesProto$Action;
    .locals 1

    .line 10
    sget-object v0, Lcom/google/firebase/inappmessaging/MessagesProto$Action;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/MessagesProto$Action;

    invoke-static {v0, p0}, Lcom/google/protobuf/o;->parseFrom(Lcom/google/protobuf/o;Lfx0;)Lcom/google/protobuf/o;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/MessagesProto$Action;

    return-object p0
.end method

.method public static parseFrom(Lfx0;Lcom/google/protobuf/j;)Lcom/google/firebase/inappmessaging/MessagesProto$Action;
    .locals 1

    .line 11
    sget-object v0, Lcom/google/firebase/inappmessaging/MessagesProto$Action;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/MessagesProto$Action;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/o;->parseFrom(Lcom/google/protobuf/o;Lfx0;Lcom/google/protobuf/j;)Lcom/google/protobuf/o;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/MessagesProto$Action;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/firebase/inappmessaging/MessagesProto$Action;
    .locals 1

    .line 14
    sget-object v0, Lcom/google/firebase/inappmessaging/MessagesProto$Action;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/MessagesProto$Action;

    invoke-static {v0, p0}, Lcom/google/protobuf/o;->parseFrom(Lcom/google/protobuf/o;Ljava/io/InputStream;)Lcom/google/protobuf/o;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/MessagesProto$Action;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/j;)Lcom/google/firebase/inappmessaging/MessagesProto$Action;
    .locals 1

    .line 15
    sget-object v0, Lcom/google/firebase/inappmessaging/MessagesProto$Action;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/MessagesProto$Action;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/o;->parseFrom(Lcom/google/protobuf/o;Ljava/io/InputStream;Lcom/google/protobuf/j;)Lcom/google/protobuf/o;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/MessagesProto$Action;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/firebase/inappmessaging/MessagesProto$Action;
    .locals 1

    sget-object v0, Lcom/google/firebase/inappmessaging/MessagesProto$Action;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/MessagesProto$Action;

    invoke-static {v0, p0}, Lcom/google/protobuf/o;->parseFrom(Lcom/google/protobuf/o;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/o;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/MessagesProto$Action;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/j;)Lcom/google/firebase/inappmessaging/MessagesProto$Action;
    .locals 1

    .line 9
    sget-object v0, Lcom/google/firebase/inappmessaging/MessagesProto$Action;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/MessagesProto$Action;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/o;->parseFrom(Lcom/google/protobuf/o;Ljava/nio/ByteBuffer;Lcom/google/protobuf/j;)Lcom/google/protobuf/o;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/MessagesProto$Action;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/firebase/inappmessaging/MessagesProto$Action;
    .locals 1

    .line 12
    sget-object v0, Lcom/google/firebase/inappmessaging/MessagesProto$Action;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/MessagesProto$Action;

    invoke-static {v0, p0}, Lcom/google/protobuf/o;->parseFrom(Lcom/google/protobuf/o;[B)Lcom/google/protobuf/o;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/MessagesProto$Action;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/j;)Lcom/google/firebase/inappmessaging/MessagesProto$Action;
    .locals 1

    .line 13
    sget-object v0, Lcom/google/firebase/inappmessaging/MessagesProto$Action;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/MessagesProto$Action;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/o;->parseFrom(Lcom/google/protobuf/o;[BLcom/google/protobuf/j;)Lcom/google/protobuf/o;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/MessagesProto$Action;

    return-object p0
.end method

.method public static parser()Lx36;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lx36<",
            "Lcom/google/firebase/inappmessaging/MessagesProto$Action;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/firebase/inappmessaging/MessagesProto$Action;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/MessagesProto$Action;

    invoke-virtual {v0}, Lcom/google/protobuf/o;->getParserForType()Lx36;

    move-result-object v0

    return-object v0
.end method

.method private setActionUrl(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/MessagesProto$Action;->actionUrl_:Ljava/lang/String;

    return-void
.end method

.method private setActionUrlBytes(Lfx0;)V
    .locals 0

    invoke-static {p1}, Lcom/google/protobuf/a;->checkByteStringIsUtf8(Lfx0;)V

    invoke-virtual {p1}, Lfx0;->p()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/MessagesProto$Action;->actionUrl_:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final dynamicMethod(Lcom/google/protobuf/o$f;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    sget-object p0, Lcom/google/firebase/inappmessaging/MessagesProto$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

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
    sget-object p0, Lcom/google/firebase/inappmessaging/MessagesProto$Action;->PARSER:Lx36;

    if-nez p0, :cond_1

    const-class p1, Lcom/google/firebase/inappmessaging/MessagesProto$Action;

    monitor-enter p1

    :try_start_0
    sget-object p0, Lcom/google/firebase/inappmessaging/MessagesProto$Action;->PARSER:Lx36;

    if-nez p0, :cond_0

    new-instance p0, Lcom/google/protobuf/o$b;

    sget-object p2, Lcom/google/firebase/inappmessaging/MessagesProto$Action;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/MessagesProto$Action;

    invoke-direct {p0, p2}, Lcom/google/protobuf/o$b;-><init>(Lcom/google/protobuf/o;)V

    sput-object p0, Lcom/google/firebase/inappmessaging/MessagesProto$Action;->PARSER:Lx36;

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
    sget-object p0, Lcom/google/firebase/inappmessaging/MessagesProto$Action;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/MessagesProto$Action;

    return-object p0

    :pswitch_4
    const-string p0, "actionUrl_"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0000\u0000\u0001\u0208"

    sget-object p2, Lcom/google/firebase/inappmessaging/MessagesProto$Action;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/MessagesProto$Action;

    invoke-static {p2, p1, p0}, Lcom/google/protobuf/o;->newMessageInfo(Lcom/google/protobuf/a0;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_5
    new-instance p0, Lcom/google/firebase/inappmessaging/MessagesProto$Action$Builder;

    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/MessagesProto$Action$Builder;-><init>(Lcom/google/firebase/inappmessaging/MessagesProto$1;)V

    return-object p0

    :pswitch_6
    new-instance p0, Lcom/google/firebase/inappmessaging/MessagesProto$Action;

    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/MessagesProto$Action;-><init>()V

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

.method public getActionUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$Action;->actionUrl_:Ljava/lang/String;

    return-object p0
.end method

.method public getActionUrlBytes()Lfx0;
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$Action;->actionUrl_:Ljava/lang/String;

    invoke-static {p0}, Lfx0;->f(Ljava/lang/String;)Lfx0$h;

    move-result-object p0

    return-object p0
.end method
