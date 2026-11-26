.class public final synthetic Lgg1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lgg1;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lgg1;->b:I

    packed-switch p0, :pswitch_data_0

    invoke-static {p1}, Lyads/z51;->a(Ljava/lang/Object;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lyads/jg1;->a(Ljava/lang/String;)Lyads/jg1;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-static {p1}, Lyads/ee2;->a(Ljava/lang/Object;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_2
    invoke-static {p1}, Lyads/az1;->d(Ljava/lang/Object;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_3
    check-cast p1, Landroidx/sqlite/SQLiteStatement;

    invoke-static {p1}, Landroidx/room/TriggerBasedInvalidationTracker;->c(Landroidx/sqlite/SQLiteStatement;)Ljava/util/Set;

    move-result-object p0

    return-object p0

    :pswitch_4
    check-cast p1, Landroidx/compose/material3/SwipeToDismissBoxValue;

    invoke-static {p1}, Landroidx/compose/material3/SwipeToDismissBoxKt;->g(Landroidx/compose/material3/SwipeToDismissBoxValue;)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_5
    check-cast p1, Landroidx/navigation/NavOptionsBuilder;

    invoke-static {p1}, Landroidx/navigation/internal/NavControllerImpl;->l(Landroidx/navigation/NavOptionsBuilder;)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_6
    check-cast p1, Landroidx/compose/ui/input/pointer/PointerType;

    invoke-static {p1}, Landroidx/compose/foundation/gestures/Draggable2DElement;->a(Landroidx/compose/ui/input/pointer/PointerType;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_7
    check-cast p1, Landroidx/sqlite/SQLiteConnection;

    const-string p0, "DELETE FROM cheque_requests"

    invoke-interface {p1, p0}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    move-result-object p0

    :try_start_0
    invoke-interface {p0}, Landroidx/sqlite/SQLiteStatement;->step()Z

    sget-object p1, Lj59;->a:Lj59;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p0}, Landroidx/sqlite/SQLiteStatement;->close()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-interface {p0}, Landroidx/sqlite/SQLiteStatement;->close()V

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
