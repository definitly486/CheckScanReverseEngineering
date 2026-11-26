.class final Landroidx/room/coroutines/PassthroughConnection$withTransaction$2;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lnl3;


# annotations
.annotation runtime Lbd2;
    c = "androidx.room.coroutines.PassthroughConnection$withTransaction$2"
    f = "PassthroughConnectionPool.kt"
    l = {
        0x67
    }
    m = "invokeSuspend"
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/room/coroutines/PassthroughConnection;->withTransaction(Landroidx/room/Transactor$SQLiteTransactionType;Lbm3;Le02;)Ljava/lang/Object;
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
.field final synthetic $block:Lbm3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbm3<",
            "Landroidx/room/TransactionScope<",
            "TR;>;",
            "Le02<",
            "-TR;>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $type:Landroidx/room/Transactor$SQLiteTransactionType;

.field label:I

.field final synthetic this$0:Landroidx/room/coroutines/PassthroughConnection;


# direct methods
.method public constructor <init>(Landroidx/room/coroutines/PassthroughConnection;Landroidx/room/Transactor$SQLiteTransactionType;Lbm3;Le02;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/room/coroutines/PassthroughConnection;",
            "Landroidx/room/Transactor$SQLiteTransactionType;",
            "Lbm3<",
            "-",
            "Landroidx/room/TransactionScope<",
            "TR;>;-",
            "Le02<",
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Le02<",
            "-",
            "Landroidx/room/coroutines/PassthroughConnection$withTransaction$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/room/coroutines/PassthroughConnection$withTransaction$2;->this$0:Landroidx/room/coroutines/PassthroughConnection;

    iput-object p2, p0, Landroidx/room/coroutines/PassthroughConnection$withTransaction$2;->$type:Landroidx/room/Transactor$SQLiteTransactionType;

    iput-object p3, p0, Landroidx/room/coroutines/PassthroughConnection$withTransaction$2;->$block:Lbm3;

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

    new-instance v0, Landroidx/room/coroutines/PassthroughConnection$withTransaction$2;

    iget-object v1, p0, Landroidx/room/coroutines/PassthroughConnection$withTransaction$2;->this$0:Landroidx/room/coroutines/PassthroughConnection;

    iget-object v2, p0, Landroidx/room/coroutines/PassthroughConnection$withTransaction$2;->$type:Landroidx/room/Transactor$SQLiteTransactionType;

    iget-object p0, p0, Landroidx/room/coroutines/PassthroughConnection$withTransaction$2;->$block:Lbm3;

    invoke-direct {v0, v1, v2, p0, p1}, Landroidx/room/coroutines/PassthroughConnection$withTransaction$2;-><init>(Landroidx/room/coroutines/PassthroughConnection;Landroidx/room/Transactor$SQLiteTransactionType;Lbm3;Le02;)V

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

    invoke-virtual {p0, p1}, Landroidx/room/coroutines/PassthroughConnection$withTransaction$2;->create(Le02;)Le02;

    move-result-object p0

    check-cast p0, Landroidx/room/coroutines/PassthroughConnection$withTransaction$2;

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Landroidx/room/coroutines/PassthroughConnection$withTransaction$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 13
    check-cast p1, Le02;

    invoke-virtual {p0, p1}, Landroidx/room/coroutines/PassthroughConnection$withTransaction$2;->invoke(Le02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    iget v1, p0, Landroidx/room/coroutines/PassthroughConnection$withTransaction$2;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    return-object p1

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Landroidx/room/coroutines/PassthroughConnection$withTransaction$2;->this$0:Landroidx/room/coroutines/PassthroughConnection;

    iget-object v1, p0, Landroidx/room/coroutines/PassthroughConnection$withTransaction$2;->$type:Landroidx/room/Transactor$SQLiteTransactionType;

    iget-object v3, p0, Landroidx/room/coroutines/PassthroughConnection$withTransaction$2;->$block:Lbm3;

    iput v2, p0, Landroidx/room/coroutines/PassthroughConnection$withTransaction$2;->label:I

    invoke-static {p1, v1, v3, p0}, Landroidx/room/coroutines/PassthroughConnection;->access$transaction(Landroidx/room/coroutines/PassthroughConnection;Landroidx/room/Transactor$SQLiteTransactionType;Lbm3;Le02;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    return-object p0
.end method
