.class public final Landroidx/compose/runtime/RememberedCoroutineScope$special$$inlined$CoroutineExceptionHandler$1;
.super Lb0;
.source "SourceFile"

# interfaces
.implements Ls22;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/runtime/RememberedCoroutineScope;->getCoroutineContext()Lo22;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $traceContext$inlined:Landroidx/compose/runtime/tooling/CompositionErrorContextImpl;

.field final synthetic this$0:Landroidx/compose/runtime/RememberedCoroutineScope;


# direct methods
.method public constructor <init>(Ls22$a;Landroidx/compose/runtime/tooling/CompositionErrorContextImpl;Landroidx/compose/runtime/RememberedCoroutineScope;)V
    .locals 0

    iput-object p2, p0, Landroidx/compose/runtime/RememberedCoroutineScope$special$$inlined$CoroutineExceptionHandler$1;->$traceContext$inlined:Landroidx/compose/runtime/tooling/CompositionErrorContextImpl;

    iput-object p3, p0, Landroidx/compose/runtime/RememberedCoroutineScope$special$$inlined$CoroutineExceptionHandler$1;->this$0:Landroidx/compose/runtime/RememberedCoroutineScope;

    invoke-direct {p0, p1}, Lb0;-><init>(Lo22$b;)V

    return-void
.end method


# virtual methods
.method public handleException(Lo22;Ljava/lang/Throwable;)V
    .locals 2

    iget-object v0, p0, Landroidx/compose/runtime/RememberedCoroutineScope$special$$inlined$CoroutineExceptionHandler$1;->$traceContext$inlined:Landroidx/compose/runtime/tooling/CompositionErrorContextImpl;

    iget-object v1, p0, Landroidx/compose/runtime/RememberedCoroutineScope$special$$inlined$CoroutineExceptionHandler$1;->this$0:Landroidx/compose/runtime/RememberedCoroutineScope;

    invoke-virtual {v0, p2, v1}, Landroidx/compose/runtime/tooling/CompositionErrorContextImpl;->attachComposeStackTrace(Ljava/lang/Throwable;Ljava/lang/Object;)Z

    iget-object v0, p0, Landroidx/compose/runtime/RememberedCoroutineScope$special$$inlined$CoroutineExceptionHandler$1;->this$0:Landroidx/compose/runtime/RememberedCoroutineScope;

    invoke-static {v0}, Landroidx/compose/runtime/RememberedCoroutineScope;->access$getOverlayContext$p(Landroidx/compose/runtime/RememberedCoroutineScope;)Lo22;

    move-result-object v0

    sget-object v1, Ls22$a;->b:Ls22$a;

    invoke-interface {v0, v1}, Lo22;->get(Lo22$b;)Lo22$a;

    move-result-object v0

    check-cast v0, Ls22;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Ls22;->handleException(Lo22;Ljava/lang/Throwable;)V

    return-void

    :cond_0
    iget-object p0, p0, Landroidx/compose/runtime/RememberedCoroutineScope$special$$inlined$CoroutineExceptionHandler$1;->this$0:Landroidx/compose/runtime/RememberedCoroutineScope;

    invoke-static {p0}, Landroidx/compose/runtime/RememberedCoroutineScope;->access$getParentContext$p(Landroidx/compose/runtime/RememberedCoroutineScope;)Lo22;

    move-result-object p0

    invoke-interface {p0, v1}, Lo22;->get(Lo22$b;)Lo22$a;

    move-result-object p0

    check-cast p0, Ls22;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1, p2}, Ls22;->handleException(Lo22;Ljava/lang/Throwable;)V

    return-void

    :cond_1
    throw p2
.end method
