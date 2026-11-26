.class public final Lay6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwb8;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lwb8<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final b:J

.field public c:Lbc8;

.field public final d:Lmu0;


# direct methods
.method public constructor <init>(ILcu0;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p3, p0, Lay6;->b:J

    if-nez p1, :cond_0

    const/4 p1, 0x1

    :cond_0
    const/4 p3, 0x4

    const/4 p4, 0x0

    invoke-static {p1, p2, p4, p3}, Ll91;->a(ILcu0;Lnl3;I)Lmu0;

    move-result-object p1

    iput-object p1, p0, Lay6;->d:Lmu0;

    return-void
.end method


# virtual methods
.method public final a(Lbc8;)V
    .locals 2

    iput-object p1, p0, Lay6;->c:Lbc8;

    if-eqz p1, :cond_0

    iget-wide v0, p0, Lay6;->b:J

    invoke-interface {p1, v0, v1}, Lbc8;->request(J)V

    return-void

    :cond_0
    const-string p0, "subscription"

    invoke-static {p0}, Laa4;->j(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final b(Lf02;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p1, Lzx6;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lzx6;

    iget v1, v0, Lzx6;->n:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lzx6;->n:I

    goto :goto_0

    :cond_0
    new-instance v0, Lzx6;

    invoke-direct {v0, p0, p1}, Lzx6;-><init>(Lay6;Lf02;)V

    :goto_0
    iget-object p1, v0, Lzx6;->l:Ljava/lang/Object;

    sget-object v1, La32;->COROUTINE_SUSPENDED:La32;

    iget v2, v0, Lzx6;->n:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    check-cast p1, Lp91;

    iget-object p0, p1, Lp91;->a:Ljava/lang/Object;

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v3

    :cond_2
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iput v4, v0, Lzx6;->n:I

    iget-object p0, p0, Lay6;->d:Lmu0;

    invoke-static {p0, v0}, Lmu0;->C(Lmu0;Lf02;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    invoke-static {p0}, Lp91;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_5

    instance-of p1, p0, Lp91$b;

    if-eqz p1, :cond_4

    return-object v3

    :cond_4
    return-object p0

    :cond_5
    throw p1
.end method

.method public final onComplete()V
    .locals 1

    iget-object p0, p0, Lay6;->d:Lmu0;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmu0;->close(Ljava/lang/Throwable;)Z

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-object p0, p0, Lay6;->d:Lmu0;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lmu0;->d(Ljava/lang/Throwable;Z)Z

    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object p0, p0, Lay6;->d:Lmu0;

    invoke-interface {p0, p1}, Lno7;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lp91$b;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "Element "

    const-string v1, " was not added to channel because it was full, "

    invoke-static {v0, p1, v1, p0}, Lkg;->f(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
