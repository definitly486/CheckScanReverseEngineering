.class public final Lat9;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final l:Lat9;


# instance fields
.field public final a:Lh0a;

.field public final b:Lzu9;

.field public final c:Liia;

.field public final d:Llz9;

.field public final e:Lcea;

.field public final f:Leha;

.field public final g:Lt8a;

.field public final h:Lg4a;

.field public final i:Lny9;

.field public final j:Lg9a;

.field public final k:Lpz9;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lat9;

    invoke-direct {v0}, Lat9;-><init>()V

    sput-object v0, Lat9;->l:Lat9;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lh0a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lat9;->a:Lh0a;

    new-instance v0, Lzu9;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lat9;->b:Lzu9;

    new-instance v0, Liia;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Liia$a;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-wide/16 v3, 0x0

    invoke-direct {v1, v3, v4, v2}, Liia$a;-><init>(JLjava/util/HashMap;)V

    iput-object v1, v0, Liia;->o:Liia$a;

    iput-object v0, p0, Lat9;->c:Liia;

    new-instance v0, Llz9;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lat9;->d:Llz9;

    new-instance v0, Lcea;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lat9;->e:Lcea;

    new-instance v0, Leha;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lat9;->f:Leha;

    new-instance v0, Lt8a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lat9;->g:Lt8a;

    new-instance v0, Lg4a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    const-class v1, Landroid/bluetooth/BluetoothDevice;

    const-string v2, "isConnected"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, v0, Lg4a;->o:Ljava/lang/reflect/Method;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    iput-object v0, p0, Lat9;->h:Lg4a;

    new-instance v0, Lny9;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lat9;->i:Lny9;

    new-instance v0, Lg9a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lat9;->j:Lg9a;

    new-instance v0, Lpz9;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lat9;->k:Lpz9;

    return-void
.end method

.method public static a(Lcom/my/target/t0;IJ)J
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long p2, v0, p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/my/target/t0;->a(IJ)V

    return-wide v0
.end method


