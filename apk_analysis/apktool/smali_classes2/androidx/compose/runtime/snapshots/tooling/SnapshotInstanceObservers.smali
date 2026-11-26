.class public final Landroidx/compose/runtime/snapshots/tooling/SnapshotInstanceObservers;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final $stable:I


# instance fields
.field private final readObserver:Lnl3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnl3<",
            "Ljava/lang/Object;",
            "Lj59;",
            ">;"
        }
    .end annotation
.end field

.field private final writeObserver:Lnl3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnl3<",
            "Ljava/lang/Object;",
            "Lj59;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 18
    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-direct {p0, v0, v0, v1, v0}, Landroidx/compose/runtime/snapshots/tooling/SnapshotInstanceObservers;-><init>(Lnl3;Lnl3;ILjh2;)V

    return-void
.end method

.method public constructor <init>(Lnl3;Lnl3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnl3<",
            "Ljava/lang/Object;",
            "Lj59;",
            ">;",
            "Lnl3<",
            "Ljava/lang/Object;",
            "Lj59;",
            ">;)V"
        }
    .end annotation

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Landroidx/compose/runtime/snapshots/tooling/SnapshotInstanceObservers;->readObserver:Lnl3;

    .line 17
    iput-object p2, p0, Landroidx/compose/runtime/snapshots/tooling/SnapshotInstanceObservers;->writeObserver:Lnl3;

    return-void
.end method

.method public synthetic constructor <init>(Lnl3;Lnl3;ILjh2;)V
    .locals 1

    and-int/lit8 p4, p3, 0x1

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    move-object p2, v0

    :cond_1
    invoke-direct {p0, p1, p2}, Landroidx/compose/runtime/snapshots/tooling/SnapshotInstanceObservers;-><init>(Lnl3;Lnl3;)V

    return-void
.end method


# virtual methods
.method public final getReadObserver()Lnl3;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnl3<",
            "Ljava/lang/Object;",
            "Lj59;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/runtime/snapshots/tooling/SnapshotInstanceObservers;->readObserver:Lnl3;

    return-object p0
.end method

.method public final getWriteObserver()Lnl3;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnl3<",
            "Ljava/lang/Object;",
            "Lj59;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/runtime/snapshots/tooling/SnapshotInstanceObservers;->writeObserver:Lnl3;

    return-object p0
.end method
