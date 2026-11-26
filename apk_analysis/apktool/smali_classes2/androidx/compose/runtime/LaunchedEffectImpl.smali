.class public final Landroidx/compose/runtime/LaunchedEffectImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/runtime/RememberObserver;
.implements Ls22;


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private job:Lmb4;

.field private final parentCoroutineContext:Lo22;

.field private final scope:Ly22;

.field private final task:Lbm3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbm3<",
            "Ly22;",
            "Le02<",
            "-",
            "Lj59;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo22;Lbm3;)V
    .locals 0
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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/runtime/LaunchedEffectImpl;->parentCoroutineContext:Lo22;

    iput-object p2, p0, Landroidx/compose/runtime/LaunchedEffectImpl;->task:Lbm3;

    invoke-interface {p1, p0}, Lo22;->plus(Lo22;)Lo22;

    move-result-object p1

    sget-boolean p2, Landroidx/compose/runtime/tooling/ComposeToolingFlags;->isVerboseTracingEnabled:Z

    if-eqz p2, :cond_0

    sget-object p2, Landroidx/compose/runtime/LaunchedEffectTracingContext;->INSTANCE:Landroidx/compose/runtime/LaunchedEffectTracingContext;

    invoke-interface {p1, p2}, Lo22;->plus(Lo22;)Lo22;

    move-result-object p1

    :cond_0
    invoke-static {p1}, Lz22;->a(Lo22;)Lkz1;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/runtime/LaunchedEffectImpl;->scope:Ly22;

    return-void
.end method


# virtual methods
.method public fold(Ljava/lang/Object;Lbm3;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(TR;",
            "Lbm3<",
            "-TR;-",
            "Lo22$a;",
            "+TR;>;)TR;"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lo22$a$a;->a(Lo22$a;Ljava/lang/Object;Lbm3;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public get(Lo22$b;)Lo22$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lo22$a;",
            ">(",
            "Lo22$b<",
            "TE;>;)TE;"
        }
    .end annotation

    invoke-static {p0, p1}, Lo22$a$a;->b(Lo22$a;Lo22$b;)Lo22$a;

    move-result-object p0

    return-object p0
.end method

.method public getKey()Lo22$b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo22$b<",
            "*>;"
        }
    .end annotation

    sget-object p0, Ls22$a;->b:Ls22$a;

    return-object p0
.end method

.method public handleException(Lo22;Ljava/lang/Throwable;)V
    .locals 1

    sget-object v0, Landroidx/compose/runtime/tooling/CompositionErrorContextImpl;->Key:Landroidx/compose/runtime/tooling/CompositionErrorContextImpl$Key;

    invoke-interface {p1, v0}, Lo22;->get(Lo22$b;)Lo22$a;

    move-result-object v0

    check-cast v0, Landroidx/compose/runtime/tooling/CompositionErrorContextImpl;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2, p0}, Landroidx/compose/runtime/tooling/CompositionErrorContextImpl;->attachComposeStackTrace(Ljava/lang/Throwable;Ljava/lang/Object;)Z

    :cond_0
    iget-object p0, p0, Landroidx/compose/runtime/LaunchedEffectImpl;->parentCoroutineContext:Lo22;

    sget-object v0, Ls22$a;->b:Ls22$a;

    invoke-interface {p0, v0}, Lo22;->get(Lo22$b;)Lo22$a;

    move-result-object p0

    check-cast p0, Ls22;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1, p2}, Ls22;->handleException(Lo22;Ljava/lang/Throwable;)V

    return-void

    :cond_1
    throw p2
.end method

.method public minusKey(Lo22$b;)Lo22;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo22$b<",
            "*>;)",
            "Lo22;"
        }
    .end annotation

    invoke-static {p0, p1}, Lo22$a$a;->c(Lo22$a;Lo22$b;)Lo22;

    move-result-object p0

    return-object p0
.end method

.method public onAbandoned()V
    .locals 2

    iget-object v0, p0, Landroidx/compose/runtime/LaunchedEffectImpl;->job:Lmb4;

    if-eqz v0, :cond_0

    new-instance v1, Landroidx/compose/runtime/LeftCompositionCancellationException;

    invoke-direct {v1}, Landroidx/compose/runtime/LeftCompositionCancellationException;-><init>()V

    invoke-interface {v0, v1}, Lmb4;->cancel(Ljava/util/concurrent/CancellationException;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/compose/runtime/LaunchedEffectImpl;->job:Lmb4;

    return-void
.end method

.method public onForgotten()V
    .locals 2

    iget-object v0, p0, Landroidx/compose/runtime/LaunchedEffectImpl;->job:Lmb4;

    if-eqz v0, :cond_0

    new-instance v1, Landroidx/compose/runtime/LeftCompositionCancellationException;

    invoke-direct {v1}, Landroidx/compose/runtime/LeftCompositionCancellationException;-><init>()V

    invoke-interface {v0, v1}, Lmb4;->cancel(Ljava/util/concurrent/CancellationException;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/compose/runtime/LaunchedEffectImpl;->job:Lmb4;

    return-void
.end method

.method public onRemembered()V
    .locals 4

    iget-object v0, p0, Landroidx/compose/runtime/LaunchedEffectImpl;->job:Lmb4;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "Old job was still running!"

    invoke-static {v2, v1}, Lpib;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/util/concurrent/CancellationException;

    move-result-object v2

    invoke-interface {v0, v2}, Lmb4;->cancel(Ljava/util/concurrent/CancellationException;)V

    :cond_0
    iget-object v0, p0, Landroidx/compose/runtime/LaunchedEffectImpl;->scope:Ly22;

    iget-object v2, p0, Landroidx/compose/runtime/LaunchedEffectImpl;->task:Lbm3;

    const/4 v3, 0x3

    invoke-static {v0, v1, v1, v2, v3}, Lav0;->c(Ly22;Lo22;Lc32;Lbm3;I)Ls68;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/runtime/LaunchedEffectImpl;->job:Lmb4;

    return-void
.end method

.method public plus(Lo22;)Lo22;
    .locals 0

    invoke-static {p0, p1}, Lo22$a$a;->d(Lo22$a;Lo22;)Lo22;

    move-result-object p0

    return-object p0
.end method
