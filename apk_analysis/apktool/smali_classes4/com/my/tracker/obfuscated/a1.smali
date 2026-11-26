.class public abstract Lcom/my/tracker/obfuscated/a1;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private static synthetic a(Landroid/content/Context;Lcom/my/tracker/obfuscated/c3;Lcom/my/tracker/obfuscated/i0;Lcom/my/tracker/obfuscated/a2;)V
    .locals 22

    move-object/from16 v0, p2

    move-object/from16 v6, p3

    invoke-static/range {p0 .. p0}, Lcom/my/tracker/obfuscated/w;->a(Landroid/content/Context;)Landroid/content/pm/PackageInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1c

    if-lt v2, v3, :cond_0

    invoke-virtual {v1}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    iget v2, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    :goto_0
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    move-object v4, v2

    goto :goto_1

    :cond_1
    const-string v2, ""

    move-object v3, v2

    move-object v4, v3

    :goto_1
    invoke-static/range {p0 .. p0}, Lcom/my/tracker/obfuscated/t1;->a(Landroid/content/Context;)Lcom/my/tracker/obfuscated/t1;

    move-result-object v7

    invoke-virtual {v7}, Lcom/my/tracker/obfuscated/t1;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/my/tracker/obfuscated/c3;->g()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7}, Lcom/my/tracker/obfuscated/t1;->c()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    const/4 v9, 0x2

    const/4 v10, 0x1

    if-nez v8, :cond_4

    const-string v2, "InstallHandler: tracking install"

    invoke-static {v2}, Lcom/my/tracker/obfuscated/b3;->a(Ljava/lang/String;)V

    if-eqz v1, :cond_2

    iget-wide v1, v1, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    invoke-static {v1, v2}, Lcom/my/tracker/obfuscated/z2;->b(J)J

    move-result-wide v1

    :goto_2
    move-object/from16 v8, p0

    move-object/from16 v13, p1

    goto :goto_3

    :cond_2
    const-wide/16 v1, 0x0

    goto :goto_2

    :goto_3
    invoke-static {v0, v13, v8}, Lcom/my/tracker/obfuscated/s1;->a(Lcom/my/tracker/obfuscated/i0;Lcom/my/tracker/obfuscated/c3;Landroid/content/Context;)Lcom/my/tracker/obfuscated/s1;

    move-result-object v14

    invoke-virtual {v14}, Lcom/my/tracker/obfuscated/s1;->a()Lcom/my/tracker/obfuscated/s1$a;

    move-result-object v15

    invoke-static {v8}, Lcom/my/tracker/obfuscated/w;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v1, v2, v8, v15}, Lcom/my/tracker/obfuscated/i0;->a(JLjava/lang/String;Lcom/my/tracker/obfuscated/s1$a;)V

    if-nez v15, :cond_3

    invoke-virtual {v14}, Lcom/my/tracker/obfuscated/s1;->c()V

    :cond_3
    invoke-virtual {v7, v5}, Lcom/my/tracker/obfuscated/t1;->e(Ljava/lang/String;)V

    move v1, v10

    goto :goto_5

    :cond_4
    move-object/from16 v8, p0

    move-object/from16 v13, p1

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "InstallHandler: tracking update"

    invoke-static {v1}, Lcom/my/tracker/obfuscated/b3;->a(Ljava/lang/String;)V

    goto :goto_4

    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "InstallHandler: tracking update from"

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " to "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/my/tracker/obfuscated/b3;->a(Ljava/lang/String;)V

    :goto_4
    invoke-virtual {v7}, Lcom/my/tracker/obfuscated/t1;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8}, Lcom/my/tracker/obfuscated/w;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/my/tracker/obfuscated/i0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move v1, v9

    goto :goto_5

    :cond_6
    const/4 v1, 0x0

    :goto_5
    invoke-virtual {v7}, Lcom/my/tracker/obfuscated/t1;->j()J

    move-result-wide v14

    const-wide/16 v16, 0x0

    invoke-static {}, Lcom/my/tracker/obfuscated/z2;->a()J

    move-result-wide v11

    invoke-virtual {v13}, Lcom/my/tracker/obfuscated/c3;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_9

    sub-long v18, v11, v14

    const-wide/32 v20, 0x93a80

    cmp-long v5, v18, v20

    if-ltz v5, :cond_8

    cmp-long v5, v14, v16

    if-nez v5, :cond_7

    goto :goto_6

    :cond_7
    const-string v0, "InstallHandler: can\'t track apkPreinstallParams, tracking period has ended"

    invoke-static {v0}, Lcom/my/tracker/obfuscated/b3;->a(Ljava/lang/String;)V

    goto :goto_7

    :cond_8
    :goto_6
    const-string v5, "InstallHandler: tracking apkPreinstallParams"

    invoke-static {v5}, Lcom/my/tracker/obfuscated/b3;->a(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/my/tracker/obfuscated/i0;->d(Ljava/lang/String;)V

    :cond_9
    :goto_7
    if-nez v1, :cond_a

    const-string v0, "InstallHandler: no install/update"

    invoke-static {v0}, Lcom/my/tracker/obfuscated/b3;->a(Ljava/lang/String;)V

    invoke-virtual {v6, v14, v15}, Lcom/my/tracker/obfuscated/a2;->a(J)V

    return-void

    :cond_a
    if-ne v1, v10, :cond_b

    invoke-virtual {v7, v11, v12}, Lcom/my/tracker/obfuscated/t1;->b(J)V

    invoke-virtual {v6, v11, v12}, Lcom/my/tracker/obfuscated/a2;->a(J)V

    goto :goto_8

    :cond_b
    if-ne v1, v9, :cond_c

    invoke-virtual {v6, v14, v15}, Lcom/my/tracker/obfuscated/a2;->a(J)V

    :cond_c
    :goto_8
    invoke-virtual {v7, v4}, Lcom/my/tracker/obfuscated/t1;->d(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Lcom/my/tracker/obfuscated/t1;->g(Ljava/lang/String;)V

    invoke-virtual {v7, v11, v12}, Lcom/my/tracker/obfuscated/t1;->c(J)V

    return-void
.end method

.method public static a(Lcom/my/tracker/obfuscated/c3;Lcom/my/tracker/obfuscated/i0;Lcom/my/tracker/obfuscated/a2;Landroid/content/Context;)V
    .locals 1

    .line 253
    new-instance v0, Lym9;

    invoke-direct {v0, p3, p0, p1, p2}, Lym9;-><init>(Landroid/content/Context;Lcom/my/tracker/obfuscated/c3;Lcom/my/tracker/obfuscated/i0;Lcom/my/tracker/obfuscated/a2;)V

    invoke-static {v0}, Lcom/my/tracker/obfuscated/m;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic b(Landroid/content/Context;Lcom/my/tracker/obfuscated/c3;Lcom/my/tracker/obfuscated/i0;Lcom/my/tracker/obfuscated/a2;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/my/tracker/obfuscated/a1;->a(Landroid/content/Context;Lcom/my/tracker/obfuscated/c3;Lcom/my/tracker/obfuscated/i0;Lcom/my/tracker/obfuscated/a2;)V

    return-void
.end method
