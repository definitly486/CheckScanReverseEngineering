.class public final Lv59;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# annotations
.annotation runtime Lbd2;
    c = "com.warefly.checkscan.component.unityofferwall.UnityOfferwallController$awaitConnect$2"
    f = "UnityOfferwallController.kt"
    l = {
        0x131
    }
    m = "invokeSuspend"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lpg8;",
        "Lbm3<",
        "Ly22;",
        "Le02<",
        "-",
        "Ljava/lang/Boolean;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public l:I

.field public final synthetic m:Ls59;

.field public final synthetic n:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ls59;Ljava/lang/String;Le02;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls59;",
            "Ljava/lang/String;",
            "Le02<",
            "-",
            "Lv59;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lv59;->m:Ls59;

    iput-object p2, p0, Lv59;->n:Ljava/lang/String;

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

    new-instance p1, Lv59;

    iget-object v0, p0, Lv59;->m:Ls59;

    iget-object p0, p0, Lv59;->n:Ljava/lang/String;

    invoke-direct {p1, v0, p0, p2}, Lv59;-><init>(Ls59;Ljava/lang/String;Le02;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ly22;

    check-cast p2, Le02;

    invoke-virtual {p0, p1, p2}, Lv59;->create(Ljava/lang/Object;Le02;)Le02;

    move-result-object p0

    check-cast p0, Lv59;

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Lv59;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    iget v1, p0, Lv59;->l:I

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

    iput v2, p0, Lv59;->l:I

    new-instance p1, Lc31;

    invoke-static {p0}, Lzya;->b(Le02;)Le02;

    move-result-object v1

    invoke-direct {p1, v2, v1}, Lc31;-><init>(ILe02;)V

    invoke-virtual {p1}, Lc31;->u()V

    iget-object v1, p0, Lv59;->m:Ls59;

    iget-object v2, v1, Ls59;->a:Lsk8;

    new-instance v3, Lv59$a;

    invoke-direct {v3, v1, p1}, Lv59$a;-><init>(Ls59;Lc31;)V

    iget-object p0, p0, Lv59;->n:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    const-string v4, "TJC_OPTION_USER_ID"

    invoke-virtual {v1, v4, p0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "TJC_OPTION_DISMISS_CONTENT_ALL"

    const-string v4, "true"

    invoke-virtual {v1, p0, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, v2, Lsk8;->a:Landroid/content/Context;

    new-instance v2, Ltk8;

    invoke-direct {v2, v3}, Ltk8;-><init>(Lv59$a;)V

    const-string v4, "t8xDZwg2Rs6hjtxe_62mVgECTh3AdpnHmgb0J4Nhut90n-iFHnDO8WhHt66w"

    invoke-static {p0, v4, v1, v2}, Lcom/tapjoy/Tapjoy;->connect(Landroid/content/Context;Ljava/lang/String;Ljava/util/Hashtable;Lcom/tapjoy/TJConnectListener;)Z

    move-result p0

    if-nez p0, :cond_2

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v3, p0}, Lv59$a;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-virtual {p1}, Lc31;->s()Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_3

    return-object v0

    :cond_3
    return-object p0
.end method
