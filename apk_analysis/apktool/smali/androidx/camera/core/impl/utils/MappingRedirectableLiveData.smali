.class public Landroidx/camera/core/impl/utils/MappingRedirectableLiveData;
.super Landroidx/lifecycle/MediatorLiveData;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Ljava/lang/Object;",
        "O:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/lifecycle/MediatorLiveData<",
        "TO;>;"
    }
.end annotation


# instance fields
.field private final initialValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TO;"
        }
    .end annotation
.end field

.field private liveDataSource:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "TI;>;"
        }
    .end annotation
.end field

.field private final mapFunction:Landroidx/arch/core/util/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/arch/core/util/Function<",
            "TI;TO;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Landroidx/arch/core/util/Function;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TO;",
            "Landroidx/arch/core/util/Function<",
            "TI;TO;>;)V"
        }
    .end annotation

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Landroidx/lifecycle/MediatorLiveData;-><init>()V

    iput-object p1, p0, Landroidx/camera/core/impl/utils/MappingRedirectableLiveData;->initialValue:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/camera/core/impl/utils/MappingRedirectableLiveData;->mapFunction:Landroidx/arch/core/util/Function;

    return-void
.end method

.method public static synthetic a(Landroidx/lifecycle/LiveData;Landroidx/camera/core/impl/utils/MappingRedirectableLiveData;Landroidx/lifecycle/LiveData;)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/camera/core/impl/utils/MappingRedirectableLiveData;->redirectTo$lambda$0(Landroidx/lifecycle/LiveData;Landroidx/camera/core/impl/utils/MappingRedirectableLiveData;Landroidx/lifecycle/LiveData;)V

    return-void
.end method

.method public static synthetic b(Lrh0;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/camera/core/impl/utils/MappingRedirectableLiveData;->redirectTo$lambda$0$1(Lnl3;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic c(Landroidx/camera/core/impl/utils/MappingRedirectableLiveData;Ljava/lang/Object;)Lj59;
    .locals 0

    invoke-static {p0, p1}, Landroidx/camera/core/impl/utils/MappingRedirectableLiveData;->redirectTo$lambda$0$0(Landroidx/camera/core/impl/utils/MappingRedirectableLiveData;Ljava/lang/Object;)Lj59;

    move-result-object p0

    return-object p0
.end method

.method private static final redirectTo$lambda$0(Landroidx/lifecycle/LiveData;Landroidx/camera/core/impl/utils/MappingRedirectableLiveData;Landroidx/lifecycle/LiveData;)V
    .locals 1

    if-eqz p0, :cond_0

    invoke-super {p1, p0}, Landroidx/lifecycle/MediatorLiveData;->removeSource(Landroidx/lifecycle/LiveData;)V

    :cond_0
    new-instance p0, Lrh0;

    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lrh0;-><init>(Ljava/lang/Object;I)V

    new-instance v0, Lh05;

    invoke-direct {v0, p0}, Lh05;-><init>(Lrh0;)V

    invoke-super {p1, p2, v0}, Landroidx/lifecycle/MediatorLiveData;->addSource(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method private static final redirectTo$lambda$0$0(Landroidx/camera/core/impl/utils/MappingRedirectableLiveData;Ljava/lang/Object;)Lj59;
    .locals 1

    iget-object v0, p0, Landroidx/camera/core/impl/utils/MappingRedirectableLiveData;->mapFunction:Landroidx/arch/core/util/Function;

    invoke-interface {v0, p1}, Landroidx/arch/core/util/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method private static final redirectTo$lambda$0$1(Lnl3;Ljava/lang/Object;)V
    .locals 0

    invoke-interface {p0, p1}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public addSource(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/lifecycle/LiveData<",
            "TS;>;",
            "Landroidx/lifecycle/Observer<",
            "-TS;>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TO;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/camera/core/impl/utils/MappingRedirectableLiveData;->liveDataSource:Landroidx/lifecycle/LiveData;

    if-nez v0, :cond_0

    iget-object p0, p0, Landroidx/camera/core/impl/utils/MappingRedirectableLiveData;->initialValue:Ljava/lang/Object;

    return-object p0

    :cond_0
    iget-object p0, p0, Landroidx/camera/core/impl/utils/MappingRedirectableLiveData;->mapFunction:Landroidx/arch/core/util/Function;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Landroidx/arch/core/util/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final redirectTo(Landroidx/lifecycle/LiveData;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LiveData<",
            "TI;>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Landroidx/camera/core/impl/utils/MappingRedirectableLiveData;->liveDataSource:Landroidx/lifecycle/LiveData;

    iput-object p1, p0, Landroidx/camera/core/impl/utils/MappingRedirectableLiveData;->liveDataSource:Landroidx/lifecycle/LiveData;

    new-instance v1, Lqd0;

    const/4 v2, 0x1

    invoke-direct {v1, v0, p0, p1, v2}, Lqd0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-static {v1}, Landroidx/camera/core/impl/utils/Threads;->runOnMain(Ljava/lang/Runnable;)V

    return-void
.end method
