.class public final synthetic Lzu5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lnl3;


# direct methods
.method public synthetic constructor <init>(Lnl3;I)V
    .locals 0

    iput p2, p0, Lzu5;->b:I

    iput-object p1, p0, Lzu5;->c:Lnl3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lzu5;->b:I

    iget-object p0, p0, Lzu5;->c:Lnl3;

    packed-switch v0, :pswitch_data_0

    check-cast p1, Landroidx/sqlite/SQLiteStatement;

    invoke-static {p0, p1}, Landroidx/room/RoomRawQuery;->b(Lnl3;Landroidx/sqlite/SQLiteStatement;)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p1, Landroidx/compose/ui/platform/InspectorInfo;

    invoke-static {p0, p1}, Landroidx/compose/foundation/layout/OffsetKt;->b(Lnl3;Landroidx/compose/ui/platform/InspectorInfo;)Lj59;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
