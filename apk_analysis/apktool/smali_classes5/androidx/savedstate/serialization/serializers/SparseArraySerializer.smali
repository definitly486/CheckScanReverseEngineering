.class public final Landroidx/savedstate/serialization/serializers/SparseArraySerializer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldf4;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/savedstate/serialization/serializers/SparseArraySerializer$SparseArraySurrogate;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ldf4<",
        "Landroid/util/SparseArray<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field private final descriptor:Lmp7;

.field private final surrogateSerializer:Ldf4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldf4<",
            "Landroidx/savedstate/serialization/serializers/SparseArraySerializer$SparseArraySurrogate<",
            "TT;>;>;"
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

    sget-object v0, Landroidx/savedstate/serialization/serializers/SparseArraySerializer$SparseArraySurrogate;->Companion:Landroidx/savedstate/serialization/serializers/SparseArraySerializer$SparseArraySurrogate$Companion;

    invoke-virtual {v0, p1}, Landroidx/savedstate/serialization/serializers/SparseArraySerializer$SparseArraySurrogate$Companion;->serializer(Ldf4;)Ldf4;

    move-result-object p1

    iput-object p1, p0, Landroidx/savedstate/serialization/serializers/SparseArraySerializer;->surrogateSerializer:Ldf4;

    invoke-interface {p1}, Lxp7;->getDescriptor()Lmp7;

    move-result-object p1

    iput-object p1, p0, Landroidx/savedstate/serialization/serializers/SparseArraySerializer;->descriptor:Lmp7;

    return-void
.end method


# virtual methods
.method public deserialize(Lud2;)Landroid/util/SparseArray;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lud2;",
            ")",
            "Landroid/util/SparseArray<",
            "TT;>;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Landroidx/savedstate/serialization/serializers/SparseArraySerializer;->surrogateSerializer:Ldf4;

    check-cast p0, Lxl2;

    invoke-interface {p1, p0}, Lud2;->decodeSerializableValue(Lxl2;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/savedstate/serialization/serializers/SparseArraySerializer$SparseArraySurrogate;

    invoke-virtual {p0}, Landroidx/savedstate/serialization/serializers/SparseArraySerializer$SparseArraySurrogate;->getKeys()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {p0}, Landroidx/savedstate/serialization/serializers/SparseArraySerializer$SparseArraySurrogate;->getValues()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne p1, v0, :cond_1

    new-instance p1, Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroidx/savedstate/serialization/serializers/SparseArraySerializer$SparseArraySurrogate;->getKeys()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p1, v0}, Landroid/util/SparseArray;-><init>(I)V

    invoke-virtual {p0}, Landroidx/savedstate/serialization/serializers/SparseArraySerializer$SparseArraySurrogate;->getKeys()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p0}, Landroidx/savedstate/serialization/serializers/SparseArraySerializer$SparseArraySurrogate;->getKeys()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-virtual {p0}, Landroidx/savedstate/serialization/serializers/SparseArraySerializer$SparseArraySurrogate;->getValues()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p1

    :cond_1
    const-string p0, "Failed requirement."

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic deserialize(Lud2;)Ljava/lang/Object;
    .locals 0

    .line 93
    invoke-virtual {p0, p1}, Landroidx/savedstate/serialization/serializers/SparseArraySerializer;->deserialize(Lud2;)Landroid/util/SparseArray;

    move-result-object p0

    return-object p0
.end method

.method public getDescriptor()Lmp7;
    .locals 0

    iget-object p0, p0, Landroidx/savedstate/serialization/serializers/SparseArraySerializer;->descriptor:Lmp7;

    return-object p0
.end method

.method public serialize(Lux2;Landroid/util/SparseArray;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lux2;",
            "Landroid/util/SparseArray<",
            "TT;>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_0

    invoke-virtual {p2, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result v0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    :goto_1
    if-ge v2, v0, :cond_1

    invoke-virtual {p2, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    new-instance p2, Landroidx/savedstate/serialization/serializers/SparseArraySerializer$SparseArraySurrogate;

    invoke-direct {p2, v1, v3}, Landroidx/savedstate/serialization/serializers/SparseArraySerializer$SparseArraySurrogate;-><init>(Ljava/util/List;Ljava/util/List;)V

    iget-object p0, p0, Landroidx/savedstate/serialization/serializers/SparseArraySerializer;->surrogateSerializer:Ldf4;

    check-cast p0, Lxp7;

    invoke-interface {p1, p0, p2}, Lux2;->encodeSerializableValue(Lxp7;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic serialize(Lux2;Ljava/lang/Object;)V
    .locals 0

    .line 67
    check-cast p2, Landroid/util/SparseArray;

    invoke-virtual {p0, p1, p2}, Landroidx/savedstate/serialization/serializers/SparseArraySerializer;->serialize(Lux2;Landroid/util/SparseArray;)V

    return-void
.end method
