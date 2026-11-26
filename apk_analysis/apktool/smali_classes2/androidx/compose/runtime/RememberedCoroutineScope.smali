.class public final Landroidx/compose/runtime/RememberedCoroutineScope;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ly22;
.implements Landroidx/compose/runtime/RememberObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/runtime/RememberedCoroutineScope$Companion;
    }
.end annotation


# static fields
.field public static final $stable:I

.field public static final CancelledCoroutineContext:Lo22;

.field public static final Companion:Landroidx/compose/runtime/RememberedCoroutineScope$Companion;


# instance fields
.field private volatile _coroutineContext:Lo22;

.field private final lock:Ljava/lang/Object;

.field private final overlayContext:Lo22;

.field private final parentContext:Lo22;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/runtime/RememberedCoroutineScope$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/runtime/RememberedCoroutineScope$Companion;-><init>(Ljh2;)V

    sput-object v0, Landroidx/compose/runtime/RememberedCoroutineScope;->Companion:Landroidx/compose/runtime/RememberedCoroutineScope$Companion;

    const/16 v0, 0x8

    sput v0, Landroidx/compose/runtime/RememberedCoroutineScope;->$stable:I

    new-instance v0, Landroidx/compose/runtime/CancelledCoroutineContext;

    invoke-direct {v0}, Landroidx/compose/runtime/CancelledCoroutineContext;-><init>()V

    sput-object v0, Landroidx/compose/runtime/RememberedCoroutineScope;->CancelledCoroutineContext:Lo22;

    return-void
.end method

