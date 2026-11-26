.class final Landroidx/navigationevent/compose/ComposeNavigationEventHandler;
.super Landroidx/navigationevent/NavigationEventHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroidx/navigationevent/NavigationEventInfo;",
        ">",
        "Landroidx/navigationevent/NavigationEventHandler<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private currentOnBackCancelled:Lll3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lll3<",
            "Lj59;",
            ">;"
        }
    .end annotation
.end field

.field private currentOnBackCompleted:Lll3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lll3<",
            "Lj59;",
            ">;"
        }
    .end annotation
.end field

.field private currentOnForwardCancelled:Lll3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lll3<",
            "Lj59;",
            ">;"
        }
    .end annotation
.end field

.field private currentOnForwardCompleted:Lll3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lll3<",
            "Lj59;",
            ">;"
        }
    .end annotation
.end field

.field private final onTransitionStateChanged:Lnl3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnl3<",
            "Landroidx/navigationevent/NavigationEventTransitionState;",
            "Lj59;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/navigationevent/NavigationEventInfo;Lnl3;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lnl3<",
            "-",
            "Landroidx/navigationevent/NavigationEventTransitionState;",
            "Lj59;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Landroidx/navigationevent/NavigationEventHandler;-><init>(Landroidx/navigationevent/NavigationEventInfo;ZZ)V

    iput-object p2, p0, Landroidx/navigationevent/compose/ComposeNavigationEventHandler;->onTransitionStateChanged:Lnl3;

    new-instance p1, Landroidx/navigationevent/compose/b;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/navigationevent/compose/ComposeNavigationEventHandler;->currentOnForwardCancelled:Lll3;

    new-instance p1, Landroidx/navigationevent/compose/c;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/navigationevent/compose/ComposeNavigationEventHandler;->currentOnForwardCompleted:Lll3;

    new-instance p1, Landroidx/navigationevent/compose/d;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/navigationevent/compose/ComposeNavigationEventHandler;->currentOnBackCancelled:Lll3;

    new-instance p1, Landroidx/navigationevent/compose/e;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/navigationevent/compose/ComposeNavigationEventHandler;->currentOnBackCompleted:Lll3;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/navigationevent/NavigationEventInfo;Lnl3;ILjh2;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 35
    new-instance p2, Landroidx/navigationevent/compose/a;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    .line 36
    :cond_0
    invoke-direct {p0, p1, p2}, Landroidx/navigationevent/compose/ComposeNavigationEventHandler;-><init>(Landroidx/navigationevent/NavigationEventInfo;Lnl3;)V

    return-void
.end method

.method private static final _init_$lambda$0(Landroidx/navigationevent/NavigationEventTransitionState;)Lj59;
    .locals 0

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public static synthetic a()Lj59;
    .locals 1

    invoke-static {}, Landroidx/navigationevent/compose/ComposeNavigationEventHandler;->currentOnBackCancelled$lambda$3()Lj59;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic b()Lj59;
    .locals 1

    invoke-static {}, Landroidx/navigationevent/compose/ComposeNavigationEventHandler;->currentOnBackCompleted$lambda$4()Lj59;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic c()Lj59;
    .locals 1

    invoke-static {}, Landroidx/navigationevent/compose/ComposeNavigationEventHandler;->currentOnForwardCompleted$lambda$2()Lj59;

    move-result-object v0

    return-object v0
.end method

.method private static final currentOnBackCancelled$lambda$3()Lj59;
    .locals 1

    sget-object v0, Lj59;->a:Lj59;

    return-object v0
.end method

.method private static final currentOnBackCompleted$lambda$4()Lj59;
    .locals 1

    sget-object v0, Lj59;->a:Lj59;

    return-object v0
.end method

.method private static final currentOnForwardCancelled$lambda$1()Lj59;
    .locals 1

    sget-object v0, Lj59;->a:Lj59;

    return-object v0
.end method

.method private static final currentOnForwardCompleted$lambda$2()Lj59;
    .locals 1

    sget-object v0, Lj59;->a:Lj59;

    return-object v0
.end method

.method public static synthetic d()Lj59;
    .locals 1

    invoke-static {}, Landroidx/navigationevent/compose/ComposeNavigationEventHandler;->currentOnForwardCancelled$lambda$1()Lj59;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic e(Landroidx/navigationevent/NavigationEventTransitionState;)Lj59;
    .locals 0

    invoke-static {p0}, Landroidx/navigationevent/compose/ComposeNavigationEventHandler;->_init_$lambda$0(Landroidx/navigationevent/NavigationEventTransitionState;)Lj59;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final getCurrentOnBackCancelled()Lll3;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lll3<",
            "Lj59;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/navigationevent/compose/ComposeNavigationEventHandler;->currentOnBackCancelled:Lll3;

    return-object p0
.end method

.method public final getCurrentOnBackCompleted()Lll3;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lll3<",
            "Lj59;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/navigationevent/compose/ComposeNavigationEventHandler;->currentOnBackCompleted:Lll3;

    return-object p0
.end method

.method public final getCurrentOnForwardCancelled()Lll3;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lll3<",
            "Lj59;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/navigationevent/compose/ComposeNavigationEventHandler;->currentOnForwardCancelled:Lll3;

    return-object p0
.end method

.method public final getCurrentOnForwardCompleted()Lll3;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lll3<",
            "Lj59;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/navigationevent/compose/ComposeNavigationEventHandler;->currentOnForwardCompleted:Lll3;

    return-object p0
