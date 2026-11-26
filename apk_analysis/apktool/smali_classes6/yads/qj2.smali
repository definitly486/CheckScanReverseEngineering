.class public final Lyads/qj2;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final e:Ljava/util/concurrent/atomic/AtomicBoolean;


# instance fields
.field public final a:Lyads/t5;

.field public final b:Landroid/content/Context;

.field public final c:Lyads/c5;

.field public final d:Lyads/u93;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lyads/qj2;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lyads/t5;)V
    .locals 2

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    new-instance v0, Lyads/c5;

    invoke-direct {v0}, Lyads/c5;-><init>()V

    new-instance v1, Lyads/u93;

    invoke-direct {v1}, Lyads/u93;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lyads/qj2;->a:Lyads/t5;

    iput-object p1, p0, Lyads/qj2;->b:Landroid/content/Context;

    iput-object v0, p0, Lyads/qj2;->c:Lyads/c5;

    iput-object v1, p0, Lyads/qj2;->d:Lyads/u93;

    return-void
.end method


# virtual methods
.method public final a(Lf02;)Ljava/lang/Object;
    .locals 7

    instance-of v0, p1, Lyads/mj2;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lyads/mj2;

    iget v1, v0, Lyads/mj2;->f:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lyads/mj2;->f:I

    goto :goto_0

    :cond_0
    new-instance v0, Lyads/mj2;

    invoke-direct {v0, p0, p1}, Lyads/mj2;-><init>(Lyads/qj2;Lf02;)V

    :goto_0
    iget-object p1, v0, Lyads/mj2;->d:Ljava/lang/Object;

    sget-object v1, La32;->COROUTINE_SUSPENDED:La32;

    iget v2, v0, Lyads/mj2;->f:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    iget-object p0, v0, Lyads/mj2;->c:Lyads/s5;

    iget-object v0, v0, Lyads/mj2;->b:Lyads/t5;

    :try_start_0
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v3

    :cond_2
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    sget-object p1, Lyads/qj2;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lyads/qj2;->a:Lyads/t5;

    sget-object v2, Lyads/s5;->F:Lyads/s5;

    invoke-virtual {p1, v2}, Lyads/t5;->b(Lyads/s5;)V

    :try_start_1
    invoke-static {}, Lyads/e90;->a()Lr22;

    move-result-object v5

    new-instance v6, Lyads/nj2;

    invoke-direct {v6, p0, v3}, Lyads/nj2;-><init>(Lyads/qj2;Le02;)V

    iput-object p1, v0, Lyads/mj2;->b:Lyads/t5;

    iput-object v2, v0, Lyads/mj2;->c:Lyads/s5;

    iput v4, v0, Lyads/mj2;->f:I

    invoke-static {v5, v6, v0}, Lav0;->d(Lo22;Lbm3;Le02;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne p0, v1, :cond_3

    return-object v1

    :cond_3
    move-object v0, p1

    move-object p0, v2

    goto :goto_2

    :catchall_1
    move-exception p0

    move-object v0, p1

    move-object p1, p0

    move-object p0, v2

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    :goto_2
    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {v0, p0}, Lyads/t5;->a(Lyads/s5;)V

    :cond_4
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    .line 111
    iget-object p0, p0, Lyads/qj2;->d:Lyads/u93;

    const/16 v0, 0x7d0

    invoke-virtual {p0, v0, p1}, Lyads/u93;->a(ILjava/lang/String;)Z

    return-void
.end method
