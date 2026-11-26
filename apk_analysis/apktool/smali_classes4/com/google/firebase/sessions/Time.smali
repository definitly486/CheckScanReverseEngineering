.class public final Lcom/google/firebase/sessions/Time;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/sessions/Time$$serializer;,
        Lcom/google/firebase/sessions/Time$Companion;
    }
.end annotation

.annotation runtime Lup7;
.end annotation


# static fields
.field public static final Companion:Lcom/google/firebase/sessions/Time$Companion;


# instance fields
.field private final ms:J

.field private final seconds:J

.field private final us:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/firebase/sessions/Time$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/firebase/sessions/Time$Companion;-><init>(Ljh2;)V

    sput-object v0, Lcom/google/firebase/sessions/Time;->Companion:Lcom/google/firebase/sessions/Time$Companion;

    return-void
.end method

.method public synthetic constructor <init>(IJJJLwp7;)V
    .locals 2

    and-int/lit8 p8, p1, 0x1

    const/4 v0, 0x1

    if-ne v0, p8, :cond_2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p2, p0, Lcom/google/firebase/sessions/Time;->ms:J

    and-int/lit8 p8, p1, 0x2

    const-wide/16 v0, 0x3e8

    if-nez p8, :cond_0

    mul-long p4, p2, v0

    :cond_0
    iput-wide p4, p0, Lcom/google/firebase/sessions/Time;->us:J

    and-int/lit8 p1, p1, 0x4

    if-nez p1, :cond_1

    div-long/2addr p2, v0

    iput-wide p2, p0, Lcom/google/firebase/sessions/Time;->seconds:J

    return-void

    :cond_1
    iput-wide p6, p0, Lcom/google/firebase/sessions/Time;->seconds:J

    return-void

    :cond_2
    sget-object p0, Lcom/google/firebase/sessions/Time$$serializer;->INSTANCE:Lcom/google/firebase/sessions/Time$$serializer;

    invoke-virtual {p0}, Lcom/google/firebase/sessions/Time$$serializer;->getDescriptor()Lmp7;

    move-result-object p0

    invoke-static {p0, p1, v0}, Lr96;->f(Lmp7;II)V

    const/4 p0, 0x0

    throw p0
.end method

.method public constructor <init>(J)V
    .locals 4

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/google/firebase/sessions/Time;->ms:J

    const-wide/16 v0, 0x3e8

    mul-long v2, p1, v0

    .line 43
    iput-wide v2, p0, Lcom/google/firebase/sessions/Time;->us:J

    .line 44
    div-long/2addr p1, v0

    iput-wide p1, p0, Lcom/google/firebase/sessions/Time;->seconds:J

    return-void
.end method

.method public static synthetic copy$default(Lcom/google/firebase/sessions/Time;JILjava/lang/Object;)Lcom/google/firebase/sessions/Time;
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    iget-wide p1, p0, Lcom/google/firebase/sessions/Time;->ms:J

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/sessions/Time;->copy(J)Lcom/google/firebase/sessions/Time;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic write$Self$com_google_firebase_firebase_sessions(Lcom/google/firebase/sessions/Time;Lgu1;Lmp7;)V
    .locals 8

    const/4 v0, 0x0

    iget-wide v1, p0, Lcom/google/firebase/sessions/Time;->ms:J

    invoke-interface {p1, p2, v0, v1, v2}, Lgu1;->encodeLongElement(Lmp7;IJ)V

    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Lgu1;->shouldEncodeElementDefault(Lmp7;I)Z

    move-result v1

    const-wide/16 v2, 0x3e8

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v4, p0, Lcom/google/firebase/sessions/Time;->us:J

    iget-wide v6, p0, Lcom/google/firebase/sessions/Time;->ms:J

    mul-long/2addr v6, v2

    cmp-long v1, v4, v6

    if-eqz v1, :cond_1

    :goto_0
    iget-wide v4, p0, Lcom/google/firebase/sessions/Time;->us:J

    invoke-interface {p1, p2, v0, v4, v5}, Lgu1;->encodeLongElement(Lmp7;IJ)V

    :cond_1
    const/4 v0, 0x2

    invoke-interface {p1, p2, v0}, Lgu1;->shouldEncodeElementDefault(Lmp7;I)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    iget-wide v4, p0, Lcom/google/firebase/sessions/Time;->seconds:J

    iget-wide v6, p0, Lcom/google/firebase/sessions/Time;->ms:J

    div-long/2addr v6, v2

    cmp-long v1, v4, v6

    if-eqz v1, :cond_3

    :goto_1
    iget-wide v1, p0, Lcom/google/firebase/sessions/Time;->seconds:J

    invoke-interface {p1, p2, v0, v1, v2}, Lgu1;->encodeLongElement(Lmp7;IJ)V

    :cond_3
    return-void
.end method


# virtual methods
.method public final component1()J
    .locals 2

    iget-wide v0, p0, Lcom/google/firebase/sessions/Time;->ms:J

    return-wide v0
.end method

.method public final copy(J)Lcom/google/firebase/sessions/Time;
    .locals 0

    new-instance p0, Lcom/google/firebase/sessions/Time;

    invoke-direct {p0, p1, p2}, Lcom/google/firebase/sessions/Time;-><init>(J)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/firebase/sessions/Time;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/google/firebase/sessions/Time;

    iget-wide v3, p0, Lcom/google/firebase/sessions/Time;->ms:J

    iget-wide p0, p1, Lcom/google/firebase/sessions/Time;->ms:J

    cmp-long p0, v3, p0

    if-eqz p0, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final getMs()J
    .locals 2

    iget-wide v0, p0, Lcom/google/firebase/sessions/Time;->ms:J

    return-wide v0
.end method

.method public final getSeconds()J
    .locals 2

    iget-wide v0, p0, Lcom/google/firebase/sessions/Time;->seconds:J

    return-wide v0
.end method

.method public final getUs()J
    .locals 2

    iget-wide v0, p0, Lcom/google/firebase/sessions/Time;->us:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 2

    iget-wide v0, p0, Lcom/google/firebase/sessions/Time;->ms:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result p0

    return p0
.end method

.method public final minus-5sfh64U(Lcom/google/firebase/sessions/Time;)J
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lwt2;->c:Lwt2$a;

    iget-wide v0, p0, Lcom/google/firebase/sessions/Time;->ms:J

    iget-wide p0, p1, Lcom/google/firebase/sessions/Time;->ms:J

    sub-long/2addr v0, p0

    sget-object p0, Lau2;->MILLISECONDS:Lau2;

    invoke-static {v0, v1, p0}, Lyt2;->f(JLau2;)J

    move-result-wide p0

    return-wide p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Time(ms="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/google/firebase/sessions/Time;->ms:J

    const/16 p0, 0x29

    invoke-static {v0, v1, v2, p0}, Llg;->f(Ljava/lang/StringBuilder;JC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
