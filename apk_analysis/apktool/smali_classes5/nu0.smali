.class public final synthetic Lnu0;
.super Lqm3;
.source "SourceFile"

# interfaces
.implements Ldm3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lqm3;",
        "Ldm3<",
        "Ljava/lang/Throwable;",
        "Ljava/lang/Object;",
        "Lo22;",
        "Lj59;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lmu0;)V
    .locals 7

    const-string v5, "onCancellationImplDoNotCall(Ljava/lang/Throwable;Ljava/lang/Object;Lkotlin/coroutines/CoroutineContext;)V"

    const/4 v6, 0x0

    const/4 v1, 0x3

    const-class v3, Lmu0;

    const-string v4, "onCancellationImplDoNotCall"

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lqm3;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Throwable;

    check-cast p3, Lo22;

    iget-object p0, p0, Lqy0;->receiver:Ljava/lang/Object;

    check-cast p0, Lmu0;

    iget-object p0, p0, Lmu0;->c:Lnl3;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, p2, p3}, Lrq3;->a(Lnl3;Ljava/lang/Object;Lo22;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
