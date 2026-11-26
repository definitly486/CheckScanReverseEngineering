.class public final synthetic Ljp4;
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

    iput p4, p0, Ljp4;->b:I

    iput-object p1, p0, Ljp4;->c:Ljava/lang/Object;

    iput-object p2, p0, Ljp4;->d:Ljava/lang/Object;

    iput-object p3, p0, Ljp4;->e:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget v0, p0, Ljp4;->b:I

    iget-object v1, p0, Ljp4;->e:Ljava/lang/Object;

    iget-object v2, p0, Ljp4;->d:Ljava/lang/Object;

    iget-object p0, p0, Ljp4;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Ljava/lang/String;

    check-cast v2, Landroidx/room/RoomRawQuery;

    check-cast v1, Landroidx/work/impl/model/RawWorkInfoDao_Impl;

    check-cast p1, Landroidx/sqlite/SQLiteConnection;

    invoke-static {p0, v2, v1, p1}, Landroidx/work/impl/model/RawWorkInfoDao_Impl;->d(Ljava/lang/String;Landroidx/room/RoomRawQuery;Landroidx/work/impl/model/RawWorkInfoDao_Impl;Landroidx/sqlite/SQLiteConnection;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p0, Landroidx/lifecycle/LifecycleOwner;

    check-cast v2, Landroidx/lifecycle/compose/LifecycleStartStopEffectScope;

    check-cast v1, Lnl3;

    check-cast p1, Landroidx/compose/runtime/DisposableEffectScope;

    invoke-static {p0, v2, v1, p1}, Landroidx/lifecycle/compose/LifecycleEffectKt;->p(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/compose/LifecycleStartStopEffectScope;Lnl3;Landroidx/compose/runtime/DisposableEffectScope;)Landroidx/compose/runtime/DisposableEffectResult;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
