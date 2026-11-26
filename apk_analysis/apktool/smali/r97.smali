.class public final synthetic Lr97;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu97$a;


# instance fields
.field public final synthetic b:Lu97;

.field public final synthetic c:Ljava/util/ArrayList;

.field public final synthetic d:Lhz;


# direct methods
.method public synthetic constructor <init>(Lu97;Ljava/util/ArrayList;Lhz;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr97;->b:Lu97;

    iput-object p2, p0, Lr97;->c:Ljava/util/ArrayList;

    iput-object p3, p0, Lr97;->d:Lhz;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    check-cast v1, Landroid/database/Cursor;

    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_c

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const/4 v6, 0x7

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_0

    move v6, v7

    goto :goto_1

    :cond_0
    move v6, v2

    :goto_1
    new-instance v8, Lsy$a;

    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    iput-object v9, v8, Lsy$a;->f:Ljava/util/HashMap;

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_b

    iput-object v7, v8, Lsy$a;->a:Ljava/lang/String;

    const/4 v3, 0x2

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v8, Lsy$a;->d:Ljava/lang/Long;

    const/4 v3, 0x3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v8, Lsy$a;->e:Ljava/lang/Long;

    const/4 v3, 0x4

    if-eqz v6, :cond_2

    new-instance v2, Lsx2;

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    sget-object v3, Lu97;->g:Liy2;

    goto :goto_2

    :cond_1
    new-instance v6, Liy2;

    invoke-direct {v6, v3}, Liy2;-><init>(Ljava/lang/String;)V

    move-object v3, v6

    :goto_2
    const/4 v6, 0x5

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v6

    invoke-direct {v2, v3, v6}, Lsx2;-><init>(Liy2;[B)V

    iput-object v2, v8, Lsy$a;->c:Lsx2;

    goto :goto_6

    :cond_2
    new-instance v6, Lsx2;

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3

    sget-object v3, Lu97;->g:Liy2;

    goto :goto_3

    :cond_3
    new-instance v7, Liy2;

    invoke-direct {v7, v3}, Liy2;-><init>(Ljava/lang/String;)V

    move-object v3, v7

    :goto_3
    iget-object v7, v0, Lr97;->b:Lu97;

    invoke-virtual {v7}, Lu97;->p()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v9

    const-string v7, "bytes"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v13

    const/4 v15, 0x0

    const-string v16, "sequence_num"

    const-string v10, "event_payloads"

    const-string v12, "event_id = ?"

    const/4 v14, 0x0

    invoke-virtual/range {v9 .. v16}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    :try_start_0
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    move v10, v2

    :goto_4
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    array-length v11, v11

    add-int/2addr v10, v11

    goto :goto_4

    :cond_4
    new-array v10, v10, [B

    move v11, v2

    move v12, v11

    :goto_5
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v11, v13, :cond_5

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [B

    array-length v14, v13

    invoke-static {v13, v2, v10, v12, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v13, v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/2addr v12, v13

    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    :cond_5
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    invoke-direct {v6, v3, v10}, Lsx2;-><init>(Liy2;[B)V

    iput-object v6, v8, Lsy$a;->c:Lsx2;

    :goto_6
    const/4 v2, 0x6

    invoke-interface {v1, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_6

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v8, Lsy$a;->b:Ljava/lang/Integer;

    :cond_6
    const/16 v2, 0x8

    invoke-interface {v1, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_7

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v8, Lsy$a;->g:Ljava/lang/Integer;

    :cond_7
    const/16 v2, 0x9

    invoke-interface {v1, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_8

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v8, Lsy$a;->h:Ljava/lang/String;

    :cond_8
    const/16 v2, 0xa

    invoke-interface {v1, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_9

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    iput-object v2, v8, Lsy$a;->i:[B

    :cond_9
    const/16 v2, 0xb

    invoke-interface {v1, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_a

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    iput-object v2, v8, Lsy$a;->j:[B

    :cond_a
    invoke-virtual {v8}, Lsy$a;->b()Lsy;

    move-result-object v2

    new-instance v3, Lcz;

    iget-object v6, v0, Lr97;->d:Lhz;

    invoke-direct {v3, v4, v5, v6, v2}, Lcz;-><init>(JLs29;Lz03;)V

    iget-object v2, v0, Lr97;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_b
    const-string v0, "Null transportName"

    invoke-static {v0}, Lo2;->d(Ljava/lang/String;)V

    :cond_c
    return-object v3
.end method
