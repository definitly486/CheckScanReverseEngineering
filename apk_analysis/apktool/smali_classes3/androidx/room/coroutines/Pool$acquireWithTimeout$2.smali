.class final Landroidx/room/coroutines/Pool$acquireWithTimeout$2;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# annotations
.annotation runtime Lbd2;
    c = "androidx.room.coroutines.Pool$acquireWithTimeout$2"
    f = "ConnectionPoolImpl.kt"
    l = {
        0xe7
    }
    m = "invokeSuspend"
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/room/coroutines/Pool;->acquireWithTimeout-KLykuaI(JLll3;Le02;)Ljava/lang/Object;
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
.field final synthetic $connection:Lr07;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr07<",
            "Landroidx/room/coroutines/ConnectionWithLock;",
            ">;"
        }
    .end annotation
.end field

.field L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Landroidx/room/coroutines/Pool;


# direct methods
.method public constructor <init>(Lr07;Landroidx/room/coroutines/Pool;Le02;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr07<",
            "Landroidx/room/coroutines/ConnectionWithLock;",
            ">;",
            "Landroidx/room/coroutines/Pool;",
            "Le02<",
            "-",
            "Landroidx/room/coroutines/Pool$acquireWithTimeout$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/room/coroutines/Pool$acquireWithTimeout$2;->$connection:Lr07;

    iput-object p2, p0, Landroidx/room/coroutines/Pool$acquireWithTimeout$2;->this$0:Landroidx/room/coroutines/Pool;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lpg8;-><init>(ILe02;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Le02;)Le02;
    .locals 1
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

    new-instance p1, Landroidx/room/coroutines/Pool$acquireWithTimeout$2;

    iget-object v0, p0, Landroidx/room/coroutines/Pool$acquireWithTimeout$2;->$connection:Lr07;

    iget-object p0, p0, Landroidx/room/coroutines/Pool$acquireWithTimeout$2;->this$0:Landroidx/room/coroutines/Pool;

    invoke-direct {p1, v0, p0, p2}, Landroidx/room/coroutines/Pool$acquireWithTimeout$2;-><init>(Lr07;Landroidx/room/coroutines/Pool;Le02;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 13
    check-cast p1, Ly22;

    check-cast p2, Le02;

    invoke-virtual {p0, p1, p2}, Landroidx/room/coroutines/Pool$acquireWithTimeout$2;->invoke(Ly22;Le02;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Landroidx/room/coroutines/Pool$acquireWithTimeout$2;->create(Ljava/lang/Object;Le02;)Le02;

    move-result-object p0

    check-cast p0, Landroidx/room/coroutines/Pool$acquireWithTimeout$2;

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Landroidx/room/coroutines/Pool$acquireWithTimeout$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    iget v1, p0, Landroidx/room/coroutines/Pool$acquireWithTimeout$2;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object p0, p0, Landroidx/room/coroutines/Pool$acquireWithTimeout$2;->L$0:Ljava/lang/Object;

    check-cast p0, Lr07;

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Landroidx/room/coroutines/Pool$acquireWithTimeout$2;->$connection:Lr07;

    iget-object v1, p0, Landroidx/room/coroutines/Pool$acquireWithTimeout$2;->this$0:Landroidx/room/coroutines/Pool;

    iput-object p1, p0, Landroidx/room/coroutines/Pool$acquireWithTimeout$2;->L$0:Ljava/lang/Object;

    iput v2, p0, Landroidx/room/coroutines/Pool$acquireWithTimeout$2;->label:I

    invoke-virtual {v1, p0}, Landroidx/room/coroutines/Pool;->acquire(Le02;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    move-object v3, p1

    move-object p1, p0

    move-object p0, v3

    :goto_0
    iput-object p1, p0, Lr07;->b:Ljava/lang/Object;

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
