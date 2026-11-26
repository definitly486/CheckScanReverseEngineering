.class public final Landroidx/lifecycle/compose/LifecycleResumePauseEffectScope;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/LifecycleOwner;


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private final lifecycle:Landroidx/lifecycle/Lifecycle;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/Lifecycle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/lifecycle/compose/LifecycleResumePauseEffectScope;->lifecycle:Landroidx/lifecycle/Lifecycle;

    return-void
.end method


# virtual methods
.method public getLifecycle()Landroidx/lifecycle/Lifecycle;
    .locals 0

    iget-object p0, p0, Landroidx/lifecycle/compose/LifecycleResumePauseEffectScope;->lifecycle:Landroidx/lifecycle/Lifecycle;

    return-object p0
.end method

.method public final onPauseOrDispose(Lnl3;)Landroidx/lifecycle/compose/LifecyclePauseOrDisposeEffectResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnl3<",
            "-",
            "Landroidx/lifecycle/LifecycleOwner;",
            "Lj59;",
            ">;)",
            "Landroidx/lifecycle/compose/LifecyclePauseOrDisposeEffectResult;"
        }
    .end annotation

    new-instance v0, Landroidx/lifecycle/compose/LifecycleResumePauseEffectScope$onPauseOrDispose$1;

    invoke-direct {v0, p1, p0}, Landroidx/lifecycle/compose/LifecycleResumePauseEffectScope$onPauseOrDispose$1;-><init>(Lnl3;Landroidx/lifecycle/compose/LifecycleResumePauseEffectScope;)V

    return-object v0
.end method
