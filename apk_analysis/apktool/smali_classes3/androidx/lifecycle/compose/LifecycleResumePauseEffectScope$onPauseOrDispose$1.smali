.class public final Landroidx/lifecycle/compose/LifecycleResumePauseEffectScope$onPauseOrDispose$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/compose/LifecyclePauseOrDisposeEffectResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/lifecycle/compose/LifecycleResumePauseEffectScope;->onPauseOrDispose(Lnl3;)Landroidx/lifecycle/compose/LifecyclePauseOrDisposeEffectResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $onPauseOrDisposeEffect:Lnl3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnl3<",
            "Landroidx/lifecycle/LifecycleOwner;",
            "Lj59;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroidx/lifecycle/compose/LifecycleResumePauseEffectScope;


# direct methods
.method public constructor <init>(Lnl3;Landroidx/lifecycle/compose/LifecycleResumePauseEffectScope;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnl3<",
            "-",
            "Landroidx/lifecycle/LifecycleOwner;",
            "Lj59;",
            ">;",
            "Landroidx/lifecycle/compose/LifecycleResumePauseEffectScope;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/lifecycle/compose/LifecycleResumePauseEffectScope$onPauseOrDispose$1;->$onPauseOrDisposeEffect:Lnl3;

    iput-object p2, p0, Landroidx/lifecycle/compose/LifecycleResumePauseEffectScope$onPauseOrDispose$1;->this$0:Landroidx/lifecycle/compose/LifecycleResumePauseEffectScope;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public runPauseOrOnDisposeEffect()V
    .locals 1

    iget-object v0, p0, Landroidx/lifecycle/compose/LifecycleResumePauseEffectScope$onPauseOrDispose$1;->$onPauseOrDisposeEffect:Lnl3;

    iget-object p0, p0, Landroidx/lifecycle/compose/LifecycleResumePauseEffectScope$onPauseOrDispose$1;->this$0:Landroidx/lifecycle/compose/LifecycleResumePauseEffectScope;

    invoke-interface {v0, p0}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
