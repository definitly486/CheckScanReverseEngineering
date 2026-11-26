.class public final Llc2$e;
.super Llc2;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llc2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llc2$e$a;
    }
.end annotation

.annotation runtime Lup7;
    with = Lfu8;
.end annotation


# static fields
.field public static final Companion:Llc2$e$a;


# instance fields
.field public final c:J

.field public final d:Ljava/lang/String;

.field public final e:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Llc2$e$a;

    invoke-direct {v0}, Llc2$e$a;-><init>()V

    sput-object v0, Llc2$e;->Companion:Llc2$e$a;

    return-void
.end method

.method public constructor <init>(J)V
    .locals 6

    invoke-direct {p0}, Llc2;-><init>()V

    iput-wide p1, p0, Llc2$e;->c:J

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_5

    const-wide v2, 0x34630b8a000L

    rem-long v4, p1, v2

    cmp-long v4, v4, v0

    if-nez v4, :cond_0

    const-string v0, "HOUR"

    iput-object v0, p0, Llc2$e;->d:Ljava/lang/String;

    div-long/2addr p1, v2

    iput-wide p1, p0, Llc2$e;->e:J

    return-void

    :cond_0
    const-wide v2, 0xdf8475800L

    rem-long v4, p1, v2

    cmp-long v4, v4, v0

    if-nez v4, :cond_1

    const-string v0, "MINUTE"

    iput-object v0, p0, Llc2$e;->d:Ljava/lang/String;

    div-long/2addr p1, v2

    iput-wide p1, p0, Llc2$e;->e:J

    return-void

    :cond_1
    const-wide/32 v2, 0x3b9aca00

    rem-long v4, p1, v2

    cmp-long v4, v4, v0

    if-nez v4, :cond_2

    const-string v0, "SECOND"

    iput-object v0, p0, Llc2$e;->d:Ljava/lang/String;

    div-long/2addr p1, v2

    iput-wide p1, p0, Llc2$e;->e:J

    return-void

    :cond_2
    const-wide/32 v2, 0xf4240

    rem-long v4, p1, v2

    cmp-long v4, v4, v0

    if-nez v4, :cond_3

    const-string v0, "MILLISECOND"

    iput-object v0, p0, Llc2$e;->d:Ljava/lang/String;

    div-long/2addr p1, v2

    iput-wide p1, p0, Llc2$e;->e:J

    return-void

    :cond_3
    const-wide/16 v2, 0x3e8

    rem-long v4, p1, v2

    cmp-long v0, v4, v0

    if-nez v0, :cond_4

    const-string v0, "MICROSECOND"

    iput-object v0, p0, Llc2$e;->d:Ljava/lang/String;

    div-long/2addr p1, v2

    iput-wide p1, p0, Llc2$e;->e:J

    return-void

    :cond_4
    const-string v0, "NANOSECOND"

    iput-object v0, p0, Llc2$e;->d:Ljava/lang/String;

    iput-wide p1, p0, Llc2$e;->e:J

    return-void

    :cond_5
    const-string p0, "Unit duration must be positive, but was "

    const-string v0, " ns."

    invoke-static {p1, p2, p0, v0}, Lbg;->d(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lc9;->f(Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0
.end method


# virtual methods
.method public final b(I)Llc2$e;
    .locals 3

    new-instance v0, Llc2$e;

    iget-wide v1, p0, Llc2$e;->c:J

    int-to-long p0, p1

    invoke-static {v1, v2, p0, p1}, Ljava/lang/Math;->multiplyExact(JJ)J

    move-result-wide p0

    invoke-direct {v0, p0, p1}, Llc2$e;-><init>(J)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Llc2$e;

    if-eqz v0, :cond_0

    check-cast p1, Llc2$e;

    iget-wide v0, p1, Llc2$e;->c:J

    iget-wide p0, p0, Llc2$e;->c:J

    cmp-long p0, p0, v0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final hashCode()I
    .locals 3

    iget-wide v0, p0, Llc2$e;->c:J

    long-to-int p0, v0

    const/16 v2, 0x20

    shr-long/2addr v0, v2

    long-to-int v0, v0

    xor-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Llc2$e;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/16 v1, 0x1

    iget-wide v3, p0, Llc2$e;->e:J

    cmp-long p0, v3, v1

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x2d

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
