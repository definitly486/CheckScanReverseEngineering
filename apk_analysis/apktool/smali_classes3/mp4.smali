.class public final synthetic Lmp4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/LifecycleEventObserver;


# instance fields
.field public final synthetic b:Landroidx/lifecycle/compose/LifecycleStartStopEffectScope;

.field public final synthetic c:Lr07;

.field public final synthetic d:Lnl3;


# direct methods
.method public synthetic constructor <init>(Landroidx/lifecycle/compose/LifecycleStartStopEffectScope;Lr07;Lnl3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmp4;->b:Landroidx/lifecycle/compose/LifecycleStartStopEffectScope;

    iput-object p2, p0, Lmp4;->c:Lr07;

    iput-object p3, p0, Lmp4;->d:Lnl3;

    return-void
.end method


# virtual methods
.method public final onStateChanged(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 2

    iget-object v0, p0, Lmp4;->c:Lr07;

    iget-object v1, p0, Lmp4;->d:Lnl3;

    iget-object p0, p0, Lmp4;->b:Landroidx/lifecycle/compose/LifecycleStartStopEffectScope;

    invoke-static {p0, v0, v1, p1, p2}, Landroidx/lifecycle/compose/LifecycleEffectKt;->j(Landroidx/lifecycle/compose/LifecycleStartStopEffectScope;Lr07;Lnl3;Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V

    return-void
.end method
