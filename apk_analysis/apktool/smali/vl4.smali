.class public final synthetic Lvl4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lvl4;->b:I

    iput-object p1, p0, Lvl4;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lvl4;->b:I

    iget-object p0, p0, Lvl4;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Landroidx/transition/TransitionValues;

    check-cast p1, [I

    invoke-static {p0, p1}, Lyads/it2;->b(Landroidx/transition/TransitionValues;[I)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p0, Lxo9;

    invoke-static {p0, p1}, Lyads/bt0;->c(Lll3;Ljava/lang/Object;)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;

    check-cast p1, Ljava/util/List;

    invoke-static {p0, p1}, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->a(Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;Ljava/util/List;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_2
    check-cast p0, Landroidx/room/RoomSQLiteQuery;

    check-cast p1, Landroidx/sqlite/SQLiteStatement;

    invoke-static {p0, p1}, Landroidx/room/RoomSQLiteQuery;->a(Landroidx/room/RoomSQLiteQuery;Landroidx/sqlite/SQLiteStatement;)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_3
    check-cast p0, Lnl3;

    check-cast p1, Ljava/util/List;

    invoke-static {p0, p1}, Landroidx/compose/runtime/saveable/MapSaverKt;->a(Lnl3;Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_4
    check-cast p0, Landroidx/compose/foundation/text/LegacyTextFieldState;

    check-cast p1, Landroidx/compose/ui/text/input/TextFieldValue;

    invoke-static {p0, p1}, Landroidx/compose/foundation/text/LegacyTextFieldState;->a(Landroidx/compose/foundation/text/LegacyTextFieldState;Landroidx/compose/ui/text/input/TextFieldValue;)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_5
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1, p0}, Landroidx/compose/foundation/lazy/grid/LazyGridIntervalContent;->i(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
