.class public final Landroidx/savedstate/serialization/serializers/MutableStateFlowSerializer;
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
        "Lxg5<",
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

    iput-object p1, p0, Landroidx/savedstate/serialization/serializers/MutableStateFlowSerializer;->valueSerializer:Ldf4;

    invoke-interface {p1}, Lxp7;->getDescriptor()Lmp7;

    move-result-object v0

    invoke-interface {v0}, Lmp7;->getKind()Lsp7;

    move-result-object v0

    instance-of v1, v0, Ldg6;

    const-string v2, "kotlinx.coroutines.flow.MutableStateFlow"

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
    iput-object p1, p0, Landroidx/savedstate/serialization/serializers/MutableStateFlowSerializer;->descriptor:Lmp7;

    return-void
.end method

.method public static synthetic getDescriptor$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public bridge synthetic deserialize(Lud2;)Ljava/lang/Object;
    .locals 0

    .line 16
    invoke-virtual {p0, p1}, Landroidx/savedstate/serialization/serializers/MutableStateFlowSerializer;->deserialize(Lud2;)Lxg5;

    move-result-object p0

    return-object p0
.end method

.method public deserialize(Lud2;)Lxg5;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lud2;",
            ")",
            "Lxg5<",
            "TT;>;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Landroidx/savedstate/serialization/serializers/MutableStateFlowSerializer;->valueSerializer:Ldf4;

    check-cast p0, Lxl2;

    invoke-interface {p1, p0}, Lud2;->decodeSerializableValue(Lxl2;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lpx;->a(Ljava/lang/Object;)Lz68;

    move-result-object p0

    return-object p0
.end method

.method public getDescriptor()Lmp7;
    .locals 0

    iget-object p0, p0, Landroidx/savedstate/serialization/serializers/MutableStateFlowSerializer;->descriptor:Lmp7;

    return-object p0
.end method

.method public bridge synthetic serialize(Lux2;Ljava/lang/Object;)V
    .locals 0

    .line 18
    check-cast p2, Lxg5;

    invoke-virtual {p0, p1, p2}, Landroidx/savedstate/serialization/serializers/MutableStateFlowSerializer;->serialize(Lux2;Lxg5;)V

    return-void
.end method

.method public serialize(Lux2;Lxg5;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lux2;",
            "Lxg5<",
            "TT;>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Landroidx/savedstate/serialization/serializers/MutableStateFlowSerializer;->valueSerializer:Ldf4;

    check-cast p0, Lxp7;

    invoke-interface {p2}, Lxg5;->getValue()Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p1, p0, p2}, Lux2;->encodeSerializableValue(Lxp7;Ljava/lang/Object;)V

    return-void
.end method
