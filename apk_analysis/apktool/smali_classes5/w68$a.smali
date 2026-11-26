.class public final Lw68$a;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Ldm3;


# annotations
.annotation runtime Lbd2;
    c = "kotlinx.coroutines.flow.StartedWhileSubscribed$command$1"
    f = "SharingStarted.kt"
    l = {
        0xaf,
        0xb1,
        0xb3,
        0xb4,
        0xb6
    }
    m = "invokeSuspend"
    v = 0x1
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lw68;->b(Ly68;)Lhd3;
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
        "Lcu7;",
        ">;",
        "Ljava/lang/Integer;",
        "Le02<",
        "-",
        "Lj59;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public l:I

.field public synthetic m:Lid3;

.field public synthetic n:I

.field public final synthetic o:Lw68;


# direct methods
.method public constructor <init>(Lw68;Le02;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw68;",
            "Le02<",
            "-",
            "Lw68$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lw68$a;->o:Lw68;

    const/4 p1, 0x3

    invoke-direct {p0, p1, p2}, Lpg8;-><init>(ILe02;)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lid3;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    check-cast p3, Le02;

    new-instance v0, Lw68$a;

    iget-object p0, p0, Lw68$a;->o:Lw68;

    invoke-direct {v0, p0, p3}, Lw68$a;-><init>(Lw68;Le02;)V

    iput-object p1, v0, Lw68$a;->m:Lid3;

    iput p2, v0, Lw68$a;->n:I

    sget-object p0, Lj59;->a:Lj59;

    invoke-virtual {v0, p0}, Lw68$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    iget-object v0, p0, Lw68$a;->o:Lw68;

    iget-wide v1, v0, Lw68;->c:J

    iget-object v3, p0, Lw68$a;->m:Lid3;

    iget v4, p0, Lw68$a;->n:I

    sget-object v5, La32;->COROUTINE_SUSPENDED:La32;

    iget v6, p0, Lw68$a;->l:I

    const/4 v7, 0x0

    const/4 v8, 0x5

    const/4 v9, 0x4

    const/4 v10, 0x3

    const/4 v11, 0x2

    const/4 v12, 0x1

    if-eqz v6, :cond_5

    if-eq v6, v12, :cond_4

    if-eq v6, v11, :cond_3

    if-eq v6, v10, :cond_2

    if-eq v6, v9, :cond_1

    if-ne v6, v8, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v7

    :cond_1
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_3

    :cond_2
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    :goto_0
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_5

    :cond_5
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    if-lez v4, :cond_6

    sget-object p1, Lcu7;->START:Lcu7;

    iput-object v7, p0, Lw68$a;->m:Lid3;

    iput v4, p0, Lw68$a;->n:I

    iput v12, p0, Lw68$a;->l:I

    invoke-interface {v3, p1, p0}, Lid3;->emit(Ljava/lang/Object;Le02;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v5, :cond_a

    goto :goto_4

    :cond_6
    iget-wide v12, v0, Lw68;->b:J

    iput-object v3, p0, Lw68$a;->m:Lid3;

    iput v4, p0, Lw68$a;->n:I

    iput v11, p0, Lw68$a;->l:I

    invoke-static {v12, v13, p0}, Lyk2;->b(JLe02;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v5, :cond_7

    goto :goto_4

    :cond_7
    :goto_1
    const-wide/16 v11, 0x0

    cmp-long p1, v1, v11

    if-lez p1, :cond_9

    sget-object p1, Lcu7;->STOP:Lcu7;

    iput-object v3, p0, Lw68$a;->m:Lid3;

    iput v4, p0, Lw68$a;->n:I

    iput v10, p0, Lw68$a;->l:I

    invoke-interface {v3, p1, p0}, Lid3;->emit(Ljava/lang/Object;Le02;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v5, :cond_8

    goto :goto_4

    :cond_8
    :goto_2
    iput-object v3, p0, Lw68$a;->m:Lid3;

    iput v4, p0, Lw68$a;->n:I

    iput v9, p0, Lw68$a;->l:I

    invoke-static {v1, v2, p0}, Lyk2;->b(JLe02;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v5, :cond_9

    goto :goto_4

    :cond_9
    :goto_3
    sget-object p1, Lcu7;->STOP_AND_RESET_REPLAY_CACHE:Lcu7;

    iput-object v7, p0, Lw68$a;->m:Lid3;

    iput v4, p0, Lw68$a;->n:I

    iput v8, p0, Lw68$a;->l:I

    invoke-interface {v3, p1, p0}, Lid3;->emit(Ljava/lang/Object;Le02;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v5, :cond_a

    :goto_4
    return-object v5

    :cond_a
    :goto_5
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
