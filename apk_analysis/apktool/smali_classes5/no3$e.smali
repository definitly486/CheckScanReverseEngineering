.class public final Lno3$e;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# annotations
.annotation runtime Lbd2;
    c = "com.warefly.checkscan.features.games.presentation.GamesViewModel$loadBanner$4"
    f = "GamesViewModel.kt"
    l = {}
    m = "invokeSuspend"
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lno3;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lpg8;",
        "Lbm3<",
        "Lkn3;",
        "Le02<",
        "-",
        "Lj59;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public synthetic l:Ljava/lang/Object;

.field public final synthetic m:Lno3;


# direct methods
.method public constructor <init>(Lno3;Le02;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lno3;",
            "Le02<",
            "-",
            "Lno3$e;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lno3$e;->m:Lno3;

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

    new-instance v0, Lno3$e;

    iget-object p0, p0, Lno3$e;->m:Lno3;

    invoke-direct {v0, p0, p2}, Lno3$e;-><init>(Lno3;Le02;)V

    iput-object p1, v0, Lno3$e;->l:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkn3;

    check-cast p2, Le02;

    invoke-virtual {p0, p1, p2}, Lno3$e;->create(Ljava/lang/Object;Le02;)Le02;

    move-result-object p0

    check-cast p0, Lno3$e;

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Lno3$e;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lno3$e;->l:Ljava/lang/Object;

    check-cast v0, Lkn3;

    sget-object v1, La32;->COROUTINE_SUSPENDED:La32;

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p0, p0, Lno3$e;->m:Lno3;

    iput-object v0, p0, Lno3;->h:Lkn3;

    invoke-virtual {p0}, Lno3;->d()V

    iget-boolean p1, p0, Lno3;->j:Z

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lno3;->j:Z

    invoke-virtual {p0}, Lno3;->c()V

    :goto_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
