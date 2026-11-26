.class public final Lz81;
.super Ld91;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ld91<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final synthetic g:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;


# instance fields
.field private volatile synthetic consumed$volatile:I

.field public final e:Lqz6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lqz6<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lz81;

    const-string v1, "consumed$volatile"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lz81;->g:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method public synthetic constructor <init>(Lqz6;Z)V
    .locals 6

    const/4 v4, -0x3

    sget-object v5, Lcu0;->SUSPEND:Lcu0;

    sget-object v3, Lgx2;->b:Lgx2;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lz81;-><init>(Lqz6;ZLo22;ILcu0;)V

    return-void
.end method

.method public constructor <init>(Lqz6;ZLo22;ILcu0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lqz6<",
            "+TT;>;Z",
            "Lo22;",
            "I",
            "Lcu0;",
            ")V"
        }
    .end annotation

    .line 12
    invoke-direct {p0, p3, p4, p5}, Ld91;-><init>(Lo22;ILcu0;)V

    .line 13
    iput-object p1, p0, Lz81;->e:Lqz6;

    .line 14
    iput-boolean p2, p0, Lz81;->f:Z

    return-void
.end method


# virtual methods
.method public final collect(Lid3;Le02;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lid3<",
            "-TT;>;",
            "Le02<",
            "-",
            "Lj59;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget v0, p0, Ld91;->c:I

    const/4 v1, -0x3

    if-ne v0, v1, :cond_3

    iget-boolean v0, p0, Lz81;->f:Z

    if-eqz v0, :cond_1

    sget-object v1, Lz81;->g:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v2, 0x1

    invoke-virtual {v1, p0, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->getAndSet(Ljava/lang/Object;I)I

    move-result v1

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "ReceiveChannel.consumeAsFlow can be collected just once"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    :goto_0
    iget-object p0, p0, Lz81;->e:Lqz6;

    invoke-static {p1, p0, v0, p2}, Lsd3;->b(Lid3;Lqz6;ZLe02;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, La32;->COROUTINE_SUSPENDED:La32;

    if-ne p0, p1, :cond_2

    return-object p0

    :cond_2
    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :cond_3
    invoke-super {p0, p1, p2}, Ld91;->collect(Lid3;Le02;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, La32;->COROUTINE_SUSPENDED:La32;

    if-ne p0, p1, :cond_4

    return-object p0

    :cond_4
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public final g()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "channel="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lz81;->e:Lqz6;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final h(Lug6;Le02;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lug6<",
            "-TT;>;",
            "Le02<",
            "-",
            "Lj59;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    new-instance v0, Lyo7;

    invoke-direct {v0, p1}, Lyo7;-><init>(Lno7;)V

    iget-object p1, p0, Lz81;->e:Lqz6;

    iget-boolean p0, p0, Lz81;->f:Z

    invoke-static {v0, p1, p0, p2}, Lsd3;->b(Lid3;Lqz6;ZLe02;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, La32;->COROUTINE_SUSPENDED:La32;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public final i(Lo22;ILcu0;)Ld91;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo22;",
            "I",
            "Lcu0;",
            ")",
            "Ld91<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lz81;

    iget-object v1, p0, Lz81;->e:Lqz6;

    iget-boolean v2, p0, Lz81;->f:Z

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lz81;-><init>(Lqz6;ZLo22;ILcu0;)V

    return-object v0
.end method

.method public final j()Lhd3;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lhd3<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lz81;

    iget-object v1, p0, Lz81;->e:Lqz6;

    iget-boolean p0, p0, Lz81;->f:Z

    invoke-direct {v0, v1, p0}, Lz81;-><init>(Lqz6;Z)V

    return-object v0
.end method

.method public final k(Ly22;)Lqz6;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ly22;",
            ")",
            "Lqz6<",
            "TT;>;"
        }
    .end annotation

    iget-boolean v0, p0, Lz81;->f:Z

    if-eqz v0, :cond_1

    sget-object v0, Lz81;->g:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->getAndSet(Ljava/lang/Object;I)I

    move-result v0

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "ReceiveChannel.consumeAsFlow can be collected just once"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    :goto_0
    iget v0, p0, Ld91;->c:I

    const/4 v1, -0x3

    if-ne v0, v1, :cond_2

    iget-object p0, p0, Lz81;->e:Lqz6;

    return-object p0

    :cond_2
    invoke-super {p0, p1}, Ld91;->k(Ly22;)Lqz6;

    move-result-object p0

    return-object p0
.end method
