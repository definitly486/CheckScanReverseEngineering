.class public abstract Lyads/oq3;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lyads/y50;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lyads/y50;

    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-direct {v0, v1}, Lyads/y50;-><init>(Ljava/util/List;)V

    sput-object v0, Lyads/oq3;->a:Lyads/y50;

    return-void
.end method

.method public static a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;)Lyads/as2;
    .locals 6

    .line 343
    sget-object v4, Lyads/uq3;->b:Lnl3;

    .line 344
    sget-object v5, Lyads/uq3;->a:Lyads/l66;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 345
    invoke-static/range {v0 .. v5}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;)Lyads/as2;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;)Lyads/as2;
    .locals 7

    .line 346
    sget-object v5, Lyads/uq3;->a:Lyads/l66;

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 347
    invoke-static/range {v0 .. v6}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;Lyads/as2;)Lyads/as2;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;)Lyads/as2;
    .locals 10

    .line 348
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 349
    sget-object v1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    move-object v1, v0

    if-eqz v1, :cond_6

    .line 350
    invoke-static {v1}, Lyads/as2;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 351
    new-instance v2, Lyads/yr2;

    .line 352
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p0}, Lyads/ys4;->a()Lyads/et4;

    move-result-object v7

    const/4 v9, 0x0

    move-object v3, p2

    move-object v8, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v2 .. v9}, Lyads/yr2;-><init>(Ljava/lang/String;Ljava/lang/String;Lnl3;Lyads/l66;Lyads/et4;Lyads/n36;Lyads/as2;)V

    return-object v2

    :cond_1
    move-object v3, p2

    move-object v8, p3

    move-object v5, p4

    move-object v6, p5

    .line 353
    :try_start_0
    invoke-interface {v5, v1}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz p2, :cond_5

    .line 354
    invoke-interface {v8, p2}, Lyads/n36;->a(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_4

    .line 355
    :try_start_1
    invoke-interface {v6, p2}, Lyads/l66;->a(Ljava/lang/Object;)Z

    move-result p3
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz p3, :cond_3

    .line 356
    invoke-interface {p0}, Lyads/ys4;->a()Lyads/et4;

    move-result-object p0

    .line 357
    instance-of p1, p2, Ljava/lang/String;

    if-eqz p1, :cond_2

    .line 358
    new-instance p1, Lyads/zr2;

    check-cast p2, Ljava/lang/String;

    invoke-direct {p1, p2, p0}, Lyads/zr2;-><init>(Ljava/lang/String;Lyads/et4;)V

    return-object p1

    .line 359
    :cond_2
    new-instance p0, Lyads/xr2;

    invoke-direct {p0, p2}, Lyads/xr2;-><init>(Ljava/lang/Object;)V

    return-object p0

    .line 360
    :cond_3
    :try_start_2
    invoke-static {p1, v3, v1}, Lyads/gt4;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lyads/ft4;

    move-result-object p0

    throw p0
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_0

    .line 361
    :catch_0
    invoke-static {p1, v3, v1}, Lyads/gt4;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lyads/ft4;

    move-result-object p0

    throw p0

    .line 362
    :cond_4
    invoke-static {p1, v3, v1}, Lyads/gt4;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lyads/ft4;

    move-result-object p0

    throw p0

    .line 363
    :cond_5
    invoke-static {p1, v3, v1}, Lyads/gt4;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lyads/ft4;

    move-result-object p0

    throw p0

    :catch_1
    move-exception v0

    move-object p0, v0

    .line 364
    invoke-static {p1, v3, v1, p0}, Lyads/gt4;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Exception;)Lyads/ft4;

    move-result-object p0

    throw p0

    .line 365
    :catch_2
    invoke-static {p1, v3, v1}, Lyads/gt4;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lyads/ft4;

    move-result-object p0

    throw p0

    :cond_6
    move-object v3, p2

    .line 366
    invoke-static {v3, p1}, Lyads/gt4;->a(Ljava/lang/String;Lorg/json/JSONObject;)Lyads/ft4;

    move-result-object p0

    throw p0
.end method

