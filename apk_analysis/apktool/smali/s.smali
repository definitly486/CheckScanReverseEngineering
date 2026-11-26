.class public final synthetic Ls;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lll3;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Ls;->b:I

    iput-object p1, p0, Ls;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Ls;->b:I

    iget-object p0, p0, Ls;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lyads/vq0;

    invoke-static {p0}, Lyads/vq0;->c(Lyads/vq0;)Lyads/n93;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p0, Lyads/nq0;

    invoke-static {p0}, Lyads/nq0;->j0(Lyads/nq0;)Lyads/g36;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p0, Landroidx/work/impl/WorkDatabase_Impl;

    invoke-static {p0}, Landroidx/work/impl/WorkDatabase_Impl;->l(Landroidx/work/impl/WorkDatabase_Impl;)Landroidx/work/impl/model/RawWorkInfoDao_Impl;

    move-result-object p0

    return-object p0

    :pswitch_2
    check-cast p0, Landroidx/compose/material3/internal/PredictiveBackState;

    invoke-static {p0}, Landroidx/compose/material3/SearchBarKt;->x(Landroidx/compose/material3/internal/PredictiveBackState;)Landroidx/compose/material3/internal/BackEventProgress;

    move-result-object p0

    return-object p0

    :pswitch_3
    check-cast p0, Landroidx/window/layout/SafeWindowLayoutComponentProvider;

    invoke-static {p0}, Landroidx/window/layout/SafeWindowLayoutComponentProvider;->d(Landroidx/window/layout/SafeWindowLayoutComponentProvider;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_4
    check-cast p0, Landroidx/compose/foundation/pager/PagerState;

    invoke-static {p0}, Landroidx/compose/foundation/pager/PagerState;->c(Landroidx/compose/foundation/pager/PagerState;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_5
    check-cast p0, Landroidx/compose/runtime/State;

    invoke-static {p0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutKt;->b(Landroidx/compose/runtime/State;)Landroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;

    move-result-object p0

    return-object p0

    :pswitch_6
    check-cast p0, Landroidx/compose/foundation/AbstractClickableNode;

    invoke-static {p0}, Landroidx/compose/foundation/AbstractClickableNode;->b(Landroidx/compose/foundation/AbstractClickableNode;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
