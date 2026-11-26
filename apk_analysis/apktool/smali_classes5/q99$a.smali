.class public final Lq99$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldp3;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lq99;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldp3<",
        "Lq99;",
        ">;"
    }
.end annotation

.annotation runtime Lul2;
.end annotation


# static fields
.field public static final a:Lq99$a;

.field private static final synthetic descriptor:Ls96;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lq99$a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lq99$a;->a:Lq99$a;

    new-instance v1, Ls96;

    const-string v2, "com.warefly.checkscan.domain.entities.balance.UserBankCard"

    const/16 v3, 0x9

    invoke-direct {v1, v2, v0, v3}, Ls96;-><init>(Ljava/lang/String;Ldp3;I)V

    const-string v0, "admitadId"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Ls96;->j(Ljava/lang/String;Z)V

    const-string v0, "name"

    invoke-virtual {v1, v0, v2}, Ls96;->j(Ljava/lang/String;Z)V

    const-string v0, "status"

    invoke-virtual {v1, v0, v2}, Ls96;->j(Ljava/lang/String;Z)V

    const-string v0, "statusTitle"

    invoke-virtual {v1, v0, v2}, Ls96;->j(Ljava/lang/String;Z)V

    const-string v0, "statusDetails"

    invoke-virtual {v1, v0, v2}, Ls96;->j(Ljava/lang/String;Z)V

    const-string v0, "bankWebsiteUrl"

    invoke-virtual {v1, v0, v2}, Ls96;->j(Ljava/lang/String;Z)V

    const-string v0, "attachCardUrl"

    invoke-virtual {v1, v0, v2}, Ls96;->j(Ljava/lang/String;Z)V

    const-string v0, "attachedCardId"

    invoke-virtual {v1, v0, v2}, Ls96;->j(Ljava/lang/String;Z)V

    const-string v0, "expired"

    invoke-virtual {v1, v0, v2}, Ls96;->j(Ljava/lang/String;Z)V

    sput-object v1, Lq99$a;->descriptor:Ls96;

    return-void
.end method


