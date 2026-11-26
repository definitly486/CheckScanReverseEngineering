.class public final Ldi4$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldp3;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldi4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldp3<",
        "Ldi4;",
        ">;"
    }
.end annotation

.annotation runtime Lul2;
.end annotation


# static fields
.field public static final a:Ldi4$a;

.field private static final synthetic descriptor:Ls96;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Ldi4$a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ldi4$a;->a:Ldi4$a;

    new-instance v1, Ls96;

    const-string v2, "com.warefly.checkscan.shared.bank.data.network.responses.LandingCardResponse"

    const/16 v3, 0x9

    invoke-direct {v1, v2, v0, v3}, Ls96;-><init>(Ljava/lang/String;Ldp3;I)V

    const-string v0, "previewBlock"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Ls96;->j(Ljava/lang/String;Z)V

    const-string v0, "headerBlock"

    invoke-virtual {v1, v0, v2}, Ls96;->j(Ljava/lang/String;Z)V

    const-string v0, "benefitsBlock"

    invoke-virtual {v1, v0, v2}, Ls96;->j(Ljava/lang/String;Z)V

    const-string v0, "stepsBlock"

    invoke-virtual {v1, v0, v2}, Ls96;->j(Ljava/lang/String;Z)V

    const-string v0, "warningBlock"

    invoke-virtual {v1, v0, v2}, Ls96;->j(Ljava/lang/String;Z)V

    const-string v0, "bonusBlock"

    invoke-virtual {v1, v0, v2}, Ls96;->j(Ljava/lang/String;Z)V

    const-string v0, "buttonBlock"

    invoke-virtual {v1, v0, v2}, Ls96;->j(Ljava/lang/String;Z)V

    const-string v0, "legalBlock"

    invoke-virtual {v1, v0, v2}, Ls96;->j(Ljava/lang/String;Z)V

    const-string v0, "activationBlockResponse"

    invoke-virtual {v1, v0, v2}, Ls96;->j(Ljava/lang/String;Z)V

    sput-object v1, Ldi4$a;->descriptor:Ls96;

    return-void
.end method


