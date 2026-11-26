.class public final Lcom/google/firebase/sessions/SessionDetails;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/sessions/SessionDetails$$serializer;,
        Lcom/google/firebase/sessions/SessionDetails$Companion;
    }
.end annotation

.annotation runtime Lup7;
.end annotation


# static fields
.field public static final Companion:Lcom/google/firebase/sessions/SessionDetails$Companion;


# instance fields
.field private final firstSessionId:Ljava/lang/String;

.field private final sessionId:Ljava/lang/String;

.field private final sessionIndex:I

.field private final sessionStartTimestampUs:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/firebase/sessions/SessionDetails$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/firebase/sessions/SessionDetails$Companion;-><init>(Ljh2;)V

    sput-object v0, Lcom/google/firebase/sessions/SessionDetails;->Companion:Lcom/google/firebase/sessions/SessionDetails$Companion;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;Ljava/lang/String;IJLwp7;)V
    .locals 1

    and-int/lit8 p7, p1, 0xf

    const/16 v0, 0xf

    if-ne v0, p7, :cond_0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/firebase/sessions/SessionDetails;->sessionId:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/firebase/sessions/SessionDetails;->firstSessionId:Ljava/lang/String;

    iput p4, p0, Lcom/google/firebase/sessions/SessionDetails;->sessionIndex:I

    iput-wide p5, p0, Lcom/google/firebase/sessions/SessionDetails;->sessionStartTimestampUs:J

    return-void

    :cond_0
    sget-object p0, Lcom/google/firebase/sessions/SessionDetails$$serializer;->INSTANCE:Lcom/google/firebase/sessions/SessionDetails$$serializer;

    invoke-virtual {p0}, Lcom/google/firebase/sessions/SessionDetails$$serializer;->getDescriptor()Lmp7;

    move-result-object p0

    invoke-static {p0, p1, v0}, Lr96;->f(Lmp7;II)V

    const/4 p0, 0x0

    throw p0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IJ)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/google/firebase/sessions/SessionDetails;->sessionId:Ljava/lang/String;

    .line 31
    iput-object p2, p0, Lcom/google/firebase/sessions/SessionDetails;->firstSessionId:Ljava/lang/String;

    .line 32
    iput p3, p0, Lcom/google/firebase/sessions/SessionDetails;->sessionIndex:I

    .line 33
    iput-wide p4, p0, Lcom/google/firebase/sessions/SessionDetails;->sessionStartTimestampUs:J

    return-void
.end method

.method public static synthetic copy$default(Lcom/google/firebase/sessions/SessionDetails;Ljava/lang/String;Ljava/lang/String;IJILjava/lang/Object;)Lcom/google/firebase/sessions/SessionDetails;
    .locals 0

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    iget-object p1, p0, Lcom/google/firebase/sessions/SessionDetails;->sessionId:Ljava/lang/String;

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    iget-object p2, p0, Lcom/google/firebase/sessions/SessionDetails;->firstSessionId:Ljava/lang/String;

    :cond_1
    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_2

    iget p3, p0, Lcom/google/firebase/sessions/SessionDetails;->sessionIndex:I

    :cond_2
    and-int/lit8 p6, p6, 0x8

    if-eqz p6, :cond_3

    iget-wide p4, p0, Lcom/google/firebase/sessions/SessionDetails;->sessionStartTimestampUs:J

    :cond_3
    move-wide p6, p4

    move-object p4, p2

    move p5, p3

    move-object p2, p0

    move-object p3, p1

    invoke-virtual/range {p2 .. p7}, Lcom/google/firebase/sessions/SessionDetails;->copy(Ljava/lang/String;Ljava/lang/String;IJ)Lcom/google/firebase/sessions/SessionDetails;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic write$Self$com_google_firebase_firebase_sessions(Lcom/google/firebase/sessions/SessionDetails;Lgu1;Lmp7;)V
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/firebase/sessions/SessionDetails;->sessionId:Ljava/lang/String;

    invoke-interface {p1, p2, v0, v1}, Lgu1;->encodeStringElement(Lmp7;ILjava/lang/String;)V

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/firebase/sessions/SessionDetails;->firstSessionId:Ljava/lang/String;

    invoke-interface {p1, p2, v0, v1}, Lgu1;->encodeStringElement(Lmp7;ILjava/lang/String;)V

    const/4 v0, 0x2

    iget v1, p0, Lcom/google/firebase/sessions/SessionDetails;->sessionIndex:I

    invoke-interface {p1, p2, v0, v1}, Lgu1;->encodeIntElement(Lmp7;II)V

    const/4 v0, 0x3

    iget-wide v1, p0, Lcom/google/firebase/sessions/SessionDetails;->sessionStartTimestampUs:J

    invoke-interface {p1, p2, v0, v1, v2}, Lgu1;->encodeLongElement(Lmp7;IJ)V

    return-void
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/sessions/SessionDetails;->sessionId:Ljava/lang/String;

    return-object p0
