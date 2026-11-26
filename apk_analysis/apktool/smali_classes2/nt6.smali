.class public final synthetic Lnt6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lll3;


# instance fields
.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lnt6;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lnt6;->b:I

    packed-switch p0, :pswitch_data_0

    invoke-static {}, Lyads/nq0;->e()Lyads/zh2;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-static {}, Lyads/c93;->a()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-static {}, Landroidx/window/area/WindowAreaController;->a()Landroidx/window/area/WindowAreaController;

    move-result-object p0

    return-object p0

    :pswitch_2
    invoke-static {}, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;->j()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_3
    invoke-static {}, Landroidx/compose/material3/pulltorefresh/PullToRefreshKt;->b()Landroidx/compose/material3/pulltorefresh/PullToRefreshStateImpl;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
