.class public final Lyads/uq5;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lll3;


# direct methods
.method public constructor <init>(Lll3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/uq5;->a:Lll3;

    return-void
.end method

.method public static final a(Lr07;Lp07;[Lyads/tq5;Lyads/mb1;Lyads/uq5;Ljava/util/ArrayList;Ljava/lang/RuntimeException;)V
    .locals 2

    .line 211
    iget-object p0, p0, Lr07;->b:Ljava/lang/Object;

    .line 212
    iget p1, p1, Lp07;->b:I

    array-length p2, p2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Exception at statement \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "\' ("

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " out "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    .line 213
    invoke-static {v0, p0, p2}, Ll2;->e(Ljava/lang/StringBuilder;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    .line 214
    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p1, :cond_1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_0

    return-void

    .line 215
    :cond_0
    new-instance p1, Lyads/z32;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p6, p2}, Lyads/z32;-><init>(Ljava/lang/String;Ljava/lang/Exception;I)V

    invoke-virtual {p5, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 216
    :cond_1
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 217
    new-instance p1, Landroid/database/SQLException;

    invoke-direct {p1, p0, p6}, Landroid/database/SQLException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method


# virtual methods
.method public final varargs a(Lyads/mb1;[Lyads/tq5;)Lyads/mp2;
    .locals 15

    move-object/from16 v3, p2

    new-instance v2, Lp07;

    invoke-direct {v2}, Lp07;-><init>()V

    const/4 v8, 0x1

    iput v8, v2, Lp07;->b:I

    new-instance v1, Lr07;

    invoke-direct {v1}, Lr07;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const-string v9, "Error during statements execution."

    const/4 v10, 0x0

    const/4 v4, 0x0

    :try_start_0
    iget-object v0, p0, Lyads/uq5;->a:Lll3;

    invoke-interface {v0}, Lll3;->invoke()Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lyads/te;
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    new-instance v12, Lyads/z00;

    invoke-direct {v12, v11}, Lyads/z00;-><init>(Lyads/te;)V
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v0, v11, Lyads/te;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    array-length v13, v3

    move v14, v10

    :goto_0
    if-ge v14, v13, :cond_0

    aget-object v0, v3, v14

    iput-object v0, v1, Lr07;->b:Ljava/lang/Object;
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-interface {v0, v12}, Lyads/tq5;->a(Lyads/z00;)V
    :try_end_3
    .catch Landroid/database/SQLException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v5, p0

    move-object/from16 v4, p1

    move-object v7, v0

    :try_start_4
    invoke-static/range {v1 .. v7}, Lyads/uq5;->a(Lr07;Lp07;[Lyads/tq5;Lyads/mb1;Lyads/uq5;Ljava/util/ArrayList;Ljava/lang/RuntimeException;)V

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v5, p0

    move-object/from16 v4, p1

    move-object/from16 v3, p2

    move-object v7, v0

    invoke-static/range {v1 .. v7}, Lyads/uq5;->a(Lr07;Lp07;[Lyads/tq5;Lyads/mb1;Lyads/uq5;Ljava/util/ArrayList;Ljava/lang/RuntimeException;)V

    :goto_1
    iget v0, v2, Lp07;->b:I

    add-int/2addr v0, v8

    iput v0, v2, Lp07;->b:I

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v3, p2

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto/16 :goto_b

    :catch_2
    move-exception v0

    move-object p0, v0

    goto :goto_2

    :catch_3
    move-exception v0

    move-object p0, v0

    goto :goto_3

    :cond_0
    iget-object p0, v11, Lyads/te;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_4
    .catch Landroid/database/SQLException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-static {v11}, Lyads/up5;->a(Lyads/te;)V

    invoke-virtual {v12}, Lyads/z00;->close()V

    invoke-static {v11}, Lyads/up5;->a(Ljava/io/Closeable;)V

    goto/16 :goto_9

    :goto_2
    move-object v4, v11

    goto :goto_5

    :goto_3
    move-object v4, v11

    goto :goto_7

    :catchall_1
    move-exception v0

    move-object p0, v0

    move-object v12, v4

    move-object v4, v11

    goto :goto_a

    :catch_4
    move-exception v0

    move-object p0, v0

    goto :goto_4

    :catch_5
    move-exception v0

    move-object p0, v0

    goto :goto_6

    :catchall_2
    move-exception v0

    move-object p0, v0

    move-object v12, v4

    goto :goto_a

    :catch_6
    move-exception v0

    move-object p0, v0

    move-object v11, v4

    goto :goto_4

    :catch_7
    move-exception v0

    move-object p0, v0

    move-object v11, v4

    goto :goto_6

    :goto_4
    move-object v12, v4

    goto :goto_2

    :goto_5
    :try_start_5
    new-instance v0, Lyads/z32;

    invoke-direct {v0, v9, p0, v10}, Lyads/z32;-><init>(Ljava/lang/String;Ljava/lang/Exception;I)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    if-eqz v4, :cond_1

    invoke-static {v4}, Lyads/up5;->a(Lyads/te;)V

    :cond_1
    if-eqz v12, :cond_2

    invoke-virtual {v12}, Lyads/z00;->close()V

    :cond_2
    if-eqz v4, :cond_5

    goto :goto_8

    :catchall_3
    move-exception v0

    move-object p0, v0

    goto :goto_a

    :goto_6
    move-object v12, v4

    goto :goto_3

    :goto_7
    :try_start_6
    new-instance v0, Lyads/z32;

    invoke-direct {v0, v9, p0, v10}, Lyads/z32;-><init>(Ljava/lang/String;Ljava/lang/Exception;I)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    if-eqz v4, :cond_3

    invoke-static {v4}, Lyads/up5;->a(Lyads/te;)V

    :cond_3
    if-eqz v12, :cond_4

    invoke-virtual {v12}, Lyads/z00;->close()V

    :cond_4
    if-eqz v4, :cond_5

    :goto_8
    invoke-static {v4}, Lyads/up5;->a(Ljava/io/Closeable;)V

    :cond_5
    :goto_9
    new-instance p0, Lyads/mp2;

    invoke-direct {p0, v6}, Lyads/mp2;-><init>(Ljava/util/ArrayList;)V

    return-object p0

    :goto_a
    move-object v11, v4

    :goto_b
    if-eqz v11, :cond_6

    invoke-static {v11}, Lyads/up5;->a(Lyads/te;)V

    :cond_6
    if-eqz v12, :cond_7

    invoke-virtual {v12}, Lyads/z00;->close()V

    :cond_7
    if-eqz v11, :cond_8

    invoke-static {v11}, Lyads/up5;->a(Ljava/io/Closeable;)V

    :cond_8
    throw p0
.end method

.method public final varargs a([Lyads/tq5;)V
    .locals 2

    .line 218
    sget-object v0, Lyads/mb1;->b:Lyads/mb1;

    array-length v1, p1

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lyads/tq5;

    invoke-virtual {p0, v0, p1}, Lyads/uq5;->a(Lyads/mb1;[Lyads/tq5;)Lyads/mp2;

    return-void
.end method
