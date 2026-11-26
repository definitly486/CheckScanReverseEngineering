.class public final Lba4;
.super Le57;
.source "SourceFile"


# instance fields
.field public l:I

.field public final synthetic m:Lbm3;

.field public final synthetic n:Le02;


# direct methods
.method public constructor <init>(Le02;Le02;Lbm3;)V
    .locals 0

    iput-object p3, p0, Lba4;->m:Lbm3;

    iput-object p2, p0, Lba4;->n:Le02;

    invoke-direct {p0, p1}, Le57;-><init>(Le02;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lba4;->l:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    if-ne v0, v2, :cond_0

    iput v1, p0, Lba4;->l:I

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    return-object p1

    :cond_0
    const-string p0, "This coroutine had already completed"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    iput v2, p0, Lba4;->l:I

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lba4;->m:Lbm3;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, p1}, Lv39;->c(ILjava/lang/Object;)V

    check-cast p1, Lbm3;

    iget-object v0, p0, Lba4;->n:Le02;

    invoke-interface {p1, v0, p0}, Lbm3;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
