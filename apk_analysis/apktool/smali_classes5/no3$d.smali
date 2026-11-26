.class public final Lno3$d;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# annotations
.annotation runtime Lbd2;
    c = "com.warefly.checkscan.features.games.presentation.GamesViewModel$loadBanner$3"
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
        "Lid3<",
        "-",
        "Lkn3;",
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
.field public final synthetic l:Lno3;


# direct methods
.method public constructor <init>(Lno3;Le02;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lno3;",
            "Le02<",
            "-",
            "Lno3$d;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lno3$d;->l:Lno3;

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

    new-instance p1, Lno3$d;

    iget-object p0, p0, Lno3$d;->l:Lno3;

    invoke-direct {p1, p0, p2}, Lno3$d;-><init>(Lno3;Le02;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lid3;

    check-cast p2, Le02;

    invoke-virtual {p0, p1, p2}, Lno3$d;->create(Ljava/lang/Object;Le02;)Le02;

    move-result-object p0

    check-cast p0, Lno3$d;

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Lno3$d;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p0, p0, Lno3$d;->l:Lno3;

    iget-object p0, p0, Lno3;->f:Lz68;

    :cond_0
    invoke-virtual {p0}, Lz68;->getValue()Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Llo3;

    sget-object v1, Ljo3$c;->a:Ljo3$c;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2}, Llo3;->a(Llo3;Ljo3;Ljava/lang/Integer;I)Llo3;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lz68;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
