.class public final Lr17;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/bumptech/glide/a;Ljava/util/ArrayList;)Lcom/bumptech/glide/Registry;
    .locals 31

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/bumptech/glide/a;->b:Lij0;

    iget-object v2, v0, Lcom/bumptech/glide/a;->e:Lpr;

    iget-object v0, v0, Lcom/bumptech/glide/a;->d:Lwq3;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v0, v0, Lwq3;->g:Lyq3;

    new-instance v4, Lcom/bumptech/glide/Registry;

    invoke-direct {v4}, Lcom/bumptech/glide/Registry;-><init>()V

    const-class v5, Landroid/os/ParcelFileDescriptor;

    const-class v6, Ljava/nio/ByteBuffer;

    const-class v7, Landroid/graphics/drawable/Drawable;

    const-class v8, Ljava/io/InputStream;

    const-string v9, "BitmapDrawable"

    const-string v10, "legacy_append"

    const-string v11, "Animation"

    const-string v12, "Bitmap"

    new-instance v13, Lcom/bumptech/glide/load/resource/bitmap/DefaultImageHeaderParser;

    invoke-direct {v13}, Ljava/lang/Object;-><init>()V

    iget-object v14, v4, Lcom/bumptech/glide/Registry;->g:Ll14;

    monitor-enter v14

    :try_start_0
    iget-object v15, v14, Ll14;->a:Ljava/util/ArrayList;

    invoke-virtual {v15, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit v14

    sget v13, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v14, 0x1b

    if-lt v13, v14, :cond_0

    new-instance v14, Lh23;

    invoke-direct {v14}, Ljava/lang/Object;-><init>()V

    iget-object v15, v4, Lcom/bumptech/glide/Registry;->g:Ll14;

    monitor-enter v15

    move-object/from16 p0, v10

    :try_start_1
    iget-object v10, v15, Ll14;->a:Ljava/util/ArrayList;

    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v15

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v15
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_0
    move-object/from16 p0, v10

    :goto_0
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v4}, Lcom/bumptech/glide/Registry;->e()Ljava/util/ArrayList;

    move-result-object v14

    new-instance v15, Lxw0;

    invoke-direct {v15, v3, v14, v1, v2}, Lxw0;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Lij0;Lpr;)V

    move-object/from16 v16, v15

    new-instance v15, Lkd9;

    move-object/from16 v17, v9

    new-instance v9, Lkd9$g;

    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    invoke-direct {v15, v1, v9}, Lkd9;-><init>(Lij0;Lkd9$e;)V

    new-instance v9, Lvq2;

    move-object/from16 v18, v10

    invoke-virtual {v4}, Lcom/bumptech/glide/Registry;->e()Ljava/util/ArrayList;

    move-result-object v10

    move-object/from16 v19, v15

    invoke-virtual/range {v18 .. v18}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v15

    invoke-direct {v9, v10, v15, v1, v2}, Lvq2;-><init>(Ljava/util/ArrayList;Landroid/util/DisplayMetrics;Lij0;Lpr;)V

    const/16 v10, 0x1c

    if-lt v13, v10, :cond_1

    const-class v15, Lsq3;

    iget-object v10, v0, Lyq3;->a:Ljava/util/Map;

    invoke-interface {v10, v15}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    new-instance v10, Ls54;

    invoke-direct {v10}, Ls54;-><init>()V

    new-instance v15, Ltw0;

    invoke-direct {v15}, Ltw0;-><init>()V

    :goto_1
    move-object/from16 v20, v0

    const/16 v0, 0x1c

    goto :goto_2

    :cond_1
    new-instance v15, Lsw0;

    invoke-direct {v15, v9}, Lsw0;-><init>(Lvq2;)V

    new-instance v10, Lg98;

    invoke-direct {v10, v9, v2}, Lg98;-><init>(Lvq2;Lpr;)V

    goto :goto_1

    :goto_2
    if-lt v13, v0, :cond_2

    new-instance v0, Lwl$c;

    move/from16 v21, v13

    new-instance v13, Lwl;

    invoke-direct {v13, v14, v2}, Lwl;-><init>(Ljava/util/ArrayList;Lpr;)V

    invoke-direct {v0, v13}, Lwl$c;-><init>(Lwl;)V

    invoke-virtual {v4, v11, v8, v7, v0}, Lcom/bumptech/glide/Registry;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Li47;)V

    new-instance v0, Lwl$b;

    new-instance v13, Lwl;

    invoke-direct {v13, v14, v2}, Lwl;-><init>(Ljava/util/ArrayList;Lpr;)V

    invoke-direct {v0, v13}, Lwl$b;-><init>(Lwl;)V

    invoke-virtual {v4, v11, v6, v7, v0}, Lcom/bumptech/glide/Registry;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Li47;)V

    goto :goto_3

    :cond_2
    move/from16 v21, v13

    :goto_3
    new-instance v0, Lk47;

    invoke-direct {v0, v3}, Lk47;-><init>(Landroid/content/Context;)V

    new-instance v13, Lyi0;

    invoke-direct {v13, v2}, Lyi0;-><init>(Lpr;)V

    move-object/from16 v22, v3

    new-instance v3, Lui0;

    sget-object v23, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    move-object/from16 v23, v3

    new-instance v3, Lvp3;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    move-object/from16 v24, v3

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    move-object/from16 v25, v3

    new-instance v3, Lx97;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v4, v6, v3}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/Class;Lvx2;)V

    new-instance v3, Lh98;

    invoke-direct {v3, v2}, Lh98;-><init>(Lpr;)V

    invoke-virtual {v4, v8, v3}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/Class;Lvx2;)V

    const-class v3, Landroid/graphics/Bitmap;

    invoke-virtual {v4, v12, v6, v3, v15}, Lcom/bumptech/glide/Registry;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Li47;)V

    invoke-virtual {v4, v12, v8, v3, v10}, Lcom/bumptech/glide/Registry;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Li47;)V

    move-object/from16 v26, v0

    const-string v0, "robolectric"

    move-object/from16 v27, v7

    sget-object v7, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Ll36;

    invoke-direct {v0, v9}, Ll36;-><init>(Lvq2;)V

    invoke-virtual {v4, v12, v5, v3, v0}, Lcom/bumptech/glide/Registry;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Li47;)V

    :cond_3
    const-class v0, Landroid/content/res/AssetFileDescriptor;

    new-instance v9, Lkd9;

    move-object/from16 v28, v7

    new-instance v7, Lkd9$c;

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    invoke-direct {v9, v1, v7}, Lkd9;-><init>(Lij0;Lkd9$e;)V

    invoke-virtual {v4, v12, v0, v3, v9}, Lcom/bumptech/glide/Registry;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Li47;)V

    move-object/from16 v7, v19

    invoke-virtual {v4, v12, v5, v3, v7}, Lcom/bumptech/glide/Registry;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Li47;)V

    sget-object v9, Lm59$a;->a:Lm59$a;

    invoke-virtual {v4, v3, v3, v9}, Lcom/bumptech/glide/Registry;->c(Ljava/lang/Class;Ljava/lang/Class;Loc5;)V

    move-object/from16 v19, v0

    new-instance v0, Lk59;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v4, v12, v3, v3, v0}, Lcom/bumptech/glide/Registry;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Li47;)V

    invoke-virtual {v4, v3, v13}, Lcom/bumptech/glide/Registry;->b(Ljava/lang/Class;Ll47;)V

    const-class v0, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v29, v3

    new-instance v3, Lvi0;

    move-object/from16 v30, v12

    move-object/from16 v12, v18

    invoke-direct {v3, v12, v15}, Lvi0;-><init>(Landroid/content/res/Resources;Li47;)V

    move-object/from16 v15, v17

    invoke-virtual {v4, v15, v6, v0, v3}, Lcom/bumptech/glide/Registry;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Li47;)V

    new-instance v3, Lvi0;

    invoke-direct {v3, v12, v10}, Lvi0;-><init>(Landroid/content/res/Resources;Li47;)V

    invoke-virtual {v4, v15, v8, v0, v3}, Lcom/bumptech/glide/Registry;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Li47;)V

    new-instance v3, Lvi0;

    invoke-direct {v3, v12, v7}, Lvi0;-><init>(Landroid/content/res/Resources;Li47;)V

    invoke-virtual {v4, v15, v5, v0, v3}, Lcom/bumptech/glide/Registry;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Li47;)V

    new-instance v3, Lwi0;

    invoke-direct {v3, v1, v13}, Lwi0;-><init>(Lij0;Lyi0;)V

    invoke-virtual {v4, v0, v3}, Lcom/bumptech/glide/Registry;->b(Ljava/lang/Class;Ll47;)V

    const-class v3, Lup3;

    new-instance v7, Li98;

    move-object/from16 v10, v16

    invoke-direct {v7, v14, v10, v2}, Li98;-><init>(Ljava/util/ArrayList;Lxw0;Lpr;)V

    invoke-virtual {v4, v11, v8, v3, v7}, Lcom/bumptech/glide/Registry;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Li47;)V

    invoke-virtual {v4, v11, v6, v3, v10}, Lcom/bumptech/glide/Registry;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Li47;)V

    new-instance v7, Lc84;

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v4, v3, v7}, Lcom/bumptech/glide/Registry;->b(Ljava/lang/Class;Ll47;)V

    const-class v7, Ltp3;

    invoke-virtual {v4, v7, v7, v9}, Lcom/bumptech/glide/Registry;->c(Ljava/lang/Class;Ljava/lang/Class;Loc5;)V

    new-instance v10, Laq3;

    invoke-direct {v10, v1}, Laq3;-><init>(Lij0;)V

    move-object/from16 v13, v29

    move-object/from16 v11, v30

    invoke-virtual {v4, v11, v7, v13, v10}, Lcom/bumptech/glide/Registry;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Li47;)V

    const-class v7, Landroid/net/Uri;

    move-object/from16 v11, p0

    move-object/from16 v14, v26

    move-object/from16 v10, v27

    invoke-virtual {v4, v11, v7, v10, v14}, Lcom/bumptech/glide/Registry;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Li47;)V

    new-instance v15, Lf47;

    invoke-direct {v15, v14, v1}, Lf47;-><init>(Lk47;Lij0;)V

    invoke-virtual {v4, v11, v7, v13, v15}, Lcom/bumptech/glide/Registry;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Li47;)V

    new-instance v14, Lzw0$a;

    invoke-direct {v14}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v4, v14}, Lcom/bumptech/glide/Registry;->h(Lcom/bumptech/glide/load/data/a$a;)V

    const-class v14, Ljava/io/File;

    new-instance v15, Lww0$b;

    invoke-direct {v15}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v4, v14, v6, v15}, Lcom/bumptech/glide/Registry;->c(Ljava/lang/Class;Ljava/lang/Class;Loc5;)V

    new-instance v15, Lo93$e;

    move-object/from16 p0, v3

    new-instance v3, Lq93;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    invoke-direct {v15, v3}, Lo93$a;-><init>(Lo93$d;)V

    invoke-virtual {v4, v14, v8, v15}, Lcom/bumptech/glide/Registry;->c(Ljava/lang/Class;Ljava/lang/Class;Loc5;)V

    new-instance v3, Lh93;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v4, v11, v14, v14, v3}, Lcom/bumptech/glide/Registry;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Li47;)V

    new-instance v3, Lo93$b;

    new-instance v15, Lp93;

    invoke-direct {v15}, Ljava/lang/Object;-><init>()V

    invoke-direct {v3, v15}, Lo93$a;-><init>(Lo93$d;)V

    invoke-virtual {v4, v14, v5, v3}, Lcom/bumptech/glide/Registry;->c(Ljava/lang/Class;Ljava/lang/Class;Loc5;)V

    invoke-virtual {v4, v14, v14, v9}, Lcom/bumptech/glide/Registry;->c(Ljava/lang/Class;Ljava/lang/Class;Loc5;)V

    new-instance v3, Lcom/bumptech/glide/load/data/c$a;

    invoke-direct {v3, v2}, Lcom/bumptech/glide/load/data/c$a;-><init>(Lpr;)V

    invoke-virtual {v4, v3}, Lcom/bumptech/glide/Registry;->h(Lcom/bumptech/glide/load/data/a$a;)V

    const-string v2, "robolectric"

    move-object/from16 v3, v28

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    new-instance v2, Lcom/bumptech/glide/load/data/ParcelFileDescriptorRewinder$a;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v4, v2}, Lcom/bumptech/glide/Registry;->h(Lcom/bumptech/glide/load/data/a$a;)V

    :cond_4
    new-instance v2, Lkn2$c;

    move-object/from16 v3, v22

    invoke-direct {v2, v3}, Lkn2$c;-><init>(Landroid/content/Context;)V

    new-instance v15, Lkn2$a;

    invoke-direct {v15, v3}, Lkn2$a;-><init>(Landroid/content/Context;)V

    move-object/from16 v16, v1

    new-instance v1, Lkn2$b;

    invoke-direct {v1, v3}, Lkn2$b;-><init>(Landroid/content/Context;)V

    move-object/from16 v17, v0

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v4, v0, v8, v2}, Lcom/bumptech/glide/Registry;->c(Ljava/lang/Class;Ljava/lang/Class;Loc5;)V

    move-object/from16 v29, v13

    const-class v13, Ljava/lang/Integer;

    invoke-virtual {v4, v13, v8, v2}, Lcom/bumptech/glide/Registry;->c(Ljava/lang/Class;Ljava/lang/Class;Loc5;)V

    move-object/from16 v2, v19

    invoke-virtual {v4, v0, v2, v15}, Lcom/bumptech/glide/Registry;->c(Ljava/lang/Class;Ljava/lang/Class;Loc5;)V

    invoke-virtual {v4, v13, v2, v15}, Lcom/bumptech/glide/Registry;->c(Ljava/lang/Class;Ljava/lang/Class;Loc5;)V

    invoke-virtual {v4, v0, v10, v1}, Lcom/bumptech/glide/Registry;->c(Ljava/lang/Class;Ljava/lang/Class;Loc5;)V

    invoke-virtual {v4, v13, v10, v1}, Lcom/bumptech/glide/Registry;->c(Ljava/lang/Class;Ljava/lang/Class;Loc5;)V

    new-instance v1, Lx47$b;

    invoke-direct {v1, v3}, Lx47$b;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v7, v8, v1}, Lcom/bumptech/glide/Registry;->c(Ljava/lang/Class;Ljava/lang/Class;Loc5;)V

    new-instance v1, Lx47$a;

    invoke-direct {v1, v3}, Lx47$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v7, v2, v1}, Lcom/bumptech/glide/Registry;->c(Ljava/lang/Class;Ljava/lang/Class;Loc5;)V

    new-instance v1, Lq47$c;

    invoke-direct {v1, v12}, Lq47$c;-><init>(Landroid/content/res/Resources;)V

    new-instance v15, Lq47$a;

    invoke-direct {v15, v12}, Lq47$a;-><init>(Landroid/content/res/Resources;)V

    move-object/from16 v18, v11

    new-instance v11, Lq47$b;

    invoke-direct {v11, v12}, Lq47$b;-><init>(Landroid/content/res/Resources;)V

    invoke-virtual {v4, v13, v7, v1}, Lcom/bumptech/glide/Registry;->c(Ljava/lang/Class;Ljava/lang/Class;Loc5;)V

    invoke-virtual {v4, v0, v7, v1}, Lcom/bumptech/glide/Registry;->c(Ljava/lang/Class;Ljava/lang/Class;Loc5;)V

    invoke-virtual {v4, v13, v2, v15}, Lcom/bumptech/glide/Registry;->c(Ljava/lang/Class;Ljava/lang/Class;Loc5;)V

    invoke-virtual {v4, v0, v2, v15}, Lcom/bumptech/glide/Registry;->c(Ljava/lang/Class;Ljava/lang/Class;Loc5;)V

    invoke-virtual {v4, v13, v8, v11}, Lcom/bumptech/glide/Registry;->c(Ljava/lang/Class;Ljava/lang/Class;Loc5;)V

    invoke-virtual {v4, v0, v8, v11}, Lcom/bumptech/glide/Registry;->c(Ljava/lang/Class;Ljava/lang/Class;Loc5;)V

    const-class v0, Ljava/lang/String;

    new-instance v1, Lf92$b;

    invoke-direct {v1}, Lf92$b;-><init>()V

    invoke-virtual {v4, v0, v8, v1}, Lcom/bumptech/glide/Registry;->c(Ljava/lang/Class;Ljava/lang/Class;Loc5;)V

    new-instance v1, Lf92$b;

    invoke-direct {v1}, Lf92$b;-><init>()V

    invoke-virtual {v4, v7, v8, v1}, Lcom/bumptech/glide/Registry;->c(Ljava/lang/Class;Ljava/lang/Class;Loc5;)V

    new-instance v1, Lx98$c;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v4, v0, v8, v1}, Lcom/bumptech/glide/Registry;->c(Ljava/lang/Class;Ljava/lang/Class;Loc5;)V

    new-instance v1, Lx98$b;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v4, v0, v5, v1}, Lcom/bumptech/glide/Registry;->c(Ljava/lang/Class;Ljava/lang/Class;Loc5;)V

    new-instance v1, Lx98$a;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v4, v0, v2, v1}, Lcom/bumptech/glide/Registry;->c(Ljava/lang/Class;Ljava/lang/Class;Loc5;)V

    new-instance v0, Lgs$c;

    invoke-virtual {v3}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-direct {v0, v1}, Lgs$c;-><init>(Landroid/content/res/AssetManager;)V

    invoke-virtual {v4, v7, v8, v0}, Lcom/bumptech/glide/Registry;->c(Ljava/lang/Class;Ljava/lang/Class;Loc5;)V

    new-instance v0, Lgs$b;

    invoke-virtual {v3}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-direct {v0, v1}, Lgs$b;-><init>(Landroid/content/res/AssetManager;)V

    invoke-virtual {v4, v7, v2, v0}, Lcom/bumptech/glide/Registry;->c(Ljava/lang/Class;Ljava/lang/Class;Loc5;)V

    new-instance v0, Le95$a;

    invoke-direct {v0, v3}, Le95$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v7, v8, v0}, Lcom/bumptech/glide/Registry;->c(Ljava/lang/Class;Ljava/lang/Class;Loc5;)V

    new-instance v0, Lg95$a;

    invoke-direct {v0, v3}, Lg95$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v7, v8, v0}, Lcom/bumptech/glide/Registry;->c(Ljava/lang/Class;Ljava/lang/Class;Loc5;)V

    const/16 v0, 0x1d

    move/from16 v1, v21

    if-lt v1, v0, :cond_5

    new-instance v0, Lsu6$c;

    invoke-direct {v0, v3, v8}, Lsu6$a;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v4, v7, v8, v0}, Lcom/bumptech/glide/Registry;->c(Ljava/lang/Class;Ljava/lang/Class;Loc5;)V

    new-instance v0, Lsu6$b;

    invoke-direct {v0, v3, v5}, Lsu6$a;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v4, v7, v5, v0}, Lcom/bumptech/glide/Registry;->c(Ljava/lang/Class;Ljava/lang/Class;Loc5;)V

    :cond_5
    const-class v0, Lvq3;

    move-object/from16 v1, v20

    iget-object v1, v1, Lyq3;->a:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    new-instance v1, Ld99$d;

    move-object/from16 v11, v25

    invoke-direct {v1, v11, v0}, Ld99$d;-><init>(Landroid/content/ContentResolver;Z)V

    invoke-virtual {v4, v7, v8, v1}, Lcom/bumptech/glide/Registry;->c(Ljava/lang/Class;Ljava/lang/Class;Loc5;)V

    new-instance v1, Ld99$b;

    invoke-direct {v1, v11, v0}, Ld99$b;-><init>(Landroid/content/ContentResolver;Z)V

    invoke-virtual {v4, v7, v5, v1}, Lcom/bumptech/glide/Registry;->c(Ljava/lang/Class;Ljava/lang/Class;Loc5;)V

    new-instance v1, Ld99$a;

    invoke-direct {v1, v11, v0}, Ld99$a;-><init>(Landroid/content/ContentResolver;Z)V

    invoke-virtual {v4, v7, v2, v1}, Lcom/bumptech/glide/Registry;->c(Ljava/lang/Class;Ljava/lang/Class;Loc5;)V

    new-instance v0, Li99$a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v4, v7, v8, v0}, Lcom/bumptech/glide/Registry;->c(Ljava/lang/Class;Ljava/lang/Class;Loc5;)V

    const-class v0, Ljava/net/URL;

    new-instance v1, Lh99$a;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v4, v0, v8, v1}, Lcom/bumptech/glide/Registry;->c(Ljava/lang/Class;Ljava/lang/Class;Loc5;)V

    new-instance v0, Ld95$a;

    invoke-direct {v0, v3}, Ld95$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v7, v14, v0}, Lcom/bumptech/glide/Registry;->c(Ljava/lang/Class;Ljava/lang/Class;Loc5;)V

    const-class v0, Lcr3;

    new-instance v1, Lzy3$a;

    invoke-direct {v1}, Lzy3$a;-><init>()V

    invoke-virtual {v4, v0, v8, v1}, Lcom/bumptech/glide/Registry;->c(Ljava/lang/Class;Ljava/lang/Class;Loc5;)V

    const-class v0, [B

    new-instance v1, Lqw0$a;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v4, v0, v6, v1}, Lcom/bumptech/glide/Registry;->c(Ljava/lang/Class;Ljava/lang/Class;Loc5;)V

    new-instance v1, Lqw0$d;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v4, v0, v8, v1}, Lcom/bumptech/glide/Registry;->c(Ljava/lang/Class;Ljava/lang/Class;Loc5;)V

    invoke-virtual {v4, v7, v7, v9}, Lcom/bumptech/glide/Registry;->c(Ljava/lang/Class;Ljava/lang/Class;Loc5;)V

    invoke-virtual {v4, v10, v10, v9}, Lcom/bumptech/glide/Registry;->c(Ljava/lang/Class;Ljava/lang/Class;Loc5;)V

    new-instance v1, Ll59;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    move-object/from16 v11, v18

    invoke-virtual {v4, v11, v10, v10, v1}, Lcom/bumptech/glide/Registry;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Li47;)V

    new-instance v1, Lxi0;

    invoke-direct {v1, v12}, Lxi0;-><init>(Ljava/lang/Object;)V

    move-object/from16 v2, v17

    move-object/from16 v13, v29

    invoke-virtual {v4, v13, v2, v1}, Lcom/bumptech/glide/Registry;->i(Ljava/lang/Class;Ljava/lang/Class;Lv47;)V

    move-object/from16 v1, v23

    invoke-virtual {v4, v13, v0, v1}, Lcom/bumptech/glide/Registry;->i(Ljava/lang/Class;Ljava/lang/Class;Lv47;)V

    new-instance v3, Lbn2;

    move-object/from16 v5, v16

    move-object/from16 v7, v24

    invoke-direct {v3, v5, v1, v7}, Lbn2;-><init>(Lij0;Lui0;Lvp3;)V

    invoke-virtual {v4, v10, v0, v3}, Lcom/bumptech/glide/Registry;->i(Ljava/lang/Class;Ljava/lang/Class;Lv47;)V

    move-object/from16 v1, p0

    invoke-virtual {v4, v1, v0, v7}, Lcom/bumptech/glide/Registry;->i(Ljava/lang/Class;Ljava/lang/Class;Lv47;)V

    new-instance v0, Lkd9;

    new-instance v1, Lkd9$d;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-direct {v0, v5, v1}, Lkd9;-><init>(Lij0;Lkd9$e;)V

    const-string v1, "legacy_append"

    invoke-virtual {v4, v1, v6, v13, v0}, Lcom/bumptech/glide/Registry;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Li47;)V

    new-instance v1, Lvi0;

    invoke-direct {v1, v12, v0}, Lvi0;-><init>(Landroid/content/res/Resources;Li47;)V

    const-string v0, "legacy_append"

    invoke-virtual {v4, v0, v6, v2, v1}, Lcom/bumptech/glide/Registry;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Li47;)V

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lzq3;

    :try_start_3
    invoke-interface {v1}, Lzq3;->a()V
    :try_end_3
    .catch Ljava/lang/AbstractMethodError; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Attempting to register a Glide v3 module. If you see this, you or one of your dependencies may be including Glide v3 even though you\'re using Glide v4. You\'ll need to find and remove (or update) the offending dependency. The v3 module name is: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lh2;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0

    :cond_6
    return-object v4

    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit v14
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method