.method public constructor <init>(Lo22;Lo22;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/runtime/RememberedCoroutineScope;->parentContext:Lo22;

    iput-object p2, p0, Landroidx/compose/runtime/RememberedCoroutineScope;->overlayContext:Lo22;

    iput-object p0, p0, Landroidx/compose/runtime/RememberedCoroutineScope;->lock:Ljava/lang/Object;

    return-void
.end method

.method public static final synthetic access$getOverlayContext$p(Landroidx/compose/runtime/RememberedCoroutineScope;)Lo22;
    .locals 0

    iget-object p0, p0, Landroidx/compose/runtime/RememberedCoroutineScope;->overlayContext:Lo22;

    return-object p0
.end method

.method public static final synthetic access$getParentContext$p(Landroidx/compose/runtime/RememberedCoroutineScope;)Lo22;
    .locals 0

    iget-object p0, p0, Landroidx/compose/runtime/RememberedCoroutineScope;->parentContext:Lo22;

    return-object p0
.end method


# virtual methods
.method public final cancelIfCreated()V
    .locals 2

    iget-object v0, p0, Landroidx/compose/runtime/RememberedCoroutineScope;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/compose/runtime/RememberedCoroutineScope;->_coroutineContext:Lo22;

    if-nez v1, :cond_0

    sget-object v1, Landroidx/compose/runtime/RememberedCoroutineScope;->CancelledCoroutineContext:Lo22;

    iput-object v1, p0, Landroidx/compose/runtime/RememberedCoroutineScope;->_coroutineContext:Lo22;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    new-instance p0, Landroidx/compose/runtime/ForgottenCoroutineScopeException;

    invoke-direct {p0}, Landroidx/compose/runtime/ForgottenCoroutineScopeException;-><init>()V

    invoke-static {v1, p0}, Lqb4;->b(Lo22;Ljava/util/concurrent/CancellationException;)V

    :goto_0
    sget-object p0, Lj59;->a:Lj59;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0

    throw p0
.end method

.method public getCoroutineContext()Lo22;
    .locals 5

    iget-object v0, p0, Landroidx/compose/runtime/RememberedCoroutineScope;->_coroutineContext:Lo22;

    if-eqz v0, :cond_0

    sget-object v1, Landroidx/compose/runtime/RememberedCoroutineScope;->CancelledCoroutineContext:Lo22;

    if-ne v0, v1, :cond_4

    :cond_0
    iget-object v0, p0, Landroidx/compose/runtime/RememberedCoroutineScope;->parentContext:Lo22;

    sget-object v1, Landroidx/compose/runtime/tooling/CompositionErrorContextImpl;->Key:Landroidx/compose/runtime/tooling/CompositionErrorContextImpl$Key;

    invoke-interface {v0, v1}, Lo22;->get(Lo22$b;)Lo22$a;

    move-result-object v0

    check-cast v0, Landroidx/compose/runtime/tooling/CompositionErrorContextImpl;

    if-eqz v0, :cond_1

    sget-object v1, Ls22$a;->b:Ls22$a;

    new-instance v2, Landroidx/compose/runtime/RememberedCoroutineScope$special$$inlined$CoroutineExceptionHandler$1;

    invoke-direct {v2, v1, v0, p0}, Landroidx/compose/runtime/RememberedCoroutineScope$special$$inlined$CoroutineExceptionHandler$1;-><init>(Ls22$a;Landroidx/compose/runtime/tooling/CompositionErrorContextImpl;Landroidx/compose/runtime/RememberedCoroutineScope;)V

    goto :goto_0

    :cond_1
    sget-object v2, Lgx2;->b:Lgx2;

    :goto_0
    iget-object v0, p0, Landroidx/compose/runtime/RememberedCoroutineScope;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/compose/runtime/RememberedCoroutineScope;->_coroutineContext:Lo22;

    if-nez v1, :cond_2

    iget-object v1, p0, Landroidx/compose/runtime/RememberedCoroutineScope;->parentContext:Lo22;

    sget-object v3, Lmb4$a;->b:Lmb4$a;

    invoke-interface {v1, v3}, Lo22;->get(Lo22$b;)Lo22$a;

    move-result-object v3

    check-cast v3, Lmb4;

    new-instance v4, Lnb4;

    invoke-direct {v4, v3}, Lnb4;-><init>(Lmb4;)V

    invoke-interface {v1, v4}, Lo22;->plus(Lo22;)Lo22;

    move-result-object v1

    iget-object v3, p0, Landroidx/compose/runtime/RememberedCoroutineScope;->overlayContext:Lo22;

    invoke-interface {v1, v3}, Lo22;->plus(Lo22;)Lo22;

    move-result-object v1

    invoke-interface {v1, v2}, Lo22;->plus(Lo22;)Lo22;

    move-result-object v1

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_2
    sget-object v3, Landroidx/compose/runtime/RememberedCoroutineScope;->CancelledCoroutineContext:Lo22;

    if-ne v1, v3, :cond_3

    iget-object v1, p0, Landroidx/compose/runtime/RememberedCoroutineScope;->parentContext:Lo22;

    sget-object v3, Lmb4$a;->b:Lmb4$a;

    invoke-interface {v1, v3}, Lo22;->get(Lo22$b;)Lo22$a;

    move-result-object v3

    check-cast v3, Lmb4;

    new-instance v4, Lnb4;

    invoke-direct {v4, v3}, Lnb4;-><init>(Lmb4;)V

    new-instance v3, Landroidx/compose/runtime/ForgottenCoroutineScopeException;

    invoke-direct {v3}, Landroidx/compose/runtime/ForgottenCoroutineScopeException;-><init>()V

    invoke-virtual {v4, v3}, Lsb4;->w(Ljava/lang/Object;)Z

    invoke-interface {v1, v4}, Lo22;->plus(Lo22;)Lo22;

    move-result-object v1

    iget-object v3, p0, Landroidx/compose/runtime/RememberedCoroutineScope;->overlayContext:Lo22;

    invoke-interface {v1, v3}, Lo22;->plus(Lo22;)Lo22;

    move-result-object v1

    invoke-interface {v1, v2}, Lo22;->plus(Lo22;)Lo22;

    move-result-object v1

    sget-boolean v2, Landroidx/compose/runtime/tooling/ComposeToolingFlags;->isVerboseTracingEnabled:Z

    if-eqz v2, :cond_3

    sget-object v2, Landroidx/compose/runtime/RememberedCoroutineScopeTracingContext;->INSTANCE:Landroidx/compose/runtime/RememberedCoroutineScopeTracingContext;

    invoke-interface {v1, v2}, Lo22;->plus(Lo22;)Lo22;

    move-result-object v1

    :cond_3
    :goto_1
    iput-object v1, p0, Landroidx/compose/runtime/RememberedCoroutineScope;->_coroutineContext:Lo22;

    sget-object p0, Lj59;->a:Lj59;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    move-object v0, v1

    :cond_4
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0

    :goto_2
    monitor-exit v0

    throw p0
.end method

.method public onAbandoned()V
    .locals 0

    invoke-virtual {p0}, Landroidx/compose/runtime/RememberedCoroutineScope;->cancelIfCreated()V

    return-void
.end method

.method public onForgotten()V
    .locals 0

    invoke-virtual {p0}, Landroidx/compose/runtime/RememberedCoroutineScope;->cancelIfCreated()V

    return-void
.end method

.method public onRemembered()V
    .locals 0

    return-void
.end method
