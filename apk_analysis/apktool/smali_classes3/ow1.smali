.class public final synthetic Low1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lll3;


# instance fields
.field public final synthetic b:Landroidx/sqlite/SQLiteDriver;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Landroidx/sqlite/SQLiteDriver;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Low1;->b:Landroidx/sqlite/SQLiteDriver;

    iput-object p2, p0, Low1;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Low1;->b:Landroidx/sqlite/SQLiteDriver;

    iget-object p0, p0, Low1;->c:Ljava/lang/String;

    invoke-static {v0, p0}, Landroidx/room/coroutines/ConnectionPoolImpl;->b(Landroidx/sqlite/SQLiteDriver;Ljava/lang/String;)Landroidx/sqlite/SQLiteConnection;

    move-result-object p0

    return-object p0
.end method
