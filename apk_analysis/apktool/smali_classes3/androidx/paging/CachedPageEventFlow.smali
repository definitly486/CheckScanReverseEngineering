.class public final Landroidx/paging/CachedPageEventFlow;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final downstreamFlow:Lhd3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lhd3<",
            "Landroidx/paging/PageEvent<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private final job:Lmb4;

.field private final mutableSharedSrc:Lvg5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lvg5<",
            "Lj44<",
            "Landroidx/paging/PageEvent<",
            "TT;>;>;>;"
        }
    .end annotation
.end field

.field private final pageController:Landroidx/paging/FlattenedPageController;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/paging/FlattenedPageController<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final sharedForDownstream:Lys7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lys7<",
            "Lj44<",
            "Landroidx/paging/PageEvent<",
            "TT;>;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lhd3;Ly22;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhd3<",
            "+",
            "Landroidx/paging/PageEvent<",
            "TT;>;>;",
            "Ly22;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/paging/FlattenedPageController;

    invoke-direct {v0}, Landroidx/paging/FlattenedPageController;-><init>()V

    iput-object v0, p0, Landroidx/paging/CachedPageEventFlow;->pageController:Landroidx/paging/FlattenedPageController;

    const v0, 0x7fffffff

    sget-object v1, Lcu0;->SUSPEND:Lcu0;

    const/4 v2, 0x1

    invoke-static {v2, v0, v1}, Lbt7;->a(IILcu0;)Lzs7;

    move-result-object v0

    iput-object v0, p0, Landroidx/paging/CachedPageEventFlow;->mutableSharedSrc:Lvg5;

    new-instance v1, Landroidx/paging/CachedPageEventFlow$sharedForDownstream$1;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Landroidx/paging/CachedPageEventFlow$sharedForDownstream$1;-><init>(Landroidx/paging/CachedPageEventFlow;Le02;)V

    new-instance v4, Lvb8;

    invoke-direct {v4, v0, v1}, Lvb8;-><init>(Lzs7;Lbm3;)V

    iput-object v4, p0, Landroidx/paging/CachedPageEventFlow;->sharedForDownstream:Lys7;

    sget-object v0, Lc32;->LAZY:Lc32;

    new-instance v1, Landroidx/paging/CachedPageEventFlow$job$1;

    invoke-direct {v1, p1, p0, v3}, Landroidx/paging/CachedPageEventFlow$job$1;-><init>(Lhd3;Landroidx/paging/CachedPageEventFlow;Le02;)V

    invoke-static {p2, v3, v0, v1, v2}, Lav0;->c(Ly22;Lo22;Lc32;Lbm3;I)Ls68;

    move-result-object p1

    new-instance p2, Lby0;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lby0;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, p2}, Lsb4;->g(Lnl3;)Lhp2;

    iput-object p1, p0, Landroidx/paging/CachedPageEventFlow;->job:Lmb4;

    new-instance p1, Landroidx/paging/CachedPageEventFlow$downstreamFlow$1;

    invoke-direct {p1, p0, v3}, Landroidx/paging/CachedPageEventFlow$downstreamFlow$1;-><init>(Landroidx/paging/CachedPageEventFlow;Le02;)V

    new-instance p2, Ltb7;

    invoke-direct {p2, p1}, Ltb7;-><init>(Lbm3;)V

    iput-object p2, p0, Landroidx/paging/CachedPageEventFlow;->downstreamFlow:Lhd3;

    return-void
.end method

.method public static synthetic a(Landroidx/paging/CachedPageEventFlow;Ljava/lang/Throwable;)Lj59;
    .locals 0

    invoke-static {p0, p1}, Landroidx/paging/CachedPageEventFlow;->job$lambda$0$0(Landroidx/paging/CachedPageEventFlow;Ljava/lang/Throwable;)Lj59;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getJob$p(Landroidx/paging/CachedPageEventFlow;)Lmb4;
    .locals 0

    iget-object p0, p0, Landroidx/paging/CachedPageEventFlow;->job:Lmb4;

    return-object p0
.end method

.method public static final synthetic access$getMutableSharedSrc$p(Landroidx/paging/CachedPageEventFlow;)Lvg5;
    .locals 0

    iget-object p0, p0, Landroidx/paging/CachedPageEventFlow;->mutableSharedSrc:Lvg5;

    return-object p0
.end method

.method public static final synthetic access$getPageController$p(Landroidx/paging/CachedPageEventFlow;)Landroidx/paging/FlattenedPageController;
    .locals 0

    iget-object p0, p0, Landroidx/paging/CachedPageEventFlow;->pageController:Landroidx/paging/FlattenedPageController;

    return-object p0
.end method

.method public static final synthetic access$getSharedForDownstream$p(Landroidx/paging/CachedPageEventFlow;)Lys7;
    .locals 0

    iget-object p0, p0, Landroidx/paging/CachedPageEventFlow;->sharedForDownstream:Lys7;

    return-object p0
.end method

.method private static final job$lambda$0$0(Landroidx/paging/CachedPageEventFlow;Ljava/lang/Throwable;)Lj59;
    .locals 0

    iget-object p0, p0, Landroidx/paging/CachedPageEventFlow;->mutableSharedSrc:Lvg5;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lvg5;->e(Ljava/lang/Object;)Z

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method


# virtual methods
.method public final close()V
    .locals 1

    iget-object p0, p0, Landroidx/paging/CachedPageEventFlow;->job:Lmb4;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lmb4;->cancel(Ljava/util/concurrent/CancellationException;)V

    return-void
.end method

.method public final getCachedEvent$paging_common()Landroidx/paging/PageEvent$Insert;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/paging/PageEvent$Insert<",
            "TT;>;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/paging/CachedPageEventFlow;->pageController:Landroidx/paging/FlattenedPageController;

    invoke-virtual {p0}, Landroidx/paging/FlattenedPageController;->getCachedEvent()Landroidx/paging/PageEvent$Insert;

    move-result-object p0

    return-object p0
.end method

.method public final getDownstreamFlow()Lhd3;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lhd3<",
            "Landroidx/paging/PageEvent<",
            "TT;>;>;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/paging/CachedPageEventFlow;->downstreamFlow:Lhd3;

    return-object p0
.end method
