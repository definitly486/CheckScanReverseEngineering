.class public final synthetic Lcom/google/firebase/sessions/Time$$serializer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldp3;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/sessions/Time;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = "serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldp3<",
        "Lcom/google/firebase/sessions/Time;",
        ">;"
    }
.end annotation

.annotation runtime Lul2;
.end annotation


# static fields
.field public static final INSTANCE:Lcom/google/firebase/sessions/Time$$serializer;

.field private static final descriptor:Lmp7;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/firebase/sessions/Time$$serializer;

    invoke-direct {v0}, Lcom/google/firebase/sessions/Time$$serializer;-><init>()V

    sput-object v0, Lcom/google/firebase/sessions/Time$$serializer;->INSTANCE:Lcom/google/firebase/sessions/Time$$serializer;

    new-instance v1, Ls96;

    const-string v2, "com.google.firebase.sessions.Time"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v0, v3}, Ls96;-><init>(Ljava/lang/String;Ldp3;I)V

    const-string v0, "ms"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Ls96;->j(Ljava/lang/String;Z)V

    const-string v0, "us"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Ls96;->j(Ljava/lang/String;Z)V

    const-string v0, "seconds"

    invoke-virtual {v1, v0, v2}, Ls96;->j(Ljava/lang/String;Z)V

    sput-object v1, Lcom/google/firebase/sessions/Time$$serializer;->descriptor:Lmp7;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final childSerializers()[Ldf4;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ldf4<",
            "*>;"
        }
    .end annotation

    const/4 p0, 0x3

    new-array p0, p0, [Ldf4;

    sget-object v0, Lgw4;->a:Lgw4;

    const/4 v1, 0x0

    aput-object v0, p0, v1

    const/4 v1, 0x1

    aput-object v0, p0, v1

    const/4 v1, 0x2

    aput-object v0, p0, v1

    return-object p0
.end method

.method public final deserialize(Lud2;)Lcom/google/firebase/sessions/Time;
    .locals 22

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/google/firebase/sessions/Time$$serializer;->descriptor:Lmp7;

    move-object/from16 v1, p1

    invoke-interface {v1, v0}, Lud2;->beginStructure(Lmp7;)Ldu1;

    move-result-object v1

    invoke-interface {v1}, Ldu1;->decodeSequentially()Z

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_0

    invoke-interface {v1, v0, v5}, Ldu1;->decodeLongElement(Lmp7;I)J

    move-result-wide v5

    invoke-interface {v1, v0, v4}, Ldu1;->decodeLongElement(Lmp7;I)J

    move-result-wide v7

    invoke-interface {v1, v0, v3}, Ldu1;->decodeLongElement(Lmp7;I)J

    move-result-wide v2

    const/4 v4, 0x7

    move-wide/from16 v19, v2

    move v14, v4

    move-wide v15, v5

    move-wide/from16 v17, v7

    goto :goto_1

    :cond_0
    const-wide/16 v6, 0x0

    move v12, v4

    move v2, v5

    move-wide v8, v6

    move-wide v10, v8

    :goto_0
    if-eqz v12, :cond_5

    invoke-interface {v1, v0}, Ldu1;->decodeElementIndex(Lmp7;)I

    move-result v13

    const/4 v14, -0x1

    if-eq v13, v14, :cond_4

    if-eqz v13, :cond_3

    if-eq v13, v4, :cond_2

    if-ne v13, v3, :cond_1

    invoke-interface {v1, v0, v3}, Ldu1;->decodeLongElement(Lmp7;I)J

    move-result-wide v6

    or-int/lit8 v2, v2, 0x4

    goto :goto_0

    :cond_1
    invoke-static {v13}, Lpg;->h(I)V

    const/4 v0, 0x0

    return-object v0

    :cond_2
    invoke-interface {v1, v0, v4}, Ldu1;->decodeLongElement(Lmp7;I)J

    move-result-wide v10

    or-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_3
    invoke-interface {v1, v0, v5}, Ldu1;->decodeLongElement(Lmp7;I)J

    move-result-wide v8

    or-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    move v12, v5

    goto :goto_0

    :cond_5
    move v14, v2

    move-wide/from16 v19, v6

    move-wide v15, v8

    move-wide/from16 v17, v10

    :goto_1
    invoke-interface {v1, v0}, Ldu1;->endStructure(Lmp7;)V

    new-instance v13, Lcom/google/firebase/sessions/Time;

    const/16 v21, 0x0

    invoke-direct/range {v13 .. v21}, Lcom/google/firebase/sessions/Time;-><init>(IJJJLwp7;)V

    return-object v13
.end method

.method public bridge synthetic deserialize(Lud2;)Ljava/lang/Object;
    .locals 0

    .line 106
    invoke-virtual {p0, p1}, Lcom/google/firebase/sessions/Time$$serializer;->deserialize(Lud2;)Lcom/google/firebase/sessions/Time;

    move-result-object p0

    return-object p0
.end method

.method public final getDescriptor()Lmp7;
    .locals 0

    sget-object p0, Lcom/google/firebase/sessions/Time$$serializer;->descriptor:Lmp7;

    return-object p0
.end method

.method public final serialize(Lux2;Lcom/google/firebase/sessions/Time;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/google/firebase/sessions/Time$$serializer;->descriptor:Lmp7;

    invoke-interface {p1, p0}, Lux2;->beginStructure(Lmp7;)Lgu1;

    move-result-object p1

    invoke-static {p2, p1, p0}, Lcom/google/firebase/sessions/Time;->write$Self$com_google_firebase_firebase_sessions(Lcom/google/firebase/sessions/Time;Lgu1;Lmp7;)V

    invoke-interface {p1, p0}, Lgu1;->endStructure(Lmp7;)V

    return-void
.end method

.method public bridge synthetic serialize(Lux2;Ljava/lang/Object;)V
    .locals 0

    .line 19
    check-cast p2, Lcom/google/firebase/sessions/Time;

    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/sessions/Time$$serializer;->serialize(Lux2;Lcom/google/firebase/sessions/Time;)V

    return-void
.end method

.method public typeParametersSerializers()[Ldf4;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ldf4<",
            "*>;"
        }
    .end annotation

    sget-object p0, Lu96;->c:[Ldf4;

    return-object p0
.end method
