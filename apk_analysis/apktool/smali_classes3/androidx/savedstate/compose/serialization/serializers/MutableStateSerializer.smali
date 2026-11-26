.class public final Landroidx/savedstate/compose/serialization/serializers/MutableStateSerializer;
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
        "Landroidx/compose/runtime/MutableState<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field private final descriptor:Lmp7;

.field private final valueSerializer:Ldf4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldf4<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ldf4;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldf4<",
            "TT;>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/savedstate/compose/serialization/serializers/MutableStateSerializer;->valueSerializer:Ldf4;

    invoke-interface {p1}, Lxp7;->getDescriptor()Lmp7;

    move-result-object v0

    invoke-interface {v0}, Lmp7;->getKind()Lsp7;

    move-result-object v0

    instance-of v1, v0, Ldg6;

    const-string v2, "androidx.compose.runtime.MutableState"

    if-eqz v1, :cond_0

    check-cast v0, Ldg6;

    invoke-static {v2, v0}, Lrp7;->a(Ljava/lang/String;Ldg6;)Lfg6;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lxp7;->getDescriptor()Lmp7;

    move-result-object p1

    invoke-static {v2, p1}, Lrp7;->b(Ljava/lang/String;Lmp7;)Lkl9;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Landroidx/savedstate/compose/serialization/serializers/MutableStateSerializer;->descriptor:Lmp7;

    return-void
.end method

.method public static synthetic getDescriptor$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public deserialize(Lud2;)Landroidx/compose/runtime/MutableState;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lud2;",
            ")",
            "Landroidx/compose/runtime/MutableState<",
            "TT;>;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Landroidx/savedstate/compose/serialization/serializers/MutableStateSerializer;->valueSerializer:Ldf4;

    check-cast p0, Lxl2;

    invoke-interface {p1, p0}, Lud2;->decodeSerializableValue(Lxl2;)Ljava/lang/Object;

    move-result-object p0

    const/4 p1, 0x0

    const/4 v0, 0x2

    invoke-static {p0, p1, v0, p1}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic deserialize(Lud2;)Ljava/lang/Object;
    .locals 0

    .line 18
    invoke-virtual {p0, p1}, Landroidx/savedstate/compose/serialization/serializers/MutableStateSerializer;->deserialize(Lud2;)Landroidx/compose/runtime/MutableState;

    move-result-object p0

    return-object p0
.end method

.method public getDescriptor()Lmp7;
    .locals 0

    iget-object p0, p0, Landroidx/savedstate/compose/serialization/serializers/MutableStateSerializer;->descriptor:Lmp7;

    return-object p0
.end method

.method public serialize(Lux2;Landroidx/compose/runtime/MutableState;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lux2;",
            "Landroidx/compose/runtime/MutableState<",
            "TT;>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Landroidx/savedstate/compose/serialization/serializers/MutableStateSerializer;->valueSerializer:Ldf4;

    check-cast p0, Lxp7;

    invoke-interface {p2}, Landroidx/compose/runtime/MutableState;->getValue()Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p1, p0, p2}, Lux2;->encodeSerializableValue(Lxp7;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic serialize(Lux2;Ljava/lang/Object;)V
    .locals 0

    .line 18
    check-cast p2, Landroidx/compose/runtime/MutableState;

    invoke-virtual {p0, p1, p2}, Landroidx/savedstate/compose/serialization/serializers/MutableStateSerializer;->serialize(Lux2;Landroidx/compose/runtime/MutableState;)V

    return-void
.end method
