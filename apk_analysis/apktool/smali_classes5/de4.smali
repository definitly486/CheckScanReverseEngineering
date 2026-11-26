.class public final Lde4;
.super Lf57;
.source "SourceFile"

# interfaces
.implements Ldm3;


# annotations
.annotation runtime Lbd2;
    c = "kotlinx.serialization.json.internal.JsonTreeReader$readDeepRecursive$1"
    f = "JsonTreeReader.kt"
    l = {
        0x71
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lf57;",
        "Ldm3<",
        "Lae2<",
        "Lj59;",
        "Loc4;",
        ">;",
        "Lj59;",
        "Le02<",
        "-",
        "Loc4;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public l:I

.field public synthetic m:Lae2;

.field public final synthetic n:Lfe4;


# direct methods
.method public constructor <init>(Lfe4;Le02;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfe4;",
            "Le02<",
            "-",
            "Lde4;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lde4;->n:Lfe4;

    const/4 p1, 0x3

    invoke-direct {p0, p1, p2}, Lf57;-><init>(ILe02;)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lae2;

    check-cast p2, Lj59;

    check-cast p3, Le02;

    new-instance p2, Lde4;

    iget-object p0, p0, Lde4;->n:Lfe4;

    invoke-direct {p2, p0, p3}, Lde4;-><init>(Lfe4;Le02;)V

    iput-object p1, p2, Lde4;->m:Lae2;

    sget-object p0, Lj59;->a:Lj59;

    invoke-virtual {p2, p0}, Lde4;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    iget-object v0, p0, Lde4;->n:Lfe4;

    iget-object v1, v0, Lfe4;->a:Lw98;

    iget-object v2, p0, Lde4;->m:Lae2;

    sget-object v3, La32;->COROUTINE_SUSPENDED:La32;

    iget v4, p0, Lde4;->l:I

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_1

    if-ne v4, v6, :cond_0

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v5

    :cond_1
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lw98;->p()B

    move-result p1

    if-ne p1, v6, :cond_2

    invoke-virtual {v0, v6}, Lfe4;->d(Z)Lpd4;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 v4, 0x0

    if-nez p1, :cond_3

    invoke-virtual {v0, v4}, Lfe4;->d(Z)Lpd4;

    move-result-object p0

    return-object p0

    :cond_3
    const/4 v7, 0x6

    if-ne p1, v7, :cond_5

    iput-object v5, p0, Lde4;->m:Lae2;

    iput v6, p0, Lde4;->l:I

    invoke-virtual {v0, v2, p0}, Lfe4;->c(Lae2;Lcd0;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v3, :cond_4

    return-object v3

    :cond_4
    :goto_0
    check-cast p1, Loc4;

    return-object p1

    :cond_5
    const/16 p0, 0x8

    if-ne p1, p0, :cond_6

    invoke-virtual {v0}, Lfe4;->b()Lzb4;

    move-result-object p0

    return-object p0

    :cond_6
    const-string p0, "Can\'t begin reading element, unexpected token"

    invoke-static {v1, p0, v4, v5, v7}, Lw98;->l(Lw98;Ljava/lang/String;ILjava/lang/String;I)V

    throw v5
.end method
