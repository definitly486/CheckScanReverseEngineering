.class public final Landroidx/room/RoomRawQuery;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final bindingFunction:Lnl3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnl3<",
            "Landroidx/sqlite/SQLiteStatement;",
            "Lj59;",
            ">;"
        }
    .end annotation
.end field

.field private final sql:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 20
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1, v0}, Landroidx/room/RoomRawQuery;-><init>(Ljava/lang/String;Lnl3;ILjh2;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lnl3;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lnl3<",
            "-",
            "Landroidx/sqlite/SQLiteStatement;",
            "Lj59;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/room/RoomRawQuery;->sql:Ljava/lang/String;

    new-instance p1, Lzu5;

    const/4 v0, 0x1

    invoke-direct {p1, p2, v0}, Lzu5;-><init>(Lnl3;I)V

    iput-object p1, p0, Landroidx/room/RoomRawQuery;->bindingFunction:Lnl3;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lnl3;ILjh2;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 21
    new-instance p2, Lv71;

    const/4 p3, 0x5

    invoke-direct {p2, p3}, Lv71;-><init>(I)V

    .line 22
    :cond_0
    invoke-direct {p0, p1, p2}, Landroidx/room/RoomRawQuery;-><init>(Ljava/lang/String;Lnl3;)V

    return-void
.end method

.method private static final _init_$lambda$0(Landroidx/sqlite/SQLiteStatement;)Lj59;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public static synthetic a(Landroidx/sqlite/SQLiteStatement;)Lj59;
    .locals 0

    invoke-static {p0}, Landroidx/room/RoomRawQuery;->_init_$lambda$0(Landroidx/sqlite/SQLiteStatement;)Lj59;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lnl3;Landroidx/sqlite/SQLiteStatement;)Lj59;
    .locals 0

    invoke-static {p0, p1}, Landroidx/room/RoomRawQuery;->bindingFunction$lambda$1(Lnl3;Landroidx/sqlite/SQLiteStatement;)Lj59;

    move-result-object p0

    return-object p0
.end method

.method private static final bindingFunction$lambda$1(Lnl3;Landroidx/sqlite/SQLiteStatement;)Lj59;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroidx/room/BindOnlySQLiteStatement;

    invoke-direct {v0, p1}, Landroidx/room/BindOnlySQLiteStatement;-><init>(Landroidx/sqlite/SQLiteStatement;)V

    invoke-interface {p0, v0}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method


# virtual methods
.method public final getBindingFunction()Lnl3;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnl3<",
            "Landroidx/sqlite/SQLiteStatement;",
            "Lj59;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/room/RoomRawQuery;->bindingFunction:Lnl3;

    return-object p0
.end method

.method public final getSql()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroidx/room/RoomRawQuery;->sql:Ljava/lang/String;

    return-object p0
.end method
