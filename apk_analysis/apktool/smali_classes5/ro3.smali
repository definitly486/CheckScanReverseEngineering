.class public final Lro3;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# annotations
.annotation runtime Lbd2;
    c = "com.warefly.checkscan.features.games.presentation.GamesViewModel$refreshLinkAndPlay$4"
    f = "GamesViewModel.kt"
    l = {}
    m = "invokeSuspend"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lpg8;",
        "Lbm3<",
        "Ljava/lang/Boolean;",
        "Le02<",
        "-",
        "Lj59;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public synthetic l:Z

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
            "Lro3;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lro3;->m:Lno3;

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

    new-instance v0, Lro3;

    iget-object p0, p0, Lro3;->m:Lno3;

    invoke-direct {v0, p0, p2}, Lro3;-><init>(Lno3;Le02;)V

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    iput-boolean p0, v0, Lro3;->l:Z

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    check-cast p2, Le02;

    invoke-virtual {p0, p1, p2}, Lro3;->create(Ljava/lang/Object;Le02;)Le02;

    move-result-object p0

    check-cast p0, Lro3;

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Lro3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget-boolean v0, p0, Lro3;->l:Z

    sget-object v1, La32;->COROUTINE_SUSPENDED:La32;

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p0, p0, Lro3;->m:Lno3;

    invoke-virtual {p0}, Lno3;->d()V

    if-eqz v0, :cond_0

    iget-object p0, p0, Lno3;->e:Lfo3;

    invoke-interface {p0}, Lfo3;->b()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lno3;->f:Lz68;

    :cond_1
    invoke-virtual {p0}, Lz68;->getValue()Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Llo3;

    new-instance v1, Ljava/lang/Integer;

    const v2, 0x7f1402dc

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, Llo3;->a(Llo3;Ljo3;Ljava/lang/Integer;I)Llo3;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lz68;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    :goto_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
