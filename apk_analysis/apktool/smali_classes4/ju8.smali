.class public final Lju8;
.super Lcom/google/protobuf/o;
.source "SourceFile"

# interfaces
.implements Lha5;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lju8$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/o<",
        "Lju8;",
        "Lju8$b;",
        ">;",
        "Lha5;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lju8;

.field public static final HOURS_FIELD_NUMBER:I = 0x1

.field public static final MINUTES_FIELD_NUMBER:I = 0x2

.field public static final NANOS_FIELD_NUMBER:I = 0x4

.field private static volatile PARSER:Lx36; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx36<",
            "Lju8;",
            ">;"
        }
    .end annotation
.end field

.field public static final SECONDS_FIELD_NUMBER:I = 0x3


# instance fields
.field private hours_:I

.field private minutes_:I

.field private nanos_:I

.field private seconds_:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lju8;

    invoke-direct {v0}, Lju8;-><init>()V

    sput-object v0, Lju8;->DEFAULT_INSTANCE:Lju8;

    const-class v1, Lju8;

    invoke-static {v1, v0}, Lcom/google/protobuf/o;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/o;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/protobuf/o;-><init>()V

    return-void
.end method

.method public static synthetic a()Lju8;
    .locals 1

    sget-object v0, Lju8;->DEFAULT_INSTANCE:Lju8;

    return-object v0
.end method

.method public static b()Lju8;
    .locals 1

    sget-object v0, Lju8;->DEFAULT_INSTANCE:Lju8;

    return-object v0
.end method

.method public static c(Lju8;)Lju8$b;
    .locals 1

    sget-object v0, Lju8;->DEFAULT_INSTANCE:Lju8;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/o;->createBuilder(Lcom/google/protobuf/o;)Lcom/google/protobuf/o$a;

    move-result-object p0

    check-cast p0, Lju8$b;

    return-object p0
.end method


# virtual methods
.method public final dynamicMethod(Lcom/google/protobuf/o$f;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    sget-object p0, Lju8$a;->a:[I

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
    sget-object p0, Lju8;->PARSER:Lx36;

    if-nez p0, :cond_1

    const-class p1, Lju8;

    monitor-enter p1

    :try_start_0
    sget-object p0, Lju8;->PARSER:Lx36;

    if-nez p0, :cond_0

    new-instance p0, Lcom/google/protobuf/o$b;

    sget-object p2, Lju8;->DEFAULT_INSTANCE:Lju8;

    invoke-direct {p0, p2}, Lcom/google/protobuf/o$b;-><init>(Lcom/google/protobuf/o;)V

    sput-object p0, Lju8;->PARSER:Lx36;

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
    sget-object p0, Lju8;->DEFAULT_INSTANCE:Lju8;

    return-object p0

    :pswitch_4
    const-string p0, "hours_"

    const-string p1, "minutes_"

    const-string p2, "seconds_"

    const-string p3, "nanos_"

    filled-new-array {p0, p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "\u0000\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0000\u0000\u0001\u0004\u0002\u0004\u0003\u0004\u0004\u0004"

    sget-object p2, Lju8;->DEFAULT_INSTANCE:Lju8;

    invoke-static {p2, p1, p0}, Lcom/google/protobuf/o;->newMessageInfo(Lcom/google/protobuf/a0;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_5
    new-instance p0, Lju8$b;

    invoke-direct {p0}, Lju8$b;-><init>()V

    return-object p0

    :pswitch_6
    new-instance p0, Lju8;

    invoke-direct {p0}, Lju8;-><init>()V

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
