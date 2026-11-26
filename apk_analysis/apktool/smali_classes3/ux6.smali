.class public final synthetic Lux6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Landroidx/room/RoomRawQuery;

.field public final synthetic d:Landroidx/work/impl/model/RawWorkInfoDao_Impl;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Landroidx/room/RoomRawQuery;Landroidx/work/impl/model/RawWorkInfoDao_Impl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lux6;->b:Ljava/lang/String;

    iput-object p2, p0, Lux6;->c:Landroidx/room/RoomRawQuery;

    iput-object p3, p0, Lux6;->d:Landroidx/work/impl/model/RawWorkInfoDao_Impl;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lux6;->d:Landroidx/work/impl/model/RawWorkInfoDao_Impl;

    check-cast p1, Landroidx/sqlite/SQLiteConnection;

    iget-object v1, p0, Lux6;->b:Ljava/lang/String;

    iget-object p0, p0, Lux6;->c:Landroidx/room/RoomRawQuery;

    invoke-static {v1, p0, v0, p1}, Landroidx/work/impl/model/RawWorkInfoDao_Impl;->b(Ljava/lang/String;Landroidx/room/RoomRawQuery;Landroidx/work/impl/model/RawWorkInfoDao_Impl;Landroidx/sqlite/SQLiteConnection;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