.end method

.method public final component2()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/sessions/SessionDetails;->firstSessionId:Ljava/lang/String;

    return-object p0
.end method

.method public final component3()I
    .locals 0

    iget p0, p0, Lcom/google/firebase/sessions/SessionDetails;->sessionIndex:I

    return p0
.end method

.method public final component4()J
    .locals 2

    iget-wide v0, p0, Lcom/google/firebase/sessions/SessionDetails;->sessionStartTimestampUs:J

    return-wide v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;IJ)Lcom/google/firebase/sessions/SessionDetails;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/google/firebase/sessions/SessionDetails;

    invoke-direct/range {p0 .. p5}, Lcom/google/firebase/sessions/SessionDetails;-><init>(Ljava/lang/String;Ljava/lang/String;IJ)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/firebase/sessions/SessionDetails;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/google/firebase/sessions/SessionDetails;

    iget-object v1, p0, Lcom/google/firebase/sessions/SessionDetails;->sessionId:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/firebase/sessions/SessionDetails;->sessionId:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/google/firebase/sessions/SessionDetails;->firstSessionId:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/firebase/sessions/SessionDetails;->firstSessionId:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/google/firebase/sessions/SessionDetails;->sessionIndex:I

    iget v3, p1, Lcom/google/firebase/sessions/SessionDetails;->sessionIndex:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-wide v3, p0, Lcom/google/firebase/sessions/SessionDetails;->sessionStartTimestampUs:J

    iget-wide p0, p1, Lcom/google/firebase/sessions/SessionDetails;->sessionStartTimestampUs:J

    cmp-long p0, v3, p0

    if-eqz p0, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getFirstSessionId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/sessions/SessionDetails;->firstSessionId:Ljava/lang/String;

    return-object p0
.end method

.method public final getSessionId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/sessions/SessionDetails;->sessionId:Ljava/lang/String;

    return-object p0
.end method

.method public final getSessionIndex()I
    .locals 0

    iget p0, p0, Lcom/google/firebase/sessions/SessionDetails;->sessionIndex:I

    return p0
.end method

.method public final getSessionStartTimestampUs()J
    .locals 2

    iget-wide v0, p0, Lcom/google/firebase/sessions/SessionDetails;->sessionStartTimestampUs:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/google/firebase/sessions/SessionDetails;->sessionId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/google/firebase/sessions/SessionDetails;->firstSessionId:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lzg;->b(IILjava/lang/String;)I

    move-result v0

    iget v2, p0, Lcom/google/firebase/sessions/SessionDetails;->sessionIndex:I

    invoke-static {v2, v0, v1}, Lej0;->b(III)I

    move-result v0

    iget-wide v1, p0, Lcom/google/firebase/sessions/SessionDetails;->sessionStartTimestampUs:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SessionDetails(sessionId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/firebase/sessions/SessionDetails;->sessionId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", firstSessionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/firebase/sessions/SessionDetails;->firstSessionId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", sessionIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/firebase/sessions/SessionDetails;->sessionIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sessionStartTimestampUs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/google/firebase/sessions/SessionDetails;->sessionStartTimestampUs:J

    const/16 p0, 0x29

    invoke-static {v0, v1, v2, p0}, Llg;->f(Ljava/lang/StringBuilder;JC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
