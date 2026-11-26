.class public final Landroidx/room/RoomLambdaTrackingLiveData;
.super Landroidx/room/RoomTrackingLiveData;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/room/RoomTrackingLiveData<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final lambdaFunction:Lnl3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnl3<",
            "Landroidx/sqlite/SQLiteConnection;",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/room/RoomDatabase;Landroidx/room/InvalidationLiveDataContainer;Z[Ljava/lang/String;Lnl3;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/room/RoomDatabase;",
            "Landroidx/room/InvalidationLiveDataContainer;",
            "Z[",
            "Ljava/lang/String;",
            "Lnl3<",
            "-",
            "Landroidx/sqlite/SQLiteConnection;",
            "+TT;>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Landroidx/room/RoomTrackingLiveData;-><init>(Landroidx/room/RoomDatabase;Landroidx/room/InvalidationLiveDataContainer;Z[Ljava/lang/String;Ljh2;)V

    iput-object p5, v0, Landroidx/room/RoomLambdaTrackingLiveData;->lambdaFunction:Lnl3;

    return-void
.end method


# virtual methods
.method public compute(Le02;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le02<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0}, Landroidx/room/RoomTrackingLiveData;->getDatabase()Landroidx/room/RoomDatabase;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/room/RoomTrackingLiveData;->getInTransaction()Z

    move-result v1

    iget-object p0, p0, Landroidx/room/RoomLambdaTrackingLiveData;->lambdaFunction:Lnl3;

    const/4 v2, 0x1

    invoke-static {v0, v2, v1, p0, p1}, Landroidx/room/util/DBUtil;->performSuspending(Landroidx/room/RoomDatabase;ZZLnl3;Le02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
