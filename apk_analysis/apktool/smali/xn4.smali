.class public final synthetic Lxn4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, Lxn4;->b:I

    iput-object p2, p0, Lxn4;->c:Ljava/lang/Object;

    iput-object p3, p0, Lxn4;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lxn4;->b:I

    iget-object v1, p0, Lxn4;->d:Ljava/lang/Object;

    iget-object p0, p0, Lxn4;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lku6;

    check-cast v1, Lpt6;

    check-cast p1, Landroidx/sqlite/SQLiteConnection;

    iget-object p0, p0, Lku6;->d:Lhu6;

    invoke-virtual {p0, p1, v1}, Landroidx/room/EntityInsertAdapter;->insert(Landroidx/sqlite/SQLiteConnection;Ljava/lang/Object;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :pswitch_0
    check-cast p0, Landroidx/compose/runtime/saveable/SaveableStateRegistry;

    check-cast v1, Landroidx/compose/runtime/saveable/SaveableStateHolder;

    check-cast p1, Ljava/util/Map;

    invoke-static {p0, v1, p1}, Landroidx/compose/foundation/lazy/layout/LazySaveableStateHolder$Companion;->a(Landroidx/compose/runtime/saveable/SaveableStateRegistry;Landroidx/compose/runtime/saveable/SaveableStateHolder;Ljava/util/Map;)Landroidx/compose/foundation/lazy/layout/LazySaveableStateHolder;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
