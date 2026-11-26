.class final Landroidx/room/coroutines/PassthroughConnection$PassthroughTransactor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/room/TransactionScope;
.implements Landroidx/room/coroutines/RawConnectionAccessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/room/coroutines/PassthroughConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "PassthroughTransactor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroidx/room/TransactionScope<",
        "TT;>;",
        "Landroidx/room/coroutines/RawConnectionAccessor;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/room/coroutines/PassthroughConnection;


# direct methods
.method public constructor <init>(Landroidx/room/coroutines/PassthroughConnection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/room/coroutines/PassthroughConnection$PassthroughTransactor;->this$0:Landroidx/room/coroutines/PassthroughConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getRawConnection()Landroidx/sqlite/SQLiteConnection;
    .locals 0

    iget-object p0, p0, Landroidx/room/coroutines/PassthroughConnection$PassthroughTransactor;->this$0:Landroidx/room/coroutines/PassthroughConnection;

    invoke-virtual {p0}, Landroidx/room/coroutines/PassthroughConnection;->getRawConnection()Landroidx/sqlite/SQLiteConnection;

    move-result-object p0

    return-object p0
.end method

.method public rollback(Ljava/lang/Object;Le02;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Le02<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    new-instance p0, Landroidx/room/coroutines/ConnectionPool$RollbackException;

    invoke-direct {p0, p1}, Landroidx/room/coroutines/ConnectionPool$RollbackException;-><init>(Ljava/lang/Object;)V

    throw p0
.end method

.method public usePrepared(Ljava/lang/String;Lnl3;Le02;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lnl3<",
            "-",
            "Landroidx/sqlite/SQLiteStatement;",
            "+TR;>;",
            "Le02<",
            "-TR;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/room/coroutines/PassthroughConnection$PassthroughTransactor;->this$0:Landroidx/room/coroutines/PassthroughConnection;

    invoke-virtual {p0, p1, p2, p3}, Landroidx/room/coroutines/PassthroughConnection;->usePrepared(Ljava/lang/String;Lnl3;Le02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public withNestedTransaction(Lbm3;Le02;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lbm3<",
            "-",
            "Landroidx/room/TransactionScope<",
            "TR;>;-",
            "Le02<",
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Le02<",
            "-TR;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/room/coroutines/PassthroughConnection$PassthroughTransactor;->this$0:Landroidx/room/coroutines/PassthroughConnection;

    invoke-static {p0}, Landroidx/room/coroutines/PassthroughConnection;->access$getCurrentTransactionType$p(Landroidx/room/coroutines/PassthroughConnection;)Landroidx/room/Transactor$SQLiteTransactionType;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p0, v0, p1, p2}, Landroidx/room/coroutines/PassthroughConnection;->access$transaction(Landroidx/room/coroutines/PassthroughConnection;Landroidx/room/Transactor$SQLiteTransactionType;Lbm3;Le02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "Required value was null."

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method
