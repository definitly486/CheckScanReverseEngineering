.class public final Lzw1$a;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# annotations
.annotation runtime Lbd2;
    c = "com.warefly.checkscan.core.util.ConnectivityManagerNetworkMonitor$isOnline$1"
    f = "ConnectivityManagerNetworkMonitor.kt"
    l = {
        0x3d
    }
    m = "invokeSuspend"
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzw1;-><init>(Landroid/content/Context;Lr22;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lpg8;",
        "Lbm3<",
        "Lug6<",
        "-",
        "Ljava/lang/Boolean;",
        ">;",
        "Le02<",
        "-",
        "Lj59;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public l:I

.field public synthetic m:Ljava/lang/Object;

.field public final synthetic n:Lzw1;


# direct methods
.method public constructor <init>(Lzw1;Le02;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzw1;",
            "Le02<",
            "-",
            "Lzw1$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lzw1$a;->n:Lzw1;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lpg8;-><init>(ILe02;)V

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

    new-instance v0, Lzw1$a;

    iget-object p0, p0, Lzw1$a;->n:Lzw1;

    invoke-direct {v0, p0, p2}, Lzw1$a;-><init>(Lzw1;Le02;)V

    iput-object p1, v0, Lzw1$a;->m:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lug6;

    check-cast p2, Le02;

    invoke-virtual {p0, p1, p2}, Lzw1$a;->create(Ljava/lang/Object;Le02;)Le02;

    move-result-object p0

    check-cast p0, Lzw1$a;

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Lzw1$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    iget v1, p0, Lzw1$a;->l:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_0

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v2

    :cond_1
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lzw1$a;->m:Ljava/lang/Object;

    check-cast p1, Lug6;

    iget-object v1, p0, Lzw1$a;->n:Lzw1;

    iget-object v1, v1, Lzw1;->a:Landroid/content/Context;

    const-class v4, Landroid/net/ConnectivityManager;

    invoke-static {v1, v4}, Landroidx/core/content/ContextCompat;->getSystemService(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    if-nez v1, :cond_2

    invoke-interface {p1}, Lug6;->getChannel()Lno7;

    move-result-object p0

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    check-cast p0, La91;

    invoke-virtual {p0, v0}, La91;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Ltg6;

    invoke-virtual {p1, v2}, La91;->close(Ljava/lang/Throwable;)Z

    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :cond_2
    new-instance v2, Lzw1$a$b;

    invoke-direct {v2, p1}, Lzw1$a$b;-><init>(Lug6;)V

    new-instance v4, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v4}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/16 v5, 0xc

    invoke-virtual {v4, v5}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v4

    invoke-virtual {v1, v4, v2}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    invoke-interface {p1}, Lug6;->getChannel()Lno7;

    move-result-object v4

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-virtual {v1, v6}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-virtual {v6, v5}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v5

    goto :goto_0

    :cond_3
    const/4 v5, 0x0

    :goto_0
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    check-cast v4, La91;

    invoke-virtual {v4, v5}, La91;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lzw1$a$a;

    invoke-direct {v4, v1, v2}, Lzw1$a$a;-><init>(Landroid/net/ConnectivityManager;Lzw1$a$b;)V

    iput v3, p0, Lzw1$a;->l:I

    invoke-static {p1, v4, p0}, Lsg6;->a(Lug6;Lll3;Le02;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_4

    return-object v0

    :cond_4
    :goto_1
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
