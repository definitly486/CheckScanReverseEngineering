.class public interface abstract Lux2;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public beginCollection(Lmp7;I)Lgu1;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p0, p1}, Lux2;->beginStructure(Lmp7;)Lgu1;

    move-result-object p0

    return-object p0
.end method

.method public abstract beginStructure(Lmp7;)Lgu1;
.end method

.method public abstract encodeBoolean(Z)V
.end method

.method public abstract encodeByte(B)V
.end method

.method public abstract encodeChar(C)V
.end method

.method public abstract encodeDouble(D)V
.end method

.method public abstract encodeEnum(Lmp7;I)V
.end method

.method public abstract encodeFloat(F)V
.end method

.method public abstract encodeInline(Lmp7;)Lux2;
.end method

.method public abstract encodeInt(I)V
.end method

.method public abstract encodeLong(J)V
.end method

.method public encodeNotNullMark()V
    .locals 0

    return-void
.end method

.method public abstract encodeNull()V
.end method

.method public encodeSerializableValue(Lxp7;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lxp7<",
            "-TT;>;TT;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1, p0, p2}, Lxp7;->serialize(Lux2;Ljava/lang/Object;)V

    return-void
.end method

.method public abstract encodeShort(S)V
.end method

.method public abstract encodeString(Ljava/lang/String;)V
.end method

.method public abstract getSerializersModule()Ljq7;
.end method
