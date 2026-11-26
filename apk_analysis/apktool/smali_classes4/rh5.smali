.class public final Lrh5;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static volatile b:Lnh5;

.field public static c:Lkt9;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    sput-object v0, Lrh5;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Lnh5;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lnh5;-><init>(I)V

    sput-object v0, Lrh5;->b:Lnh5;

    const/4 v0, 0x0

    sput-object v0, Lrh5;->c:Lkt9;

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "MyTarget cannot be initialized due to a null application context"

    invoke-static {p0}, Ly14;->t(Ljava/lang/String;)V

    return-void

    :cond_0
    sget-object v0, Lrh5;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const-string v0, "MyTarget initialization"

    invoke-static {v0}, Ly14;->t(Ljava/lang/String;)V

    new-instance v0, Lkt9;

    invoke-direct {v0, p0}, Lkt9;-><init>(Landroid/content/Context;)V

    sput-object v0, Lrh5;->c:Lkt9;

    new-instance v1, Lqh5;

    invoke-direct {v1, v2, v0, p0}, Lqh5;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    sget-object p0, Lw4a;->b:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
