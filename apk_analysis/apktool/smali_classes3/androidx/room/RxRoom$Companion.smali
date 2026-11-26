.class public final Landroidx/room/RxRoom$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/room/RxRoom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljh2;)V
    .locals 0

    invoke-direct {p0}, Landroidx/room/RxRoom$Companion;-><init>()V

    return-void
.end method

.method public static synthetic a(Landroidx/room/RoomDatabase;[Ljava/lang/String;Lkg3$b;)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/room/RxRoom$Companion;->createFlowable$lambda$1(Landroidx/room/RoomDatabase;[Ljava/lang/String;Lqg3;)V

    return-void
.end method

.method public static synthetic b(Landroidx/room/RoomDatabase;[Ljava/lang/String;Lxq5$a;)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/room/RxRoom$Companion;->createObservable$lambda$4(Landroidx/room/RoomDatabase;[Ljava/lang/String;Lcr5;)V

    return-void
.end method

.method public static synthetic c(Ljava/util/concurrent/Callable;Loz7$a;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/room/RxRoom$Companion;->createSingle$lambda$6(Ljava/util/concurrent/Callable;Lb08;)V

    return-void
.end method

.method private static final createFlowable$lambda$1(Landroidx/room/RoomDatabase;[Ljava/lang/String;Lqg3;)V
    .locals 2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroidx/room/RxRoom$Companion$createFlowable$1$observer$1;

    invoke-direct {v0, p1, p2}, Landroidx/room/RxRoom$Companion$createFlowable$1$observer$1;-><init>([Ljava/lang/String;Lqg3;)V

    move-object p1, p2

    check-cast p1, Lkg3$b;

    iget-object p1, p1, Lkg3$b;->c:Lkp7;

    invoke-virtual {p1}, Lkp7;->isDisposed()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->getInvalidationTracker()Landroidx/room/InvalidationTracker;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/room/InvalidationTracker;->addObserver(Landroidx/room/InvalidationTracker$Observer;)V

    new-instance v1, Lh97;

    invoke-direct {v1, p0, v0}, Lh97;-><init>(Landroidx/room/RoomDatabase;Landroidx/room/RxRoom$Companion$createFlowable$1$observer$1;)V

    new-instance p0, Li6;

    invoke-direct {p0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    invoke-static {p1, p0}, Lip2;->f(Ljava/util/concurrent/atomic/AtomicReference;Lcp2;)V

    :cond_0
    invoke-virtual {p1}, Lkp7;->isDisposed()Z

    move-result p0

    if-nez p0, :cond_1

    sget-object p0, Landroidx/room/RxRoom;->NOTHING:Ljava/lang/Object;

    invoke-interface {p2, p0}, Lzw2;->onNext(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method private static final createFlowable$lambda$1$lambda$0(Landroidx/room/RoomDatabase;Landroidx/room/RxRoom$Companion$createFlowable$1$observer$1;)V
    .locals 0

    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->getInvalidationTracker()Landroidx/room/InvalidationTracker;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/room/InvalidationTracker;->removeObserver(Landroidx/room/InvalidationTracker$Observer;)V

    return-void
.end method

.method private static final createFlowable$lambda$2(La75;Ljava/lang/Object;)Lx75;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method

.method private static final createObservable$lambda$4(Landroidx/room/RoomDatabase;[Ljava/lang/String;Lcr5;)V
    .locals 1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroidx/room/RxRoom$Companion$createObservable$1$observer$1;

    invoke-direct {v0, p1, p2}, Landroidx/room/RxRoom$Companion$createObservable$1$observer$1;-><init>([Ljava/lang/String;Lcr5;)V

    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->getInvalidationTracker()Landroidx/room/InvalidationTracker;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/room/InvalidationTracker;->addObserver(Landroidx/room/InvalidationTracker$Observer;)V

    new-instance p1, Lg97;

    invoke-direct {p1, p0, v0}, Lg97;-><init>(Landroidx/room/RoomDatabase;Landroidx/room/RxRoom$Companion$createObservable$1$observer$1;)V

    new-instance p0, Li6;

    invoke-direct {p0, p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    check-cast p2, Lxq5$a;

    invoke-static {p2, p0}, Lip2;->f(Ljava/util/concurrent/atomic/AtomicReference;Lcp2;)V

    sget-object p0, Landroidx/room/RxRoom;->NOTHING:Ljava/lang/Object;

    invoke-virtual {p2, p0}, Lxq5$a;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method private static final createObservable$lambda$4$lambda$3(Landroidx/room/RoomDatabase;Landroidx/room/RxRoom$Companion$createObservable$1$observer$1;)V
    .locals 0

    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->getInvalidationTracker()Landroidx/room/InvalidationTracker;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/room/InvalidationTracker;->removeObserver(Landroidx/room/InvalidationTracker$Observer;)V

    return-void
.end method

.method private static final createObservable$lambda$5(La75;Ljava/lang/Object;)Lx75;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method

.method private static final createSingle$lambda$6(Ljava/util/concurrent/Callable;Lb08;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    invoke-interface {p0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p1, p0}, Lb08;->onSuccess(Ljava/lang/Object;)V

    return-void

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    new-instance p0, Landroidx/room/EmptyResultSetException;

    const-string v0, "Query returned empty result set."

    invoke-direct {p0, v0}, Landroidx/room/EmptyResultSetException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Landroidx/room/EmptyResultSetException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-interface {p1, p0}, Lb08;->a(Ljava/lang/Throwable;)Z

    return-void
.end method

.method public static synthetic d(Landroidx/room/RoomDatabase;Landroidx/room/RxRoom$Companion$createFlowable$1$observer$1;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/room/RxRoom$Companion;->createFlowable$lambda$1$lambda$0(Landroidx/room/RoomDatabase;Landroidx/room/RxRoom$Companion$createFlowable$1$observer$1;)V

    return-void
.end method

.method public static synthetic e(Lm75;Ljava/lang/Object;)Lx75;
    .locals 0

    invoke-static {p0, p1}, Landroidx/room/RxRoom$Companion;->createFlowable$lambda$2(La75;Ljava/lang/Object;)Lx75;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(Landroidx/room/RoomDatabase;Landroidx/room/RxRoom$Companion$createObservable$1$observer$1;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/room/RxRoom$Companion;->createObservable$lambda$4$lambda$3(Landroidx/room/RoomDatabase;Landroidx/room/RxRoom$Companion$createObservable$1$observer$1;)V

    return-void
.end method

.method public static synthetic g(Lm75;Ljava/lang/Object;)Lx75;
    .locals 0

    invoke-static {p0, p1}, Landroidx/room/RxRoom$Companion;->createObservable$lambda$5(La75;Ljava/lang/Object;)Lx75;

    move-result-object p0

    return-object p0
.end method

.method private final getExecutor(Landroidx/room/RoomDatabase;Z)Ljava/util/concurrent/Executor;
    .locals 0

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->getTransactionExecutor()Ljava/util/concurrent/Executor;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->getQueryExecutor()Ljava/util/concurrent/Executor;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final createCompletable(Landroidx/room/RoomDatabase;ZZLnl3;)Lqp1;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/room/RoomDatabase;",
            "ZZ",
            "Lnl3<",
            "-",
            "Landroidx/sqlite/SQLiteConnection;",
            "Lj59;",
            ">;)",
            "Lqp1;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->getQueryContext()Lo22;

    move-result-object p0

    sget-object v0, Lmb4$a;->b:Lmb4$a;

    invoke-interface {p0, v0}, Lo22;->minusKey(Lo22$b;)Lo22;

    move-result-object p0

    new-instance v1, Landroidx/room/RxRoom$Companion$createCompletable$1;

    const/4 v6, 0x0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v1 .. v6}, Landroidx/room/RxRoom$Companion$createCompletable$1;-><init>(Landroidx/room/RoomDatabase;ZZLnl3;Le02;)V

    invoke-interface {p0, v0}, Lo22;->get(Lo22$b;)Lo22$a;

    move-result-object p1

    if-nez p1, :cond_0

    new-instance p1, Lz87;

    invoke-direct {p1, p0, v1}, Lz87;-><init>(Lo22;Lbm3;)V

    new-instance p0, Lvp1;

    invoke-direct {p0, p1}, Lvp1;-><init>(Lz87;)V

    return-object p0

    :cond_0
    const-string p1, "Completable context cannot contain job in it. Its lifecycle should be managed via Disposable handle. Had "

    invoke-static {p0, p1}, Leg;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final createFlowable(Landroidx/room/RoomDatabase;Z[Ljava/lang/String;Ljava/util/concurrent/Callable;)Lgg3;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/room/RoomDatabase;",
            "Z[",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Callable<",
            "+TT;>;)",
            "Lgg3<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lul2;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, p1, p2}, Landroidx/room/RxRoom$Companion;->getExecutor(Landroidx/room/RoomDatabase;Z)Ljava/util/concurrent/Executor;

    move-result-object p2

    sget-object v0, Lne7;->a:Lhe7;

    new-instance v0, Lw13;

    invoke-direct {v0, p2}, Lw13;-><init>(Ljava/util/concurrent/Executor;)V

    new-instance p2, Lm75;

    invoke-direct {p2, p4}, Lm75;-><init>(Ljava/util/concurrent/Callable;)V

    array-length p4, p3

    invoke-static {p3, p4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [Ljava/lang/String;

    invoke-virtual {p0, p1, p3}, Landroidx/room/RxRoom$Companion;->createFlowable(Landroidx/room/RoomDatabase;[Ljava/lang/String;)Lgg3;

    move-result-object p0

    invoke-virtual {p0, v0}, Lgg3;->h(Lhe7;)Lqh3;

    move-result-object p0

    new-instance p1, Lwh3;

    invoke-direct {p1, p0, v0}, Lwh3;-><init>(Lqh3;Lw13;)V

    invoke-virtual {p1, v0}, Lgg3;->c(Lhe7;)Leh3;

    move-result-object p0

    new-instance p1, Lyp0;

    const/4 p3, 0x3

    invoke-direct {p1, p2, p3}, Lyp0;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p0, p1}, Lgg3;->b(Lxl3;)Lug3;

    move-result-object p0

    return-object p0
.end method

.method public final createFlowable(Landroidx/room/RoomDatabase;Z[Ljava/lang/String;Lnl3;)Lgg3;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/room/RoomDatabase;",
            "Z[",
            "Ljava/lang/String;",
            "Lnl3<",
            "-",
            "Landroidx/sqlite/SQLiteConnection;",
            "+TT;>;)",
            "Lgg3<",
            "TT;>;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 66
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/room/RxRoom$Companion;->createObservable(Landroidx/room/RoomDatabase;Z[Ljava/lang/String;Lnl3;)Ltq5;

    move-result-object p0

    .line 67
    sget-object p1, Ln00;->LATEST:Ln00;

    invoke-virtual {p0, p1}, Ltq5;->h(Ln00;)Lgg3;

    move-result-object p0

    return-object p0
.end method

.method public final varargs createFlowable(Landroidx/room/RoomDatabase;[Ljava/lang/String;)Lgg3;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/room/RoomDatabase;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Lgg3<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 60
    new-instance p0, Li97;

    invoke-direct {p0, p1, p2}, Li97;-><init>(Landroidx/room/RoomDatabase;[Ljava/lang/String;)V

    .line 61
    sget-object p1, Ln00;->LATEST:Ln00;

    .line 62
    sget p2, Lgg3;->b:I

    .line 63
    const-string p2, "mode is null"

    invoke-static {p1, p2}, Lnq5;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    new-instance p2, Lkg3;

    invoke-direct {p2, p0, p1}, Lkg3;-><init>(Ljh3;Ln00;)V

    return-object p2
.end method

.method public final createFlowable(Landroidx/room/RoomDatabase;[Ljava/lang/String;Ljava/util/concurrent/Callable;)Lgg3;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/room/RoomDatabase;",
            "[",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Callable<",
            "+TT;>;)",
            "Lgg3<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lul2;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    .line 65
    invoke-virtual {p0, p1, v0, p2, p3}, Landroidx/room/RxRoom$Companion;->createFlowable(Landroidx/room/RoomDatabase;Z[Ljava/lang/String;Ljava/util/concurrent/Callable;)Lgg3;

    move-result-object p0

    return-object p0
.end method

.method public final createMaybe(Landroidx/room/RoomDatabase;ZZLnl3;)La75;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/room/RoomDatabase;",
            "ZZ",
            "Lnl3<",
            "-",
            "Landroidx/sqlite/SQLiteConnection;",
            "+TT;>;)",
            "La75<",
            "TT;>;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->getQueryContext()Lo22;

    move-result-object p0

    sget-object v0, Lmb4$a;->b:Lmb4$a;

    invoke-interface {p0, v0}, Lo22;->minusKey(Lo22$b;)Lo22;

    move-result-object p0

    new-instance v1, Landroidx/room/RxRoom$Companion$createMaybe$1;

    const/4 v6, 0x0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v1 .. v6}, Landroidx/room/RxRoom$Companion$createMaybe$1;-><init>(Landroidx/room/RoomDatabase;ZZLnl3;Le02;)V

    invoke-interface {p0, v0}, Lo22;->get(Lo22$b;)Lo22$a;

    move-result-object p1

    if-nez p1, :cond_0

    new-instance p1, Lrv1;

    invoke-direct {p1, p0, v1}, Lrv1;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance p0, Lc75;

    invoke-direct {p0, p1}, Lc75;-><init>(Lv75;)V

    return-object p0

    :cond_0
    const-string p1, "Maybe context cannot contain job in it.Its lifecycle should be managed via Disposable handle. Had "

    invoke-static {p0, p1}, Leg;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final createObservable(Landroidx/room/RoomDatabase;Z[Ljava/lang/String;Ljava/util/concurrent/Callable;)Ltq5;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/room/RoomDatabase;",
            "Z[",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Callable<",
            "+TT;>;)",
            "Ltq5<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lul2;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, p1, p2}, Landroidx/room/RxRoom$Companion;->getExecutor(Landroidx/room/RoomDatabase;Z)Ljava/util/concurrent/Executor;

    move-result-object p2

    sget-object v0, Lne7;->a:Lhe7;

    new-instance v0, Lw13;

    invoke-direct {v0, p2}, Lw13;-><init>(Ljava/util/concurrent/Executor;)V

    new-instance p2, Lm75;

    invoke-direct {p2, p4}, Lm75;-><init>(Ljava/util/concurrent/Callable;)V

    array-length p4, p3

    invoke-static {p3, p4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [Ljava/lang/String;

    invoke-virtual {p0, p1, p3}, Landroidx/room/RxRoom$Companion;->createObservable(Landroidx/room/RoomDatabase;[Ljava/lang/String;)Ltq5;

    move-result-object p0

    invoke-virtual {p0, v0}, Ltq5;->g(Lhe7;)Lxr5;

    move-result-object p0

    new-instance p1, Lcs5;

    invoke-direct {p1, p0, v0}, Lcs5;-><init>(Lxr5;Lw13;)V

    invoke-virtual {p1, v0}, Ltq5;->e(Lhe7;)Lqr5;

    move-result-object p0

    new-instance p1, Lq01;

    const/4 p3, 0x2

    invoke-direct {p1, p2, p3}, Lq01;-><init>(Ljava/lang/Object;I)V

    new-instance p2, Lir5;

    invoke-direct {p2, p0, p1}, Lir5;-><init>(Lqr5;Lq01;)V

    return-object p2
.end method

.method public final createObservable(Landroidx/room/RoomDatabase;Z[Ljava/lang/String;Lnl3;)Ltq5;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/room/RoomDatabase;",
            "Z[",
            "Ljava/lang/String;",
            "Lnl3<",
            "-",
            "Landroidx/sqlite/SQLiteConnection;",
            "+TT;>;)",
            "Ltq5<",
            "TT;>;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 64
    invoke-static {p1, p2, p3, p4}, Landroidx/room/coroutines/FlowUtil;->createFlow(Landroidx/room/RoomDatabase;Z[Ljava/lang/String;Lnl3;)Lhd3;

    move-result-object p0

    .line 65
    new-instance p2, Lcf3;

    invoke-direct {p2, p0}, Lcf3;-><init>(Lhd3;)V

    .line 66
    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->getQueryContext()Lo22;

    move-result-object p0

    .line 67
    new-instance p1, Ljf2;

    invoke-direct {p1, p0, p2}, Ljf2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 68
    new-instance p0, Lxq5;

    invoke-direct {p0, p1}, Lxq5;-><init>(Lrr5;)V

    return-object p0
.end method

.method public final varargs createObservable(Landroidx/room/RoomDatabase;[Ljava/lang/String;)Ltq5;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/room/RoomDatabase;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ltq5<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    new-instance p0, Lf97;

    invoke-direct {p0, p1, p2}, Lf97;-><init>(Landroidx/room/RoomDatabase;[Ljava/lang/String;)V

    .line 62
    new-instance p1, Lxq5;

    invoke-direct {p1, p0}, Lxq5;-><init>(Lrr5;)V

    return-object p1
.end method

.method public final createObservable(Landroidx/room/RoomDatabase;[Ljava/lang/String;Ljava/util/concurrent/Callable;)Ltq5;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/room/RoomDatabase;",
            "[",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Callable<",
            "+TT;>;)",
            "Ltq5<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lul2;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    .line 63
    invoke-virtual {p0, p1, v0, p2, p3}, Landroidx/room/RxRoom$Companion;->createObservable(Landroidx/room/RoomDatabase;Z[Ljava/lang/String;Ljava/util/concurrent/Callable;)Ltq5;

    move-result-object p0

    return-object p0
.end method

.method public final createSingle(Landroidx/room/RoomDatabase;ZZLnl3;)Lmz7;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/room/RoomDatabase;",
            "ZZ",
            "Lnl3<",
            "-",
            "Landroidx/sqlite/SQLiteConnection;",
            "+TT;>;)",
            "Lmz7<",
            "TT;>;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->getQueryContext()Lo22;

    move-result-object p0

    sget-object v0, Lmb4$a;->b:Lmb4$a;

    invoke-interface {p0, v0}, Lo22;->minusKey(Lo22$b;)Lo22;

    move-result-object p0

    new-instance v1, Landroidx/room/RxRoom$Companion$createSingle$1;

    const/4 v6, 0x0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v1 .. v6}, Landroidx/room/RxRoom$Companion$createSingle$1;-><init>(Landroidx/room/RoomDatabase;ZZLnl3;Le02;)V

    invoke-interface {p0, v0}, Lo22;->get(Lo22$b;)Lo22$a;

    move-result-object p1

    if-nez p1, :cond_0

    new-instance p1, Ltf2;

    invoke-direct {p1, p0, v1}, Ltf2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance p0, Loz7;

    invoke-direct {p0, p1}, Loz7;-><init>(Lw08;)V

    return-object p0

    :cond_0
    const-string p1, "Single context cannot contain job in it.Its lifecycle should be managed via Disposable handle. Had "

    invoke-static {p0, p1}, Leg;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final createSingle(Ljava/util/concurrent/Callable;)Lmz7;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "+TT;>;)",
            "Lmz7<",
            "TT;>;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    new-instance p0, Lwp0;

    const/4 v0, 0x3

    invoke-direct {p0, p1, v0}, Lwp0;-><init>(Ljava/lang/Object;I)V

    .line 51
    new-instance p1, Loz7;

    invoke-direct {p1, p0}, Loz7;-><init>(Lw08;)V

    return-object p1
.end method
