.class public final Lcom/google/firebase/inappmessaging/MessagesProto$Button;
.super Lcom/google/protobuf/o;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/inappmessaging/MessagesProto$ButtonOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/inappmessaging/MessagesProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Button"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/inappmessaging/MessagesProto$Button$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/o<",
        "Lcom/google/firebase/inappmessaging/MessagesProto$Button;",
        "Lcom/google/firebase/inappmessaging/MessagesProto$Button$Builder;",
        ">;",
        "Lcom/google/firebase/inappmessaging/MessagesProto$ButtonOrBuilder;"
    }
.end annotation


# static fields
.field public static final BUTTON_HEX_COLOR_FIELD_NUMBER:I = 0x2

.field private static final DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/MessagesProto$Button;

.field private static volatile PARSER:Lx36; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx36<",
            "Lcom/google/firebase/inappmessaging/MessagesProto$Button;",
            ">;"
        }
    .end annotation
.end field

.field public static final TEXT_FIELD_NUMBER:I = 0x1


# instance fields
.field private bitField0_:I

.field private buttonHexColor_:Ljava/lang/String;

.field private text_:Lcom/google/firebase/inappmessaging/MessagesProto$Text;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/firebase/inappmessaging/MessagesProto$Button;

    invoke-direct {v0}, Lcom/google/firebase/inappmessaging/MessagesProto$Button;-><init>()V

    sput-object v0, Lcom/google/firebase/inappmessaging/MessagesProto$Button;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/MessagesProto$Button;

    const-class v1, Lcom/google/firebase/inappmessaging/MessagesProto$Button;

    invoke-static {v1, v0}, Lcom/google/protobuf/o;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/o;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/o;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$Button;->buttonHexColor_:Ljava/lang/String;

    return-void
.end method

