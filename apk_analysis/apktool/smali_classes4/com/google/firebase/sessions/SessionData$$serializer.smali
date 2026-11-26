.class public final synthetic Lcom/google/firebase/sessions/SessionData$$serializer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldp3;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/sessions/SessionData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = "serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldp3<",
        "Lcom/google/firebase/sessions/SessionData;",
        ">;"
    }
.end annotation

.annotation runtime Lul2;
.end annotation


# static fields
.field public static final INSTANCE:Lcom/google/firebase/sessions/SessionData$$serializer;

.field private static final descriptor:Lmp7;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/firebase/sessions/SessionData$$serializer;

    invoke-direct {v0}, Lcom/google/firebase/sessions/SessionData$$serializer;-><init>()V

    sput-object v0, Lcom/google/firebase/sessions/SessionData$$serializer;->INSTANCE:Lcom/google/firebase/sessions/SessionData$$serializer;

    new-instance v1, Ls96;

    const-string v2, "com.google.firebase.sessions.SessionData"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v0, v3}, Ls96;-><init>(Ljava/lang/String;Ldp3;I)V

    const-string v0, "sessionDetails"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Ls96;->j(Ljava/lang/String;Z)V

    const-string v0, "backgroundTime"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Ls96;->j(Ljava/lang/String;Z)V

    const-string v0, "processDataMap"

    invoke-virtual {v1, v0, v2}, Ls96;->j(Ljava/lang/String;Z)V

    sput-object v1, Lcom/google/firebase/sessions/SessionData$$serializer;->descriptor:Lmp7;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final childSerializers()[Ldf4;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ldf4<",
            "*>;"
        }
    .end annotation

    invoke-static {}, Lcom/google/firebase/sessions/SessionData;->access$get$childSerializers$cp()[Lcl4;

    move-result-object p0

    sget-object v0, Lcom/google/firebase/sessions/Time$$serializer;->INSTANCE:Lcom/google/firebase/sessions/Time$$serializer;

    invoke-static {v0}, Lev0;->a(Ldf4;)Ldf4;

    move-result-object v0

    const/4 v1, 0x2

    aget-object p0, p0, v1

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ldf4;

    invoke-static {p0}, Lev0;->a(Ldf4;)Ldf4;

    move-result-object p0

    const/4 v2, 0x3

    new-array v2, v2, [Ldf4;

    sget-object v3, Lcom/google/firebase/sessions/SessionDetails$$serializer;->INSTANCE:Lcom/google/firebase/sessions/SessionDetails$$serializer;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object v0, v2, v3

    aput-object p0, v2, v1

    return-object v2
.end method

.method public final deserialize(Lud2;)Lcom/google/firebase/sessions/SessionData;
    .locals 18

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/google/firebase/sessions/SessionData$$serializer;->descriptor:Lmp7;

    move-object/from16 v1, p1

    invoke-interface {v1, v0}, Lud2;->beginStructure(Lmp7;)Ldu1;

    move-result-object v1

    invoke-static {}, Lcom/google/firebase/sessions/SessionData;->access$get$childSerializers$cp()[Lcl4;

    move-result-object v2

    invoke-interface {v1}, Ldu1;->decodeSequentially()Z

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-eqz v3, :cond_0

    sget-object v3, Lcom/google/firebase/sessions/SessionDetails$$serializer;->INSTANCE:Lcom/google/firebase/sessions/SessionDetails$$serializer;

    invoke-interface {v1, v0, v6, v3, v7}, Ldu1;->decodeSerializableElement(Lmp7;ILxl2;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/firebase/sessions/SessionDetails;

    sget-object v6, Lcom/google/firebase/sessions/Time$$serializer;->INSTANCE:Lcom/google/firebase/sessions/Time$$serializer;

    invoke-interface {v1, v0, v5, v6, v7}, Ldu1;->decodeNullableSerializableElement(Lmp7;ILxl2;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/firebase/sessions/Time;

    aget-object v2, v2, v4

    invoke-interface {v2}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lxl2;

    invoke-interface {v1, v0, v4, v2, v7}, Ldu1;->decodeNullableSerializableElement(Lmp7;ILxl2;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    const/4 v4, 0x7

    move-object/from16 v16, v2

    move-object v14, v3

    move v13, v4

    move-object v15, v5

    goto :goto_1

    :cond_0
    move v11, v5

    move v9, v6

    move-object v3, v7

    move-object v8, v3

    move-object v10, v8

    :goto_0
    if-eqz v11, :cond_5

    invoke-interface {v1, v0}, Ldu1;->decodeElementIndex(Lmp7;)I

    move-result v12

    const/4 v13, -0x1

    if-eq v12, v13, :cond_4

    if-eqz v12, :cond_3

    if-eq v12, v5, :cond_2

    if-ne v12, v4, :cond_1

    aget-object v12, v2, v4

    invoke-interface {v12}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lxl2;

    invoke-interface {v1, v0, v4, v12, v3}, Ldu1;->decodeNullableSerializableElement(Lmp7;ILxl2;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    or-int/lit8 v9, v9, 0x4

    goto :goto_0

    :cond_1
    invoke-static {v12}, Lpg;->h(I)V

    return-object v7

    :cond_2
    sget-object v12, Lcom/google/firebase/sessions/Time$$serializer;->INSTANCE:Lcom/google/firebase/sessions/Time$$serializer;

    invoke-interface {v1, v0, v5, v12, v10}, Ldu1;->decodeNullableSerializableElement(Lmp7;ILxl2;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/firebase/sessions/Time;

    or-int/lit8 v9, v9, 0x2

    goto :goto_0

    :cond_3
    sget-object v12, Lcom/google/firebase/sessions/SessionDetails$$serializer;->INSTANCE:Lcom/google/firebase/sessions/SessionDetails$$serializer;

    invoke-interface {v1, v0, v6, v12, v8}, Ldu1;->decodeSerializableElement(Lmp7;ILxl2;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/firebase/sessions/SessionDetails;

    or-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_4
    move v11, v6

    goto :goto_0

    :cond_5
    move-object/from16 v16, v3

    move-object v14, v8

    move v13, v9

    move-object v15, v10

    :goto_1
    invoke-interface {v1, v0}, Ldu1;->endStructure(Lmp7;)V

    new-instance v12, Lcom/google/firebase/sessions/SessionData;

    const/16 v17, 0x0

    invoke-direct/range {v12 .. v17}, Lcom/google/firebase/sessions/SessionData;-><init>(ILcom/google/firebase/sessions/SessionDetails;Lcom/google/firebase/sessions/Time;Ljava/util/Map;Lwp7;)V

    return-object v12
.end method

.method public bridge synthetic deserialize(Lud2;)Ljava/lang/Object;
    .locals 0

    .line 143
    invoke-virtual {p0, p1}, Lcom/google/firebase/sessions/SessionData$$serializer;->deserialize(Lud2;)Lcom/google/firebase/sessions/SessionData;

    move-result-object p0

    return-object p0
.end method

.method public final getDescriptor()Lmp7;
    .locals 0

    sget-object p0, Lcom/google/firebase/sessions/SessionData$$serializer;->descriptor:Lmp7;

    return-object p0
.end method

.method public final serialize(Lux2;Lcom/google/firebase/sessions/SessionData;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/google/firebase/sessions/SessionData$$serializer;->descriptor:Lmp7;

    invoke-interface {p1, p0}, Lux2;->beginStructure(Lmp7;)Lgu1;

    move-result-object p1

    invoke-static {p2, p1, p0}, Lcom/google/firebase/sessions/SessionData;->write$Self$com_google_firebase_firebase_sessions(Lcom/google/firebase/sessions/SessionData;Lgu1;Lmp7;)V

    invoke-interface {p1, p0}, Lgu1;->endStructure(Lmp7;)V

    return-void
.end method

.method public bridge synthetic serialize(Lux2;Ljava/lang/Object;)V
    .locals 0

    .line 19
    check-cast p2, Lcom/google/firebase/sessions/SessionData;

    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/sessions/SessionData$$serializer;->serialize(Lux2;Lcom/google/firebase/sessions/SessionData;)V

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
