.class public final Lj21;
.super Lcom/google/protobuf/o;
.source "SourceFile"

# interfaces
.implements Lha5;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lj21$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/o<",
        "Lj21;",
        "Lj21$b;",
        ">;",
        "Lha5;"
    }
.end annotation


# static fields
.field public static final ALREADY_SEEN_CAMPAIGNS_FIELD_NUMBER:I = 0x1

.field private static final DEFAULT_INSTANCE:Lj21;

.field private static volatile PARSER:Lx36;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx36<",
            "Lj21;",
            ">;"
        }
    .end annotation
.end field


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


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lj21;

    invoke-direct {v0}, Lj21;-><init>()V

    sput-object v0, Lj21;->DEFAULT_INSTANCE:Lj21;

    const-class v1, Lj21;

    invoke-static {v1, v0}, Lcom/google/protobuf/o;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/o;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/o;-><init>()V

    invoke-static {}, Lcom/google/protobuf/o;->emptyProtobufList()Lcom/google/protobuf/q$j;

    move-result-object v0

    iput-object v0, p0, Lj21;->alreadySeenCampaigns_:Lcom/google/protobuf/q$j;

    return-void
.end method

.method public static synthetic a()Lj21;
    .locals 1

    sget-object v0, Lj21;->DEFAULT_INSTANCE:Lj21;

    return-object v0
.end method

.method public static d()Lj21;
    .locals 1

    sget-object v0, Lj21;->DEFAULT_INSTANCE:Lj21;

    return-object v0
.end method

.method public static e()Lj21$b;
    .locals 1

    sget-object v0, Lj21;->DEFAULT_INSTANCE:Lj21;

    invoke-virtual {v0}, Lcom/google/protobuf/o;->createBuilder()Lcom/google/protobuf/o$a;

    move-result-object v0

    check-cast v0, Lj21$b;

    return-object v0
.end method

.method public static f(Lj21;)Lj21$b;
    .locals 1

    sget-object v0, Lj21;->DEFAULT_INSTANCE:Lj21;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/o;->createBuilder(Lcom/google/protobuf/o;)Lcom/google/protobuf/o$a;

    move-result-object p0

    check-cast p0, Lj21$b;

    return-object p0
.end method

.method public static parser()Lx36;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lx36<",
            "Lj21;",
            ">;"
        }
    .end annotation

    sget-object v0, Lj21;->DEFAULT_INSTANCE:Lj21;

    invoke-virtual {v0}, Lcom/google/protobuf/o;->getParserForType()Lx36;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final b(Li21;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lj21;->alreadySeenCampaigns_:Lcom/google/protobuf/q$j;

    invoke-interface {v0}, Lcom/google/protobuf/q$j;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/google/protobuf/o;->mutableCopy(Lcom/google/protobuf/q$j;)Lcom/google/protobuf/q$j;

    move-result-object v0

    iput-object v0, p0, Lj21;->alreadySeenCampaigns_:Lcom/google/protobuf/q$j;

    :cond_0
    iget-object p0, p0, Lj21;->alreadySeenCampaigns_:Lcom/google/protobuf/q$j;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final c()Lcom/google/protobuf/q$j;
    .locals 0

    iget-object p0, p0, Lj21;->alreadySeenCampaigns_:Lcom/google/protobuf/q$j;

    return-object p0
.end method

.method public final dynamicMethod(Lcom/google/protobuf/o$f;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    sget-object p0, Lj21$a;->a:[I

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
    sget-object p0, Lj21;->PARSER:Lx36;

    if-nez p0, :cond_1

    const-class p1, Lj21;

    monitor-enter p1

    :try_start_0
    sget-object p0, Lj21;->PARSER:Lx36;

    if-nez p0, :cond_0

    new-instance p0, Lcom/google/protobuf/o$b;

    sget-object p2, Lj21;->DEFAULT_INSTANCE:Lj21;

    invoke-direct {p0, p2}, Lcom/google/protobuf/o$b;-><init>(Lcom/google/protobuf/o;)V

    sput-object p0, Lj21;->PARSER:Lx36;

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
    sget-object p0, Lj21;->DEFAULT_INSTANCE:Lj21;

    return-object p0

    :pswitch_4
    const-string p0, "alreadySeenCampaigns_"

    const-class p1, Li21;

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001b"

    sget-object p2, Lj21;->DEFAULT_INSTANCE:Lj21;

    invoke-static {p2, p1, p0}, Lcom/google/protobuf/o;->newMessageInfo(Lcom/google/protobuf/a0;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_5
    new-instance p0, Lj21$b;

    invoke-direct {p0}, Lj21$b;-><init>()V

    return-object p0

    :pswitch_6
    new-instance p0, Lj21;

    invoke-direct {p0}, Lj21;-><init>()V

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
