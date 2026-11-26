.class final Landroidx/room/coroutines/ConnectionElement;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo22$a;


# instance fields
.field private final connectionWrapper:Landroidx/room/coroutines/PooledConnectionImpl;

.field private final key:Lo22$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo22$b<",
            "Landroidx/room/coroutines/ConnectionElement;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo22$b;Landroidx/room/coroutines/PooledConnectionImpl;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo22$b<",
            "Landroidx/room/coroutines/ConnectionElement;",
            ">;",
            "Landroidx/room/coroutines/PooledConnectionImpl;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/room/coroutines/ConnectionElement;->key:Lo22$b;

    iput-object p2, p0, Landroidx/room/coroutines/ConnectionElement;->connectionWrapper:Landroidx/room/coroutines/PooledConnectionImpl;

    return-void
.end method


# virtual methods
.method public fold(Ljava/lang/Object;Lbm3;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(TR;",
            "Lbm3<",
            "-TR;-",
            "Lo22$a;",
            "+TR;>;)TR;"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lo22$a$a;->a(Lo22$a;Ljava/lang/Object;Lbm3;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public get(Lo22$b;)Lo22$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lo22$a;",
            ">(",
            "Lo22$b<",
            "TE;>;)TE;"
        }
    .end annotation

    invoke-static {p0, p1}, Lo22$a$a;->b(Lo22$a;Lo22$b;)Lo22$a;

    move-result-object p0

    return-object p0
.end method

.method public final getConnectionWrapper()Landroidx/room/coroutines/PooledConnectionImpl;
    .locals 0

    iget-object p0, p0, Landroidx/room/coroutines/ConnectionElement;->connectionWrapper:Landroidx/room/coroutines/PooledConnectionImpl;

    return-object p0
.end method

.method public getKey()Lo22$b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo22$b<",
            "Landroidx/room/coroutines/ConnectionElement;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/room/coroutines/ConnectionElement;->key:Lo22$b;

    return-object p0
.end method

.method public minusKey(Lo22$b;)Lo22;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo22$b<",
            "*>;)",
            "Lo22;"
        }
    .end annotation

    invoke-static {p0, p1}, Lo22$a$a;->c(Lo22$a;Lo22$b;)Lo22;

    move-result-object p0

    return-object p0
.end method

.method public plus(Lo22;)Lo22;
    .locals 0

    invoke-static {p0, p1}, Lo22$a$a;->d(Lo22$a;Lo22;)Lo22;

    move-result-object p0

    return-object p0
.end method
