.class public final Landroidx/savedstate/compose/serialization/serializers/SnapshotStateListSerializer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldf4;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ldf4<",
        "Landroidx/compose/runtime/snapshots/SnapshotStateList<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field private final base:Ldf4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldf4<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private final descriptor:Lmp7;

.field private final elementSerializer:Ldf4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldf4<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ldf4;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldf4<",
            "TT;>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/savedstate/compose/serialization/serializers/SnapshotStateListSerializer;->elementSerializer:Ldf4;

    new-instance v0, Lmr;

    invoke-direct {v0, p1}, Lmr;-><init>(Ldf4;)V

    iput-object v0, p0, Landroidx/savedstate/compose/serialization/serializers/SnapshotStateListSerializer;->base:Ldf4;

    const-string p1, "androidx.compose.runtime.SnapshotStateList"

    iget-object v0, v0, Lmr;->b:Lkr;

    invoke-static {p1, v0}, Lrp7;->b(Ljava/lang/String;Lmp7;)Lkl9;

    move-result-object p1

    iput-object p1, p0, Landroidx/savedstate/compose/serialization/serializers/SnapshotStateListSerializer;->descriptor:Lmp7;

    return-void
.end method

.method public static synthetic getDescriptor$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public deserialize(Lud2;)Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lud2;",
            ")",
            "Landroidx/compose/runtime/snapshots/SnapshotStateList<",
            "TT;>;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Landroidx/savedstate/compose/serialization/serializers/SnapshotStateListSerializer;->base:Ldf4;

    check-cast p0, Lxl2;

    invoke-interface {p1, p0}, Lud2;->decodeSerializableValue(Lxl2;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    new-instance p1, Landroidx/compose/runtime/snapshots/SnapshotStateList;

    invoke-direct {p1}, Landroidx/compose/runtime/snapshots/SnapshotStateList;-><init>()V

    check-cast p0, Ljava/lang/Iterable;

    invoke-static {p0}, Lqn1;->t0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    invoke-virtual {p1, p0}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->addAll(Ljava/util/Collection;)Z

    return-object p1
.end method

.method public bridge synthetic deserialize(Lud2;)Ljava/lang/Object;
    .locals 0

    .line 30
    invoke-virtual {p0, p1}, Landroidx/savedstate/compose/serialization/serializers/SnapshotStateListSerializer;->deserialize(Lud2;)Landroidx/compose/runtime/snapshots/SnapshotStateList;

    move-result-object p0

    return-object p0
.end method

.method public getDescriptor()Lmp7;
    .locals 0

    iget-object p0, p0, Landroidx/savedstate/compose/serialization/serializers/SnapshotStateListSerializer;->descriptor:Lmp7;

    return-object p0
.end method

.method public serialize(Lux2;Landroidx/compose/runtime/snapshots/SnapshotStateList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lux2;",
            "Landroidx/compose/runtime/snapshots/SnapshotStateList<",
            "TT;>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Landroidx/savedstate/compose/serialization/serializers/SnapshotStateListSerializer;->base:Ldf4;

    check-cast p0, Lxp7;

    invoke-interface {p1, p0, p2}, Lux2;->encodeSerializableValue(Lxp7;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic serialize(Lux2;Ljava/lang/Object;)V
    .locals 0

    .line 14
    check-cast p2, Landroidx/compose/runtime/snapshots/SnapshotStateList;

    invoke-virtual {p0, p1, p2}, Landroidx/savedstate/compose/serialization/serializers/SnapshotStateListSerializer;->serialize(Lux2;Landroidx/compose/runtime/snapshots/SnapshotStateList;)V

    return-void
.end method
