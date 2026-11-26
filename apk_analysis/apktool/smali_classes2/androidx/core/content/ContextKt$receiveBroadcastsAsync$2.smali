.class final Landroidx/core/content/ContextKt$receiveBroadcastsAsync$2;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# annotations
.annotation runtime Lbd2;
    c = "androidx.core.content.ContextKt$receiveBroadcastsAsync$2"
    f = "Context.kt"
    l = {
        0xee
    }
    m = "invokeSuspend"
    v = 0x1
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/core/content/ContextKt;->receiveBroadcastsAsync(Landroid/content/Context;Landroid/content/IntentFilter;ILjava/lang/String;Landroid/os/Handler;Ldm3;Le02;)Ljava/lang/Object;
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
        "*>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $broadcastPermission:Ljava/lang/String;

.field final synthetic $filter:Landroid/content/IntentFilter;

.field final synthetic $flags:I

.field final synthetic $onReceive:Ldm3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldm3<",
            "Landroid/content/BroadcastReceiver$PendingResult;",
            "Landroid/content/Intent;",
            "Le02<",
            "-",
            "Lj59;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $scheduler:Landroid/os/Handler;

.field final synthetic $this_receiveBroadcastsAsync:Landroid/content/Context;

.field private synthetic L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/IntentFilter;ILjava/lang/String;Landroid/os/Handler;Ldm3;Le02;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/IntentFilter;",
            "I",
            "Ljava/lang/String;",
            "Landroid/os/Handler;",
            "Ldm3<",
            "-",
            "Landroid/content/BroadcastReceiver$PendingResult;",
            "-",
            "Landroid/content/Intent;",
            "-",
            "Le02<",
            "-",
            "Lj59;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Le02<",
            "-",
            "Landroidx/core/content/ContextKt$receiveBroadcastsAsync$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/core/content/ContextKt$receiveBroadcastsAsync$2;->$this_receiveBroadcastsAsync:Landroid/content/Context;

    iput-object p2, p0, Landroidx/core/content/ContextKt$receiveBroadcastsAsync$2;->$filter:Landroid/content/IntentFilter;

    iput p3, p0, Landroidx/core/content/ContextKt$receiveBroadcastsAsync$2;->$flags:I

    iput-object p4, p0, Landroidx/core/content/ContextKt$receiveBroadcastsAsync$2;->$broadcastPermission:Ljava/lang/String;

    iput-object p5, p0, Landroidx/core/content/ContextKt$receiveBroadcastsAsync$2;->$scheduler:Landroid/os/Handler;

    iput-object p6, p0, Landroidx/core/content/ContextKt$receiveBroadcastsAsync$2;->$onReceive:Ldm3;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p7}, Lpg8;-><init>(ILe02;)V

    return-void
.end method

.method public static synthetic g(Ly22;Ldm3;Landroid/content/BroadcastReceiver;Landroid/content/Intent;)Lj59;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroidx/core/content/ContextKt$receiveBroadcastsAsync$2;->invokeSuspend$lambda$0(Ly22;Ldm3;Landroid/content/BroadcastReceiver;Landroid/content/Intent;)Lj59;

    move-result-object p0

    return-object p0
.end method