.method public static synthetic access$10000(Lcom/google/firebase/inappmessaging/MessagesProto$Button;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/MessagesProto$Button;->clearText()V

    return-void
.end method

.method public static synthetic access$10100(Lcom/google/firebase/inappmessaging/MessagesProto$Button;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/MessagesProto$Button;->setButtonHexColor(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$10200(Lcom/google/firebase/inappmessaging/MessagesProto$Button;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/MessagesProto$Button;->clearButtonHexColor()V

    return-void
.end method

.method public static synthetic access$10300(Lcom/google/firebase/inappmessaging/MessagesProto$Button;Lfx0;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/MessagesProto$Button;->setButtonHexColorBytes(Lfx0;)V

    return-void
.end method

.method public static synthetic access$9700()Lcom/google/firebase/inappmessaging/MessagesProto$Button;
    .locals 1

    sget-object v0, Lcom/google/firebase/inappmessaging/MessagesProto$Button;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/MessagesProto$Button;

    return-object v0
.end method

.method public static synthetic access$9800(Lcom/google/firebase/inappmessaging/MessagesProto$Button;Lcom/google/firebase/inappmessaging/MessagesProto$Text;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/MessagesProto$Button;->setText(Lcom/google/firebase/inappmessaging/MessagesProto$Text;)V

    return-void
.end method

.method public static synthetic access$9900(Lcom/google/firebase/inappmessaging/MessagesProto$Button;Lcom/google/firebase/inappmessaging/MessagesProto$Text;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/MessagesProto$Button;->mergeText(Lcom/google/firebase/inappmessaging/MessagesProto$Text;)V

    return-void
.end method

.method private clearButtonHexColor()V
    .locals 1

    invoke-static {}, Lcom/google/firebase/inappmessaging/MessagesProto$Button;->getDefaultInstance()Lcom/google/firebase/inappmessaging/MessagesProto$Button;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/MessagesProto$Button;->getButtonHexColor()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$Button;->buttonHexColor_:Ljava/lang/String;

    return-void
.end method

.method private clearText()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$Button;->text_:Lcom/google/firebase/inappmessaging/MessagesProto$Text;

    iget v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$Button;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$Button;->bitField0_:I

    return-void
.end method

.method public static getDefaultInstance()Lcom/google/firebase/inappmessaging/MessagesProto$Button;
    .locals 1

    sget-object v0, Lcom/google/firebase/inappmessaging/MessagesProto$Button;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/MessagesProto$Button;

    return-object v0
.end method

.method private mergeText(Lcom/google/firebase/inappmessaging/MessagesProto$Text;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$Button;->text_:Lcom/google/firebase/inappmessaging/MessagesProto$Text;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/firebase/inappmessaging/MessagesProto$Text;->getDefaultInstance()Lcom/google/firebase/inappmessaging/MessagesProto$Text;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$Button;->text_:Lcom/google/firebase/inappmessaging/MessagesProto$Text;

    invoke-static {v0}, Lcom/google/firebase/inappmessaging/MessagesProto$Text;->newBuilder(Lcom/google/firebase/inappmessaging/MessagesProto$Text;)Lcom/google/firebase/inappmessaging/MessagesProto$Text$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/o$a;->mergeFrom(Lcom/google/protobuf/o;)Lcom/google/protobuf/o$a;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/inappmessaging/MessagesProto$Text$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/o$a;->buildPartial()Lcom/google/protobuf/o;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/inappmessaging/MessagesProto$Text;

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/MessagesProto$Button;->text_:Lcom/google/firebase/inappmessaging/MessagesProto$Text;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/google/firebase/inappmessaging/MessagesProto$Button;->text_:Lcom/google/firebase/inappmessaging/MessagesProto$Text;

    :goto_0
    iget p1, p0, Lcom/google/firebase/inappmessaging/MessagesProto$Button;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/firebase/inappmessaging/MessagesProto$Button;->bitField0_:I

    return-void
.end method

.method public static newBuilder()Lcom/google/firebase/inappmessaging/MessagesProto$Button$Builder;
    .locals 1

    sget-object v0, Lcom/google/firebase/inappmessaging/MessagesProto$Button;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/MessagesProto$Button;

    invoke-virtual {v0}, Lcom/google/protobuf/o;->createBuilder()Lcom/google/protobuf/o$a;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/MessagesProto$Button$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/firebase/inappmessaging/MessagesProto$Button;)Lcom/google/firebase/inappmessaging/MessagesProto$Button$Builder;
    .locals 1

    .line 9
    sget-object v0, Lcom/google/firebase/inappmessaging/MessagesProto$Button;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/MessagesProto$Button;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/o;->createBuilder(Lcom/google/protobuf/o;)Lcom/google/protobuf/o$a;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/MessagesProto$Button$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/firebase/inappmessaging/MessagesProto$Button;
    .locals 1

    sget-object v0, Lcom/google/firebase/inappmessaging/MessagesProto$Button;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/MessagesProto$Button;

    invoke-static {v0, p0}, Lcom/google/protobuf/o;->parseDelimitedFrom(Lcom/google/protobuf/o;Ljava/io/InputStream;)Lcom/google/protobuf/o;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/MessagesProto$Button;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/j;)Lcom/google/firebase/inappmessaging/MessagesProto$Button;
    .locals 1

    .line 9
    sget-object v0, Lcom/google/firebase/inappmessaging/MessagesProto$Button;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/MessagesProto$Button;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/o;->parseDelimitedFrom(Lcom/google/protobuf/o;Ljava/io/InputStream;Lcom/google/protobuf/j;)Lcom/google/protobuf/o;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/MessagesProto$Button;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/f;)Lcom/google/firebase/inappmessaging/MessagesProto$Button;
    .locals 1

    .line 16
    sget-object v0, Lcom/google/firebase/inappmessaging/MessagesProto$Button;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/MessagesProto$Button;

    invoke-static {v0, p0}, Lcom/google/protobuf/o;->parseFrom(Lcom/google/protobuf/o;Lcom/google/protobuf/f;)Lcom/google/protobuf/o;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/MessagesProto$Button;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/f;Lcom/google/protobuf/j;)Lcom/google/firebase/inappmessaging/MessagesProto$Button;
    .locals 1

    .line 17
    sget-object v0, Lcom/google/firebase/inappmessaging/MessagesProto$Button;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/MessagesProto$Button;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/o;->parseFrom(Lcom/google/protobuf/o;Lcom/google/protobuf/f;Lcom/google/protobuf/j;)Lcom/google/protobuf/o;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/MessagesProto$Button;

    return-object p0
.end method

.method public static parseFrom(Lfx0;)Lcom/google/firebase/inappmessaging/MessagesProto$Button;
    .locals 1

    .line 10
    sget-object v0, Lcom/google/firebase/inappmessaging/MessagesProto$Button;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/MessagesProto$Button;

    invoke-static {v0, p0}, Lcom/google/protobuf/o;->parseFrom(Lcom/google/protobuf/o;Lfx0;)Lcom/google/protobuf/o;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/MessagesProto$Button;

    return-object p0
.end method

.method public static parseFrom(Lfx0;Lcom/google/protobuf/j;)Lcom/google/firebase/inappmessaging/MessagesProto$Button;
    .locals 1

    .line 11
    sget-object v0, Lcom/google/firebase/inappmessaging/MessagesProto$Button;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/MessagesProto$Button;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/o;->parseFrom(Lcom/google/protobuf/o;Lfx0;Lcom/google/protobuf/j;)Lcom/google/protobuf/o;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/MessagesProto$Button;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/firebase/inappmessaging/MessagesProto$Button;
    .locals 1

    .line 14
    sget-object v0, Lcom/google/firebase/inappmessaging/MessagesProto$Button;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/MessagesProto$Button;

    invoke-static {v0, p0}, Lcom/google/protobuf/o;->parseFrom(Lcom/google/protobuf/o;Ljava/io/InputStream;)Lcom/google/protobuf/o;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/MessagesProto$Button;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/j;)Lcom/google/firebase/inappmessaging/MessagesProto$Button;
    .locals 1

    .line 15
    sget-object v0, Lcom/google/firebase/inappmessaging/MessagesProto$Button;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/MessagesProto$Button;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/o;->parseFrom(Lcom/google/protobuf/o;Ljava/io/InputStream;Lcom/google/protobuf/j;)Lcom/google/protobuf/o;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/MessagesProto$Button;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/firebase/inappmessaging/MessagesProto$Button;
    .locals 1

    sget-object v0, Lcom/google/firebase/inappmessaging/MessagesProto$Button;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/MessagesProto$Button;

    invoke-static {v0, p0}, Lcom/google/protobuf/o;->parseFrom(Lcom/google/protobuf/o;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/o;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/MessagesProto$Button;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/j;)Lcom/google/firebase/inappmessaging/MessagesProto$Button;
    .locals 1

    .line 9
    sget-object v0, Lcom/google/firebase/inappmessaging/MessagesProto$Button;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/MessagesProto$Button;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/o;->parseFrom(Lcom/google/protobuf/o;Ljava/nio/ByteBuffer;Lcom/google/protobuf/j;)Lcom/google/protobuf/o;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/MessagesProto$Button;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/firebase/inappmessaging/MessagesProto$Button;
    .locals 1

    .line 12
    sget-object v0, Lcom/google/firebase/inappmessaging/MessagesProto$Button;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/MessagesProto$Button;

    invoke-static {v0, p0}, Lcom/google/protobuf/o;->parseFrom(Lcom/google/protobuf/o;[B)Lcom/google/protobuf/o;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/MessagesProto$Button;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/j;)Lcom/google/firebase/inappmessaging/MessagesProto$Button;
    .locals 1

    .line 13
    sget-object v0, Lcom/google/firebase/inappmessaging/MessagesProto$Button;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/MessagesProto$Button;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/o;->parseFrom(Lcom/google/protobuf/o;[BLcom/google/protobuf/j;)Lcom/google/protobuf/o;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/MessagesProto$Button;

    return-object p0
.end method

.method public static parser()Lx36;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lx36<",
            "Lcom/google/firebase/inappmessaging/MessagesProto$Button;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/firebase/inappmessaging/MessagesProto$Button;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/MessagesProto$Button;

    invoke-virtual {v0}, Lcom/google/protobuf/o;->getParserForType()Lx36;

    move-result-object v0

    return-object v0
.end method

.method private setButtonHexColor(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/MessagesProto$Button;->buttonHexColor_:Ljava/lang/String;

    return-void
.end method

.method private setButtonHexColorBytes(Lfx0;)V
    .locals 0

    invoke-static {p1}, Lcom/google/protobuf/a;->checkByteStringIsUtf8(Lfx0;)V

    invoke-virtual {p1}, Lfx0;->p()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/MessagesProto$Button;->buttonHexColor_:Ljava/lang/String;

    return-void
.end method

.method private setText(Lcom/google/firebase/inappmessaging/MessagesProto$Text;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/MessagesProto$Button;->text_:Lcom/google/firebase/inappmessaging/MessagesProto$Text;

    iget p1, p0, Lcom/google/firebase/inappmessaging/MessagesProto$Button;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/firebase/inappmessaging/MessagesProto$Button;->bitField0_:I

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
    sget-object p0, Lcom/google/firebase/inappmessaging/MessagesProto$Button;->PARSER:Lx36;

    if-nez p0, :cond_1

    const-class p1, Lcom/google/firebase/inappmessaging/MessagesProto$Button;

    monitor-enter p1

    :try_start_0
    sget-object p0, Lcom/google/firebase/inappmessaging/MessagesProto$Button;->PARSER:Lx36;

    if-nez p0, :cond_0

    new-instance p0, Lcom/google/protobuf/o$b;

    sget-object p2, Lcom/google/firebase/inappmessaging/MessagesProto$Button;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/MessagesProto$Button;

    invoke-direct {p0, p2}, Lcom/google/protobuf/o$b;-><init>(Lcom/google/protobuf/o;)V

    sput-object p0, Lcom/google/firebase/inappmessaging/MessagesProto$Button;->PARSER:Lx36;

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
    sget-object p0, Lcom/google/firebase/inappmessaging/MessagesProto$Button;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/MessagesProto$Button;

    return-object p0

    :pswitch_4
    const-string p0, "bitField0_"

    const-string p1, "text_"

    const-string p2, "buttonHexColor_"

    filled-new-array {p0, p1, p2}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "\u0000\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u1009\u0000\u0002\u0208"

    sget-object p2, Lcom/google/firebase/inappmessaging/MessagesProto$Button;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/MessagesProto$Button;

    invoke-static {p2, p1, p0}, Lcom/google/protobuf/o;->newMessageInfo(Lcom/google/protobuf/a0;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_5
    new-instance p0, Lcom/google/firebase/inappmessaging/MessagesProto$Button$Builder;

    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/MessagesProto$Button$Builder;-><init>(Lcom/google/firebase/inappmessaging/MessagesProto$1;)V

    return-object p0

    :pswitch_6
    new-instance p0, Lcom/google/firebase/inappmessaging/MessagesProto$Button;

    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/MessagesProto$Button;-><init>()V

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

.method public getButtonHexColor()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$Button;->buttonHexColor_:Ljava/lang/String;

    return-object p0
.end method

.method public getButtonHexColorBytes()Lfx0;
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$Button;->buttonHexColor_:Ljava/lang/String;

    invoke-static {p0}, Lfx0;->f(Ljava/lang/String;)Lfx0$h;

    move-result-object p0

    return-object p0
.end method

.method public getText()Lcom/google/firebase/inappmessaging/MessagesProto$Text;
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$Button;->text_:Lcom/google/firebase/inappmessaging/MessagesProto$Text;

    if-nez p0, :cond_0

    invoke-static {}, Lcom/google/firebase/inappmessaging/MessagesProto$Text;->getDefaultInstance()Lcom/google/firebase/inappmessaging/MessagesProto$Text;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public hasText()Z
    .locals 1

    iget p0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$Button;->bitField0_:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
