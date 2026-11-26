.class public interface abstract Lud2;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract beginStructure(Lmp7;)Ldu1;
.end method

.method public abstract decodeBoolean()Z
.end method

.method public abstract decodeByte()B
.end method

.method public abstract decodeChar()C
.end method

.method public abstract decodeDouble()D
.end method

.method public abstract decodeEnum(Lmp7;)I
.end method

.method public abstract decodeFloat()F
.end method

.method public abstract decodeInline(Lmp7;)Lud2;
.end method

.method public abstract decodeInt()I
.end method

.method public abstract decodeLong()J
.end method

.method public abstract decodeNotNullMark()Z
.end method

.method public abstract decodeNull()Ljava/lang/Void;
.end method

.method public decodeSerializableValue(Lxl2;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lxl2<",
            "+TT;>;)TT;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1, p0}, Lxl2;->deserialize(Lud2;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public abstract decodeShort()S
.end method

.method public abstract decodeString()Ljava/lang/String;
.end method
