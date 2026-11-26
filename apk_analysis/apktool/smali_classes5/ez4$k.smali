.class public final Lez4$k;
.super Lio/grpc/h$e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lez4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "k"
.end annotation


# instance fields
.field public a:Lgy$a;

.field public final synthetic b:Lez4;


# direct methods
.method public constructor <init>(Lez4;)V
    .locals 0

    iput-object p1, p0, Lez4$k;->b:Lez4;

    invoke-direct {p0}, Lio/grpc/h$e;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lio/grpc/h$b;)Lio/grpc/h$j;
    .locals 2

    iget-object p0, p0, Lez4$k;->b:Lez4;

    iget-object v0, p0, Lez4;->n:Lch8;

    invoke-virtual {v0}, Lch8;->d()V

    iget-boolean v0, p0, Lez4;->G:Z

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Channel is being terminated"

    invoke-static {v0, v1}, Lo8;->s(ZLjava/lang/Object;)V

    new-instance v0, Lez4$p;

    invoke-direct {v0, p0, p1}, Lez4$p;-><init>(Lez4;Lio/grpc/h$b;)V

    return-object v0
.end method

.method public final b()Ln91;
    .locals 0

    iget-object p0, p0, Lez4$k;->b:Lez4;

    iget-object p0, p0, Lez4;->M:Lo91;

    return-object p0
.end method

.method public final c()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 0

    iget-object p0, p0, Lez4$k;->b:Lez4;

    iget-object p0, p0, Lez4;->h:Lez4$o;

    return-object p0
.end method

.method public final d()Lch8;
    .locals 0

    iget-object p0, p0, Lez4$k;->b:Lez4;

    iget-object p0, p0, Lez4;->n:Lch8;

    return-object p0
.end method

.method public final e()V
    .locals 2

    iget-object v0, p0, Lez4$k;->b:Lez4;

    iget-object v0, v0, Lez4;->n:Lch8;

    invoke-virtual {v0}, Lch8;->d()V

    new-instance v1, Lez4$k$a;

    invoke-direct {v1, p0}, Lez4$k$a;-><init>(Lez4$k;)V

    invoke-virtual {v0, v1}, Lch8;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final f(Lcx1;Lio/grpc/h$k;)V
    .locals 3

    iget-object v0, p0, Lez4$k;->b:Lez4;

    iget-object v1, v0, Lez4;->n:Lch8;

    invoke-virtual {v1}, Lch8;->d()V

    const-string v1, "newState"

    invoke-static {p1, v1}, Lo8;->l(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v1, "newPicker"

    invoke-static {p2, v1}, Lo8;->l(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v1, v0, Lez4;->y:Lez4$k;

    if-ne p0, v1, :cond_1

    iget-boolean p0, v0, Lez4;->z:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, v0, Lez4;->D:Lel2;

    invoke-virtual {p0, p2}, Lel2;->g(Lio/grpc/h$k;)V

    sget-object p0, Lcx1;->SHUTDOWN:Lcx1;

    if-eq p1, p0, :cond_1

    iget-object p0, v0, Lez4;->M:Lo91;

    sget-object v1, Ln91$a;->INFO:Ln91$a;

    const-string v2, "Entering {0} state with picker: {1}"

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, v1, v2, p2}, Lo91;->b(Ln91$a;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, v0, Lez4;->s:Lex1;

    invoke-virtual {p0, p1}, Lex1;->a(Lcx1;)V

    :cond_1
    :goto_0
    return-void
.end method
