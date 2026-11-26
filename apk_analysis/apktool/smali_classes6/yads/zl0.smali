.class public final Lyads/zl0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lyads/nl0;

.field public c:I

.field public d:Z

.field public final e:Lyads/bz3;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/zl0;->a:Landroid/content/Context;

    new-instance p1, Lyads/nl0;

    invoke-direct {p1}, Lyads/nl0;-><init>()V

    iput-object p1, p0, Lyads/zl0;->b:Lyads/nl0;

    const/4 p1, 0x0

    iput p1, p0, Lyads/zl0;->c:I

    sget-object p1, Lyads/bz3;->a:Lyads/bz3;

    iput-object p1, p0, Lyads/zl0;->e:Lyads/bz3;

    return-void
.end method


# virtual methods
.method public final a(Landroid/os/Handler;Lyads/bq2;Lyads/bq2;Lyads/bq2;Lyads/bq2;)[Lyads/gs;
    .locals 18

    move-object/from16 v0, p0

    const/16 v1, 0x32

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v10, Lyads/oe6;

    sget-object v11, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const-class v12, Lyads/tm;

    const-class v13, Lyads/om;

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, v0, Lyads/zl0;->a:Landroid/content/Context;

    iget v15, v0, Lyads/zl0;->c:I

    iget-object v4, v0, Lyads/zl0;->e:Lyads/bz3;

    iget-boolean v5, v0, Lyads/zl0;->d:Z

    const-wide/16 v6, 0x1388

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object v3, v1

    new-instance v1, Lyads/oz3;

    move-object v6, v3

    iget-object v3, v0, Lyads/zl0;->b:Lyads/nl0;

    move-object/from16 v7, p2

    move-object/from16 v16, v12

    move-object v12, v6

    move-object/from16 v6, p1

    invoke-direct/range {v1 .. v7}, Lyads/oz3;-><init>(Landroid/content/Context;Lyads/oy3;Lyads/bz3;ZLandroid/os/Handler;Lyads/bq2;)V

    move-object v5, v6

    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x2

    const-class v3, Landroid/os/Handler;

    const-string v4, "DefaultRenderersFactory"

    if-nez v15, :cond_0

    const/16 v17, 0x0

    goto :goto_3

    :cond_0
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ne v15, v2, :cond_1

    add-int/lit8 v6, v6, -0x1

    :cond_1
    :try_start_0
    const-string v15, "com.monetization.ads.exo.ext.vp9.LibvpxVideoRenderer"

    invoke-static {v15}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v15
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    const/16 v17, 0x0

    :try_start_1
    filled-new-array {v11, v3, v10, v9}, [Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v15, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    filled-new-array {v12, v5, v7, v8}, [Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v1, v15}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyads/gs;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v15, v6, 0x1

    :try_start_2
    invoke-virtual {v14, v6, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const-string v1, "Loaded LibvpxVideoRenderer."

    invoke-static {v4, v1}, Lyads/sv3;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move v6, v15

    goto :goto_1

    :catch_2
    move-exception v0

    const/16 v17, 0x0

    goto :goto_0

    :catch_3
    const/16 v17, 0x0

    goto :goto_1

    :goto_0
    const-string v1, "Error instantiating VP9 extension"

    invoke-static {v1, v0}, Lmg;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v17

    :catch_4
    :goto_1
    move v15, v6

    :goto_2
    :try_start_3
    const-string v1, "com.monetization.ads.exo.ext.av1.Libgav1VideoRenderer"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    filled-new-array {v11, v3, v10, v9}, [Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    filled-new-array {v12, v5, v7, v8}, [Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyads/gs;

    invoke-virtual {v14, v15, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const-string v1, "Loaded Libgav1VideoRenderer."

    invoke-static {v4, v1}, Lyads/sv3;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    goto :goto_3

    :catch_5
    move-exception v0

    const-string v1, "Error instantiating AV1 extension"

    invoke-static {v1, v0}, Lmg;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v17

    :catch_6
    :goto_3
    iget-object v1, v0, Lyads/zl0;->a:Landroid/content/Context;

    new-instance v6, Lyads/mj0;

    invoke-direct {v6}, Lyads/mj0;-><init>()V

    invoke-static {v1}, Lyads/fm;->a(Landroid/content/Context;)Lyads/fm;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v1, v6, Lyads/mj0;->a:Lyads/fm;

    iget-object v1, v6, Lyads/mj0;->b:Lyads/oj0;

    const/4 v8, 0x0

    if-nez v1, :cond_2

    new-instance v1, Lyads/oj0;

    new-array v7, v8, [Lyads/mm;

    invoke-direct {v1, v7}, Lyads/oj0;-><init>([Lyads/mm;)V

    iput-object v1, v6, Lyads/mj0;->b:Lyads/oj0;

    :cond_2
    new-instance v7, Lyads/vj0;

    invoke-direct {v7, v6}, Lyads/vj0;-><init>(Lyads/mj0;)V

    iget-object v1, v0, Lyads/zl0;->a:Landroid/content/Context;

    iget v9, v0, Lyads/zl0;->c:I

    move-object v6, v3

    iget-object v3, v0, Lyads/zl0;->e:Lyads/bz3;

    move-object v10, v4

    iget-boolean v4, v0, Lyads/zl0;->d:Z

    new-instance v11, Lyads/sy3;

    iget-object v0, v0, Lyads/zl0;->b:Lyads/nl0;

    move v12, v2

    move-object v2, v0

    move-object v0, v11

    move v11, v12

    move-object v12, v6

    move-object v15, v10

    move-object/from16 v10, v17

    move-object/from16 v6, p3

    invoke-direct/range {v0 .. v7}, Lyads/sy3;-><init>(Landroid/content/Context;Lyads/oy3;Lyads/bz3;ZLandroid/os/Handler;Lyads/bq2;Lyads/vj0;)V

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez v9, :cond_3

    goto/16 :goto_d

    :cond_3
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v9, v11, :cond_4

    add-int/lit8 v0, v0, -0x1

    :cond_4
    :try_start_4
    const-string v1, "com.monetization.ads.exo.decoder.midi.MidiRenderer"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyads/gs;
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_9
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_7

    add-int/lit8 v2, v0, 0x1

    :try_start_5
    invoke-virtual {v14, v0, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const-string v0, "Loaded MidiRenderer."

    invoke-static {v15, v0}, Lyads/sv3;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5 .. :try_end_5} :catch_8
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_7

    goto :goto_6

    :catch_7
    move-exception v0

    goto :goto_4

    :catch_8
    move v0, v2

    goto :goto_5

    :goto_4
    const-string v1, "Error instantiating MIDI extension"

    invoke-static {v1, v0}, Lmg;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v10

    :catch_9
    :goto_5
    move v2, v0

    :goto_6
    :try_start_6
    const-string v0, "com.monetization.ads.exo.ext.opus.LibopusAudioRenderer"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6 .. :try_end_6} :catch_c
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_a

    move-object/from16 v1, v16

    :try_start_7
    filled-new-array {v12, v13, v1}, [Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    filled-new-array {v5, v6, v7}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyads/gs;
    :try_end_7
    .catch Ljava/lang/ClassNotFoundException; {:try_start_7 .. :try_end_7} :catch_d
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_a

    add-int/lit8 v3, v2, 0x1

    :try_start_8
    invoke-virtual {v14, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const-string v0, "Loaded LibopusAudioRenderer."

    invoke-static {v15, v0}, Lyads/sv3;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/ClassNotFoundException; {:try_start_8 .. :try_end_8} :catch_b
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_a

    goto :goto_9

    :catch_a
    move-exception v0

    goto :goto_7

    :catch_b
    move v2, v3

    goto :goto_8

    :catch_c
    move-object/from16 v1, v16

    goto :goto_8

    :goto_7
    const-string v1, "Error instantiating Opus extension"

    invoke-static {v1, v0}, Lmg;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v10

    :catch_d
    :goto_8
    move v3, v2

    :goto_9
    :try_start_9
    const-string v0, "com.monetization.ads.exo.ext.flac.LibflacAudioRenderer"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    filled-new-array {v12, v13, v1}, [Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    filled-new-array {v5, v6, v7}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyads/gs;
    :try_end_9
    .catch Ljava/lang/ClassNotFoundException; {:try_start_9 .. :try_end_9} :catch_10
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_e

    add-int/lit8 v2, v3, 0x1

    :try_start_a
    invoke-virtual {v14, v3, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const-string v0, "Loaded LibflacAudioRenderer."

    invoke-static {v15, v0}, Lyads/sv3;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/ClassNotFoundException; {:try_start_a .. :try_end_a} :catch_f
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_e

    goto :goto_c

    :catch_e
    move-exception v0

    goto :goto_a

    :catch_f
    move v3, v2

    goto :goto_b

    :goto_a
    const-string v1, "Error instantiating FLAC extension"

    invoke-static {v1, v0}, Lmg;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v10

    :catch_10
    :goto_b
    move v2, v3

    :goto_c
    :try_start_b
    const-string v0, "com.monetization.ads.exo.ext.ffmpeg.FfmpegAudioRenderer"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    filled-new-array {v12, v13, v1}, [Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    filled-new-array {v5, v6, v7}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyads/gs;

    invoke-virtual {v14, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const-string v0, "Loaded FfmpegAudioRenderer."

    invoke-static {v15, v0}, Lyads/sv3;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_b .. :try_end_b} :catch_12
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_11

    goto :goto_d

    :catch_11
    move-exception v0

    const-string v1, "Error instantiating FFmpeg extension"

    invoke-static {v1, v0}, Lmg;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v10

    :catch_12
    :goto_d
    invoke-virtual {v5}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance v1, Lyads/hw5;

    move-object/from16 v2, p4

    invoke-direct {v1, v2, v0}, Lyads/hw5;-><init>(Lyads/bq2;Landroid/os/Looper;)V

    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v5}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance v1, Lyads/k84;

    move-object/from16 v2, p5

    invoke-direct {v1, v2, v0}, Lyads/k84;-><init>(Lyads/bq2;Landroid/os/Looper;)V

    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lyads/xx;

    invoke-direct {v0}, Lyads/xx;-><init>()V

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-array v0, v8, [Lyads/gs;

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lyads/gs;

    return-object v0
.end method
