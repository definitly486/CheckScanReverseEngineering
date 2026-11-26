.class public final Lue9;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# annotations
.annotation runtime Lbd2;
    c = "coil3.request.ViewTargetRequestManager$dispose$1"
    f = "ViewTargetRequestManager.kt"
    l = {}
    m = "invokeSuspend"
    v = 0x1
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
.field public final synthetic l:Lve9;


# direct methods
.method public constructor <init>(Lve9;Le02;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lve9;",
            "Le02<",
            "-",
            "Lue9;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lue9;->l:Lve9;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lpg8;-><init>(ILe02;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Le02;)Le02;
    .locals 0
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

    new-instance p1, Lue9;

    iget-object p0, p0, Lue9;->l:Lve9;

    invoke-direct {p1, p0, p2}, Lue9;-><init>(Lve9;Le02;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ly22;

    check-cast p2, Le02;

    invoke-virtual {p0, p1, p2}, Lue9;->create(Ljava/lang/Object;Le02;)Le02;

    move-result-object p0

    check-cast p0, Lue9;

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Lue9;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p0, p0, Lue9;->l:Lve9;

    iget-object p1, p0, Lve9;->e:Lte9;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lte9;->c()V

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lve9;->e:Lte9;

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