.method private static final invokeSuspend$lambda$0(Ly22;Ldm3;Landroid/content/BroadcastReceiver;Landroid/content/Intent;)Lj59;
    .locals 3

    invoke-virtual {p2}, Landroid/content/BroadcastReceiver;->goAsync()Landroid/content/BroadcastReceiver$PendingResult;

    move-result-object p2

    sget-object v0, Lc32;->ATOMIC:Lc32;

    new-instance v1, Landroidx/core/content/ContextKt$receiveBroadcastsAsync$2$1$1;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, p3, v2}, Landroidx/core/content/ContextKt$receiveBroadcastsAsync$2$1$1;-><init>(Ldm3;Landroid/content/BroadcastReceiver$PendingResult;Landroid/content/Intent;Le02;)V

    const/4 p1, 0x1

    invoke-static {p0, v2, v0, v1, p1}, Lav0;->c(Ly22;Lo22;Lc32;Lbm3;I)Ls68;

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Le02;)Le02;
    .locals 8
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

    new-instance v0, Landroidx/core/content/ContextKt$receiveBroadcastsAsync$2;

    iget-object v1, p0, Landroidx/core/content/ContextKt$receiveBroadcastsAsync$2;->$this_receiveBroadcastsAsync:Landroid/content/Context;

    iget-object v2, p0, Landroidx/core/content/ContextKt$receiveBroadcastsAsync$2;->$filter:Landroid/content/IntentFilter;

    iget v3, p0, Landroidx/core/content/ContextKt$receiveBroadcastsAsync$2;->$flags:I

    iget-object v4, p0, Landroidx/core/content/ContextKt$receiveBroadcastsAsync$2;->$broadcastPermission:Ljava/lang/String;

    iget-object v5, p0, Landroidx/core/content/ContextKt$receiveBroadcastsAsync$2;->$scheduler:Landroid/os/Handler;

    iget-object v6, p0, Landroidx/core/content/ContextKt$receiveBroadcastsAsync$2;->$onReceive:Ldm3;

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Landroidx/core/content/ContextKt$receiveBroadcastsAsync$2;-><init>(Landroid/content/Context;Landroid/content/IntentFilter;ILjava/lang/String;Landroid/os/Handler;Ldm3;Le02;)V

    iput-object p1, v0, Landroidx/core/content/ContextKt$receiveBroadcastsAsync$2;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 13
    check-cast p1, Ly22;

    check-cast p2, Le02;

    invoke-virtual {p0, p1, p2}, Landroidx/core/content/ContextKt$receiveBroadcastsAsync$2;->invoke(Ly22;Le02;)Ljava/lang/Object;

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
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Landroidx/core/content/ContextKt$receiveBroadcastsAsync$2;->create(Ljava/lang/Object;Le02;)Le02;

    move-result-object p0

    check-cast p0, Landroidx/core/content/ContextKt$receiveBroadcastsAsync$2;

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Landroidx/core/content/ContextKt$receiveBroadcastsAsync$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    iget v1, p0, Landroidx/core/content/ContextKt$receiveBroadcastsAsync$2;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-eq v1, v2, :cond_0

    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    :goto_0
    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Landroidx/core/content/ContextKt$receiveBroadcastsAsync$2;->L$0:Ljava/lang/Object;

    check-cast p1, Ly22;

    iget-object v3, p0, Landroidx/core/content/ContextKt$receiveBroadcastsAsync$2;->$this_receiveBroadcastsAsync:Landroid/content/Context;

    iget-object v4, p0, Landroidx/core/content/ContextKt$receiveBroadcastsAsync$2;->$filter:Landroid/content/IntentFilter;

    iget v5, p0, Landroidx/core/content/ContextKt$receiveBroadcastsAsync$2;->$flags:I

    iget-object v6, p0, Landroidx/core/content/ContextKt$receiveBroadcastsAsync$2;->$broadcastPermission:Ljava/lang/String;

    iget-object v7, p0, Landroidx/core/content/ContextKt$receiveBroadcastsAsync$2;->$scheduler:Landroid/os/Handler;

    iget-object v1, p0, Landroidx/core/content/ContextKt$receiveBroadcastsAsync$2;->$onReceive:Ldm3;

    new-instance v8, Landroidx/core/content/a;

    invoke-direct {v8, p1, v1}, Landroidx/core/content/a;-><init>(Ly22;Ldm3;)V

    iput v2, p0, Landroidx/core/content/ContextKt$receiveBroadcastsAsync$2;->label:I

    move-object v9, p0

    invoke-static/range {v3 .. v9}, Landroidx/core/content/ContextKt;->receiveBroadcasts(Landroid/content/Context;Landroid/content/IntentFilter;ILjava/lang/String;Landroid/os/Handler;Lbm3;Le02;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    :goto_1
    invoke-static {}, Lh8;->d()V

    goto :goto_0
.end method
