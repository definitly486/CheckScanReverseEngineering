.class public final Lp64;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Externalizable;


# instance fields
.field public b:J

.field public c:I


# direct methods
.method public constructor <init>()V
    .locals 3

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    .line 8
    invoke-direct {p0, v0, v1, v2}, Lp64;-><init>(JI)V

    return-void
.end method

.method public constructor <init>(JI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lp64;->b:J

    iput p3, p0, Lp64;->c:I

    return-void
.end method

.method private final readResolve()Ljava/lang/Object;
    .locals 2

    sget-object v0, Lg64;->d:Lg64;

    iget-wide v0, p0, Lp64;->b:J

    iget p0, p0, Lp64;->c:I

    invoke-static {p0, v0, v1}, Lg64$a;->a(IJ)Lg64;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final readExternal(Ljava/io/ObjectInput;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1}, Ljava/io/DataInput;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lp64;->b:J

    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result p1

    iput p1, p0, Lp64;->c:I

    return-void
.end method

.method public final writeExternal(Ljava/io/ObjectOutput;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v0, p0, Lp64;->b:J

    invoke-interface {p1, v0, v1}, Ljava/io/DataOutput;->writeLong(J)V

    iget p0, p0, Lp64;->c:I

    invoke-interface {p1, p0}, Ljava/io/DataOutput;->writeInt(I)V

    return-void
.end method
