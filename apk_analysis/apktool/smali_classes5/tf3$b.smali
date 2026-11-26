.class public final Ltf3$b;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Ldm3;


# annotations
.annotation runtime Lbd2;
    c = "com.warefly.checkscan.util.paginators.FlowPaginator$2"
    f = "FlowPaginator.kt"
    l = {}
    m = "invokeSuspend"
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltf3;-><init>(Lnl3;Ly22;Ltf3$d;Lhd3;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lpg8;",
        "Ldm3<",
        "Lid3<",
        "-",
        "Ljava/util/List<",
        "+TT;>;>;",
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

.field public final synthetic m:Ltf3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ltf3<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ltf3;Le02;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltf3<",
            "TT;>;",
            "Le02<",
            "-",
            "Ltf3$b;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Ltf3$b;->m:Ltf3;

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

    new-instance p1, Ltf3$b;

    iget-object p0, p0, Ltf3$b;->m:Ltf3;

    invoke-direct {p1, p0, p3}, Ltf3$b;-><init>(Ltf3;Le02;)V

    iput-object p2, p1, Ltf3$b;->l:Ljava/lang/Throwable;

    sget-object p0, Lj59;->a:Lj59;

    invoke-virtual {p1, p0}, Ltf3$b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Ltf3$b;->l:Ljava/lang/Throwable;

    iget-object p0, p0, Ltf3$b;->m:Ltf3;

    iget-object p0, p0, Ltf3;->c:Ltf3$d;

    invoke-interface {p0, p1}, Ltf3$d;->a(Ljava/lang/Throwable;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
