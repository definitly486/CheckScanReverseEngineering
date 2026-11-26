.class public final Lbm1;
.super Lcom/google/protobuf/o;
.source "SourceFile"

# interfaces
.implements Lha5;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbm1$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/o<",
        "Lbm1;",
        "Lbm1$a;",
        ">;",
        "Lha5;"
    }
.end annotation


# static fields
.field public static final APP_VERSION_FIELD_NUMBER:I = 0x1

.field private static final DEFAULT_INSTANCE:Lbm1;

.field public static final LANGUAGE_CODE_FIELD_NUMBER:I = 0x3

.field private static volatile PARSER:Lx36; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx36<",
            "Lbm1;",
            ">;"
        }
    .end annotation
.end field

.field public static final PLATFORM_VERSION_FIELD_NUMBER:I = 0x2

.field public static final TIME_ZONE_FIELD_NUMBER:I = 0x4


# instance fields
.field private appVersion_:Ljava/lang/String;

.field private languageCode_:Ljava/lang/String;

.field private platformVersion_:Ljava/lang/String;

.field private timeZone_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lbm1;

    invoke-direct {v0}, Lbm1;-><init>()V

    sput-object v0, Lbm1;->DEFAULT_INSTANCE:Lbm1;

    const-class v1, Lbm1;

    invoke-static {v1, v0}, Lcom/google/protobuf/o;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/o;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/o;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lbm1;->appVersion_:Ljava/lang/String;

    iput-object v0, p0, Lbm1;->platformVersion_:Ljava/lang/String;

    iput-object v0, p0, Lbm1;->languageCode_:Ljava/lang/String;

    iput-object v0, p0, Lbm1;->timeZone_:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a()Lbm1;
    .locals 1

    sget-object v0, Lbm1;->DEFAULT_INSTANCE:Lbm1;

    return-object v0
.end method

.method public static b()Lbm1$a;
    .locals 1

    sget-object v0, Lbm1;->DEFAULT_INSTANCE:Lbm1;

    invoke-virtual {v0}, Lcom/google/protobuf/o;->createBuilder()Lcom/google/protobuf/o$a;

    move-result-object v0

    check-cast v0, Lbm1$a;

    return-object v0
.end method


# virtual methods
.method public final c(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lbm1;->appVersion_:Ljava/lang/String;

    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lbm1;->languageCode_:Ljava/lang/String;

    return-void
.end method

.method public final dynamicMethod(Lcom/google/protobuf/o$f;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    sget-object p0, Lam1;->a:[I

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
    sget-object p0, Lbm1;->PARSER:Lx36;

    if-nez p0, :cond_1

    const-class p1, Lbm1;

    monitor-enter p1

    :try_start_0
    sget-object p0, Lbm1;->PARSER:Lx36;

    if-nez p0, :cond_0

    new-instance p0, Lcom/google/protobuf/o$b;

    sget-object p2, Lbm1;->DEFAULT_INSTANCE:Lbm1;

    invoke-direct {p0, p2}, Lcom/google/protobuf/o$b;-><init>(Lcom/google/protobuf/o;)V

    sput-object p0, Lbm1;->PARSER:Lx36;

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
    sget-object p0, Lbm1;->DEFAULT_INSTANCE:Lbm1;

    return-object p0

    :pswitch_4
    const-string p0, "appVersion_"

    const-string p1, "platformVersion_"

    const-string p2, "languageCode_"

    const-string p3, "timeZone_"

    filled-new-array {p0, p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "\u0000\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0000\u0000\u0001\u0208\u0002\u0208\u0003\u0208\u0004\u0208"

    sget-object p2, Lbm1;->DEFAULT_INSTANCE:Lbm1;

    invoke-static {p2, p1, p0}, Lcom/google/protobuf/o;->newMessageInfo(Lcom/google/protobuf/a0;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_5
    new-instance p0, Lbm1$a;

    invoke-direct {p0}, Lbm1$a;-><init>()V

    return-object p0

    :pswitch_6
    new-instance p0, Lbm1;

    invoke-direct {p0}, Lbm1;-><init>()V

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

.method public final e(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lbm1;->platformVersion_:Ljava/lang/String;

    return-void
.end method

.method public final setTimeZone(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lbm1;->timeZone_:Ljava/lang/String;

    return-void
.end method
