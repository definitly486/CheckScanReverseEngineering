.class public final Ldu4$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldp3;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldu4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldp3<",
        "Ldu4;",
        ">;"
    }
.end annotation

.annotation runtime Lul2;
.end annotation


# static fields
.field public static final a:Ldu4$a;

.field private static final synthetic descriptor:Ls96;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Ldu4$a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ldu4$a;->a:Ldu4$a;

    new-instance v1, Ls96;

    const-string v2, "com.warefly.checkscan.core.data.models.Location"

    const/4 v3, 0x5

    invoke-direct {v1, v2, v0, v3}, Ls96;-><init>(Ljava/lang/String;Ldp3;I)V

    const-string v0, "lat"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Ls96;->j(Ljava/lang/String;Z)V

    const-string v0, "lon"

    invoke-virtual {v1, v0, v2}, Ls96;->j(Ljava/lang/String;Z)V

    const-string v0, "city"

    invoke-virtual {v1, v0, v2}, Ls96;->j(Ljava/lang/String;Z)V

    const-string v0, "street"

    invoke-virtual {v1, v0, v2}, Ls96;->j(Ljava/lang/String;Z)V

    const-string v0, "build"

    invoke-virtual {v1, v0, v2}, Ls96;->j(Ljava/lang/String;Z)V

    sput-object v1, Ldu4$a;->descriptor:Ls96;

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

    sget-object p0, Lca8;->a:Lca8;

    invoke-static {p0}, Lev0;->a(Ldf4;)Ldf4;

    move-result-object v0

    invoke-static {p0}, Lev0;->a(Ldf4;)Ldf4;

    move-result-object v1

    invoke-static {p0}, Lev0;->a(Ldf4;)Ldf4;

    move-result-object p0

    const/4 v2, 0x5

    new-array v2, v2, [Ldf4;

    sget-object v3, Lpq2;->a:Lpq2;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const/4 v3, 0x2

    aput-object v0, v2, v3

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const/4 v0, 0x4

    aput-object p0, v2, v0

    return-object v2
.end method

.method public final deserialize(Lud2;)Ljava/lang/Object;
    .locals 27

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Ldu4$a;->descriptor:Ls96;

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

    invoke-interface {v1, v0, v7}, Ldu1;->decodeDoubleElement(Lmp7;I)D

    move-result-wide v9

    invoke-interface {v1, v0, v6}, Ldu1;->decodeDoubleElement(Lmp7;I)D

    move-result-wide v6

    sget-object v2, Lca8;->a:Lca8;

    invoke-interface {v1, v0, v5, v2, v8}, Ldu1;->decodeNullableSerializableElement(Lmp7;ILxl2;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v1, v0, v3, v2, v8}, Ldu1;->decodeNullableSerializableElement(Lmp7;ILxl2;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1, v0, v4, v2, v8}, Ldu1;->decodeNullableSerializableElement(Lmp7;ILxl2;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/16 v4, 0x1f

    move-object/from16 v24, v3

    move/from16 v18, v4

    move-object/from16 v23, v5

    move-wide/from16 v21, v6

    move-wide/from16 v19, v9

    :goto_0
    move-object/from16 v25, v2

    goto/16 :goto_3

    :cond_0
    const-wide/16 v9, 0x0

    move/from16 v16, v6

    move-object v2, v8

    move-object v11, v2

    move-wide v12, v9

    move-wide v14, v12

    move v10, v7

    move-object v9, v11

    :goto_1
    if-eqz v16, :cond_7

    move-object/from16 p0, v8

    invoke-interface {v1, v0}, Ldu1;->decodeElementIndex(Lmp7;)I

    move-result v8

    const/4 v7, -0x1

    if-eq v8, v7, :cond_6

    if-eqz v8, :cond_5

    if-eq v8, v6, :cond_4

    if-eq v8, v5, :cond_3

    if-eq v8, v3, :cond_2

    if-ne v8, v4, :cond_1

    sget-object v7, Lca8;->a:Lca8;

    invoke-interface {v1, v0, v4, v7, v2}, Ldu1;->decodeNullableSerializableElement(Lmp7;ILxl2;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    or-int/lit8 v10, v10, 0x10

    :goto_2
    move-object/from16 v8, p0

    const/4 v7, 0x0

    goto :goto_1

    :cond_1
    invoke-static {v8}, Lpg;->h(I)V

    return-object p0

    :cond_2
    sget-object v7, Lca8;->a:Lca8;

    invoke-interface {v1, v0, v3, v7, v9}, Ldu1;->decodeNullableSerializableElement(Lmp7;ILxl2;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v9, v7

    check-cast v9, Ljava/lang/String;

    or-int/lit8 v10, v10, 0x8

    goto :goto_2

    :cond_3
    sget-object v7, Lca8;->a:Lca8;

    invoke-interface {v1, v0, v5, v7, v11}, Ldu1;->decodeNullableSerializableElement(Lmp7;ILxl2;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v11, v7

    check-cast v11, Ljava/lang/String;

    or-int/lit8 v10, v10, 0x4

    goto :goto_2

    :cond_4
    invoke-interface {v1, v0, v6}, Ldu1;->decodeDoubleElement(Lmp7;I)D

    move-result-wide v12

    or-int/lit8 v10, v10, 0x2

    goto :goto_2

    :cond_5
    const/4 v7, 0x0

    invoke-interface {v1, v0, v7}, Ldu1;->decodeDoubleElement(Lmp7;I)D

    move-result-wide v14

    or-int/lit8 v10, v10, 0x1

    move-object/from16 v8, p0

    goto :goto_1

    :cond_6
    const/4 v7, 0x0

    move-object/from16 v8, p0

    move/from16 v16, v7

    goto :goto_1

    :cond_7
    move-object/from16 v24, v9

    move/from16 v18, v10

    move-object/from16 v23, v11

    move-wide/from16 v21, v12

    move-wide/from16 v19, v14

    goto :goto_0

    :goto_3
    invoke-interface {v1, v0}, Ldu1;->endStructure(Lmp7;)V

    new-instance v17, Ldu4;

    const/16 v26, 0x0

    invoke-direct/range {v17 .. v26}, Ldu4;-><init>(IDDLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lwp7;)V

    return-object v17
.end method

.method public final getDescriptor()Lmp7;
    .locals 0

    sget-object p0, Ldu4$a;->descriptor:Ls96;

    return-object p0
.end method

.method public final serialize(Lux2;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Ldu4;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Ldu4$a;->descriptor:Ls96;

    invoke-interface {p1, p0}, Lux2;->beginStructure(Lmp7;)Lgu1;

    move-result-object p1

    invoke-static {p2, p1, p0}, Ldu4;->d(Ldu4;Lgu1;Ls96;)V

    invoke-interface {p1, p0}, Lgu1;->endStructure(Lmp7;)V

    return-void
.end method

.method public final typeParametersSerializers()[Ldf4;
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
