.class public final Lsh2;
.super Lu13;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Executor;


# static fields
.field public static final c:Lsh2;

.field public static final d:Lr22;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lsh2;

    invoke-direct {v0}, Lu13;-><init>()V

    sput-object v0, Lsh2;->c:Lsh2;

    sget-object v0, Lx69;->c:Lx69;

    sget v1, Lkh8;->a:I

    const/16 v2, 0x40

    if-ge v2, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    const/16 v2, 0xc

    const-string v3, "kotlinx.coroutines.io.parallelism"

    invoke-static {v1, v2, v3}, Lr96;->e(IILjava/lang/String;)I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2, v3}, Lr22;->limitedParallelism$default(Lr22;ILjava/lang/String;ILjava/lang/Object;)Lr22;

    move-result-object v0

    sput-object v0, Lsh2;->d:Lr22;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot be invoked on Dispatchers.IO"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final dispatch(Lo22;Ljava/lang/Runnable;)V
    .locals 0

    sget-object p0, Lsh2;->d:Lr22;

    invoke-virtual {p0, p1, p2}, Lr22;->dispatch(Lo22;Ljava/lang/Runnable;)V

    return-void
.end method

.method public final dispatchYield(Lo22;Ljava/lang/Runnable;)V
    .locals 0

    sget-object p0, Lsh2;->d:Lr22;

    invoke-virtual {p0, p1, p2}, Lr22;->dispatchYield(Lo22;Ljava/lang/Runnable;)V

    return-void
.end method

.method public final execute(Ljava/lang/Runnable;)V
    .locals 1

    sget-object v0, Lgx2;->b:Lgx2;

    invoke-virtual {p0, v0, p1}, Lsh2;->dispatch(Lo22;Ljava/lang/Runnable;)V

    return-void
.end method

.method public final k0()Ljava/util/concurrent/Executor;
    .locals 0

    return-object p0
.end method

.method public final limitedParallelism(ILjava/lang/String;)Lr22;
    .locals 0

    sget-object p0, Lx69;->c:Lx69;

    invoke-virtual {p0, p1, p2}, Lx69;->limitedParallelism(ILjava/lang/String;)Lr22;

    move-result-object p0

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    const-string p0, "Dispatchers.IO"

    return-object p0
.end method
