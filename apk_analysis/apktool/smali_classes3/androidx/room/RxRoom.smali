.class public Landroidx/room/RxRoom;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/room/RxRoom$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/room/RxRoom$Companion;

.field public static final NOTHING:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/room/RxRoom$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/room/RxRoom$Companion;-><init>(Ljh2;)V

    sput-object v0, Landroidx/room/RxRoom;->Companion:Landroidx/room/RxRoom$Companion;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/room/RxRoom;->NOTHING:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0
    .annotation runtime Lul2;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final createCompletable(Landroidx/room/RoomDatabase;ZZLnl3;)Lqp1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/room/RoomDatabase;",
            "ZZ",
            "Lnl3<",
            "-",
            "Landroidx/sqlite/SQLiteConnection;",
            "Lj59;",
            ">;)",
            "Lqp1;"
        }
    .end annotation

    sget-object v0, Landroidx/room/RxRoom;->Companion:Landroidx/room/RxRoom$Companion;

    invoke-virtual {v0, p0, p1, p2, p3}, Landroidx/room/RxRoom$Companion;->createCompletable(Landroidx/room/RoomDatabase;ZZLnl3;)Lqp1;

    move-result-object p0

    return-object p0
.end method

.method public static final createFlowable(Landroidx/room/RoomDatabase;Z[Ljava/lang/String;Ljava/util/concurrent/Callable;)Lgg3;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/room/RoomDatabase;",
            "Z[",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Callable<",
            "+TT;>;)",
            "Lgg3<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lul2;
    .end annotation

    .line 7
    sget-object v0, Landroidx/room/RxRoom;->Companion:Landroidx/room/RxRoom$Companion;

    invoke-virtual {v0, p0, p1, p2, p3}, Landroidx/room/RxRoom$Companion;->createFlowable(Landroidx/room/RoomDatabase;Z[Ljava/lang/String;Ljava/util/concurrent/Callable;)Lgg3;

    move-result-object p0

    return-object p0
.end method

.method public static final createFlowable(Landroidx/room/RoomDatabase;Z[Ljava/lang/String;Lnl3;)Lgg3;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/room/RoomDatabase;",
            "Z[",
            "Ljava/lang/String;",
            "Lnl3<",
            "-",
            "Landroidx/sqlite/SQLiteConnection;",
            "+TT;>;)",
            "Lgg3<",
            "TT;>;"
        }
    .end annotation

    sget-object v0, Landroidx/room/RxRoom;->Companion:Landroidx/room/RxRoom$Companion;

    invoke-virtual {v0, p0, p1, p2, p3}, Landroidx/room/RxRoom$Companion;->createFlowable(Landroidx/room/RoomDatabase;Z[Ljava/lang/String;Lnl3;)Lgg3;

    move-result-object p0

    return-object p0
.end method

.method public static final varargs createFlowable(Landroidx/room/RoomDatabase;[Ljava/lang/String;)Lgg3;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/room/RoomDatabase;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Lgg3<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 8
    sget-object v0, Landroidx/room/RxRoom;->Companion:Landroidx/room/RxRoom$Companion;

    invoke-virtual {v0, p0, p1}, Landroidx/room/RxRoom$Companion;->createFlowable(Landroidx/room/RoomDatabase;[Ljava/lang/String;)Lgg3;

    move-result-object p0

    return-object p0
.end method

.method public static final createFlowable(Landroidx/room/RoomDatabase;[Ljava/lang/String;Ljava/util/concurrent/Callable;)Lgg3;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/room/RoomDatabase;",
            "[",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Callable<",
            "+TT;>;)",
            "Lgg3<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lul2;
    .end annotation

    .line 9
    sget-object v0, Landroidx/room/RxRoom;->Companion:Landroidx/room/RxRoom$Companion;

    invoke-virtual {v0, p0, p1, p2}, Landroidx/room/RxRoom$Companion;->createFlowable(Landroidx/room/RoomDatabase;[Ljava/lang/String;Ljava/util/concurrent/Callable;)Lgg3;

    move-result-object p0

    return-object p0
.end method

.method public static final createMaybe(Landroidx/room/RoomDatabase;ZZLnl3;)La75;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/room/RoomDatabase;",
            "ZZ",
            "Lnl3<",
            "-",
            "Landroidx/sqlite/SQLiteConnection;",
            "+TT;>;)",
            "La75<",
            "TT;>;"
        }
    .end annotation

    sget-object v0, Landroidx/room/RxRoom;->Companion:Landroidx/room/RxRoom$Companion;

    invoke-virtual {v0, p0, p1, p2, p3}, Landroidx/room/RxRoom$Companion;->createMaybe(Landroidx/room/RoomDatabase;ZZLnl3;)La75;

    move-result-object p0

    return-object p0
.end method

.method public static final createObservable(Landroidx/room/RoomDatabase;Z[Ljava/lang/String;Ljava/util/concurrent/Callable;)Ltq5;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/room/RoomDatabase;",
            "Z[",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Callable<",
            "+TT;>;)",
            "Ltq5<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lul2;
    .end annotation

    .line 7
    sget-object v0, Landroidx/room/RxRoom;->Companion:Landroidx/room/RxRoom$Companion;

    invoke-virtual {v0, p0, p1, p2, p3}, Landroidx/room/RxRoom$Companion;->createObservable(Landroidx/room/RoomDatabase;Z[Ljava/lang/String;Ljava/util/concurrent/Callable;)Ltq5;

    move-result-object p0

    return-object p0
.end method

.method public static final createObservable(Landroidx/room/RoomDatabase;Z[Ljava/lang/String;Lnl3;)Ltq5;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/room/RoomDatabase;",
            "Z[",
            "Ljava/lang/String;",
            "Lnl3<",
            "-",
            "Landroidx/sqlite/SQLiteConnection;",
            "+TT;>;)",
            "Ltq5<",
            "TT;>;"
        }
    .end annotation

    sget-object v0, Landroidx/room/RxRoom;->Companion:Landroidx/room/RxRoom$Companion;

    invoke-virtual {v0, p0, p1, p2, p3}, Landroidx/room/RxRoom$Companion;->createObservable(Landroidx/room/RoomDatabase;Z[Ljava/lang/String;Lnl3;)Ltq5;

    move-result-object p0

    return-object p0
.end method

.method public static final varargs createObservable(Landroidx/room/RoomDatabase;[Ljava/lang/String;)Ltq5;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/room/RoomDatabase;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ltq5<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 8
    sget-object v0, Landroidx/room/RxRoom;->Companion:Landroidx/room/RxRoom$Companion;

    invoke-virtual {v0, p0, p1}, Landroidx/room/RxRoom$Companion;->createObservable(Landroidx/room/RoomDatabase;[Ljava/lang/String;)Ltq5;

    move-result-object p0

    return-object p0
.end method

.method public static final createObservable(Landroidx/room/RoomDatabase;[Ljava/lang/String;Ljava/util/concurrent/Callable;)Ltq5;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/room/RoomDatabase;",
            "[",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Callable<",
            "+TT;>;)",
            "Ltq5<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lul2;
    .end annotation

    .line 9
    sget-object v0, Landroidx/room/RxRoom;->Companion:Landroidx/room/RxRoom$Companion;

    invoke-virtual {v0, p0, p1, p2}, Landroidx/room/RxRoom$Companion;->createObservable(Landroidx/room/RoomDatabase;[Ljava/lang/String;Ljava/util/concurrent/Callable;)Ltq5;

    move-result-object p0

    return-object p0
.end method

.method public static final createSingle(Landroidx/room/RoomDatabase;ZZLnl3;)Lmz7;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/room/RoomDatabase;",
            "ZZ",
            "Lnl3<",
            "-",
            "Landroidx/sqlite/SQLiteConnection;",
            "+TT;>;)",
            "Lmz7<",
            "TT;>;"
        }
    .end annotation

    sget-object v0, Landroidx/room/RxRoom;->Companion:Landroidx/room/RxRoom$Companion;

    invoke-virtual {v0, p0, p1, p2, p3}, Landroidx/room/RxRoom$Companion;->createSingle(Landroidx/room/RoomDatabase;ZZLnl3;)Lmz7;

    move-result-object p0

    return-object p0
.end method

.method public static final createSingle(Ljava/util/concurrent/Callable;)Lmz7;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "+TT;>;)",
            "Lmz7<",
            "TT;>;"
        }
    .end annotation

    .line 7
    sget-object v0, Landroidx/room/RxRoom;->Companion:Landroidx/room/RxRoom$Companion;

    invoke-virtual {v0, p0}, Landroidx/room/RxRoom$Companion;->createSingle(Ljava/util/concurrent/Callable;)Lmz7;

    move-result-object p0

    return-object p0
.end method
