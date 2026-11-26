.class public final synthetic Lcom/google/firebase/sessions/settings/SessionConfigs$$serializer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldp3;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/sessions/settings/SessionConfigs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = "serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldp3<",
        "Lcom/google/firebase/sessions/settings/SessionConfigs;",
        ">;"
    }
.end annotation

.annotation runtime Lul2;
.end annotation


# static fields
.field public static final INSTANCE:Lcom/google/firebase/sessions/settings/SessionConfigs$$serializer;

.field private static final descriptor:Lmp7;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/firebase/sessions/settings/SessionConfigs$$serializer;

    invoke-direct {v0}, Lcom/google/firebase/sessions/settings/SessionConfigs$$serializer;-><init>()V

    sput-object v0, Lcom/google/firebase/sessions/settings/SessionConfigs$$serializer;->INSTANCE:Lcom/google/firebase/sessions/settings/SessionConfigs$$serializer;

    new-instance v1, Ls96;

    const-string v2, "com.google.firebase.sessions.settings.SessionConfigs"

    const/4 v3, 0x5

    invoke-direct {v1, v2, v0, v3}, Ls96;-><init>(Ljava/lang/String;Ldp3;I)V

    const-string v0, "sessionsEnabled"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Ls96;->j(Ljava/lang/String;Z)V

    const-string v0, "sessionSamplingRate"

    invoke-virtual {v1, v0, v2}, Ls96;->j(Ljava/lang/String;Z)V

    const-string v0, "sessionTimeoutSeconds"

    invoke-virtual {v1, v0, v2}, Ls96;->j(Ljava/lang/String;Z)V

    const-string v0, "cacheDurationSeconds"

    invoke-virtual {v1, v0, v2}, Ls96;->j(Ljava/lang/String;Z)V

    const-string v0, "cacheUpdatedTimeSeconds"

    invoke-virtual {v1, v0, v2}, Ls96;->j(Ljava/lang/String;Z)V

    sput-object v1, Lcom/google/firebase/sessions/settings/SessionConfigs$$serializer;->descriptor:Lmp7;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final childSerializers()[Ldf4;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ldf4<",
            "*>;"
        }
    .end annotation

    sget-object p0, Lgs0;->a:Lgs0;

    invoke-static {p0}, Lev0;->a(Ldf4;)Ldf4;

    move-result-object p0

    sget-object v0, Lpq2;->a:Lpq2;

    invoke-static {v0}, Lev0;->a(Ldf4;)Ldf4;

    move-result-object v0

    sget-object v1, Lz74;->a:Lz74;

    invoke-static {v1}, Lev0;->a(Ldf4;)Ldf4;

    move-result-object v2

    invoke-static {v1}, Lev0;->a(Ldf4;)Ldf4;

    move-result-object v1

    sget-object v3, Lgw4;->a:Lgw4;

    invoke-static {v3}, Lev0;->a(Ldf4;)Ldf4;

    move-result-object v3

    const/4 v4, 0x5

    new-array v4, v4, [Ldf4;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    const/4 p0, 0x1

    aput-object v0, v4, p0

    const/4 p0, 0x2

    aput-object v2, v4, p0

    const/4 p0, 0x3

    aput-object v1, v4, p0

    const/4 p0, 0x4

    aput-object v3, v4, p0

    return-object v4
.end method

.method public final deserialize(Lud2;)Lcom/google/firebase/sessions/settings/SessionConfigs;
    .locals 23

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/google/firebase/sessions/settings/SessionConfigs$$serializer;->descriptor:Lmp7;

    move-object/from16 v1, p1

    invoke-interface {v1, v0}, Lud2;->beginStructure(Lmp7;)Ldu1;

    move-result-object v1

    invoke-interface {v1}, Ldu1;->decodeSequentially()Z

    move-result v2

    const/4 v3, 0x3

    const/4 v4, 0x4

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    if-eqz v2, :cond_0

    sget-object v2, Lgs0;->a:Lgs0;

    invoke-interface {v1, v0, v7, v2, v8}, Ldu1;->decodeNullableSerializableElement(Lmp7;ILxl2;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    sget-object v7, Lpq2;->a:Lpq2;

    invoke-interface {v1, v0, v6, v7, v8}, Ldu1;->decodeNullableSerializableElement(Lmp7;ILxl2;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Double;

    sget-object v7, Lz74;->a:Lz74;

    invoke-interface {v1, v0, v5, v7, v8}, Ldu1;->decodeNullableSerializableElement(Lmp7;ILxl2;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-interface {v1, v0, v3, v7, v8}, Ldu1;->decodeNullableSerializableElement(Lmp7;ILxl2;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    sget-object v7, Lgw4;->a:Lgw4;

    invoke-interface {v1, v0, v4, v7, v8}, Ldu1;->decodeNullableSerializableElement(Lmp7;ILxl2;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    const/16 v7, 0x1f

    move-object/from16 v20, v3

    move-object/from16 v21, v4

    move-object/from16 v19, v5

    move-object/from16 v18, v6

    move/from16 v16, v7

    :goto_0
    move-object/from16 v17, v2

    goto/16 :goto_3

    :cond_0
    move v14, v6

    move v13, v7

    move-object v2, v8

    move-object v9, v2

    move-object v10, v9

    move-object v11, v10

    move-object v12, v11

    :goto_1
    if-eqz v14, :cond_7

    invoke-interface {v1, v0}, Ldu1;->decodeElementIndex(Lmp7;)I

    move-result v15

    move-object/from16 p0, v8

    const/4 v8, -0x1

    if-eq v15, v8, :cond_6

    if-eqz v15, :cond_5

    if-eq v15, v6, :cond_4

    if-eq v15, v5, :cond_3

    if-eq v15, v3, :cond_2

    if-ne v15, v4, :cond_1

    sget-object v8, Lgw4;->a:Lgw4;

    invoke-interface {v1, v0, v4, v8, v10}, Ldu1;->decodeNullableSerializableElement(Lmp7;ILxl2;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v10, v8

    check-cast v10, Ljava/lang/Long;

    or-int/lit8 v13, v13, 0x10

    :goto_2
    move-object/from16 v8, p0

    goto :goto_1

    :cond_1
    invoke-static {v15}, Lpg;->h(I)V

    return-object p0

    :cond_2
    sget-object v8, Lz74;->a:Lz74;

    invoke-interface {v1, v0, v3, v8, v9}, Ldu1;->decodeNullableSerializableElement(Lmp7;ILxl2;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v9, v8

    check-cast v9, Ljava/lang/Integer;

    or-int/lit8 v13, v13, 0x8

    goto :goto_2

    :cond_3
    sget-object v8, Lz74;->a:Lz74;

    invoke-interface {v1, v0, v5, v8, v11}, Ldu1;->decodeNullableSerializableElement(Lmp7;ILxl2;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v11, v8

    check-cast v11, Ljava/lang/Integer;

    or-int/lit8 v13, v13, 0x4

    goto :goto_2

    :cond_4
    sget-object v8, Lpq2;->a:Lpq2;

    invoke-interface {v1, v0, v6, v8, v12}, Ldu1;->decodeNullableSerializableElement(Lmp7;ILxl2;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v12, v8

    check-cast v12, Ljava/lang/Double;

    or-int/lit8 v13, v13, 0x2

    goto :goto_2

    :cond_5
    sget-object v8, Lgs0;->a:Lgs0;

    invoke-interface {v1, v0, v7, v8, v2}, Ldu1;->decodeNullableSerializableElement(Lmp7;ILxl2;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    or-int/lit8 v13, v13, 0x1

    goto :goto_2

    :cond_6
    move-object/from16 v8, p0

    move v14, v7

    goto :goto_1

    :cond_7
    move-object/from16 v20, v9

    move-object/from16 v21, v10

    move-object/from16 v19, v11

    move-object/from16 v18, v12

    move/from16 v16, v13

    goto :goto_0

    :goto_3
    invoke-interface {v1, v0}, Ldu1;->endStructure(Lmp7;)V

    new-instance v15, Lcom/google/firebase/sessions/settings/SessionConfigs;

    const/16 v22, 0x0

    invoke-direct/range {v15 .. v22}, Lcom/google/firebase/sessions/settings/SessionConfigs;-><init>(ILjava/lang/Boolean;Ljava/lang/Double;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Long;Lwp7;)V

    return-object v15
.end method

.method public bridge synthetic deserialize(Lud2;)Ljava/lang/Object;
    .locals 0

    .line 196
    invoke-virtual {p0, p1}, Lcom/google/firebase/sessions/settings/SessionConfigs$$serializer;->deserialize(Lud2;)Lcom/google/firebase/sessions/settings/SessionConfigs;

    move-result-object p0

    return-object p0
.end method

.method public final getDescriptor()Lmp7;
    .locals 0

    sget-object p0, Lcom/google/firebase/sessions/settings/SessionConfigs$$serializer;->descriptor:Lmp7;

    return-object p0
.end method

.method public final serialize(Lux2;Lcom/google/firebase/sessions/settings/SessionConfigs;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/google/firebase/sessions/settings/SessionConfigs$$serializer;->descriptor:Lmp7;

    invoke-interface {p1, p0}, Lux2;->beginStructure(Lmp7;)Lgu1;

    move-result-object p1

    invoke-static {p2, p1, p0}, Lcom/google/firebase/sessions/settings/SessionConfigs;->write$Self$com_google_firebase_firebase_sessions(Lcom/google/firebase/sessions/settings/SessionConfigs;Lgu1;Lmp7;)V

    invoke-interface {p1, p0}, Lgu1;->endStructure(Lmp7;)V

    return-void
.end method

.method public bridge synthetic serialize(Lux2;Ljava/lang/Object;)V
    .locals 0

    .line 19
    check-cast p2, Lcom/google/firebase/sessions/settings/SessionConfigs;

    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/sessions/settings/SessionConfigs$$serializer;->serialize(Lux2;Lcom/google/firebase/sessions/settings/SessionConfigs;)V

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
