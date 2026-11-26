.class public final Landroidx/compose/runtime/CompositeKeyHashCode_jvmKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final CompositeKeyHashSizeBits:I = 0x40

.field public static final EmptyCompositeKeyHashCode:J


# direct methods
.method public static final CompositeKeyHashCode(I)J
    .locals 2

    int-to-long v0, p0

    return-wide v0
.end method

.method public static final bottomUpCompoundWith(JII)J
    .locals 2

    int-to-long v0, p2

    invoke-static {v0, v1, p3}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide p2

    xor-long/2addr p0, p2

    return-wide p0
.end method

.method public static final bottomUpCompoundWith(JJI)J
    .locals 0

    .line 7
    invoke-static {p2, p3, p4}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide p2

    xor-long/2addr p0, p2

    return-wide p0
.end method

.method public static final compoundWith(JII)J
    .locals 0

    invoke-static {p0, p1, p3}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide p0

    int-to-long p2, p2

    xor-long/2addr p0, p2

    return-wide p0
.end method

.method public static final toLong(J)J
    .locals 0

    return-wide p0
.end method

.method public static final toString(JI)Ljava/lang/String;
    .locals 0

    invoke-static {p2}, Lga1;->b(I)V

    invoke-static {p0, p1, p2}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method

.method public static final unCompoundWith(JII)J
    .locals 2

    int-to-long v0, p2

    xor-long/2addr p0, v0

    invoke-static {p0, p1, p3}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide p0

    return-wide p0
.end method
