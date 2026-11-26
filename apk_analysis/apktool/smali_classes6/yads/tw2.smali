.class public final Lyads/tw2;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;Lyads/e4;Lyads/qi5;)Lyads/sw2;
    .locals 12

    const/16 v0, 0x800

    .line 1219
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x400

    .line 1220
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 1221
    new-instance v4, Lyads/v85;

    invoke-direct {v4}, Lyads/v85;-><init>()V

    .line 1222
    new-instance v5, Lyads/uq4;

    invoke-direct {v5, p0}, Lyads/uq4;-><init>(Landroid/content/Context;)V

    .line 1223
    iget-object v6, p1, Lyads/e4;->b:Lyads/c40;

    .line 1224
    invoke-static {p0, p2, v6, v4, v5}, Lyads/tw2;->a(Landroid/content/Context;Lyads/qi5;Lyads/c40;Lyads/v85;Lyads/uq4;)Lyads/sw2;

    move-result-object p2

    .line 1225
    iget-object v4, p1, Lyads/e4;->e:Lyads/n8;

    const/4 v5, 0x0

    if-eqz v4, :cond_c

    .line 1226
    iget-boolean v6, p2, Lyads/sw2;->a:Z

    if-eqz v6, :cond_0

    move-object v6, v5

    goto :goto_0

    :cond_0
    move-object v6, v4

    :goto_0
    iput-object v6, p2, Lyads/sw2;->O:Lyads/n8;

    .line 1227
    iget-object v6, v4, Lyads/n8;->d:Ljava/lang/String;

    const/4 v7, 0x6

    const-string v8, "Exceeded the length of the parameter! The maximum size of the parameter is %s bytes. First %s bytes of the parameter will be used"

    const/4 v9, 0x0

    if-eqz v6, :cond_5

    .line 1228
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_1

    goto :goto_3

    .line 1229
    :cond_1
    invoke-static {v6}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 1230
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v10

    if-le v10, v2, :cond_4

    .line 1231
    filled-new-array {v3, v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v8, v3}, Lyads/d35;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1232
    const-string v3, " "

    invoke-static {v3}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1233
    invoke-virtual {v6, v9, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 1234
    invoke-static {v2, v6, v3, v9}, Lra8;->B(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    .line 1235
    invoke-static {v7, v10, v3}, Lta8;->N(ILjava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-nez v2, :cond_3

    if-gez v3, :cond_2

    goto :goto_1

    .line 1236
    :cond_2
    invoke-virtual {v10, v9, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    :cond_3
    :goto_1
    move-object v6, v10

    .line 1237
    :cond_4
    :goto_2
    invoke-static {v6}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    :cond_5
    :goto_3
    move-object v2, v5

    .line 1238
    :goto_4
    iput-object v2, p2, Lyads/sw2;->Z:Ljava/lang/String;

    .line 1239
    iget-object v2, v4, Lyads/n8;->e:Ljava/util/List;

    const-string v3, "\n"

    const-string v6, ""

    if-nez v2, :cond_6

    goto :goto_6

    .line 1240
    :cond_6
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 1241
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 1242
    invoke-static {v10, v6, v11, v3}, Ln1;->d(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1243
    const-string v6, "3"

    goto :goto_5

    .line 1244
    :cond_7
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1245
    :goto_6
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_8

    move-object v0, v5

    goto :goto_8

    .line 1246
    :cond_8
    invoke-static {v6}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 1247
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-le v6, v0, :cond_a

    .line 1248
    filled-new-array {v1, v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v8, v1}, Lyads/d35;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1249
    invoke-static {v3}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1250
    invoke-virtual {v2, v9, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1251
    invoke-static {v7, v2, v1}, Lta8;->N(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1252
    invoke-static {v2, v1, v9}, Lra8;->u(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_a

    if-gez v0, :cond_9

    goto :goto_7

    .line 1253
    :cond_9
    invoke-virtual {v2, v9, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1254
    :cond_a
    :goto_7
    invoke-static {v2}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1255
    :goto_8
    iput-object v0, p2, Lyads/sw2;->a0:Ljava/lang/String;

    .line 1256
    iget-object v0, v4, Lyads/n8;->b:Ljava/lang/String;

    .line 1257
    invoke-static {v0}, Lyads/t8;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lyads/sw2;->C0:Ljava/lang/String;

    .line 1258
    iget-object v0, v4, Lyads/n8;->c:Ljava/lang/String;

    .line 1259
    invoke-static {v0}, Lyads/t8;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lyads/sw2;->D0:Ljava/lang/String;

    .line 1260
    iget-object v0, v4, Lyads/n8;->h:Ljava/lang/String;

    .line 1261
    iput-object v0, p2, Lyads/sw2;->f0:Ljava/lang/String;

    .line 1262
    iget-object v0, v4, Lyads/n8;->j:Lyads/i85;

    if-eqz v0, :cond_b

    .line 1263
    iget-object v0, v0, Lyads/i85;->b:Ljava/lang/String;

    .line 1264
    invoke-static {v0}, Lyads/t8;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lyads/sw2;->H0:Ljava/lang/String;

    .line 1265
    :cond_b
    iget-object v0, v4, Lyads/n8;->g:Ljava/util/Map;

    .line 1266
    invoke-static {v0}, Lyads/t8;->a(Ljava/util/Map;)Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 1267
    iget-object v1, p2, Lyads/sw2;->m:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 1268
    :cond_c
    iget-object v0, p1, Lyads/e4;->a:Lyads/n70;

    if-eqz v0, :cond_d

    .line 1269
    iget-object v0, v0, Lyads/n70;->b:Ljava/lang/String;

    .line 1270
    iput-object v0, p2, Lyads/sw2;->B:Ljava/lang/String;

    .line 1271
    :cond_d
    iget-object v0, p1, Lyads/e4;->j:Ljava/lang/Integer;

    .line 1272
    iput-object v0, p2, Lyads/sw2;->s:Ljava/lang/Integer;

    .line 1273
    iget-object v0, p1, Lyads/e4;->c:Lyads/ma;

    .line 1274
    iget-object v0, v0, Lyads/ma;->a:Ljava/lang/String;

    .line 1275
    iput-object v0, p2, Lyads/sw2;->A:Ljava/lang/String;

    .line 1276
    iget-object v0, p1, Lyads/e4;->f:Lyads/hk4;

    if-eqz v0, :cond_e

    .line 1277
    iget-object v0, v0, Lyads/hk4;->b:Ljava/lang/String;

    .line 1278
    iput-object v0, p2, Lyads/sw2;->c0:Ljava/lang/String;

    .line 1279
    :cond_e
    iget-object v0, p1, Lyads/e4;->d:Lyads/tl5;

    .line 1280
    iget-object v0, v0, Lyads/tl5;->a:Lyads/sl5;

    if-eqz v0, :cond_f

    .line 1281
    invoke-interface {v0}, Lyads/sl5;->b()Lyads/rl5;

    move-result-object v1

    .line 1282
    iget-object v1, v1, Lyads/rl5;->b:Ljava/lang/String;

    .line 1283
    iput-object v1, p2, Lyads/sw2;->E:Ljava/lang/String;

    .line 1284
    invoke-interface {v0, p0}, Lyads/sl5;->c(Landroid/content/Context;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p2, Lyads/sw2;->C:Ljava/lang/Integer;

    .line 1285
    invoke-interface {v0, p0}, Lyads/sl5;->a(Landroid/content/Context;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p2, Lyads/sw2;->D:Ljava/lang/Integer;

    .line 1286
    :cond_f
    iget-object v0, p1, Lyads/e4;->h:Ljava/lang/String;

    .line 1287
    iput-object v0, p2, Lyads/sw2;->g0:Ljava/lang/String;

    .line 1288
    iget-object v0, p1, Lyads/e4;->i:Ljava/lang/String;

    .line 1289
    iput-object v0, p2, Lyads/sw2;->h0:Ljava/lang/String;

    .line 1290
    iget v0, p1, Lyads/e4;->n:I

    const/4 v1, 0x1

    if-ne v1, v0, :cond_10

    .line 1291
    const-string v1, "portrait"

    goto :goto_9

    .line 1292
    :cond_10
    const-string v1, "landscape"

    .line 1293
    :goto_9
    iput-object v1, p2, Lyads/sw2;->F:Ljava/lang/String;

    .line 1294
    iget-object p1, p1, Lyads/e4;->c:Lyads/ma;

    .line 1295
    iget-object p1, p1, Lyads/ma;->a:Ljava/lang/String;

    if-eqz p1, :cond_11

    .line 1296
    new-instance v1, Lyads/bk5;

    invoke-direct {v1}, Lyads/bk5;-><init>()V

    const-string v2, "ViewSizeInfoStorage"

    invoke-static {p0, v2, v1}, Lyads/bk5;->a(Landroid/content/Context;Ljava/lang/String;Lyads/bk5;)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 1297
    new-instance v1, Lyads/zg6;

    invoke-direct {v1, p1, v0}, Lyads/zg6;-><init>(Ljava/lang/String;I)V

    .line 1298
    invoke-static {v1}, Lyads/yg6;->a(Lyads/zg6;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_11

    .line 1299
    iput-object p0, p2, Lyads/sw2;->J0:Ljava/lang/String;

    :cond_11
    return-object p2
.end method

.method public static a(Landroid/content/Context;Lyads/qi5;Lyads/c40;Lyads/v85;Lyads/uq4;)Lyads/sw2;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    iget-object v2, v1, Lyads/c40;->a:Lyads/vn2;

    iget-object v3, v1, Lyads/c40;->b:Lyads/ed;

    move-object/from16 v4, p1

    invoke-virtual {v4, v0}, Lyads/qi5;->b(Landroid/content/Context;)Z

    move-result v4

    new-instance v5, Lyads/sw2;

    invoke-direct {v5, v4}, Lyads/sw2;-><init>(Z)V

    invoke-virtual {v5, v0}, Lyads/sw2;->c(Landroid/content/Context;)Lyads/sw2;

    move-result-object v4

    iget-object v5, v4, Lyads/sw2;->c:Lyads/zg;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lyads/dg;->a(Landroid/content/Context;)Lyads/vg;

    move-result-object v5

    const/4 v6, 0x0

    :try_start_0
    iget-object v5, v5, Lyads/vg;->b:Lyads/ej0;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lio/appmetrica/analytics/AppMetrica;->getLibraryVersion()Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-object v5, v6

    :goto_0
    iput-object v5, v4, Lyads/sw2;->G0:Ljava/lang/String;

    iget-object v5, v3, Lyads/ed;->a:Lyads/id;

    iget-boolean v7, v3, Lyads/ed;->c:Z

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v5, :cond_2

    iget-boolean v10, v5, Lyads/id;->b:Z

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    iput-object v10, v4, Lyads/sw2;->S:Ljava/lang/Boolean;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    iput-object v7, v4, Lyads/sw2;->T:Ljava/lang/Boolean;

    iget-object v5, v5, Lyads/id;->a:Ljava/lang/String;

    iget-object v7, v4, Lyads/sw2;->e:Lyads/fd;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_0

    goto :goto_1

    :cond_0
    const-string v7, "00000000-0000-0000-0000-000000000000"

    invoke-virtual {v7, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    move v7, v8

    goto :goto_2

    :cond_1
    :goto_1
    move v7, v9

    :goto_2
    iget-boolean v10, v4, Lyads/sw2;->a:Z

    if-nez v10, :cond_2

    iget-object v10, v4, Lyads/sw2;->S:Ljava/lang/Boolean;

    sget-object v11, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v10, v11}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    if-eqz v7, :cond_2

    iput-object v5, v4, Lyads/sw2;->U:Ljava/lang/String;

    :cond_2
    iget-object v5, v3, Lyads/ed;->d:Ljava/lang/String;

    if-eqz v5, :cond_4

    invoke-static {v5}, Lta8;->M(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    goto :goto_3

    :cond_3
    iput-object v5, v4, Lyads/sw2;->q:Ljava/lang/String;

    :cond_4
    :goto_3
    iget-object v3, v3, Lyads/ed;->b:Lyads/id;

    if-eqz v3, :cond_7

    iget-boolean v5, v3, Lyads/id;->b:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iput-object v5, v4, Lyads/sw2;->V:Ljava/lang/Boolean;

    iget-object v3, v3, Lyads/id;->a:Ljava/lang/String;

    iget-object v5, v4, Lyads/sw2;->e:Lyads/fd;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_5

    goto :goto_4

    :cond_5
    const-string v5, "00000000-0000-0000-0000-000000000000"

    invoke-virtual {v5, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    move v5, v8

    goto :goto_5

    :cond_6
    :goto_4
    move v5, v9

    :goto_5
    iget-boolean v7, v4, Lyads/sw2;->a:Z

    if-nez v7, :cond_7

    iget-object v7, v4, Lyads/sw2;->V:Ljava/lang/Boolean;

    sget-object v10, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v7, v10}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    if-eqz v5, :cond_7

    iput-object v3, v4, Lyads/sw2;->W:Ljava/lang/String;

    :cond_7
    const/4 v3, -0x1

    :try_start_1
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    new-instance v7, Landroid/content/IntentFilter;

    const-string v10, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v7, v10}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v5

    if-eqz v5, :cond_8

    const-string v7, "level"

    invoke-virtual {v5, v7, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    const-string v10, "scale"

    invoke-virtual {v5, v10, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    if-le v7, v3, :cond_8

    if-lez v5, :cond_8

    int-to-float v7, v7

    int-to-float v5, v5

    div-float/2addr v7, v5

    const/high16 v5, 0x42c80000    # 100.0f

    mul-float/2addr v7, v5

    invoke-static {v7}, Lw65;->b(F)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_6

    :catch_0
    :cond_8
    move-object v5, v6

    :goto_6
    iput-object v5, v4, Lyads/sw2;->X:Ljava/lang/Integer;

    const-string v5, "UTF-8"

    iput-object v5, v4, Lyads/sw2;->e0:Ljava/lang/String;

    const v5, 0xffff

    :try_start_2
    const-string v7, "phone"

    invoke-virtual {v0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v7, Landroid/telephony/TelephonyManager;

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v7, Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {v7}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v7

    if-eq v3, v7, :cond_9

    and-int/2addr v7, v5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_7

    :catch_1
    :cond_9
    move-object v7, v6

    :goto_7
    iput-object v7, v4, Lyads/sw2;->P:Ljava/lang/Integer;

    :try_start_3
    const-string v7, "phone"

    invoke-virtual {v0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v7, Landroid/telephony/TelephonyManager;

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v7, Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {v7}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v7

    if-eq v3, v7, :cond_a

    and-int v3, v7, v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_8

    :catch_2
    :cond_a
    move-object v3, v6

    :goto_8
    iput-object v3, v4, Lyads/sw2;->Q:Ljava/lang/Integer;

    const/4 v3, 0x3

    :try_start_4
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-string v7, "wifi"

    invoke-virtual {v5, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v5, Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v7

    if-nez v7, :cond_b

    goto :goto_b

    :cond_b
    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v5

    if-nez v5, :cond_c

    sget-object v5, Lkx2;->b:Lkx2;

    :cond_c
    new-instance v7, Lyads/vu4;

    invoke-direct {v7}, Lyads/vu4;-><init>()V

    invoke-static {v5, v7}, Lqn1;->n0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_f

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v10

    invoke-static {v3, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    const-string v11, ","

    const-string v12, ";"

    move v13, v9

    :goto_9
    if-ge v13, v10, :cond_e

    invoke-interface {v5, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/net/wifi/ScanResult;

    iget-object v14, v14, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/net/wifi/ScanResult;

    iget v14, v14, Landroid/net/wifi/ScanResult;->level:I

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v13, v13, 0x1

    if-ge v13, v10, :cond_d

    move-object v14, v12

    goto :goto_a

    :cond_d
    const-string v14, ""

    :goto_a
    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9

    :cond_e
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_c

    :catch_3
    :cond_f
    :goto_b
    move-object v5, v6

    :goto_c
    iput-object v5, v4, Lyads/sw2;->R:Ljava/lang/String;

    invoke-static {v0}, Lyads/jv3;->a(Landroid/content/Context;)Lyads/kv3;

    move-result-object v5

    iget-boolean v7, v4, Lyads/sw2;->a:Z

    if-eqz v7, :cond_10

    move-object v5, v6

    goto :goto_d

    :cond_10
    invoke-virtual {v5}, Lyads/kv3;->a()Landroid/location/Location;

    move-result-object v5

    :goto_d
    iput-object v5, v4, Lyads/sw2;->G:Landroid/location/Location;

    const/16 v5, 0xa

    :try_start_5
    const-string v7, "phone"

    invoke-virtual {v0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v7, Landroid/telephony/TelephonyManager;

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v9, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lqa8;->o(ILjava/lang/String;)Ljava/lang/Integer;

    move-result-object v7
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_e

    :catch_4
    move-object v7, v6

    :goto_e
    iput-object v7, v4, Lyads/sw2;->K:Ljava/lang/Integer;

    :try_start_6
    const-string v7, "phone"

    invoke-virtual {v0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v7, Landroid/telephony/TelephonyManager;

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lqa8;->o(ILjava/lang/String;)Ljava/lang/Integer;

    move-result-object v3
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_f

    :catch_5
    move-object v3, v6

    :goto_f
    iput-object v3, v4, Lyads/sw2;->L:Ljava/lang/Integer;

    invoke-static {v0}, Lyads/wu4;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v4, Lyads/sw2;->M:Ljava/lang/String;

    :try_start_7
    const-string v3, "phone"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v3, Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    if-nez v7, :cond_11

    :catch_6
    move-object v3, v6

    :cond_11
    iput-object v3, v4, Lyads/sw2;->N:Ljava/lang/String;

    invoke-static {v0}, Lyads/eh6;->d(Landroid/content/Context;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v4, Lyads/sw2;->H:Ljava/lang/Integer;

    invoke-static {v0}, Lyads/eh6;->b(Landroid/content/Context;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v4, Lyads/sw2;->I:Ljava/lang/Integer;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    iput-object v3, v4, Lyads/sw2;->J:Ljava/lang/Float;

    invoke-static {v0}, Lyads/eh6;->a(Landroid/content/Context;)I

    move-result v3

    iput v3, v4, Lyads/sw2;->v0:I

    :try_start_8
    invoke-static {v0}, Lyads/xk6;->a(Landroid/content/Context;)Lyads/sp0;

    move-result-object v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_10

    :catchall_1
    sget-object v3, Lyads/sp0;->g:Lyads/sp0;

    :goto_10
    iget v7, v3, Lyads/sp0;->a:F

    iput v7, v4, Lyads/sw2;->w0:F

    iget v7, v3, Lyads/sp0;->b:F

    iput v7, v4, Lyads/sw2;->x0:F

    iget v7, v3, Lyads/sp0;->c:F

    iput v7, v4, Lyads/sw2;->y0:F

    iget v7, v3, Lyads/sp0;->d:F

    iput v7, v4, Lyads/sw2;->z0:F

    iget v7, v3, Lyads/sp0;->e:F

    iput v7, v4, Lyads/sw2;->A0:F

    iget v3, v3, Lyads/sp0;->f:F

    iput v3, v4, Lyads/sw2;->B0:F

    iget-object v3, v4, Lyads/sw2;->d:Lyads/gh5;

    const-string v7, "%d.%d%d"

    invoke-virtual {v3, v7}, Lyads/gh5;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v4, Lyads/sw2;->E0:Ljava/lang/String;

    iget-object v3, v4, Lyads/sw2;->d:Lyads/gh5;

    const-string v7, "%d.%d.%d"

    invoke-virtual {v3, v7}, Lyads/gh5;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v4, Lyads/sw2;->F0:Ljava/lang/String;

    invoke-static {v0}, Lyads/qi5;->a(Landroid/content/Context;)Z

    move-result v3

    iput-boolean v3, v4, Lyads/sw2;->l:Z

    sget-wide v10, Lyads/ya;->a:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v4, Lyads/sw2;->d0:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v2, Lyads/vn2;->a:Ljava/lang/String;

    invoke-virtual {v4, v0, v3}, Lyads/sw2;->a(Landroid/content/Context;Ljava/lang/String;)Lyads/sw2;

    move-result-object v3

    invoke-virtual {v2}, Lyads/vn2;->a()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lyads/sw2;->z:Ljava/lang/String;

    iget-object v4, v2, Lyads/vn2;->d:Ljava/lang/String;

    iput-object v4, v3, Lyads/sw2;->r:Ljava/lang/String;

    iget-object v10, v1, Lyads/c40;->c:Ljava/util/List;

    if-eqz v10, :cond_12

    const-string v11, ","

    const/4 v15, 0x0

    const/16 v16, 0x3e

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static/range {v10 .. v16}, Lqn1;->a0(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;ILnl3;I)Ljava/lang/String;

    move-result-object v1

    goto :goto_11

    :cond_12
    move-object v1, v6

    :goto_11
    iput-object v1, v3, Lyads/sw2;->b0:Ljava/lang/String;

    new-instance v1, Lyads/jc0;

    invoke-direct {v1, v0}, Lyads/jc0;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lyads/jc0;->a()Z

    move-result v1

    if-eqz v1, :cond_13

    sget-object v1, Lyads/i85;->c:Lyads/i85;

    const-string v1, "dark"

    goto :goto_12

    :cond_13
    sget-object v1, Lyads/i85;->c:Lyads/i85;

    const-string v1, "light"

    :goto_12
    iput-object v1, v3, Lyads/sw2;->I0:Ljava/lang/String;

    invoke-virtual {v3}, Lyads/sw2;->c()Lyads/sw2;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    if-ne v8, v3, :cond_14

    const-string v3, "portrait"

    goto :goto_13

    :cond_14
    const-string v3, "landscape"

    :goto_13
    iput-object v3, v1, Lyads/sw2;->F:Ljava/lang/String;

    invoke-virtual {v1}, Lyads/sw2;->b()Lyads/sw2;

    move-result-object v1

    sget-object v3, Lyads/u10;->a:Lyads/w10;

    if-nez v3, :cond_16

    sget-object v3, Lyads/u10;->b:Ljava/lang/Object;

    monitor-enter v3

    :try_start_9
    sget-object v4, Lyads/u10;->a:Lyads/w10;

    if-nez v4, :cond_15

    invoke-static {v0}, Lyads/v10;->a(Landroid/content/Context;)Lyads/w10;

    move-result-object v4

    sput-object v4, Lyads/u10;->a:Lyads/w10;

    goto :goto_14

    :catchall_2
    move-exception v0

    goto :goto_15

    :cond_15
    :goto_14
    sget-object v4, Lj59;->a:Lj59;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    monitor-exit v3

    goto :goto_16

    :goto_15
    monitor-exit v3

    throw v0

    :cond_16
    :goto_16
    sget-object v3, Lyads/u10;->a:Lyads/w10;

    if-eqz v3, :cond_28

    invoke-virtual {v3}, Lyads/w10;->c()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lyads/sw2;->u:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lyads/sw2;->e(Landroid/content/Context;)Lyads/sw2;

    move-result-object v1

    invoke-virtual {v1, v0}, Lyads/sw2;->d(Landroid/content/Context;)Lyads/sw2;

    move-result-object v1

    invoke-virtual {v1, v0}, Lyads/sw2;->f(Landroid/content/Context;)Lyads/sw2;

    move-result-object v1

    invoke-virtual {v1, v0}, Lyads/sw2;->i(Landroid/content/Context;)Lyads/sw2;

    move-result-object v1

    invoke-virtual {v1, v0}, Lyads/sw2;->b(Landroid/content/Context;)Lyads/sw2;

    move-result-object v1

    invoke-static {v0}, Lyads/ya;->a(Landroid/content/Context;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, v1, Lyads/sw2;->K0:Ljava/lang/Boolean;

    invoke-virtual {v1, v0}, Lyads/sw2;->h(Landroid/content/Context;)Lyads/sw2;

    move-result-object v1

    invoke-virtual {v1, v0}, Lyads/sw2;->g(Landroid/content/Context;)Lyads/sw2;

    move-result-object v1

    iget-boolean v2, v2, Lyads/vn2;->f:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v1, Lyads/sw2;->S0:Ljava/lang/Boolean;

    move-object/from16 v2, p4

    iget-object v2, v2, Lyads/uq4;->a:Lyads/zu3;

    check-cast v2, Lyads/av3;

    const-string v3, "OPT_OUT_ENABLED"

    invoke-virtual {v2, v3, v9}, Lyads/av3;->a(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_17

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_17

    :cond_17
    move-object v2, v6

    :goto_17
    iput-object v2, v1, Lyads/sw2;->T0:Ljava/lang/Boolean;

    invoke-static {v0}, Lyads/wi5;->a(Landroid/content/Context;)Lyads/xi5;

    move-result-object v2

    iget-object v2, v2, Lyads/xi5;->a:Lyads/zu3;

    check-cast v2, Lyads/av3;

    const-string v3, "ServerSideClientIP"

    invoke-virtual {v2, v3}, Lyads/av3;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lyads/sw2;->P0:Ljava/lang/String;

    :try_start_a
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_18
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_1b

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/NetworkInterface;

    invoke-virtual {v3}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_19
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_18

    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/InetAddress;

    instance-of v7, v4, Ljava/net/Inet6Address;

    if-eqz v7, :cond_19

    move-object v7, v4

    check-cast v7, Ljava/net/Inet6Address;

    invoke-virtual {v7}, Ljava/net/Inet6Address;->getAddress()[B

    move-result-object v7

    if-eqz v7, :cond_19

    aget-byte v7, v7, v9

    and-int/lit16 v7, v7, 0xf0

    const/16 v8, 0x20

    if-eq v7, v8, :cond_1a

    const/16 v8, 0x30

    if-ne v7, v8, :cond_19

    :cond_1a
    check-cast v4, Ljava/net/Inet6Address;

    invoke-virtual {v4}, Ljava/net/Inet6Address;->getHostAddress()Ljava/lang/String;

    move-result-object v6
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    :catchall_3
    :cond_1b
    iput-object v6, v1, Lyads/sw2;->Q0:Ljava/lang/String;

    new-instance v2, Lyads/z64;

    invoke-direct {v2}, Lyads/z64;-><init>()V

    invoke-static {}, Lyads/u54;->a()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lyads/z64;->a(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1c
    :goto_18
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Lyads/m64;

    iget-object v6, v6, Lyads/m64;->d:Ljava/util/List;

    instance-of v7, v6, Ljava/util/Collection;

    if-eqz v7, :cond_1d

    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1d

    goto :goto_18

    :cond_1d
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1e
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lyads/l64;

    iget-boolean v7, v7, Lyads/l64;->c:Z

    if-eqz v7, :cond_1e

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_18

    :cond_1f
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_20
    :goto_19
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_21

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Lyads/m64;

    iget-object v6, v6, Lyads/m64;->b:Ljava/lang/String;

    const-string v7, "undefined"

    invoke-static {v6, v7}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_20

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_19

    :cond_21
    new-instance v3, Ljava/util/ArrayList;

    invoke-static {v2, v5}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_22

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lyads/m64;

    iget-object v4, v4, Lyads/m64;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1a

    :cond_22
    sget-object v2, Lxb4;->d:Lxb4$a;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Lmr;

    sget-object v5, Lca8;->a:Lca8;

    invoke-direct {v4, v5}, Lmr;-><init>(Ldf4;)V

    invoke-virtual {v2, v4, v3}, Lxb4;->b(Lxp7;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lyads/sw2;->i0:Ljava/lang/String;

    invoke-virtual {v1}, Lyads/sw2;->a()Lyads/sw2;

    move-result-object v1

    invoke-static {v0}, Lyads/sw2;->a(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_23

    goto :goto_1b

    :cond_23
    iget-object v2, v1, Lyads/sw2;->f:Lyads/o83;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lyads/o83;->a(Landroid/content/Context;)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v1, Lyads/sw2;->U0:Ljava/lang/Long;

    iget-object v2, v1, Lyads/sw2;->f:Lyads/o83;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lyads/sw2;->V0:Ljava/lang/Integer;

    :goto_1b
    invoke-static {v0}, Lyads/sw2;->a(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_24

    goto :goto_1c

    :cond_24
    iget-object v2, v1, Lyads/sw2;->g:Lyads/iu5;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lyads/sw2;->W0:Ljava/lang/String;

    iget-object v2, v1, Lyads/sw2;->g:Lyads/iu5;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lyads/iu5;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lyads/sw2;->X0:Ljava/lang/String;

    :goto_1c
    invoke-static {v0}, Lyads/sw2;->a(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_25

    goto :goto_1d

    :cond_25
    iget-object v2, v1, Lyads/sw2;->h:Lyads/qp0;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lyads/qp0;->a()Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v1, Lyads/sw2;->Y0:Ljava/lang/Long;

    iget-object v2, v1, Lyads/sw2;->h:Lyads/qp0;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lyads/qp0;->b()Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v1, Lyads/sw2;->Z0:Ljava/lang/Long;

    :goto_1d
    invoke-static {v0}, Lyads/sw2;->a(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_26

    goto :goto_1e

    :cond_26
    iget-object v2, v1, Lyads/sw2;->i:Lyads/ex5;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v1, Lyads/sw2;->a1:Ljava/lang/Long;

    :goto_1e
    invoke-static {v0}, Lyads/sw2;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_27

    goto :goto_1f

    :cond_27
    iget-object v0, v1, Lyads/sw2;->j:Lyads/dd6;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lyads/dd6;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lyads/sw2;->b1:Ljava/lang/String;

    :goto_1f
    return-object v1

    :cond_28
    const-string v0, "Required value was null."

    invoke-static {v0}, Lfg;->c(Ljava/lang/String;)V

    return-object v6
.end method
