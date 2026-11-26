.class public final Lcom/google/firebase/sessions/SessionData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/sessions/SessionData$$serializer;,
        Lcom/google/firebase/sessions/SessionData$Companion;
    }
.end annotation

.annotation runtime Lup7;
.end annotation


# static fields
.field private static final $childSerializers:[Lcl4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcl4<",
            "Ldf4<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/google/firebase/sessions/SessionData$Companion;


# instance fields
.field private final backgroundTime:Lcom/google/firebase/sessions/Time;

.field private final processDataMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/firebase/sessions/ProcessData;",
            ">;"
        }
    .end annotation
.end field

.field private final sessionDetails:Lcom/google/firebase/sessions/SessionDetails;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/firebase/sessions/SessionData$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/firebase/sessions/SessionData$Companion;-><init>(Ljh2;)V

    sput-object v0, Lcom/google/firebase/sessions/SessionData;->Companion:Lcom/google/firebase/sessions/SessionData$Companion;

    sget-object v0, Lpo4;->PUBLICATION:Lpo4;

    new-instance v2, Lre0;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Lre0;-><init>(I)V

    invoke-static {v0, v2}, Lnm4;->a(Lpo4;Lll3;)Lcl4;

    move-result-object v0

    new-array v2, v3, [Lcl4;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v3, 0x1

    aput-object v1, v2, v3

    const/4 v1, 0x2

    aput-object v0, v2, v1

    sput-object v2, Lcom/google/firebase/sessions/SessionData;->$childSerializers:[Lcl4;

    return-void
.end method

.method public synthetic constructor <init>(ILcom/google/firebase/sessions/SessionDetails;Lcom/google/firebase/sessions/Time;Ljava/util/Map;Lwp7;)V
    .locals 2

    and-int/lit8 p5, p1, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne v1, p5, :cond_2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/firebase/sessions/SessionData;->sessionDetails:Lcom/google/firebase/sessions/SessionDetails;

    and-int/lit8 p2, p1, 0x2

    if-nez p2, :cond_0

    iput-object v0, p0, Lcom/google/firebase/sessions/SessionData;->backgroundTime:Lcom/google/firebase/sessions/Time;

    goto :goto_0

    :cond_0
    iput-object p3, p0, Lcom/google/firebase/sessions/SessionData;->backgroundTime:Lcom/google/firebase/sessions/Time;

    :goto_0
    and-int/lit8 p1, p1, 0x4

    if-nez p1, :cond_1

    iput-object v0, p0, Lcom/google/firebase/sessions/SessionData;->processDataMap:Ljava/util/Map;

    return-void

    :cond_1
    iput-object p4, p0, Lcom/google/firebase/sessions/SessionData;->processDataMap:Ljava/util/Map;

    return-void

    :cond_2
    sget-object p0, Lcom/google/firebase/sessions/SessionData$$serializer;->INSTANCE:Lcom/google/firebase/sessions/SessionData$$serializer;

    invoke-virtual {p0}, Lcom/google/firebase/sessions/SessionData$$serializer;->getDescriptor()Lmp7;

    move-result-object p0

    invoke-static {p0, p1, v1}, Lr96;->f(Lmp7;II)V

    throw v0
.end method

.method public constructor <init>(Lcom/google/firebase/sessions/SessionDetails;Lcom/google/firebase/sessions/Time;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/sessions/SessionDetails;",
            "Lcom/google/firebase/sessions/Time;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/firebase/sessions/ProcessData;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/google/firebase/sessions/SessionData;->sessionDetails:Lcom/google/firebase/sessions/SessionDetails;

    .line 42
    iput-object p2, p0, Lcom/google/firebase/sessions/SessionData;->backgroundTime:Lcom/google/firebase/sessions/Time;

    .line 43
    iput-object p3, p0, Lcom/google/firebase/sessions/SessionData;->processDataMap:Ljava/util/Map;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/firebase/sessions/SessionDetails;Lcom/google/firebase/sessions/Time;Ljava/util/Map;ILjh2;)V
    .locals 1

    and-int/lit8 p5, p4, 0x2

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    move-object p2, v0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    move-object p3, v0

    .line 44
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/google/firebase/sessions/SessionData;-><init>(Lcom/google/firebase/sessions/SessionDetails;Lcom/google/firebase/sessions/Time;Ljava/util/Map;)V

    return-void
.end method

.method private static final synthetic _childSerializers$_anonymous_()Ldf4;
    .locals 3

    new-instance v0, Luq4;

    sget-object v1, Lca8;->a:Lca8;

    sget-object v2, Lcom/google/firebase/sessions/ProcessData$$serializer;->INSTANCE:Lcom/google/firebase/sessions/ProcessData$$serializer;

    invoke-direct {v0, v1, v2}, Luq4;-><init>(Ldf4;Ldf4;)V

    return-object v0
.end method

.method public static synthetic a()Ldf4;
    .locals 1

    invoke-static {}, Lcom/google/firebase/sessions/SessionData;->_childSerializers$_anonymous_()Ldf4;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$get$childSerializers$cp()[Lcl4;
    .locals 1

    sget-object v0, Lcom/google/firebase/sessions/SessionData;->$childSerializers:[Lcl4;

    return-object v0
.end method

.method public static synthetic copy$default(Lcom/google/firebase/sessions/SessionData;Lcom/google/firebase/sessions/SessionDetails;Lcom/google/firebase/sessions/Time;Ljava/util/Map;ILjava/lang/Object;)Lcom/google/firebase/sessions/SessionData;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Lcom/google/firebase/sessions/SessionData;->sessionDetails:Lcom/google/firebase/sessions/SessionDetails;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-object p2, p0, Lcom/google/firebase/sessions/SessionData;->backgroundTime:Lcom/google/firebase/sessions/Time;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-object p3, p0, Lcom/google/firebase/sessions/SessionData;->processDataMap:Ljava/util/Map;

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/firebase/sessions/SessionData;->copy(Lcom/google/firebase/sessions/SessionDetails;Lcom/google/firebase/sessions/Time;Ljava/util/Map;)Lcom/google/firebase/sessions/SessionData;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic write$Self$com_google_firebase_firebase_sessions(Lcom/google/firebase/sessions/SessionData;Lgu1;Lmp7;)V
    .locals 4

    sget-object v0, Lcom/google/firebase/sessions/SessionData;->$childSerializers:[Lcl4;

    sget-object v1, Lcom/google/firebase/sessions/SessionDetails$$serializer;->INSTANCE:Lcom/google/firebase/sessions/SessionDetails$$serializer;

    iget-object v2, p0, Lcom/google/firebase/sessions/SessionData;->sessionDetails:Lcom/google/firebase/sessions/SessionDetails;

    const/4 v3, 0x0

    invoke-interface {p1, p2, v3, v1, v2}, Lgu1;->encodeSerializableElement(Lmp7;ILxp7;Ljava/lang/Object;)V

    const/4 v1, 0x1

    invoke-interface {p1, p2, v1}, Lgu1;->shouldEncodeElementDefault(Lmp7;I)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/google/firebase/sessions/SessionData;->backgroundTime:Lcom/google/firebase/sessions/Time;

    if-eqz v2, :cond_1

    :goto_0
    sget-object v2, Lcom/google/firebase/sessions/Time$$serializer;->INSTANCE:Lcom/google/firebase/sessions/Time$$serializer;

    iget-object v3, p0, Lcom/google/firebase/sessions/SessionData;->backgroundTime:Lcom/google/firebase/sessions/Time;

    invoke-interface {p1, p2, v1, v2, v3}, Lgu1;->encodeNullableSerializableElement(Lmp7;ILxp7;Ljava/lang/Object;)V

    :cond_1
    const/4 v1, 0x2

    invoke-interface {p1, p2, v1}, Lgu1;->shouldEncodeElementDefault(Lmp7;I)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/google/firebase/sessions/SessionData;->processDataMap:Ljava/util/Map;

    if-eqz v2, :cond_3

    :goto_1
    aget-object v0, v0, v1

    invoke-interface {v0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lxp7;

    iget-object p0, p0, Lcom/google/firebase/sessions/SessionData;->processDataMap:Ljava/util/Map;

    invoke-interface {p1, p2, v1, v0, p0}, Lgu1;->encodeNullableSerializableElement(Lmp7;ILxp7;Ljava/lang/Object;)V

    :cond_3
    return-void
.end method


# virtual methods
.method public final component1()Lcom/google/firebase/sessions/SessionDetails;
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/sessions/SessionData;->sessionDetails:Lcom/google/firebase/sessions/SessionDetails;

    return-object p0
.end method

.method public final component2()Lcom/google/firebase/sessions/Time;
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/sessions/SessionData;->backgroundTime:Lcom/google/firebase/sessions/Time;

    return-object p0
.end method

.method public final component3()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/firebase/sessions/ProcessData;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/google/firebase/sessions/SessionData;->processDataMap:Ljava/util/Map;

    return-object p0
.end method

.method public final copy(Lcom/google/firebase/sessions/SessionDetails;Lcom/google/firebase/sessions/Time;Ljava/util/Map;)Lcom/google/firebase/sessions/SessionData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/sessions/SessionDetails;",
            "Lcom/google/firebase/sessions/Time;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/firebase/sessions/ProcessData;",
            ">;)",
            "Lcom/google/firebase/sessions/SessionData;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/google/firebase/sessions/SessionData;

    invoke-direct {p0, p1, p2, p3}, Lcom/google/firebase/sessions/SessionData;-><init>(Lcom/google/firebase/sessions/SessionDetails;Lcom/google/firebase/sessions/Time;Ljava/util/Map;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/firebase/sessions/SessionData;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/google/firebase/sessions/SessionData;

    iget-object v1, p0, Lcom/google/firebase/sessions/SessionData;->sessionDetails:Lcom/google/firebase/sessions/SessionDetails;

    iget-object v3, p1, Lcom/google/firebase/sessions/SessionData;->sessionDetails:Lcom/google/firebase/sessions/SessionDetails;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/google/firebase/sessions/SessionData;->backgroundTime:Lcom/google/firebase/sessions/Time;

    iget-object v3, p1, Lcom/google/firebase/sessions/SessionData;->backgroundTime:Lcom/google/firebase/sessions/Time;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object p0, p0, Lcom/google/firebase/sessions/SessionData;->processDataMap:Ljava/util/Map;

    iget-object p1, p1, Lcom/google/firebase/sessions/SessionData;->processDataMap:Ljava/util/Map;

    invoke-static {p0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getBackgroundTime()Lcom/google/firebase/sessions/Time;
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/sessions/SessionData;->backgroundTime:Lcom/google/firebase/sessions/Time;

    return-object p0
.end method

.method public final getProcessDataMap()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/firebase/sessions/ProcessData;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/google/firebase/sessions/SessionData;->processDataMap:Ljava/util/Map;

    return-object p0
.end method

.method public final getSessionDetails()Lcom/google/firebase/sessions/SessionDetails;
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/sessions/SessionData;->sessionDetails:Lcom/google/firebase/sessions/SessionDetails;

    return-object p0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/google/firebase/sessions/SessionData;->sessionDetails:Lcom/google/firebase/sessions/SessionDetails;

    invoke-virtual {v0}, Lcom/google/firebase/sessions/SessionDetails;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/firebase/sessions/SessionData;->backgroundTime:Lcom/google/firebase/sessions/Time;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/google/firebase/sessions/Time;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/google/firebase/sessions/SessionData;->processDataMap:Ljava/util/Map;

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SessionData(sessionDetails="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/firebase/sessions/SessionData;->sessionDetails:Lcom/google/firebase/sessions/SessionDetails;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", backgroundTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/firebase/sessions/SessionData;->backgroundTime:Lcom/google/firebase/sessions/Time;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", processDataMap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/google/firebase/sessions/SessionData;->processDataMap:Ljava/util/Map;

    const/16 v1, 0x29

    invoke-static {v0, p0, v1}, Lg2;->c(Ljava/lang/StringBuilder;Ljava/util/Map;C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
