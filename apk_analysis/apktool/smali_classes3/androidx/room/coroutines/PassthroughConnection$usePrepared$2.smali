.class final Landroidx/room/coroutines/PassthroughConnection$usePrepared$2;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lnl3;


# annotations
.annotation runtime Lbd2;
    c = "androidx.room.coroutines.PassthroughConnection$usePrepared$2"
    f = "PassthroughConnectionPool.kt"
    l = {}
    m = "invokeSuspend"
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/room/coroutines/PassthroughConnection;->usePrepared(Ljava/lang/String;Lnl3;Le02;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lpg8;",
        "Lnl3<",
        "Le02<",
        "-",
        "Ljava/lang/Object;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $block:Lnl3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnl3<",
            "Landroidx/sqlite/SQLiteStatement;",
            "TR;>;"
        }
    .end annotation
.end field

.field final synthetic $sql:Ljava/lang/String;

.field label:I

.field final synthetic this$0:Landroidx/room/coroutines/PassthroughConnection;


# direct methods
.method public constructor <init>(Landroidx/room/coroutines/PassthroughConnection;Ljava/lang/String;Lnl3;Le02;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/room/coroutines/PassthroughConnection;",
            "Ljava/lang/String;",
            "Lnl3<",
            "-",
            "Landroidx/sqlite/SQLiteStatement;",
            "+TR;>;",
            "Le02<",
            "-",
            "Landroidx/room/coroutines/PassthroughConnection$usePrepared$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/room/coroutines/PassthroughConnection$usePrepared$2;->this$0:Landroidx/room/coroutines/PassthroughConnection;

    iput-object p2, p0, Landroidx/room/coroutines/PassthroughConnection$usePrepared$2;->$sql:Ljava/lang/String;

    iput-object p3, p0, Landroidx/room/coroutines/PassthroughConnection$usePrepared$2;->$block:Lnl3;

    const/4 p1, 0x1

    invoke-direct {p0, p1, p4}, Lpg8;-><init>(ILe02;)V

    return-void
.end method


# virtual methods
.method public final create(Le02;)Le02;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le02<",
            "*>;)",
            "Le02<",
            "Lj59;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroidx/room/coroutines/PassthroughConnection$usePrepared$2;

    iget-object v1, p0, Landroidx/room/coroutines/PassthroughConnection$usePrepared$2;->this$0:Landroidx/room/coroutines/PassthroughConnection;

    iget-object v2, p0, Landroidx/room/coroutines/PassthroughConnection$usePrepared$2;->$sql:Ljava/lang/String;

    iget-object p0, p0, Landroidx/room/coroutines/PassthroughConnection$usePrepared$2;->$block:Lnl3;

    invoke-direct {v0, v1, v2, p0, p1}, Landroidx/room/coroutines/PassthroughConnection$usePrepared$2;-><init>(Landroidx/room/coroutines/PassthroughConnection;Ljava/lang/String;Lnl3;Le02;)V

    return-object v0
.end method

.method public final invoke(Le02;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le02<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroidx/room/coroutines/PassthroughConnection$usePrepared$2;->create(Le02;)Le02;

    move-result-object p0

    check-cast p0, Landroidx/room/coroutines/PassthroughConnection$usePrepared$2;

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Landroidx/room/coroutines/PassthroughConnection$usePrepared$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 13
    check-cast p1, Le02;

    invoke-virtual {p0, p1}, Landroidx/room/coroutines/PassthroughConnection$usePrepared$2;->invoke(Le02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    iget v0, p0, Landroidx/room/coroutines/PassthroughConnection$usePrepared$2;->label:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Landroidx/room/coroutines/PassthroughConnection$usePrepared$2;->this$0:Landroidx/room/coroutines/PassthroughConnection;

    invoke-virtual {p1}, Landroidx/room/coroutines/PassthroughConnection;->getDelegate()Landroidx/sqlite/SQLiteConnection;

    move-result-object p1

    iget-object v0, p0, Landroidx/room/coroutines/PassthroughConnection$usePrepared$2;->$sql:Ljava/lang/String;

    invoke-interface {p1, v0}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    move-result-object p1

    iget-object p0, p0, Landroidx/room/coroutines/PassthroughConnection$usePrepared$2;->$block:Lnl3;

    :try_start_0
    invoke-interface {p0, p1}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p1, v1}, Laq5;->c(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    invoke-static {p1, p0}, Laq5;->c(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v1
.end method
