.class public final synthetic Lv2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    iput p4, p0, Lv2;->b:I

    iput-object p1, p0, Lv2;->c:Ljava/lang/Object;

    iput-object p2, p0, Lv2;->d:Ljava/lang/Object;

    iput-object p3, p0, Lv2;->e:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lv2;->b:I

    iget-object v1, p0, Lv2;->e:Ljava/lang/Object;

    iget-object v2, p0, Lv2;->d:Ljava/lang/Object;

    iget-object p0, p0, Lv2;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lo07;

    check-cast v2, Landroidx/compose/material3/TopAppBarState;

    check-cast v1, Lo07;

    check-cast p1, Landroidx/compose/animation/core/AnimationScope;

    invoke-static {p0, v2, v1, p1}, Landroidx/compose/material3/AppBarKt;->x(Lo07;Landroidx/compose/material3/TopAppBarState;Lo07;Landroidx/compose/animation/core/AnimationScope;)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p0, Landroidx/lifecycle/LifecycleOwner;

    check-cast v2, Lnl3;

    check-cast v1, Lll3;

    check-cast p1, Landroidx/compose/runtime/DisposableEffectScope;

    invoke-static {p0, v2, v1, p1}, Landroidx/compose/material3/internal/AccessibilityServiceStateProvider_androidKt;->b(Landroidx/lifecycle/LifecycleOwner;Lnl3;Lll3;Landroidx/compose/runtime/DisposableEffectScope;)Landroidx/compose/runtime/DisposableEffectResult;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
