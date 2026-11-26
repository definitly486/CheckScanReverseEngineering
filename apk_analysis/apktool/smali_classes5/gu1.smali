.class public interface abstract Lgu1;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract encodeBooleanElement(Lmp7;IZ)V
.end method

.method public abstract encodeByteElement(Lmp7;IB)V
.end method

.method public abstract encodeCharElement(Lmp7;IC)V
.end method

.method public abstract encodeDoubleElement(Lmp7;ID)V
.end method

.method public abstract encodeFloatElement(Lmp7;IF)V
.end method

.method public abstract encodeInlineElement(Lmp7;I)Lux2;
.end method

.method public abstract encodeIntElement(Lmp7;II)V
.end method

.method public abstract encodeLongElement(Lmp7;IJ)V
.end method

.method public abstract encodeNullableSerializableElement(Lmp7;ILxp7;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lmp7;",
            "I",
            "Lxp7<",
            "-TT;>;TT;)V"
        }
    .end annotation
.end method

.method public abstract encodeSerializableElement(Lmp7;ILxp7;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lmp7;",
            "I",
            "Lxp7<",
            "-TT;>;TT;)V"
        }
    .end annotation
.end method

.method public abstract encodeShortElement(Lmp7;IS)V
.end method

.method public abstract encodeStringElement(Lmp7;ILjava/lang/String;)V
.end method

.method public abstract endStructure(Lmp7;)V
.end method

.method public shouldEncodeElementDefault(Lmp7;I)Z
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x1

    return p0
.end method