.method public static a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;Lyads/as2;)Lyads/as2;
    .locals 8

    .line 367
    invoke-virtual/range {p1 .. p2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 368
    sget-object v2, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    const/4 v3, 0x0

    if-ne v0, v2, :cond_0

    move-object v2, v3

    goto :goto_0

    :cond_0
    move-object v2, v0

    :goto_0
    if-nez v2, :cond_1

    return-object v3

    .line 369
    :cond_1
    invoke-static {v2}, Lyads/as2;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 370
    new-instance v0, Lyads/yr2;

    .line 371
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0}, Lyads/ys4;->a()Lyads/et4;

    move-result-object v5

    move-object v1, p2

    move-object v6, p3

    move-object v3, p4

    move-object v4, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lyads/yr2;-><init>(Ljava/lang/String;Ljava/lang/String;Lnl3;Lyads/l66;Lyads/et4;Lyads/n36;Lyads/as2;)V

    return-object v0

    .line 372
    :cond_2
    :try_start_0
    invoke-interface {p4, v2}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v0, :cond_3

    .line 373
    invoke-interface {p0}, Lyads/ys4;->a()Lyads/et4;

    move-result-object v0

    invoke-static {p1, p2, v2}, Lyads/gt4;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lyads/ft4;

    move-result-object v1

    invoke-interface {v0, v1}, Lyads/et4;->b(Ljava/lang/Exception;)V

    return-object v3

    .line 374
    :cond_3
    invoke-interface {p3, v0}, Lyads/n36;->a(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 375
    invoke-interface {p0}, Lyads/ys4;->a()Lyads/et4;

    move-result-object v0

    invoke-static {p1, p2, v2}, Lyads/gt4;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lyads/ft4;

    move-result-object v1

    invoke-interface {v0, v1}, Lyads/et4;->b(Ljava/lang/Exception;)V

    return-object v3

    .line 376
    :cond_4
    :try_start_1
    invoke-interface {p5, v0}, Lyads/l66;->a(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 377
    invoke-interface {p0}, Lyads/ys4;->a()Lyads/et4;

    move-result-object v0

    invoke-static {p1, p2, v2}, Lyads/gt4;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lyads/ft4;

    move-result-object v5

    invoke-interface {v0, v5}, Lyads/et4;->b(Ljava/lang/Exception;)V
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v3

    .line 378
    :cond_5
    invoke-interface {p0}, Lyads/ys4;->a()Lyads/et4;

    move-result-object v1

    .line 379
    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_6

    .line 380
    new-instance v2, Lyads/zr2;

    check-cast v0, Ljava/lang/String;

    invoke-direct {v2, v0, v1}, Lyads/zr2;-><init>(Ljava/lang/String;Lyads/et4;)V

    return-object v2

    .line 381
    :cond_6
    new-instance v1, Lyads/xr2;

    invoke-direct {v1, v0}, Lyads/xr2;-><init>(Ljava/lang/Object;)V

    return-object v1

    .line 382
    :catch_0
    invoke-interface {p0}, Lyads/ys4;->a()Lyads/et4;

    move-result-object v0

    invoke-static {p1, p2, v2}, Lyads/gt4;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lyads/ft4;

    move-result-object v1

    invoke-interface {v0, v1}, Lyads/et4;->b(Ljava/lang/Exception;)V

    return-object v3

    :catch_1
    move-exception v0

    .line 383
    invoke-interface {p0}, Lyads/ys4;->a()Lyads/et4;

    move-result-object v5

    invoke-static {p1, p2, v2, v0}, Lyads/gt4;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Exception;)Lyads/ft4;

    move-result-object v0

    invoke-interface {v5, v0}, Lyads/et4;->b(Ljava/lang/Exception;)V

    return-object v3

    .line 384
    :catch_2
    invoke-interface {p0}, Lyads/ys4;->a()Lyads/et4;

    move-result-object v0

    invoke-static {p1, p2, v2}, Lyads/gt4;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lyads/ft4;

    move-result-object v1

    invoke-interface {v0, v1}, Lyads/et4;->b(Ljava/lang/Exception;)V

    return-object v3
.end method

.method public static a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/p36;Lnl3;Lyads/st3;Lyads/l66;)Lyads/ds2;
    .locals 21

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p5

    invoke-virtual/range {p1 .. p2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    const/4 v5, 0x0

    if-nez v4, :cond_0

    goto/16 :goto_7

    :cond_0
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-nez v6, :cond_2

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :try_start_0
    invoke-interface {v3, v0}, Lyads/st3;->a(Ljava/util/List;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface/range {p0 .. p0}, Lyads/ys4;->a()Lyads/et4;

    move-result-object v3

    invoke-static {v1, v2, v0}, Lyads/gt4;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lyads/ft4;

    move-result-object v4

    invoke-interface {v3, v4}, Lyads/et4;->b(Ljava/lang/Exception;)V

    sget-object v0, Lyads/oq3;->a:Lyads/y50;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :cond_1
    sget-object v0, Lyads/oq3;->a:Lyads/y50;

    return-object v0

    :catch_0
    invoke-interface/range {p0 .. p0}, Lyads/ys4;->a()Lyads/et4;

    move-result-object v3

    invoke-static {v1, v2, v0}, Lyads/gt4;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lyads/ft4;

    move-result-object v0

    invoke-interface {v3, v0}, Lyads/et4;->b(Ljava/lang/Exception;)V

    sget-object v0, Lyads/oq3;->a:Lyads/y50;

    return-object v0

    :cond_2
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v6}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v8, 0x0

    move-object v11, v5

    move v9, v8

    move v10, v9

    :goto_0
    if-ge v9, v6, :cond_a

    invoke-virtual {v4, v9}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v0

    sget-object v12, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    if-ne v0, v12, :cond_3

    move-object v12, v5

    goto :goto_1

    :cond_3
    move-object v12, v0

    :goto_1
    if-nez v12, :cond_4

    move-object/from16 v13, p4

    :goto_2
    move-object/from16 v14, p6

    goto/16 :goto_3

    :cond_4
    invoke-static {v12}, Lyads/as2;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    if-nez v11, :cond_5

    invoke-interface/range {p0 .. p0}, Lyads/ys4;->a()Lyads/et4;

    move-result-object v11

    :cond_5
    move-object/from16 v18, v11

    new-instance v13, Lyads/yr2;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "["

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "]"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v20, 0x0

    move-object/from16 v19, p3

    move-object/from16 v16, p4

    move-object/from16 v17, p6

    invoke-direct/range {v13 .. v20}, Lyads/yr2;-><init>(Ljava/lang/String;Ljava/lang/String;Lnl3;Lyads/l66;Lyads/et4;Lyads/n36;Lyads/as2;)V

    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v10, 0x1

    move-object/from16 v13, p4

    move-object/from16 v14, p6

    move-object/from16 v11, v18

    goto :goto_3

    :cond_6
    move-object/from16 v13, p4

    :try_start_1
    invoke-interface {v13, v12}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    if-nez v0, :cond_7

    goto :goto_2

    :cond_7
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v14, v0, Ljava/lang/Integer;

    if-nez v14, :cond_8

    invoke-interface/range {p0 .. p0}, Lyads/ys4;->a()Lyads/et4;

    move-result-object v0

    invoke-static {v4, v2, v9, v12}, Lyads/gt4;->b(Lorg/json/JSONArray;Ljava/lang/String;ILjava/lang/Object;)Lyads/ft4;

    move-result-object v12

    invoke-interface {v0, v12}, Lyads/et4;->b(Ljava/lang/Exception;)V

    goto :goto_2

    :cond_8
    move-object/from16 v14, p6

    :try_start_2
    invoke-interface {v14, v0}, Lyads/l66;->a(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_9

    invoke-interface/range {p0 .. p0}, Lyads/ys4;->a()Lyads/et4;

    move-result-object v12

    invoke-static {v4, v2, v9, v0}, Lyads/gt4;->a(Lorg/json/JSONArray;Ljava/lang/String;ILjava/lang/Object;)Lyads/ft4;

    move-result-object v15

    invoke-interface {v12, v15}, Lyads/et4;->b(Ljava/lang/Exception;)V
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :cond_9
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :catch_1
    invoke-interface/range {p0 .. p0}, Lyads/ys4;->a()Lyads/et4;

    move-result-object v12

    invoke-static {v4, v2, v9, v0}, Lyads/gt4;->b(Lorg/json/JSONArray;Ljava/lang/String;ILjava/lang/Object;)Lyads/ft4;

    move-result-object v0

    invoke-interface {v12, v0}, Lyads/et4;->b(Ljava/lang/Exception;)V

    goto :goto_3

    :catch_2
    move-exception v0

    move-object/from16 v14, p6

    invoke-interface/range {p0 .. p0}, Lyads/ys4;->a()Lyads/et4;

    move-result-object v15

    invoke-static {v4, v2, v9, v12, v0}, Lyads/gt4;->a(Lorg/json/JSONArray;Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Exception;)Lyads/ft4;

    move-result-object v0

    invoke-interface {v15, v0}, Lyads/et4;->b(Ljava/lang/Exception;)V

    goto :goto_3

    :catch_3
    move-object/from16 v14, p6

    invoke-interface/range {p0 .. p0}, Lyads/ys4;->a()Lyads/et4;

    move-result-object v0

    invoke-static {v4, v2, v9, v12}, Lyads/gt4;->b(Lorg/json/JSONArray;Ljava/lang/String;ILjava/lang/Object;)Lyads/ft4;

    move-result-object v12

    invoke-interface {v0, v12}, Lyads/et4;->b(Ljava/lang/Exception;)V

    :goto_3
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    :cond_a
    if-eqz v10, :cond_e

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_4
    if-ge v8, v0, :cond_d

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v4, v1, Lyads/as2;

    if-eqz v4, :cond_b

    goto :goto_6

    :cond_b
    invoke-interface/range {p0 .. p0}, Lyads/ys4;->a()Lyads/et4;

    move-result-object v4

    instance-of v5, v1, Ljava/lang/String;

    if-eqz v5, :cond_c

    new-instance v5, Lyads/zr2;

    check-cast v1, Ljava/lang/String;

    invoke-direct {v5, v1, v4}, Lyads/zr2;-><init>(Ljava/lang/String;Lyads/et4;)V

    goto :goto_5

    :cond_c
    new-instance v5, Lyads/xr2;

    invoke-direct {v5, v1}, Lyads/xr2;-><init>(Ljava/lang/Object;)V

    :goto_5
    invoke-virtual {v7, v8, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :goto_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_d
    new-instance v0, Lyads/hd4;

    invoke-interface/range {p0 .. p0}, Lyads/ys4;->a()Lyads/et4;

    move-result-object v1

    invoke-direct {v0, v2, v7, v3, v1}, Lyads/hd4;-><init>(Ljava/lang/String;Ljava/util/ArrayList;Lyads/st3;Lyads/et4;)V

    return-object v0

    :cond_e
    :try_start_3
    invoke-interface {v3, v7}, Lyads/st3;->a(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-interface/range {p0 .. p0}, Lyads/ys4;->a()Lyads/et4;

    move-result-object v0

    invoke-static {v1, v2, v7}, Lyads/gt4;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lyads/ft4;

    move-result-object v3

    invoke-interface {v0, v3}, Lyads/et4;->b(Ljava/lang/Exception;)V
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_4

    :goto_7
    return-object v5

    :cond_f
    new-instance v0, Lyads/y50;

    invoke-direct {v0, v7}, Lyads/y50;-><init>(Ljava/util/List;)V

    return-object v0

    :catch_4
    invoke-interface/range {p0 .. p0}, Lyads/ys4;->a()Lyads/et4;

    move-result-object v0

    invoke-static {v1, v2, v7}, Lyads/gt4;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lyads/ft4;

    move-result-object v1

    invoke-interface {v0, v1}, Lyads/et4;->b(Ljava/lang/Exception;)V

    return-object v5
.end method

.method public static b(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;)Lyads/as2;
    .locals 7

    sget-object v4, Lyads/uq3;->b:Lnl3;

    sget-object v5, Lyads/uq3;->a:Lyads/l66;

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-static/range {v0 .. v6}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;Lyads/as2;)Lyads/as2;

    move-result-object p0

    return-object p0
.end method
