.class public interface abstract Ldu1;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract decodeBooleanElement(Lmp7;I)Z
.end method

.method public abstract decodeByteElement(Lmp7;I)B
.end method

.method public abstract decodeCharElement(Lmp7;I)C
.end method

.method public decodeCollectionSize(Lmp7;)I
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, -0x1

    return p0
.end method

.method public abstract decodeDoubleElement(Lmp7;I)D
.end method

.method public abstract decodeElementIndex(Lmp7;)I
.end method

.method public abstract decodeFloatElement(Lmp7;I)F
.end method

.method public abstract decodeInlineElement(Lmp7;I)Lud2;
.end method

.method public abstract decodeIntElement(Lmp7;I)I
.end method

.method public abstract decodeLongElement(Lmp7;I)J
.end method

.method public abstract decodeNullableSerializableElement(Lmp7;ILxl2;Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lmp7;",
            "I",
            "Lxl2<",
            "+TT;>;TT;)TT;"
        }
    .end annotation
.end method

.method public decodeSequentially()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public abstract decodeSerializableElement(Lmp7;ILxl2;Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lmp7;",
            "I",
            "Lxl2<",
            "+TT;>;TT;)TT;"
        }
    .end annotation
.end method

.method public abstract decodeShortElement(Lmp7;I)S
.end method

.method public abstract decodeStringElement(Lmp7;I)Ljava/lang/String;
.end method

.method public abstract endStructure(Lmp7;)V
.end method

.method public abstract getSerializersModule()Ljq7;
.end method
