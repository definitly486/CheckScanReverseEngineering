.class public final Ljt;
.super Ljava/lang/Number;
.source "SourceFile"


# instance fields
.field public transient b:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Ljt;->b:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    iget-object p0, p0, Ljt;->b:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 2

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    invoke-virtual {p0}, Ljt;->a()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/io/ObjectOutputStream;->writeDouble(D)V

    return-void
.end method


# virtual methods
.method public final a()D
    .locals 2

    iget-object p0, p0, Ljt;->b:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public final doubleValue()D
    .locals 2

    invoke-virtual {p0}, Ljt;->a()D

    move-result-wide v0

    return-wide v0
.end method

.method public final floatValue()F
    .locals 2

    invoke-virtual {p0}, Ljt;->a()D

    move-result-wide v0

    double-to-float p0, v0

    return p0
.end method

.method public final intValue()I
    .locals 2

    invoke-virtual {p0}, Ljt;->a()D

    move-result-wide v0

    double-to-int p0, v0

    return p0
.end method

.method public final longValue()J
    .locals 2

    invoke-virtual {p0}, Ljt;->a()D

    move-result-wide v0

    double-to-long v0, v0

    return-wide v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Ljt;->a()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
