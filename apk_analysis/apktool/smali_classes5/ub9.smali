.class public final Lub9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Externalizable;


# instance fields
.field public b:J

.field public c:J


# direct methods
.method public constructor <init>()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 8
    invoke-direct {p0, v0, v1, v0, v1}, Lub9;-><init>(JJ)V

    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lub9;->b:J

    iput-wide p3, p0, Lub9;->c:J

    return-void
.end method

.method private final readResolve()Ljava/lang/Object;
    .locals 6

    iget-wide v0, p0, Lub9;->b:J

    iget-wide v2, p0, Lub9;->c:J

    const-wide/16 v4, 0x0

    cmp-long p0, v0, v4

    if-nez p0, :cond_0

    cmp-long p0, v2, v4

    if-nez p0, :cond_0

    sget-object p0, Ltb9;->d:Ltb9;

    goto :goto_0

    :cond_0
    new-instance p0, Ltb9;

    invoke-direct {p0, v0, v1, v2, v3}, Ltb9;-><init>(JJ)V

    :goto_0
    return-object p0
.end method


# virtual methods
.method public final readExternal(Ljava/io/ObjectInput;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1}, Ljava/io/DataInput;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lub9;->b:J

    invoke-interface {p1}, Ljava/io/DataInput;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lub9;->c:J

    return-void
.end method

.method public final writeExternal(Ljava/io/ObjectOutput;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v0, p0, Lub9;->b:J

    invoke-interface {p1, v0, v1}, Ljava/io/DataOutput;->writeLong(J)V

    iget-wide v0, p0, Lub9;->c:J

    invoke-interface {p1, v0, v1}, Ljava/io/DataOutput;->writeLong(J)V

    return-void
.end method
