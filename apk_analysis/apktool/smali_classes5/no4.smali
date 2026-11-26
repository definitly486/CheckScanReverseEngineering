.class public final Lno4;
.super Ls68;
.source "SourceFile"


# instance fields
.field public final f:Le02;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le02<",
            "Lj59;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo22;Lbm3;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo22;",
            "Lbm3<",
            "-",
            "Ly22;",
            "-",
            "Le02<",
            "-",
            "Lj59;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v1, v0}, La0;-><init>(Lo22;ZZ)V

    invoke-static {p0, p0, p2}, Lzya;->a(Le02;Le02;Lbm3;)Le02;

    move-result-object p1

    iput-object p1, p0, Lno4;->f:Le02;

    return-void
.end method


# virtual methods
.method public final c0()V
    .locals 2

    iget-object v0, p0, Lno4;->f:Le02;

    :try_start_0
    invoke-static {v0}, Lzya;->b(Le02;)Le02;

    move-result-object v0

    sget-object v1, Lj59;->a:Lj59;

    invoke-static {v0, v1}, Lgo2;->f(Le02;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    instance-of v1, v0, Lkotlinx/coroutines/DispatchException;

    if-eqz v1, :cond_0

    check-cast v0, Lkotlinx/coroutines/DispatchException;

    iget-object v0, v0, Lkotlinx/coroutines/DispatchException;->b:Ljava/lang/Throwable;

    :cond_0
    new-instance v1, Lk57$a;

    invoke-direct {v1, v0}, Lk57$a;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {p0, v1}, La0;->resumeWith(Ljava/lang/Object;)V

    throw v0
.end method
