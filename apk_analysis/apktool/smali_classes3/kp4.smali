.class public final synthetic Lkp4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Landroidx/lifecycle/LifecycleOwner;

.field public final synthetic c:Landroidx/lifecycle/compose/LifecycleStartStopEffectScope;

.field public final synthetic d:Lnl3;

.field public final synthetic e:I


# direct methods
.method public synthetic constructor <init>(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/compose/LifecycleStartStopEffectScope;Lnl3;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkp4;->b:Landroidx/lifecycle/LifecycleOwner;

    iput-object p2, p0, Lkp4;->c:Landroidx/lifecycle/compose/LifecycleStartStopEffectScope;

    iput-object p3, p0, Lkp4;->d:Lnl3;

    iput p4, p0, Lkp4;->e:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    move-object v4, p1

    check-cast v4, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v0, p0, Lkp4;->b:Landroidx/lifecycle/LifecycleOwner;

    iget-object v1, p0, Lkp4;->c:Landroidx/lifecycle/compose/LifecycleStartStopEffectScope;

    iget-object v2, p0, Lkp4;->d:Lnl3;

    iget v3, p0, Lkp4;->e:I

    invoke-static/range {v0 .. v5}, Landroidx/lifecycle/compose/LifecycleEffectKt;->f(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/compose/LifecycleStartStopEffectScope;Lnl3;ILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method
