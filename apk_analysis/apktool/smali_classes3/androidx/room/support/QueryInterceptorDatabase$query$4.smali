.class final Landroidx/room/support/QueryInterceptorDatabase$query$4;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# annotations
.annotation runtime Lbd2;
    c = "androidx.room.support.QueryInterceptorDatabase$query$4"
    f = "QueryInterceptorDatabase.android.kt"
    l = {}
    m = "invokeSuspend"
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/room/support/QueryInterceptorDatabase;->query(Landroidx/sqlite/db/SupportSQLiteQuery;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lpg8;",
        "Lbm3<",
        "Ly22;",
        "Le02<",
        "-",
        "Lj59;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $query:Landroidx/sqlite/db/SupportSQLiteQuery;

.field final synthetic $queryInterceptorProgram:Landroidx/room/support/QueryInterceptorProgram;

.field label:I

.field final synthetic this$0:Landroidx/room/support/QueryInterceptorDatabase;


# direct methods
.method public constructor <init>(Landroidx/room/support/QueryInterceptorDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;Landroidx/room/support/QueryInterceptorProgram;Le02;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/room/support/QueryInterceptorDatabase;",
            "Landroidx/sqlite/db/SupportSQLiteQuery;",
            "Landroidx/room/support/QueryInterceptorProgram;",
            "Le02<",
            "-",
            "Landroidx/room/support/QueryInterceptorDatabase$query$4;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/room/support/QueryInterceptorDatabase$query$4;->this$0:Landroidx/room/support/QueryInterceptorDatabase;

    iput-object p2, p0, Landroidx/room/support/QueryInterceptorDatabase$query$4;->$query:Landroidx/sqlite/db/SupportSQLiteQuery;

    iput-object p3, p0, Landroidx/room/support/QueryInterceptorDatabase$query$4;->$queryInterceptorProgram:Landroidx/room/support/QueryInterceptorProgram;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lpg8;-><init>(ILe02;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Le02;)Le02;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Le02<",
            "*>;)",
            "Le02<",
            "Lj59;",
            ">;"
        }
    .end annotation

    new-instance p1, Landroidx/room/support/QueryInterceptorDatabase$query$4;

    iget-object v0, p0, Landroidx/room/support/QueryInterceptorDatabase$query$4;->this$0:Landroidx/room/support/QueryInterceptorDatabase;

    iget-object v1, p0, Landroidx/room/support/QueryInterceptorDatabase$query$4;->$query:Landroidx/sqlite/db/SupportSQLiteQuery;

    iget-object p0, p0, Landroidx/room/support/QueryInterceptorDatabase$query$4;->$queryInterceptorProgram:Landroidx/room/support/QueryInterceptorProgram;

    invoke-direct {p1, v0, v1, p0, p2}, Landroidx/room/support/QueryInterceptorDatabase$query$4;-><init>(Landroidx/room/support/QueryInterceptorDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;Landroidx/room/support/QueryInterceptorProgram;Le02;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 13
    check-cast p1, Ly22;

    check-cast p2, Le02;

    invoke-virtual {p0, p1, p2}, Landroidx/room/support/QueryInterceptorDatabase$query$4;->invoke(Ly22;Le02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Ly22;Le02;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ly22;",
            "Le02<",
            "-",
            "Lj59;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Landroidx/room/support/QueryInterceptorDatabase$query$4;->create(Ljava/lang/Object;Le02;)Le02;

    move-result-object p0

    check-cast p0, Landroidx/room/support/QueryInterceptorDatabase$query$4;

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Landroidx/room/support/QueryInterceptorDatabase$query$4;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    iget v0, p0, Landroidx/room/support/QueryInterceptorDatabase$query$4;->label:I

    if-nez v0, :cond_0

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Landroidx/room/support/QueryInterceptorDatabase$query$4;->this$0:Landroidx/room/support/QueryInterceptorDatabase;

    invoke-static {p1}, Landroidx/room/support/QueryInterceptorDatabase;->access$getQueryCallback$p(Landroidx/room/support/QueryInterceptorDatabase;)Landroidx/room/RoomDatabase$QueryCallback;

    move-result-object p1

    iget-object v0, p0, Landroidx/room/support/QueryInterceptorDatabase$query$4;->$query:Landroidx/sqlite/db/SupportSQLiteQuery;

    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteQuery;->getSql()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroidx/room/support/QueryInterceptorDatabase$query$4;->$queryInterceptorProgram:Landroidx/room/support/QueryInterceptorProgram;

    invoke-virtual {v1}, Landroidx/room/support/QueryInterceptorProgram;->getBindArgsCache$room_runtime()Ljava/util/List;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Landroidx/room/RoomDatabase$QueryCallback;->onQuery(Ljava/lang/String;Ljava/util/List;)V

    iget-object p0, p0, Landroidx/room/support/QueryInterceptorDatabase$query$4;->$queryInterceptorProgram:Landroidx/room/support/QueryInterceptorProgram;

    invoke-virtual {p0}, Landroidx/room/support/QueryInterceptorProgram;->close()V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method