# virtual methods
.method public final b(Lnh5;Ltk2;Lcom/my/target/t0;Landroid/content/Context;)Ljava/util/Map;
    .locals 20

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-static {}, Lw4a;->b()Z

    move-result v0

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    const-string v0, "FingerprintDataProvider: You must not call collectData method from main thread"

    invoke-static {v4, v0}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    return-object v0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-object v0, v1, Lat9;->a:Lh0a;

    invoke-virtual {v0, v3}, Lh0a;->U(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v7

    const/16 v0, 0x17

    invoke-static {v2, v0, v5, v6}, Lat9;->a(Lcom/my/target/t0;IJ)J

    iget-object v0, v1, Lat9;->b:Lzu9;

    invoke-virtual {v0, v3}, Lzu9;->V(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v8

    const/16 v0, 0xa

    invoke-static {v2, v0, v5, v6}, Lat9;->a(Lcom/my/target/t0;IJ)J

    move-result-wide v5

    iget-object v0, v1, Lat9;->j:Lg9a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    invoke-static {v3}, Ll3a;->q(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v0

    iget v10, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    if-eqz v10, :cond_1

    if-eqz v0, :cond_1

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    const-string v11, "vpw"

    invoke-virtual {v9, v11, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v10, "vph"

    invoke-virtual {v9, v10, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const/16 v0, 0x15

    invoke-static {v2, v0, v5, v6}, Lat9;->a(Lcom/my/target/t0;IJ)J

    iget-object v10, v1, Lat9;->i:Lny9;

    monitor-enter v10

    :try_start_0
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v0, Landroid/content/IntentFilter;

    const-string v12, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v12}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/NoSuchMethodError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-object v0, v4

    :goto_0
    const/4 v12, -0x1

    if-nez v0, :cond_2

    monitor-exit v10

    goto :goto_2

    :cond_2
    :try_start_2
    const-string v13, "level"

    invoke-virtual {v0, v13, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    const-string v14, "scale"

    invoke-virtual {v0, v14, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v14

    const-string v15, "status"

    const/4 v12, 0x1

    invoke-virtual {v0, v15, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-ltz v13, :cond_3

    if-lez v14, :cond_3

    mul-int/lit8 v13, v13, 0x64

    div-int/2addr v13, v14

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    const-string v13, "bl"

    invoke-virtual {v11, v13, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_12

    :cond_3
    :goto_1
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v12, "bs"

    invoke-virtual {v11, v12, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v10

    :goto_2
    const/16 v0, 0x10

    invoke-static {v2, v0, v5, v6}, Lat9;->a(Lcom/my/target/t0;IJ)J

    move-result-wide v5

    iget-object v0, v1, Lat9;->k:Lpz9;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    sget-object v0, Lpz9$a;->a:Ljava/lang/String;

    if-eqz v0, :cond_4

    const-string v12, "mtr_id"

    invoke-virtual {v10, v12, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    const/16 v0, 0x16

    invoke-static {v2, v0, v5, v6}, Lat9;->a(Lcom/my/target/t0;IJ)J

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual/range {p2 .. p2}, Ltk2;->g()Z

    move-result v12

    const/16 v13, 0xf

    if-eqz v12, :cond_13

    iget-object v12, v1, Lat9;->c:Liia;

    monitor-enter v12

    :try_start_3
    monitor-enter v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_7

    :try_start_4
    iget-object v0, v12, Liia;->o:Liia$a;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_8

    :try_start_5
    monitor-exit v12

    new-instance v14, La52;

    move-object/from16 v15, p1

    invoke-direct {v14, v12, v15, v3}, La52;-><init>(Liia;Lnh5;Landroid/content/Context;)V

    sget-object v15, Lw4a;->d:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v15, v14}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v14, Ljava/util/HashMap;

    iget-object v0, v0, Liia$a;->a:Ljava/util/HashMap;

    invoke-direct {v14, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_7

    monitor-exit v12

    invoke-static {v2, v13, v5, v6}, Lat9;->a(Lcom/my/target/t0;IJ)J

    move-result-wide v5

    iget-object v0, v1, Lat9;->d:Llz9;

    invoke-virtual {v0, v3}, Llz9;->U(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v12

    const/16 v0, 0xb

    invoke-static {v2, v0, v5, v6}, Lat9;->a(Lcom/my/target/t0;IJ)J

    move-result-wide v5

    iget-object v14, v1, Lat9;->e:Lcea;

    monitor-enter v14

    :try_start_6
    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    :try_start_7
    const-string v0, "connectivity"

    invoke-virtual {v3, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v17

    goto :goto_3

    :cond_5
    move-object/from16 v17, v4

    :goto_3
    if-eqz v17, :cond_a

    invoke-virtual/range {v17 .. v17}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v13

    const-string v4, "connection"

    invoke-virtual {v15, v4, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, ""

    const-string v13, "connection_type"

    invoke-virtual/range {v17 .. v17}, Landroid/net/NetworkInfo;->getType()I

    move-result v18

    if-nez v18, :cond_7

    invoke-virtual/range {v17 .. v17}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_6

    invoke-virtual/range {v17 .. v17}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v4

    :cond_6
    invoke-virtual {v15, v13, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_7
    invoke-virtual/range {v17 .. v17}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_8

    invoke-virtual/range {v17 .. v17}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v4

    :cond_8
    invoke-virtual {v15, v13, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :goto_4
    :try_start_8
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "1"

    goto :goto_5

    :catchall_1
    move-exception v0

    goto :goto_6

    :cond_9
    const-string v0, "0"

    :goto_5
    const-string v4, "vpn_connected"

    invoke-virtual {v15, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_7

    :goto_6
    :try_start_9
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v13, "NetworkInfoDataProvider: "

    invoke-direct {v4, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    invoke-static {v4, v0}, Ly14;->u(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :cond_a
    :goto_7
    monitor-exit v14

    goto :goto_8

    :catchall_2
    :try_start_a
    const-string v0, "NetworkInfoDataProvider: No permissions for access to network state"

    const/4 v4, 0x0

    invoke-static {v4, v0}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    monitor-exit v14

    :goto_8
    const/16 v0, 0xe

    invoke-static {v2, v0, v5, v6}, Lat9;->a(Lcom/my/target/t0;IJ)J

    move-result-wide v4

    iget-object v0, v1, Lat9;->f:Leha;

    invoke-virtual {v0, v3}, Leha;->U(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v6

    const/16 v0, 0xd

    invoke-static {v2, v0, v4, v5}, Lat9;->a(Lcom/my/target/t0;IJ)J

    move-result-wide v4

    iget-object v0, v1, Lat9;->h:Lg4a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    iget-object v14, v0, Lg4a;->o:Ljava/lang/reflect/Method;

    if-nez v14, :cond_c

    move-object/from16 p1, v6

    move-object/from16 v17, v12

    :cond_b
    :goto_9
    move-object/from16 v19, v15

    goto/16 :goto_d

    :cond_c
    const-string v0, "android.permission.BLUETOOTH"

    :try_start_b
    invoke-virtual {v3, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    move-object/from16 p1, v6

    move-object/from16 v17, v12

    move v12, v0

    goto :goto_a

    :catchall_3
    move-exception v0

    move-object/from16 p1, v6

    new-instance v6, Ljava/lang/StringBuilder;

    move-object/from16 v17, v12

    const-string v12, "FPDataProvider: Unable to check android.permission.BLUETOOTH permission! Unexpected throwable in Context.checkCallingOrSelfPermission() method - "

    invoke-direct {v6, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v12, 0x0

    invoke-static {v12, v6, v0}, Lfg;->e(Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/Throwable;)V

    const/4 v12, -0x1

    :goto_a
    if-nez v12, :cond_b

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v6

    if-nez v6, :cond_d

    goto :goto_9

    :cond_d
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    :try_start_c
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_10

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/bluetooth/BluetoothDevice;

    move-object/from16 v16, v0

    sget-object v0, Lg4a;->p:[I

    invoke-virtual {v12}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v18
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    move-object/from16 v19, v15

    :try_start_d
    invoke-virtual/range {v18 .. v18}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v15

    invoke-static {v0, v15}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v0

    if-ltz v0, :cond_f

    :cond_e
    :goto_c
    move-object/from16 v0, v16

    move-object/from16 v15, v19

    goto :goto_b

    :cond_f
    const/4 v15, 0x0

    invoke-virtual {v14, v12, v15}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_e

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {v12}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_e

    new-instance v12, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v15, 0x2

    invoke-static {v0, v15}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v0

    sget-object v15, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v12, v0, v15}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    goto :goto_c

    :catchall_4
    :cond_10
    move-object/from16 v19, v15

    :catchall_5
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_11

    const-string v0, ","

    invoke-static {v0, v6}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    const-string v6, "bdn"

    invoke-virtual {v13, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_11
    :goto_d
    const/16 v0, 0x11

    invoke-static {v2, v0, v4, v5}, Lat9;->a(Lcom/my/target/t0;IJ)J

    move-result-wide v4

    iget-object v0, v1, Lat9;->g:Lt8a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v6, "uimode"

    invoke-virtual {v3, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/UiModeManager;

    if-eqz v3, :cond_12

    invoke-virtual {v3}, Landroid/app/UiModeManager;->getCurrentModeType()I

    move-result v3

    const/4 v6, 0x3

    if-ne v3, v6, :cond_12

    const-string v3, "isc"

    const-string v6, "1"

    invoke-virtual {v0, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_12
    const/16 v3, 0x12

    invoke-static {v2, v3, v4, v5}, Lat9;->a(Lcom/my/target/t0;IJ)J

    move-object/from16 v4, p1

    move-object/from16 v5, v17

    move-object/from16 v3, v19

    goto :goto_f

    :catchall_6
    move-exception v0

    :try_start_e
    monitor-exit v14
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    throw v0

    :catchall_7
    move-exception v0

    goto :goto_e

    :catchall_8
    move-exception v0

    :try_start_f
    monitor-exit v12
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_8

    :try_start_10
    throw v0

    :goto_e
    monitor-exit v12
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_7

    throw v0

    :cond_13
    move-object v3, v0

    move-object v4, v3

    move-object v5, v4

    move-object v13, v5

    :goto_f
    monitor-enter p0

    :try_start_11
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    invoke-virtual {v6, v9}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    invoke-virtual {v6, v11}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    invoke-virtual {v6, v10}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    invoke-virtual/range {p2 .. p2}, Ltk2;->g()Z

    move-result v7

    if-eqz v7, :cond_14

    iget-object v7, v1, Lat9;->c:Liia;

    monitor-enter v7
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_9

    :try_start_12
    iget-object v8, v7, Liia;->o:Liia$a;
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_a

    :try_start_13
    monitor-exit v7

    iget-wide v9, v8, Liia$a;->b:J

    const/16 v7, 0xf

    invoke-virtual {v2, v7, v9, v10}, Lcom/my/target/t0;->a(IJ)V

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Ljava/util/HashMap;

    iget-object v7, v8, Liia$a;->a:Ljava/util/HashMap;

    invoke-direct {v2, v7}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-virtual {v6, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    invoke-virtual {v6, v3}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    invoke-virtual {v6, v4}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    invoke-virtual {v6, v13}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_9

    goto :goto_10

    :catchall_9
    move-exception v0

    goto :goto_11

    :catchall_a
    move-exception v0

    :try_start_14
    monitor-exit v7
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_a

    :try_start_15
    throw v0

    :cond_14
    :goto_10
    monitor-exit p0

    return-object v6

    :goto_11
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_9

    throw v0

    :goto_12
    :try_start_16
    monitor-exit v10
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    throw v0
.end method
