.class public final Landroidx/compose/runtime/CompositionObserverHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private observer:Landroidx/compose/runtime/tooling/CompositionObserver;

.field private final parent:Landroidx/compose/runtime/CompositionContext;

.field private root:Z


# direct methods
.method public constructor <init>(Landroidx/compose/runtime/tooling/CompositionObserver;ZLandroidx/compose/runtime/CompositionContext;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Landroidx/compose/runtime/CompositionObserverHolder;->observer:Landroidx/compose/runtime/tooling/CompositionObserver;

    .line 16
    iput-boolean p2, p0, Landroidx/compose/runtime/CompositionObserverHolder;->root:Z

    .line 17
    iput-object p3, p0, Landroidx/compose/runtime/CompositionObserverHolder;->parent:Landroidx/compose/runtime/CompositionContext;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/runtime/tooling/CompositionObserver;ZLandroidx/compose/runtime/CompositionContext;ILjh2;)V
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_1

    const/4 p2, 0x0

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/runtime/CompositionObserverHolder;-><init>(Landroidx/compose/runtime/tooling/CompositionObserver;ZLandroidx/compose/runtime/CompositionContext;)V

    return-void
.end method


# virtual methods
.method public final current()Landroidx/compose/runtime/tooling/CompositionObserver;
    .locals 2

    iget-boolean v0, p0, Landroidx/compose/runtime/CompositionObserverHolder;->root:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/compose/runtime/CompositionObserverHolder;->observer:Landroidx/compose/runtime/tooling/CompositionObserver;

    return-object p0

    :cond_0
    iget-object v0, p0, Landroidx/compose/runtime/CompositionObserverHolder;->parent:Landroidx/compose/runtime/CompositionContext;

    invoke-virtual {v0}, Landroidx/compose/runtime/CompositionContext;->getObserverHolder$runtime()Landroidx/compose/runtime/CompositionObserverHolder;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, v0, Landroidx/compose/runtime/CompositionObserverHolder;->observer:Landroidx/compose/runtime/tooling/CompositionObserver;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroidx/compose/runtime/CompositionObserverHolder;->observer:Landroidx/compose/runtime/tooling/CompositionObserver;

    invoke-static {v0, v1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iput-object v0, p0, Landroidx/compose/runtime/CompositionObserverHolder;->observer:Landroidx/compose/runtime/tooling/CompositionObserver;

    :cond_2
    return-object v0
.end method

.method public final getObserver()Landroidx/compose/runtime/tooling/CompositionObserver;
    .locals 0

    iget-object p0, p0, Landroidx/compose/runtime/CompositionObserverHolder;->observer:Landroidx/compose/runtime/tooling/CompositionObserver;

    return-object p0
.end method

.method public final getRoot()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/compose/runtime/CompositionObserverHolder;->root:Z

    return p0
.end method

.method public final setObserver(Landroidx/compose/runtime/tooling/CompositionObserver;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/runtime/CompositionObserverHolder;->observer:Landroidx/compose/runtime/tooling/CompositionObserver;

    return-void
.end method

.method public final setRoot(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/compose/runtime/CompositionObserverHolder;->root:Z

    return-void
.end method
