.class final Lcom/google/firebase/inappmessaging/model/AutoValue_RateLimit$Builder;
.super Lcom/google/firebase/inappmessaging/model/RateLimit$Builder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/inappmessaging/model/AutoValue_RateLimit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private limit:J

.field private limiterKey:Ljava/lang/String;

.field private set$0:B

.field private timeToLiveMillis:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/model/RateLimit$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/google/firebase/inappmessaging/model/RateLimit;
    .locals 9

    iget-byte v0, p0, Lcom/google/firebase/inappmessaging/model/AutoValue_RateLimit$Builder;->set$0:B

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    iget-object v3, p0, Lcom/google/firebase/inappmessaging/model/AutoValue_RateLimit$Builder;->limiterKey:Ljava/lang/String;

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/google/firebase/inappmessaging/model/AutoValue_RateLimit;

    iget-wide v4, p0, Lcom/google/firebase/inappmessaging/model/AutoValue_RateLimit$Builder;->limit:J

    iget-wide v6, p0, Lcom/google/firebase/inappmessaging/model/AutoValue_RateLimit$Builder;->timeToLiveMillis:J

    const/4 v8, 0x0

    invoke-direct/range {v2 .. v8}, Lcom/google/firebase/inappmessaging/model/AutoValue_RateLimit;-><init>(Ljava/lang/String;JJLcom/google/firebase/inappmessaging/model/AutoValue_RateLimit$1;)V

    return-object v2

    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/firebase/inappmessaging/model/AutoValue_RateLimit$Builder;->limiterKey:Ljava/lang/String;

    if-nez v1, :cond_2

    const-string v1, " limiterKey"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    iget-byte v1, p0, Lcom/google/firebase/inappmessaging/model/AutoValue_RateLimit$Builder;->set$0:B

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_3

    const-string v1, " limit"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    iget-byte p0, p0, Lcom/google/firebase/inappmessaging/model/AutoValue_RateLimit$Builder;->set$0:B

    and-int/lit8 p0, p0, 0x2

    if-nez p0, :cond_4

    const-string p0, " timeToLiveMillis"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    const-string p0, "Missing required properties:"

    invoke-static {v0, p0}, Lm2;->d(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public setLimit(J)Lcom/google/firebase/inappmessaging/model/RateLimit$Builder;
    .locals 0

    iput-wide p1, p0, Lcom/google/firebase/inappmessaging/model/AutoValue_RateLimit$Builder;->limit:J

    iget-byte p1, p0, Lcom/google/firebase/inappmessaging/model/AutoValue_RateLimit$Builder;->set$0:B

    or-int/lit8 p1, p1, 0x1

    int-to-byte p1, p1

    iput-byte p1, p0, Lcom/google/firebase/inappmessaging/model/AutoValue_RateLimit$Builder;->set$0:B

    return-object p0
.end method

.method public setLimiterKey(Ljava/lang/String;)Lcom/google/firebase/inappmessaging/model/RateLimit$Builder;
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/model/AutoValue_RateLimit$Builder;->limiterKey:Ljava/lang/String;

    return-object p0

    :cond_0
    const-string p0, "Null limiterKey"

    invoke-static {p0}, Lo2;->d(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public setTimeToLiveMillis(J)Lcom/google/firebase/inappmessaging/model/RateLimit$Builder;
    .locals 0

    iput-wide p1, p0, Lcom/google/firebase/inappmessaging/model/AutoValue_RateLimit$Builder;->timeToLiveMillis:J

    iget-byte p1, p0, Lcom/google/firebase/inappmessaging/model/AutoValue_RateLimit$Builder;->set$0:B

    or-int/lit8 p1, p1, 0x2

    int-to-byte p1, p1

    iput-byte p1, p0, Lcom/google/firebase/inappmessaging/model/AutoValue_RateLimit$Builder;->set$0:B

    return-object p0
.end method
