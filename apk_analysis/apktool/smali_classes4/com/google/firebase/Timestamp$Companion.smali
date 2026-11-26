.class public final Lcom/google/firebase/Timestamp$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/Timestamp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljh2;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/firebase/Timestamp$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$toPreciseTime(Lcom/google/firebase/Timestamp$Companion;Ljava/util/Date;)Lb36;
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/Timestamp$Companion;->toPreciseTime(Ljava/util/Date;)Lb36;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$validateRange(Lcom/google/firebase/Timestamp$Companion;JI)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/firebase/Timestamp$Companion;->validateRange(JI)V

    return-void
.end method

.method private final toPreciseTime(Ljava/util/Date;)Lb36;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Date;",
            ")",
            "Lb36<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide p0

    rem-long/2addr p0, v2

    const-wide/32 v2, 0xf4240

    mul-long/2addr p0, v2

    long-to-int p0, p0

    if-gez p0, :cond_0

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const v0, 0x3b9aca00

    add-int/2addr p0, v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    new-instance v0, Lb36;

    invoke-direct {v0, p1, p0}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    new-instance v0, Lb36;

    invoke-direct {v0, p1, p0}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method private final validateRange(JI)V
    .locals 2

    if-ltz p3, :cond_1

    const p0, 0x3b9aca00

    if-ge p3, p0, :cond_1

    const-wide v0, -0xe7791f700L

    cmp-long p0, v0, p1

    if-gtz p0, :cond_0

    const-wide v0, 0x3afff44180L

    cmp-long p0, p1, v0

    if-gez p0, :cond_0

    return-void

    :cond_0
    const-string p0, "Timestamp seconds out of range: "

    invoke-static {p1, p2, p0}, Lr01;->c(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lc9;->f(Ljava/lang/Object;)V

    return-void

    :cond_1
    const-string p0, "Timestamp nanoseconds out of range: "

    invoke-static {p3, p0}, Ljh;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lc9;->f(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final now()Lcom/google/firebase/Timestamp;
    .locals 1

    new-instance p0, Lcom/google/firebase/Timestamp;

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-direct {p0, v0}, Lcom/google/firebase/Timestamp;-><init>(Ljava/util/Date;)V

    return-object p0
.end method