.end method

.method public onBackCancelled()V
    .locals 2

    iget-object v0, p0, Landroidx/navigationevent/compose/ComposeNavigationEventHandler;->onTransitionStateChanged:Lnl3;

    invoke-virtual {p0}, Landroidx/navigationevent/NavigationEventHandler;->getTransitionState()Landroidx/navigationevent/NavigationEventTransitionState;

    move-result-object v1

    invoke-interface {v0, v1}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Landroidx/navigationevent/compose/ComposeNavigationEventHandler;->currentOnBackCancelled:Lll3;

    invoke-interface {p0}, Lll3;->invoke()Ljava/lang/Object;

    return-void
.end method

.method public onBackCompleted()V
    .locals 2

    iget-object v0, p0, Landroidx/navigationevent/compose/ComposeNavigationEventHandler;->onTransitionStateChanged:Lnl3;

    invoke-virtual {p0}, Landroidx/navigationevent/NavigationEventHandler;->getTransitionState()Landroidx/navigationevent/NavigationEventTransitionState;

    move-result-object v1

    invoke-interface {v0, v1}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Landroidx/navigationevent/compose/ComposeNavigationEventHandler;->currentOnBackCompleted:Lll3;

    invoke-interface {p0}, Lll3;->invoke()Ljava/lang/Object;

    return-void
.end method

.method public onBackProgressed(Landroidx/navigationevent/NavigationEvent;)V
    .locals 0

    iget-object p1, p0, Landroidx/navigationevent/compose/ComposeNavigationEventHandler;->onTransitionStateChanged:Lnl3;

    invoke-virtual {p0}, Landroidx/navigationevent/NavigationEventHandler;->getTransitionState()Landroidx/navigationevent/NavigationEventTransitionState;

    move-result-object p0

    invoke-interface {p1, p0}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onBackStarted(Landroidx/navigationevent/NavigationEvent;)V
    .locals 0

    iget-object p1, p0, Landroidx/navigationevent/compose/ComposeNavigationEventHandler;->onTransitionStateChanged:Lnl3;

    invoke-virtual {p0}, Landroidx/navigationevent/NavigationEventHandler;->getTransitionState()Landroidx/navigationevent/NavigationEventTransitionState;

    move-result-object p0

    invoke-interface {p1, p0}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onForwardCancelled()V
    .locals 2

    iget-object v0, p0, Landroidx/navigationevent/compose/ComposeNavigationEventHandler;->onTransitionStateChanged:Lnl3;

    invoke-virtual {p0}, Landroidx/navigationevent/NavigationEventHandler;->getTransitionState()Landroidx/navigationevent/NavigationEventTransitionState;

    move-result-object v1

    invoke-interface {v0, v1}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Landroidx/navigationevent/compose/ComposeNavigationEventHandler;->currentOnForwardCancelled:Lll3;

    invoke-interface {p0}, Lll3;->invoke()Ljava/lang/Object;

    return-void
.end method

.method public onForwardCompleted()V
    .locals 2

    iget-object v0, p0, Landroidx/navigationevent/compose/ComposeNavigationEventHandler;->onTransitionStateChanged:Lnl3;

    invoke-virtual {p0}, Landroidx/navigationevent/NavigationEventHandler;->getTransitionState()Landroidx/navigationevent/NavigationEventTransitionState;

    move-result-object v1

    invoke-interface {v0, v1}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Landroidx/navigationevent/compose/ComposeNavigationEventHandler;->currentOnForwardCompleted:Lll3;

    invoke-interface {p0}, Lll3;->invoke()Ljava/lang/Object;

    return-void
.end method

.method public onForwardProgressed(Landroidx/navigationevent/NavigationEvent;)V
    .locals 0

    iget-object p1, p0, Landroidx/navigationevent/compose/ComposeNavigationEventHandler;->onTransitionStateChanged:Lnl3;

    invoke-virtual {p0}, Landroidx/navigationevent/NavigationEventHandler;->getTransitionState()Landroidx/navigationevent/NavigationEventTransitionState;

    move-result-object p0

    invoke-interface {p1, p0}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onForwardStarted(Landroidx/navigationevent/NavigationEvent;)V
    .locals 0

    iget-object p1, p0, Landroidx/navigationevent/compose/ComposeNavigationEventHandler;->onTransitionStateChanged:Lnl3;

    invoke-virtual {p0}, Landroidx/navigationevent/NavigationEventHandler;->getTransitionState()Landroidx/navigationevent/NavigationEventTransitionState;

    move-result-object p0

    invoke-interface {p1, p0}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final setCurrentOnBackCancelled(Lll3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lll3<",
            "Lj59;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/navigationevent/compose/ComposeNavigationEventHandler;->currentOnBackCancelled:Lll3;

    return-void
.end method

.method public final setCurrentOnBackCompleted(Lll3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lll3<",
            "Lj59;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/navigationevent/compose/ComposeNavigationEventHandler;->currentOnBackCompleted:Lll3;

    return-void
.end method

.method public final setCurrentOnForwardCancelled(Lll3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lll3<",
            "Lj59;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/navigationevent/compose/ComposeNavigationEventHandler;->currentOnForwardCancelled:Lll3;

    return-void
.end method

.method public final setCurrentOnForwardCompleted(Lll3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lll3<",
            "Lj59;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/navigationevent/compose/ComposeNavigationEventHandler;->currentOnForwardCompleted:Lll3;

    return-void
.end method
