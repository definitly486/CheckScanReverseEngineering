.class public final synthetic Lnp4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/LifecycleEventObserver;


# instance fields
.field public final synthetic b:Landroidx/lifecycle/compose/LifecycleResumePauseEffectScope;

.field public final synthetic c:Lr07;

.field public final synthetic d:Lnl3;


# direct methods
.method public synthetic constructor <init>(Landroidx/lifecycle/compose/LifecycleResumePauseEffectScope;Lr07;Lnl3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnp4;->b:Landroidx/lifecycle/compose/LifecycleResumePauseEffectScope;

    iput-object p2, p0, Lnp4;->c:Lr07;

    iput-object p3, p0, Lnp4;->d:Lnl3;

    return-void
.end method


# virtual methods
.method public final onStateChanged(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 2

    iget-object v0, p0, Lnp4;->c:Lr07;

    iget-object v1, p0, Lnp4;->d:Lnl3;

    iget-object p0, p0, Lnp4;->b:Landroidx/lifecycle/compose/LifecycleResumePauseEffectScope;

    invoke-static {p0, v0, v1, p1, p2}, Landroidx/lifecycle/compose/LifecycleEffectKt;->r(Landroidx/lifecycle/compose/LifecycleResumePauseEffectScope;Lr07;Lnl3;Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V

    return-void
.end method