# virtual methods
.method public final childSerializers()[Ldf4;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ldf4<",
            "*>;"
        }
    .end annotation

    sget-object p0, Lq99;->k:[Lcl4;

    const/16 v0, 0x9

    new-array v0, v0, [Ldf4;

    sget-object v1, Lgw4;->a:Lgw4;

    invoke-static {v1}, Lev0;->a(Ldf4;)Ldf4;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v0, v3

    sget-object v2, Lca8;->a:Lca8;

    const/4 v3, 0x1

    aput-object v2, v0, v3

    const/4 v3, 0x2

    aget-object p0, p0, v3

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    aput-object p0, v0, v3

    const/4 p0, 0x3

    invoke-static {v2}, Lev0;->a(Ldf4;)Ldf4;

    move-result-object v3

    aput-object v3, v0, p0

    const/4 p0, 0x4

    invoke-static {v2}, Lev0;->a(Ldf4;)Ldf4;

    move-result-object v3

    aput-object v3, v0, p0

    const/4 p0, 0x5

    invoke-static {v2}, Lev0;->a(Ldf4;)Ldf4;

    move-result-object v3

    aput-object v3, v0, p0

    const/4 p0, 0x6

    invoke-static {v2}, Lev0;->a(Ldf4;)Ldf4;

    move-result-object v2

    aput-object v2, v0, p0

    const/4 p0, 0x7

    invoke-static {v1}, Lev0;->a(Ldf4;)Ldf4;

    move-result-object v1

    aput-object v1, v0, p0

    const/16 p0, 0x8

    sget-object v1, Lgs0;->a:Lgs0;

    aput-object v1, v0, p0

    return-object v0
.end method

.method public final deserialize(Lud2;)Ljava/lang/Object;
    .locals 32

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lq99$a;->descriptor:Ls96;

    move-object/from16 v1, p1

    invoke-interface {v1, v0}, Lud2;->beginStructure(Lmp7;)Ldu1;

    move-result-object v1

    sget-object v2, Lq99;->k:[Lcl4;

    invoke-interface {v1}, Ldu1;->decodeSequentially()Z

    move-result v3

    const/4 v4, 0x7

    const/4 v5, 0x6

    const/4 v6, 0x5

    const/4 v7, 0x3

    const/16 v8, 0x8

    const/4 v9, 0x4

    const/4 v10, 0x2

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    if-eqz v3, :cond_0

    sget-object v3, Lgw4;->a:Lgw4;

    invoke-interface {v1, v0, v12, v3, v13}, Ldu1;->decodeNullableSerializableElement(Lmp7;ILxl2;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Long;

    invoke-interface {v1, v0, v11}, Ldu1;->decodeStringElement(Lmp7;I)Ljava/lang/String;

    move-result-object v11

    aget-object v2, v2, v10

    invoke-interface {v2}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lxl2;

    invoke-interface {v1, v0, v10, v2, v13}, Ldu1;->decodeSerializableElement(Lmp7;ILxl2;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lq99$b;

    sget-object v10, Lca8;->a:Lca8;

    invoke-interface {v1, v0, v7, v10, v13}, Ldu1;->decodeNullableSerializableElement(Lmp7;ILxl2;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v1, v0, v9, v10, v13}, Ldu1;->decodeNullableSerializableElement(Lmp7;ILxl2;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-interface {v1, v0, v6, v10, v13}, Ldu1;->decodeNullableSerializableElement(Lmp7;ILxl2;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v1, v0, v5, v10, v13}, Ldu1;->decodeNullableSerializableElement(Lmp7;ILxl2;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v1, v0, v4, v3, v13}, Ldu1;->decodeNullableSerializableElement(Lmp7;ILxl2;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-interface {v1, v0, v8}, Ldu1;->decodeBooleanElement(Lmp7;I)Z

    move-result v4

    const/16 v8, 0x1ff

    move-object/from16 v25, v2

    move-object/from16 v30, v3

    move/from16 v31, v4

    move-object/from16 v29, v5

    move-object/from16 v28, v6

    move-object/from16 v26, v7

    move/from16 v22, v8

    move-object/from16 v27, v9

    move-object/from16 v24, v11

    move-object/from16 v23, v12

    goto/16 :goto_4

    :cond_0
    move/from16 v16, v10

    move/from16 v19, v11

    move v10, v12

    move v15, v10

    move-object/from16 p0, v13

    move-object/from16 v3, p0

    move-object v7, v3

    move-object v11, v7

    move-object v12, v11

    move-object v14, v12

    move-object/from16 v17, v14

    move-object/from16 v18, v17

    :goto_0
    if-eqz v19, :cond_1

    invoke-interface {v1, v0}, Ldu1;->decodeElementIndex(Lmp7;)I

    move-result v20

    packed-switch v20, :pswitch_data_0

    invoke-static/range {v20 .. v20}, Lpg;->h(I)V

    return-object p0

    :pswitch_0
    invoke-interface {v1, v0, v8}, Ldu1;->decodeBooleanElement(Lmp7;I)Z

    move-result v15

    or-int/lit16 v10, v10, 0x100

    goto :goto_0

    :pswitch_1
    sget-object v8, Lgw4;->a:Lgw4;

    invoke-interface {v1, v0, v4, v8, v14}, Ldu1;->decodeNullableSerializableElement(Lmp7;ILxl2;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v14, v8

    check-cast v14, Ljava/lang/Long;

    or-int/lit16 v10, v10, 0x80

    :goto_1
    const/16 v8, 0x8

    goto :goto_0

    :pswitch_2
    sget-object v8, Lca8;->a:Lca8;

    invoke-interface {v1, v0, v5, v8, v13}, Ldu1;->decodeNullableSerializableElement(Lmp7;ILxl2;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v13, v8

    check-cast v13, Ljava/lang/String;

    or-int/lit8 v10, v10, 0x40

    goto :goto_1

    :pswitch_3
    sget-object v8, Lca8;->a:Lca8;

    invoke-interface {v1, v0, v6, v8, v12}, Ldu1;->decodeNullableSerializableElement(Lmp7;ILxl2;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v12, v8

    check-cast v12, Ljava/lang/String;

    or-int/lit8 v10, v10, 0x20

    goto :goto_1

    :pswitch_4
    sget-object v8, Lca8;->a:Lca8;

    invoke-interface {v1, v0, v9, v8, v7}, Ldu1;->decodeNullableSerializableElement(Lmp7;ILxl2;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    or-int/lit8 v10, v10, 0x10

    goto :goto_1

    :pswitch_5
    sget-object v8, Lca8;->a:Lca8;

    const/4 v4, 0x3

    invoke-interface {v1, v0, v4, v8, v11}, Ldu1;->decodeNullableSerializableElement(Lmp7;ILxl2;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v11, v8

    check-cast v11, Ljava/lang/String;

    or-int/lit8 v10, v10, 0x8

    :goto_2
    const/4 v4, 0x7

    goto :goto_1

    :pswitch_6
    const/4 v4, 0x3

    aget-object v8, v2, v16

    invoke-interface {v8}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lxl2;

    move/from16 v4, v16

    invoke-interface {v1, v0, v4, v8, v3}, Ldu1;->decodeSerializableElement(Lmp7;ILxl2;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lq99$b;

    or-int/lit8 v10, v10, 0x4

    goto :goto_2

    :pswitch_7
    move/from16 v4, v16

    const/4 v8, 0x1

    invoke-interface {v1, v0, v8}, Ldu1;->decodeStringElement(Lmp7;I)Ljava/lang/String;

    move-result-object v17

    or-int/lit8 v10, v10, 0x2

    goto :goto_2

    :pswitch_8
    const/4 v8, 0x1

    sget-object v4, Lgw4;->a:Lgw4;

    move-object/from16 v5, v18

    const/4 v6, 0x0

    invoke-interface {v1, v0, v6, v4, v5}, Ldu1;->decodeNullableSerializableElement(Lmp7;ILxl2;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v18, v4

    check-cast v18, Ljava/lang/Long;

    or-int/lit8 v10, v10, 0x1

    const/4 v4, 0x7

    :goto_3
    const/4 v5, 0x6

    const/4 v6, 0x5

    const/16 v8, 0x8

    const/16 v16, 0x2

    goto/16 :goto_0

    :pswitch_9
    move-object/from16 v5, v18

    const/4 v6, 0x0

    const/4 v8, 0x1

    move/from16 v19, v6

    goto :goto_3

    :cond_1
    move-object/from16 v5, v18

    move-object/from16 v25, v3

    move-object/from16 v23, v5

    move-object/from16 v27, v7

    move/from16 v22, v10

    move-object/from16 v26, v11

    move-object/from16 v28, v12

    move-object/from16 v29, v13

    move-object/from16 v30, v14

    move/from16 v31, v15

    move-object/from16 v24, v17

    :goto_4
    invoke-interface {v1, v0}, Ldu1;->endStructure(Lmp7;)V

    new-instance v21, Lq99;

    invoke-direct/range {v21 .. v31}, Lq99;-><init>(ILjava/lang/Long;Ljava/lang/String;Lq99$b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Z)V

    return-object v21

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final getDescriptor()Lmp7;
    .locals 0

    sget-object p0, Lq99$a;->descriptor:Ls96;

    return-object p0
.end method

.method public final serialize(Lux2;Ljava/lang/Object;)V
    .locals 4

    check-cast p2, Lq99;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lq99$a;->descriptor:Ls96;

    invoke-interface {p1, p0}, Lux2;->beginStructure(Lmp7;)Lgu1;

    move-result-object p1

    sget-object v0, Lq99;->k:[Lcl4;

    sget-object v1, Lgw4;->a:Lgw4;

    iget-object v2, p2, Lq99;->b:Ljava/lang/Long;

    const/4 v3, 0x0

    invoke-interface {p1, p0, v3, v1, v2}, Lgu1;->encodeNullableSerializableElement(Lmp7;ILxp7;Ljava/lang/Object;)V

    const/4 v2, 0x1

    iget-object v3, p2, Lq99;->c:Ljava/lang/String;

    invoke-interface {p1, p0, v2, v3}, Lgu1;->encodeStringElement(Lmp7;ILjava/lang/String;)V

    const/4 v2, 0x2

    aget-object v0, v0, v2

    invoke-interface {v0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lxp7;

    iget-object v3, p2, Lq99;->d:Lq99$b;

    invoke-interface {p1, p0, v2, v0, v3}, Lgu1;->encodeSerializableElement(Lmp7;ILxp7;Ljava/lang/Object;)V

    sget-object v0, Lca8;->a:Lca8;

    iget-object v2, p2, Lq99;->e:Ljava/lang/String;

    const/4 v3, 0x3

    invoke-interface {p1, p0, v3, v0, v2}, Lgu1;->encodeNullableSerializableElement(Lmp7;ILxp7;Ljava/lang/Object;)V

    const/4 v2, 0x4

    iget-object v3, p2, Lq99;->f:Ljava/lang/String;

    invoke-interface {p1, p0, v2, v0, v3}, Lgu1;->encodeNullableSerializableElement(Lmp7;ILxp7;Ljava/lang/Object;)V

    const/4 v2, 0x5

    iget-object v3, p2, Lq99;->g:Ljava/lang/String;

    invoke-interface {p1, p0, v2, v0, v3}, Lgu1;->encodeNullableSerializableElement(Lmp7;ILxp7;Ljava/lang/Object;)V

    const/4 v2, 0x6

    iget-object v3, p2, Lq99;->h:Ljava/lang/String;

    invoke-interface {p1, p0, v2, v0, v3}, Lgu1;->encodeNullableSerializableElement(Lmp7;ILxp7;Ljava/lang/Object;)V

    const/4 v0, 0x7

    iget-object v2, p2, Lq99;->i:Ljava/lang/Long;

    invoke-interface {p1, p0, v0, v1, v2}, Lgu1;->encodeNullableSerializableElement(Lmp7;ILxp7;Ljava/lang/Object;)V

    const/16 v0, 0x8

    iget-boolean p2, p2, Lq99;->j:Z

    invoke-interface {p1, p0, v0, p2}, Lgu1;->encodeBooleanElement(Lmp7;IZ)V

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
