.class public final Lkm5$c;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# annotations
.annotation runtime Lbd2;
    c = "coil3.network.NetworkFetcher$doFetch$2"
    f = "NetworkFetcher.kt"
    l = {
        0x8a
    }
    m = "invokeSuspend"
    v = 0x1
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkm5;->b(Le02;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lpg8;",
        "Lbm3<",
        "Lvm5;",
        "Le02<",
        "-",
        "Lx48;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public l:I

.field public synthetic m:Ljava/lang/Object;

.field public final synthetic n:Lkm5;


# direct methods
.method public constructor <init>(Lkm5;Le02;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkm5;",
            "Le02<",
            "-",
            "Lkm5$c;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lkm5$c;->n:Lkm5;

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

    new-instance v0, Lkm5$c;

    iget-object p0, p0, Lkm5$c;->n:Lkm5;

    invoke-direct {v0, p0, p2}, Lkm5$c;-><init>(Lkm5;Le02;)V

    iput-object p1, v0, Lkm5$c;->m:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lvm5;

    check-cast p2, Le02;

    invoke-virtual {p0, p1, p2}, Lkm5$c;->create(Ljava/lang/Object;Le02;)Le02;

    move-result-object p0

    check-cast p0, Lkm5$c;

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Lkm5$c;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    iget v1, p0, Lkm5$c;->l:I

    const/4 v2, 0x0

    iget-object v3, p0, Lkm5$c;->n:Lkm5;

    const/4 v4, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v4, :cond_0

    iget-object p0, p0, Lkm5$c;->m:Ljava/lang/Object;

    check-cast p0, Lvm5;

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v2

    :cond_1
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lkm5$c;->m:Ljava/lang/Object;

    check-cast p1, Lvm5;

    iget-object v1, p1, Lvm5;->e:Lb58;

    if-eqz v1, :cond_3

    iput-object p1, p0, Lkm5$c;->m:Ljava/lang/Object;

    iput v4, p0, Lkm5$c;->l:I

    invoke-virtual {v3, v1, p0}, Lkm5;->h(Lb58;Lf02;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    move-object v5, p1

    move-object p1, p0

    move-object p0, v5

    :goto_0
    check-cast p1, Lh24;

    iget-object v0, v3, Lkm5;->a:Ljava/lang/String;

    iget-object p0, p0, Lvm5;->d:Lpm5;

    invoke-virtual {p0}, Lpm5;->a()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lkm5;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lz82;->NETWORK:Lz82;

    new-instance v1, Lx48;

    invoke-direct {v1, p1, p0, v0}, Lx48;-><init>(Lh24;Ljava/lang/String;Lz82;)V

    return-object v1

    :cond_3
    const-string p0, "body == null"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v2
.end method
