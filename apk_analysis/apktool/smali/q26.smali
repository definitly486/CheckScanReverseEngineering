.class public final Lq26;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Ldm3;


# annotations
.annotation runtime Lbd2;
    c = "com.warefly.checkscan.core.ui.paginator.Paginator$5"
    f = "Paginator.kt"
    l = {}
    m = "invokeSuspend"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lpg8;",
        "Ldm3<",
        "Lid3<",
        "-",
        "Ljava/lang/Integer;",
        ">;",
        "Ljava/lang/Throwable;",
        "Le02<",
        "-",
        "Lj59;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public synthetic l:Ljava/lang/Throwable;

.field public final synthetic m:Lr26;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr26<",
            "Lpz3;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lr26;Le02;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr26<",
            "Lpz3;",
            ">;",
            "Le02<",
            "-",
            "Lq26;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lq26;->m:Lr26;

    const/4 p1, 0x3

    invoke-direct {p0, p1, p2}, Lpg8;-><init>(ILe02;)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lid3;

    check-cast p2, Ljava/lang/Throwable;

    check-cast p3, Le02;

    new-instance p1, Lq26;

    iget-object p0, p0, Lq26;->m:Lr26;

    invoke-direct {p1, p0, p3}, Lq26;-><init>(Lr26;Le02;)V

    iput-object p2, p1, Lq26;->l:Ljava/lang/Throwable;

    sget-object p0, Lj59;->a:Lj59;

    invoke-virtual {p1, p0}, Lq26;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lq26;->l:Ljava/lang/Throwable;

    iget-object p0, p0, Lq26;->m:Lr26;

    iget-object p0, p0, Lr26;->c:Lr26$a;

    invoke-interface {p0, p1}, Lr26$a;->a(Ljava/lang/Throwable;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