# virtual methods
.method public final childSerializers()[Ldf4;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ldf4<",
            "*>;"
        }
    .end annotation

    sget-object p0, Ljv4$a;->a:Ljv4$a;

    invoke-static {p0}, Lev0;->a(Ldf4;)Ldf4;

    move-result-object v0

    sget-object v1, Lji0$a;->a:Lji0$a;

    invoke-static {v1}, Lev0;->a(Ldf4;)Ldf4;

    move-result-object v1

    sget-object v2, Lx88$a;->a:Lx88$a;

    invoke-static {v2}, Lev0;->a(Ldf4;)Ldf4;

    move-result-object v2

    sget-object v3, Lpf9$a;->a:Lpf9$a;

    invoke-static {v3}, Lev0;->a(Ldf4;)Ldf4;

    move-result-object v3

    sget-object v4, Lsn0$a;->a:Lsn0$a;

    invoke-static {v4}, Lev0;->a(Ldf4;)Ldf4;

    move-result-object v4

    sget-object v5, Liv0$a;->a:Liv0$a;

    invoke-static {v5}, Lev0;->a(Ldf4;)Ldf4;

    move-result-object v5

    sget-object v6, Lso4$a;->a:Lso4$a;

    invoke-static {v6}, Lev0;->a(Ldf4;)Ldf4;

    move-result-object v6

    sget-object v7, Lt6$a;->a:Lt6$a;

    invoke-static {v7}, Lev0;->a(Ldf4;)Ldf4;

    move-result-object v7

    const/16 v8, 0x9

    new-array v8, v8, [Ldf4;

    const/4 v9, 0x0

    aput-object p0, v8, v9

    const/4 p0, 0x1

    aput-object v0, v8, p0

    const/4 p0, 0x2

    aput-object v1, v8, p0

    const/4 p0, 0x3

    aput-object v2, v8, p0

    const/4 p0, 0x4

    aput-object v3, v8, p0

    const/4 p0, 0x5

    aput-object v4, v8, p0

    const/4 p0, 0x6

    aput-object v5, v8, p0

    const/4 p0, 0x7

    aput-object v6, v8, p0

    const/16 p0, 0x8

    aput-object v7, v8, p0

    return-object v8
.end method

.method public final deserialize(Lud2;)Ljava/lang/Object;
    .locals 32

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Ldi4$a;->descriptor:Ls96;

    move-object/from16 v1, p1

    invoke-interface {v1, v0}, Lud2;->beginStructure(Lmp7;)Ldu1;

    move-result-object v1

    invoke-interface {v1}, Ldu1;->decodeSequentially()Z

    move-result v2

    const/4 v3, 0x7

    const/4 v4, 0x6

    const/4 v5, 0x5

    const/4 v6, 0x3

    const/16 v7, 0x8

    const/4 v8, 0x4

    const/4 v9, 0x2

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    if-eqz v2, :cond_0

    sget-object v2, Ljv4$a;->a:Ljv4$a;

    invoke-interface {v1, v0, v11, v2, v12}, Ldu1;->decodeSerializableElement(Lmp7;ILxl2;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljv4;

    invoke-interface {v1, v0, v10, v2, v12}, Ldu1;->decodeNullableSerializableElement(Lmp7;ILxl2;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljv4;

    sget-object v10, Lji0$a;->a:Lji0$a;

    invoke-interface {v1, v0, v9, v10, v12}, Ldu1;->decodeNullableSerializableElement(Lmp7;ILxl2;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lji0;

    sget-object v10, Lx88$a;->a:Lx88$a;

    invoke-interface {v1, v0, v6, v10, v12}, Ldu1;->decodeNullableSerializableElement(Lmp7;ILxl2;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lx88;

    sget-object v10, Lpf9$a;->a:Lpf9$a;

    invoke-interface {v1, v0, v8, v10, v12}, Ldu1;->decodeNullableSerializableElement(Lmp7;ILxl2;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lpf9;

    sget-object v10, Lsn0$a;->a:Lsn0$a;

    invoke-interface {v1, v0, v5, v10, v12}, Ldu1;->decodeNullableSerializableElement(Lmp7;ILxl2;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lsn0;

    sget-object v10, Liv0$a;->a:Liv0$a;

    invoke-interface {v1, v0, v4, v10, v12}, Ldu1;->decodeNullableSerializableElement(Lmp7;ILxl2;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Liv0;

    sget-object v10, Lso4$a;->a:Lso4$a;

    invoke-interface {v1, v0, v3, v10, v12}, Ldu1;->decodeNullableSerializableElement(Lmp7;ILxl2;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lso4;

    sget-object v10, Lt6$a;->a:Lt6$a;

    invoke-interface {v1, v0, v7, v10, v12}, Ldu1;->decodeNullableSerializableElement(Lmp7;ILxl2;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lt6;

    const/16 v10, 0x1ff

    move-object/from16 v29, v3

    move-object/from16 v28, v4

    move-object/from16 v27, v5

    move-object/from16 v25, v6

    move-object/from16 v30, v7

    move-object/from16 v26, v8

    move-object/from16 v24, v9

    move/from16 v21, v10

    move-object/from16 v22, v11

    :goto_0
    move-object/from16 v23, v2

    goto/16 :goto_4

    :cond_0
    move/from16 v18, v10

    move v9, v11

    move-object/from16 p0, v12

    move-object/from16 v2, p0

    move-object v10, v2

    move-object v11, v10

    move-object v13, v11

    move-object v14, v13

    move-object v15, v14

    move-object/from16 v16, v15

    move-object/from16 v17, v16

    :goto_1
    if-eqz v18, :cond_1

    invoke-interface {v1, v0}, Ldu1;->decodeElementIndex(Lmp7;)I

    move-result v19

    packed-switch v19, :pswitch_data_0

    invoke-static/range {v19 .. v19}, Lpg;->h(I)V

    return-object p0

    :pswitch_0
    sget-object v6, Lt6$a;->a:Lt6$a;

    invoke-interface {v1, v0, v7, v6, v11}, Ldu1;->decodeNullableSerializableElement(Lmp7;ILxl2;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v11, v6

    check-cast v11, Lt6;

    or-int/lit16 v9, v9, 0x100

    :goto_2
    const/4 v6, 0x3

    goto :goto_1

    :pswitch_1
    sget-object v6, Lso4$a;->a:Lso4$a;

    invoke-interface {v1, v0, v3, v6, v13}, Ldu1;->decodeNullableSerializableElement(Lmp7;ILxl2;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v13, v6

    check-cast v13, Lso4;

    or-int/lit16 v9, v9, 0x80

    goto :goto_2

    :pswitch_2
    sget-object v6, Liv0$a;->a:Liv0$a;

    invoke-interface {v1, v0, v4, v6, v14}, Ldu1;->decodeNullableSerializableElement(Lmp7;ILxl2;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v14, v6

    check-cast v14, Liv0;

    or-int/lit8 v9, v9, 0x40

    goto :goto_2

    :pswitch_3
    sget-object v6, Lsn0$a;->a:Lsn0$a;

    invoke-interface {v1, v0, v5, v6, v15}, Ldu1;->decodeNullableSerializableElement(Lmp7;ILxl2;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v15, v6

    check-cast v15, Lsn0;

    or-int/lit8 v9, v9, 0x20

    goto :goto_2

    :pswitch_4
    sget-object v6, Lpf9$a;->a:Lpf9$a;

    invoke-interface {v1, v0, v8, v6, v10}, Ldu1;->decodeNullableSerializableElement(Lmp7;ILxl2;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v10, v6

    check-cast v10, Lpf9;

    or-int/lit8 v9, v9, 0x10

    goto :goto_2

    :pswitch_5
    sget-object v6, Lx88$a;->a:Lx88$a;

    const/4 v3, 0x3

    invoke-interface {v1, v0, v3, v6, v12}, Ldu1;->decodeNullableSerializableElement(Lmp7;ILxl2;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v12, v6

    check-cast v12, Lx88;

    or-int/lit8 v9, v9, 0x8

    move v6, v3

    const/4 v3, 0x7

    goto :goto_1

    :pswitch_6
    move v3, v6

    sget-object v6, Lji0$a;->a:Lji0$a;

    move-object/from16 v3, v16

    const/4 v4, 0x2

    invoke-interface {v1, v0, v4, v6, v3}, Ldu1;->decodeNullableSerializableElement(Lmp7;ILxl2;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lji0;

    or-int/lit8 v9, v9, 0x4

    move-object/from16 v16, v3

    :goto_3
    const/4 v3, 0x7

    const/4 v4, 0x6

    goto :goto_2

    :pswitch_7
    move-object/from16 v3, v16

    const/4 v4, 0x2

    sget-object v6, Ljv4$a;->a:Ljv4$a;

    const/4 v4, 0x1

    invoke-interface {v1, v0, v4, v6, v2}, Ldu1;->decodeNullableSerializableElement(Lmp7;ILxl2;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljv4;

    or-int/lit8 v9, v9, 0x2

    goto :goto_3

    :pswitch_8
    move-object/from16 v3, v16

    const/4 v4, 0x1

    sget-object v6, Ljv4$a;->a:Ljv4$a;

    move-object/from16 v4, v17

    const/4 v5, 0x0

    invoke-interface {v1, v0, v5, v6, v4}, Ldu1;->decodeSerializableElement(Lmp7;ILxl2;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v17, v4

    check-cast v17, Ljv4;

    or-int/lit8 v9, v9, 0x1

    const/4 v3, 0x7

    const/4 v4, 0x6

    const/4 v5, 0x5

    goto :goto_2

    :pswitch_9
    move-object/from16 v3, v16

    move-object/from16 v4, v17

    const/4 v5, 0x0

    move/from16 v18, v5

    const/4 v3, 0x7

    const/4 v4, 0x6

    const/4 v5, 0x5

    goto/16 :goto_1

    :cond_1
    move-object/from16 v3, v16

    move-object/from16 v4, v17

    move-object/from16 v24, v3

    move-object/from16 v22, v4

    move/from16 v21, v9

    move-object/from16 v26, v10

    move-object/from16 v30, v11

    move-object/from16 v25, v12

    move-object/from16 v29, v13

    move-object/from16 v28, v14

    move-object/from16 v27, v15

    goto/16 :goto_0

    :goto_4
    invoke-interface {v1, v0}, Ldu1;->endStructure(Lmp7;)V

    new-instance v20, Ldi4;

    const/16 v31, 0x0

    invoke-direct/range {v20 .. v31}, Ldi4;-><init>(ILjv4;Ljv4;Lji0;Lx88;Lpf9;Lsn0;Liv0;Lso4;Lt6;Lwp7;)V

    return-object v20

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

    sget-object p0, Ldi4$a;->descriptor:Ls96;

    return-object p0
.end method

.method public final serialize(Lux2;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Ldi4;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Ldi4$a;->descriptor:Ls96;

    invoke-interface {p1, p0}, Lux2;->beginStructure(Lmp7;)Lgu1;

    move-result-object p1

    invoke-static {p2, p1, p0}, Ldi4;->h(Ldi4;Lgu1;Ls96;)V

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
