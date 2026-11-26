.class public final synthetic Lvx6;
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

    iput p4, p0, Lvx6;->b:I

    iput-object p1, p0, Lvx6;->c:Ljava/lang/Object;

    iput-object p2, p0, Lvx6;->d:Ljava/lang/Object;

    iput-object p3, p0, Lvx6;->e:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lvx6;->b:I

    iget-object v1, p0, Lvx6;->e:Ljava/lang/Object;

    iget-object v2, p0, Lvx6;->d:Ljava/lang/Object;

    iget-object p0, p0, Lvx6;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Landroidx/compose/runtime/MutableState;

    check-cast v2, Landroidx/compose/runtime/MutableState;

    check-cast v1, Landroidx/compose/runtime/MutableState;

    check-cast p1, Landroidx/compose/ui/layout/LayoutCoordinates;

    invoke-static {p0, v2, v1, p1}, Landroidx/compose/material3/TimePickerKt;->x(Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/ui/layout/LayoutCoordinates;)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p0, Ljava/lang/String;

    check-cast v2, Landroidx/room/RoomRawQuery;

    check-cast v1, Landroidx/work/impl/model/RawWorkInfoDao_Impl;

    check-cast p1, Landroidx/sqlite/SQLiteConnection;

    invoke-static {p0, v2, v1, p1}, Landroidx/work/impl/model/RawWorkInfoDao_Impl;->c(Ljava/lang/String;Landroidx/room/RoomRawQuery;Landroidx/work/impl/model/RawWorkInfoDao_Impl;Landroidx/sqlite/SQLiteConnection;)Ljava/util/List;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
