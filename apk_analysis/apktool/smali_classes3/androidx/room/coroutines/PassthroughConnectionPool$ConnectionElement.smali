.class final Landroidx/room/coroutines/PassthroughConnectionPool$ConnectionElement;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo22$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/room/coroutines/PassthroughConnectionPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ConnectionElement"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/room/coroutines/PassthroughConnectionPool$ConnectionElement$Key;
    }
.end annotation


# static fields
.field public static final Key:Landroidx/room/coroutines/PassthroughConnectionPool$ConnectionElement$Key;


# instance fields
.field private final connectionWrapper:Landroidx/room/coroutines/PassthroughConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/room/coroutines/PassthroughConnectionPool$ConnectionElement$Key;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/room/coroutines/PassthroughConnectionPool$ConnectionElement$Key;-><init>(Ljh2;)V

    sput-object v0, Landroidx/room/coroutines/PassthroughConnectionPool$ConnectionElement;->Key:Landroidx/room/coroutines/PassthroughConnectionPool$ConnectionElement$Key;

    return-void
.end method

.method public constructor <init>(Landroidx/room/coroutines/PassthroughConnection;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/room/coroutines/PassthroughConnectionPool$ConnectionElement;->connectionWrapper:Landroidx/room/coroutines/PassthroughConnection;

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

.method public final getConnectionWrapper()Landroidx/room/coroutines/PassthroughConnection;
    .locals 0

    iget-object p0, p0, Landroidx/room/coroutines/PassthroughConnectionPool$ConnectionElement;->connectionWrapper:Landroidx/room/coroutines/PassthroughConnection;

    return-object p0
.end method

.method public getKey()Lo22$b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo22$b<",
            "Landroidx/room/coroutines/PassthroughConnectionPool$ConnectionElement;",
            ">;"
        }
    .end annotation

    sget-object p0, Landroidx/room/coroutines/PassthroughConnectionPool$ConnectionElement;->Key:Landroidx/room/coroutines/PassthroughConnectionPool$ConnectionElement$Key;

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
