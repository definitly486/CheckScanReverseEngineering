.class public final synthetic Ltx;
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

    iput p2, p0, Ltx;->b:I

    iput-object p1, p0, Ltx;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Ltx;->b:I

    iget-object p0, p0, Ltx;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lyads/x44;

    check-cast p1, Lyads/q74;

    invoke-static {p0, p1}, Lyads/x44;->a(Lyads/x44;Lyads/q74;)Lcom/monetization/ads/mediation/rewarded/MediatedRewardedAdapterListener;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p0, Ljava/lang/String;

    check-cast p1, Landroidx/sqlite/SQLiteConnection;

    invoke-static {p0, p1}, Landroidx/work/impl/model/WorkNameDao_Impl;->a(Ljava/lang/String;Landroidx/sqlite/SQLiteConnection;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p0, Landroidx/compose/material3/RangeSliderState;

    check-cast p1, Landroidx/compose/ui/unit/IntSize;

    invoke-static {p0, p1}, Landroidx/compose/material3/SliderKt;->v(Landroidx/compose/material3/RangeSliderState;Landroidx/compose/ui/unit/IntSize;)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_2
    check-cast p0, Landroid/os/Bundle;

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, p1}, Landroidx/navigation/NavDeepLink;->h(Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_3
    check-cast p0, Lvn2;

    check-cast p1, Ljava/io/IOException;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lvn2;->m:Z

    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :pswitch_4
    check-cast p0, Landroidx/compose/runtime/MutableState;

    check-cast p1, Landroidx/compose/ui/layout/LayoutCoordinates;

    invoke-static {p0, p1}, Landroidx/compose/foundation/text/contextmenu/provider/BasicTextContextMenuProviderKt;->b(Landroidx/compose/runtime/MutableState;Landroidx/compose/ui/layout/LayoutCoordinates;)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_5
    check-cast p0, Ljava/util/Locale;

    check-cast p1, Landroidx/sqlite/db/SupportSQLiteDatabase;

    invoke-static {p0, p1}, Landroidx/room/support/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase;->f(Ljava/util/Locale;Landroidx/sqlite/db/SupportSQLiteDatabase;)Lj59;

    move-result-object p0

    return-object p0

    nop

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
