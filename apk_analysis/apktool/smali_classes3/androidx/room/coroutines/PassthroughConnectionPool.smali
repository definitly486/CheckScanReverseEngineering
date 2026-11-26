.class public final Landroidx/room/coroutines/PassthroughConnectionPool;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/room/coroutines/ConnectionPool;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/room/coroutines/PassthroughConnectionPool$ConnectionElement;
    }
.end annotation


# instance fields
.field private final connection:Lcl4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcl4<",
            "Landroidx/sqlite/SQLiteConnection;",
            ">;"
        }
    .end annotation
.end field

.field private final driver:Landroidx/sqlite/SQLiteDriver;

.field private final fileName:Ljava/lang/String;

.field private final transactionWrapper:Lbm3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbm3<",
            "Lnl3<",
            "-",
            "Le02<",
            "Ljava/lang/Object;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Le02<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/sqlite/SQLiteDriver;Ljava/lang/String;Lbm3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/sqlite/SQLiteDriver;",
            "Ljava/lang/String;",
            "Lbm3<",
            "-",
            "Lnl3<",
            "-",
            "Le02<",
            "Ljava/lang/Object;",
            ">;+",
            "Ljava/lang/Object;",
            ">;-",
            "Le02<",
            "Ljava/lang/Object;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/room/coroutines/PassthroughConnectionPool;->driver:Landroidx/sqlite/SQLiteDriver;

    iput-object p2, p0, Landroidx/room/coroutines/PassthroughConnectionPool;->fileName:Ljava/lang/String;

    iput-object p3, p0, Landroidx/room/coroutines/PassthroughConnectionPool;->transactionWrapper:Lbm3;

    new-instance p1, Lbg3;

    const/4 p2, 0x1

    invoke-direct {p1, p0, p2}, Lbg3;-><init>(Ljava/lang/Object;I)V

    new-instance p2, Lfh8;

    invoke-direct {p2, p1}, Lfh8;-><init>(Lll3;)V

    iput-object p2, p0, Landroidx/room/coroutines/PassthroughConnectionPool;->connection:Lcl4;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/sqlite/SQLiteDriver;Ljava/lang/String;Lbm3;ILjh2;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 29
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Landroidx/room/coroutines/PassthroughConnectionPool;-><init>(Landroidx/sqlite/SQLiteDriver;Ljava/lang/String;Lbm3;)V

    return-void
.end method

.method public static synthetic a(Landroidx/room/coroutines/PassthroughConnectionPool;)Landroidx/sqlite/SQLiteConnection;
    .locals 0

    invoke-static {p0}, Landroidx/room/coroutines/PassthroughConnectionPool;->connection$lambda$0(Landroidx/room/coroutines/PassthroughConnectionPool;)Landroidx/sqlite/SQLiteConnection;

    move-result-object p0

    return-object p0
.end method

.method private static final connection$lambda$0(Landroidx/room/coroutines/PassthroughConnectionPool;)Landroidx/sqlite/SQLiteConnection;
    .locals 1

    iget-object v0, p0, Landroidx/room/coroutines/PassthroughConnectionPool;->driver:Landroidx/sqlite/SQLiteDriver;

    iget-object p0, p0, Landroidx/room/coroutines/PassthroughConnectionPool;->fileName:Ljava/lang/String;

    invoke-interface {v0, p0}, Landroidx/sqlite/SQLiteDriver;->open(Ljava/lang/String;)Landroidx/sqlite/SQLiteConnection;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Landroidx/room/coroutines/PassthroughConnectionPool;->connection:Lcl4;

    invoke-interface {v0}, Lcl4;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/room/coroutines/PassthroughConnectionPool;->connection:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/sqlite/SQLiteConnection;

    invoke-interface {p0}, Landroidx/sqlite/SQLiteConnection;->close()V

    :cond_0
    return-void
.end method

.method public useConnection(ZLbm3;Le02;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(Z",
            "Lbm3<",
            "-",
            "Landroidx/room/Transactor;",
            "-",
            "Le02<",
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Le02<",
            "-TR;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-interface {p3}, Le02;->getContext()Lo22;

    move-result-object p1

    sget-object v0, Landroidx/room/coroutines/PassthroughConnectionPool$ConnectionElement;->Key:Landroidx/room/coroutines/PassthroughConnectionPool$ConnectionElement$Key;

    invoke-interface {p1, v0}, Lo22;->get(Lo22$b;)Lo22$a;

    move-result-object p1

    check-cast p1, Landroidx/room/coroutines/PassthroughConnectionPool$ConnectionElement;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/room/coroutines/PassthroughConnectionPool$ConnectionElement;->getConnectionWrapper()Landroidx/room/coroutines/PassthroughConnection;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    if-eqz p1, :cond_1

    invoke-interface {p2, p1, p3}, Lbm3;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p1, Landroidx/room/coroutines/PassthroughConnection;

    iget-object v1, p0, Landroidx/room/coroutines/PassthroughConnectionPool;->transactionWrapper:Lbm3;

    iget-object p0, p0, Landroidx/room/coroutines/PassthroughConnectionPool;->connection:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/sqlite/SQLiteConnection;

    invoke-direct {p1, v1, p0}, Landroidx/room/coroutines/PassthroughConnection;-><init>(Lbm3;Landroidx/sqlite/SQLiteConnection;)V

    new-instance p0, Landroidx/room/coroutines/PassthroughConnectionPool$ConnectionElement;

    invoke-direct {p0, p1}, Landroidx/room/coroutines/PassthroughConnectionPool$ConnectionElement;-><init>(Landroidx/room/coroutines/PassthroughConnection;)V

    new-instance v1, Landroidx/room/coroutines/PassthroughConnectionPool$useConnection$2;

    invoke-direct {v1, p2, p1, v0}, Landroidx/room/coroutines/PassthroughConnectionPool$useConnection$2;-><init>(Lbm3;Landroidx/room/coroutines/PassthroughConnection;Le02;)V

    invoke-static {p0, v1, p3}, Lav0;->d(Lo22;Lbm3;Le02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
