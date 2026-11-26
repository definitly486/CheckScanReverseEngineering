.class public final Lcom/google/android/gms/common/data/DataHolder;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/common/data/DataHolder$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/common/data/DataHolder;",
            ">;"
        }
    .end annotation
.end field

.field public static final l:Lcom/google/android/gms/common/data/a;


# instance fields
.field public final b:I

.field public final c:[Ljava/lang/String;

.field public d:Landroid/os/Bundle;

.field public final e:[Landroid/database/CursorWindow;

.field public final f:I

.field public final g:Landroid/os/Bundle;

.field public h:[I

.field public i:I

.field public j:I

.field public final k:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/common/data/zad;

    invoke-direct {v0}, Lcom/google/android/gms/common/data/zad;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    new-instance v0, Lcom/google/android/gms/common/data/a;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/data/DataHolder$Builder;-><init>([Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/common/data/DataHolder;->l:Lcom/google/android/gms/common/data/a;

    return-void
.end method

.method public constructor <init>(I[Ljava/lang/String;[Landroid/database/CursorWindow;ILandroid/os/Bundle;)V
    .locals 1

    .line 124
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/common/data/DataHolder;->j:I

    iput-boolean v0, p0, Lcom/google/android/gms/common/data/DataHolder;->k:Z

    iput p1, p0, Lcom/google/android/gms/common/data/DataHolder;->b:I

    iput-object p2, p0, Lcom/google/android/gms/common/data/DataHolder;->c:[Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/common/data/DataHolder;->e:[Landroid/database/CursorWindow;

    iput p4, p0, Lcom/google/android/gms/common/data/DataHolder;->f:I

    iput-object p5, p0, Lcom/google/android/gms/common/data/DataHolder;->g:Landroid/os/Bundle;

    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;ILandroid/os/Bundle;)V
    .locals 7

    new-instance v0, Lcom/google/android/gms/common/sqlite/CursorWrapper;

    invoke-direct {v0, p1}, Lcom/google/android/gms/common/sqlite/CursorWrapper;-><init>(Landroid/database/Cursor;)V

    invoke-virtual {v0}, Landroid/database/CursorWrapper;->getColumnNames()[Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    invoke-virtual {v0}, Landroid/database/CursorWrapper;->getCount()I

    move-result v2

    invoke-virtual {v0}, Lcom/google/android/gms/common/sqlite/CursorWrapper;->getWindow()Landroid/database/CursorWindow;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/database/CursorWindow;->getStartPosition()I

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteClosable;->acquireReference()V

    invoke-virtual {v0, v4}, Lcom/google/android/gms/common/sqlite/CursorWrapper;->setWindow(Landroid/database/CursorWindow;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Landroid/database/CursorWindow;->getNumRows()I

    move-result v3

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_0
    move v3, v5

    :goto_0
    if-ge v3, v2, :cond_3

    invoke-virtual {v0, v3}, Landroid/database/CursorWrapper;->moveToPosition(I)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v0}, Lcom/google/android/gms/common/sqlite/CursorWrapper;->getWindow()Landroid/database/CursorWindow;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteClosable;->acquireReference()V

    invoke-virtual {v0, v4}, Lcom/google/android/gms/common/sqlite/CursorWrapper;->setWindow(Landroid/database/CursorWindow;)V

    goto :goto_1

    :cond_1
    new-instance v6, Landroid/database/CursorWindow;

    invoke-direct {v6, v5}, Landroid/database/CursorWindow;-><init>(Z)V

    invoke-virtual {v6, v3}, Landroid/database/CursorWindow;->setStartPosition(I)V

    invoke-virtual {v0, v3, v6}, Lcom/google/android/gms/common/sqlite/CursorWrapper;->fillWindow(ILandroid/database/CursorWindow;)V

    :goto_1
    invoke-virtual {v6}, Landroid/database/CursorWindow;->getNumRows()I

    move-result v3

    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v6}, Landroid/database/CursorWindow;->getStartPosition()I

    move-result v3

    invoke-virtual {v6}, Landroid/database/CursorWindow;->getNumRows()I

    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/2addr v3, v6

    goto :goto_0

    :cond_3
    :goto_2
    invoke-virtual {v0}, Landroid/database/CursorWrapper;->close()V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Landroid/database/CursorWindow;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/database/CursorWindow;

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/google/android/gms/common/data/DataHolder;-><init>([Ljava/lang/String;[Landroid/database/CursorWindow;ILandroid/os/Bundle;)V

    return-void

    :goto_3
    invoke-virtual {v0}, Landroid/database/CursorWrapper;->close()V

    throw p0
.end method

.method public constructor <init>(Lcom/google/android/gms/common/data/DataHolder$Builder;I)V
    .locals 2

    .line 129
    iget-object v0, p1, Lcom/google/android/gms/common/data/DataHolder$Builder;->a:[Ljava/lang/String;

    .line 130
    invoke-static {p1}, Lcom/google/android/gms/common/data/DataHolder;->a(Lcom/google/android/gms/common/data/DataHolder$Builder;)[Landroid/database/CursorWindow;

    move-result-object p1

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/google/android/gms/common/data/DataHolder;-><init>([Ljava/lang/String;[Landroid/database/CursorWindow;ILandroid/os/Bundle;)V

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;[Landroid/database/CursorWindow;ILandroid/os/Bundle;)V
    .locals 1

    .line 125
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/common/data/DataHolder;->j:I

    iput-boolean v0, p0, Lcom/google/android/gms/common/data/DataHolder;->k:Z

    iput v0, p0, Lcom/google/android/gms/common/data/DataHolder;->b:I

    .line 126
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/common/data/DataHolder;->c:[Ljava/lang/String;

    .line 127
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/database/CursorWindow;

    iput-object p1, p0, Lcom/google/android/gms/common/data/DataHolder;->e:[Landroid/database/CursorWindow;

    iput p3, p0, Lcom/google/android/gms/common/data/DataHolder;->f:I

    iput-object p4, p0, Lcom/google/android/gms/common/data/DataHolder;->g:Landroid/os/Bundle;

    .line 128
    invoke-virtual {p0}, Lcom/google/android/gms/common/data/DataHolder;->zaa()V

    return-void
.end method

.method public static a(Lcom/google/android/gms/common/data/DataHolder$Builder;)[Landroid/database/CursorWindow;
    .locals 21

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gms/common/data/DataHolder$Builder;->a:[Ljava/lang/String;

    array-length v2, v1

    const-string v3, " - allocating new window."

    const-string v4, "Couldn\'t populate window data for row "

    const-string v5, ": "

    const-string v6, "Unsupported object for column "

    const-string v7, ")"

    const-string v8, "Allocating additional cursor window for large data set (row "

    const/4 v9, 0x0

    if-nez v2, :cond_0

    new-array v0, v9, [Landroid/database/CursorWindow;

    return-object v0

    :cond_0
    iget-object v0, v0, Lcom/google/android/gms/common/data/DataHolder$Builder;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-instance v10, Landroid/database/CursorWindow;

    invoke-direct {v10, v9}, Landroid/database/CursorWindow;-><init>(Z)V

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    array-length v12, v1

    invoke-virtual {v10, v12}, Landroid/database/CursorWindow;->setNumColumns(I)Z

    move v12, v9

    move v13, v12

    :goto_0
    if-ge v12, v2, :cond_10

    :try_start_0
    invoke-virtual {v10}, Landroid/database/CursorWindow;->allocRow()Z

    move-result v14
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v15, "DataHolder"

    if-nez v14, :cond_1

    :try_start_1
    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, 0x3d

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14, v10}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v15, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v10, Landroid/database/CursorWindow;

    invoke-direct {v10, v9}, Landroid/database/CursorWindow;-><init>(Z)V

    invoke-virtual {v10, v12}, Landroid/database/CursorWindow;->setStartPosition(I)V

    array-length v14, v1

    invoke-virtual {v10, v14}, Landroid/database/CursorWindow;->setNumColumns(I)Z

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v10}, Landroid/database/CursorWindow;->allocRow()Z

    move-result v14

    if-nez v14, :cond_1

    const-string v0, "Unable to allocate row to hold data."

    invoke-static {v15, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Landroid/database/CursorWindow;

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/database/CursorWindow;

    return-object v0

    :catch_0
    move-exception v0

    move v2, v9

    goto/16 :goto_9

    :cond_1
    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Map;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    move-object/from16 v17, v0

    const/4 v9, 0x0

    const/16 v16, 0x1

    :goto_1
    :try_start_2
    array-length v0, v1

    if-ge v9, v0, :cond_c

    if-eqz v16, :cond_b

    aget-object v0, v1, v9

    move/from16 v18, v2

    invoke-interface {v14, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2

    invoke-virtual {v10, v12, v9}, Landroid/database/CursorWindow;->putNull(II)Z

    move-result v0

    move/from16 v16, v0

    move-object/from16 v19, v7

    :goto_2
    move-object/from16 v20, v8

    goto/16 :goto_5

    :catch_1
    move-exception v0

    const/4 v2, 0x0

    goto/16 :goto_9

    :cond_2
    move-object/from16 v19, v7

    instance-of v7, v2, Ljava/lang/String;

    if-eqz v7, :cond_3

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v10, v2, v12, v9}, Landroid/database/CursorWindow;->putString(Ljava/lang/String;II)Z

    move-result v0

    move/from16 v16, v0

    goto :goto_2

    :cond_3
    instance-of v7, v2, Ljava/lang/Long;

    if-eqz v7, :cond_4

    check-cast v2, Ljava/lang/Long;

    move-object/from16 v20, v8

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-virtual {v10, v7, v8, v12, v9}, Landroid/database/CursorWindow;->putLong(JII)Z

    move-result v0

    :goto_3
    move/from16 v16, v0

    goto :goto_5

    :cond_4
    move-object/from16 v20, v8

    instance-of v7, v2, Ljava/lang/Integer;

    if-eqz v7, :cond_5

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v7, v0

    invoke-virtual {v10, v7, v8, v12, v9}, Landroid/database/CursorWindow;->putLong(JII)Z

    move-result v0

    goto :goto_3

    :cond_5
    instance-of v7, v2, Ljava/lang/Boolean;

    if-eqz v7, :cond_7

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v2, 0x1

    if-eq v2, v0, :cond_6

    const-wide/16 v7, 0x0

    goto :goto_4

    :cond_6
    const-wide/16 v7, 0x1

    :goto_4
    invoke-virtual {v10, v7, v8, v12, v9}, Landroid/database/CursorWindow;->putLong(JII)Z

    move-result v0

    goto :goto_3

    :cond_7
    instance-of v7, v2, [B

    if-eqz v7, :cond_8

    check-cast v2, [B

    invoke-virtual {v10, v2, v12, v9}, Landroid/database/CursorWindow;->putBlob([BII)Z

    move-result v0

    goto :goto_3

    :cond_8
    instance-of v7, v2, Ljava/lang/Double;

    if-eqz v7, :cond_9

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    invoke-virtual {v10, v7, v8, v12, v9}, Landroid/database/CursorWindow;->putDouble(DII)Z

    move-result v0

    goto :goto_3

    :cond_9
    instance-of v7, v2, Ljava/lang/Float;

    if-eqz v7, :cond_a

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    float-to-double v7, v0

    invoke-virtual {v10, v7, v8, v12, v9}, Landroid/database/CursorWindow;->putDouble(DII)Z

    move-result v0

    goto :goto_3

    :goto_5
    add-int/lit8 v9, v9, 0x1

    move/from16 v2, v18

    move-object/from16 v7, v19

    move-object/from16 v8, v20

    goto/16 :goto_1

    :cond_a
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x20

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_b
    move/from16 v18, v2

    move-object/from16 v19, v7

    move-object/from16 v20, v8

    goto :goto_7

    :cond_c
    move/from16 v18, v2

    move-object/from16 v19, v7

    move-object/from16 v20, v8

    if-eqz v16, :cond_d

    const/4 v2, 0x0

    const/4 v13, 0x0

    :goto_6
    const/4 v0, 0x1

    goto :goto_8

    :cond_d
    :goto_7
    if-nez v13, :cond_e

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x3f

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v10}, Landroid/database/CursorWindow;->freeLastRow()V

    new-instance v0, Landroid/database/CursorWindow;
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    const/4 v2, 0x0

    :try_start_3
    invoke-direct {v0, v2}, Landroid/database/CursorWindow;-><init>(Z)V

    invoke-virtual {v0, v12}, Landroid/database/CursorWindow;->setStartPosition(I)V

    array-length v7, v1

    invoke-virtual {v0, v7}, Landroid/database/CursorWindow;->setNumColumns(I)Z

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v12, v12, -0x1

    move-object v10, v0

    const/4 v13, 0x1

    goto :goto_6

    :goto_8
    add-int/2addr v12, v0

    move v9, v2

    move-object/from16 v0, v17

    move/from16 v2, v18

    move-object/from16 v7, v19

    move-object/from16 v8, v20

    goto/16 :goto_0

    :catch_2
    move-exception v0

    goto :goto_9

    :cond_e
    const/4 v2, 0x0

    const-string v0, "Could not add the value to a new CursorWindow. The size of value may be larger than what a CursorWindow can handle."

    new-instance v1, Lcom/google/android/gms/common/data/zac;

    invoke-direct {v1, v0}, Lcom/google/android/gms/common/data/zac;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2

    :goto_9
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v9, v2

    :goto_a
    if-ge v9, v1, :cond_f

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/database/CursorWindow;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteClosable;->close()V

    add-int/lit8 v9, v9, 0x1

    goto :goto_a

    :cond_f
    throw v0

    :cond_10
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Landroid/database/CursorWindow;

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/database/CursorWindow;

    return-object v0
.end method

.method public static builder([Ljava/lang/String;)Lcom/google/android/gms/common/data/DataHolder$Builder;
    .locals 1

    new-instance v0, Lcom/google/android/gms/common/data/DataHolder$Builder;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/data/DataHolder$Builder;-><init>([Ljava/lang/String;)V

    return-object v0
.end method

.method public static empty(I)Lcom/google/android/gms/common/data/DataHolder;
    .locals 2

    new-instance v0, Lcom/google/android/gms/common/data/DataHolder;

    sget-object v1, Lcom/google/android/gms/common/data/DataHolder;->l:Lcom/google/android/gms/common/data/a;

    invoke-direct {v0, v1, p0}, Lcom/google/android/gms/common/data/DataHolder;-><init>(Lcom/google/android/gms/common/data/DataHolder$Builder;I)V

    return-object v0
.end method


# virtual methods
.method public acquireReference()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/android/gms/common/data/DataHolder;->j:I

    if-lez v0, :cond_0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/common/data/DataHolder;->j:I

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Attempt to acquire reference to an already-closed DataHolder"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public close()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/common/data/DataHolder;->releaseReference()V

    return-void
.end method

.method public copy()Lcom/google/android/gms/common/data/DataHolder;
    .locals 5

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/data/DataHolder;->isClosed()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->e:[Landroid/database/CursorWindow;

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/database/CursorWindow;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    :try_start_1
    array-length v3, v0

    if-ge v2, v3, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteClosable;->acquireReference()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v3

    goto :goto_1

    :cond_0
    :try_start_2
    new-instance v1, Lcom/google/android/gms/common/data/DataHolder;

    iget-object v2, p0, Lcom/google/android/gms/common/data/DataHolder;->c:[Ljava/lang/String;

    iget v3, p0, Lcom/google/android/gms/common/data/DataHolder;->f:I

    iget-object v4, p0, Lcom/google/android/gms/common/data/DataHolder;->g:Landroid/os/Bundle;

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/google/android/gms/common/data/DataHolder;-><init>([Ljava/lang/String;[Landroid/database/CursorWindow;ILandroid/os/Bundle;)V

    monitor-exit p0

    return-object v1

    :goto_1
    if-ge v1, v2, :cond_1

    aget-object v4, v0, v1

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteClosable;->releaseReference()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    instance-of v0, v3, Ljava/lang/IllegalStateException;

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Closed CursorWindow encountered during DataHolder copy"

    invoke-direct {v0, v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_2
    throw v3

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot copy a closed DataHolder"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public final f(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->d:Landroid/os/Bundle;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/common/data/DataHolder;->isClosed()Z

    move-result p2

    if-nez p2, :cond_1

    if-ltz p1, :cond_0

    iget p2, p0, Lcom/google/android/gms/common/data/DataHolder;->i:I

    if-ge p1, p2, :cond_0

    return-void

    :cond_0
    new-instance p2, Landroid/database/CursorIndexOutOfBoundsException;

    iget p0, p0, Lcom/google/android/gms/common/data/DataHolder;->i:I

    invoke-direct {p2, p1, p0}, Landroid/database/CursorIndexOutOfBoundsException;-><init>(II)V

    throw p2

    :cond_1
    const-string p0, "Buffer is closed."

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    return-void

    :cond_2
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "No such column: "

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    return-void
.end method

.method public final finalize()V
    .locals 6

    const-string v0, ")"

    const-string v1, "Internal data leak within a DataBuffer object detected!  Be sure to explicitly call release() on all DataBuffer extending objects when you are done with them. (internal object: "

    :try_start_0
    iget-boolean v2, p0, Lcom/google/android/gms/common/data/DataHolder;->k:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/common/data/DataHolder;->e:[Landroid/database/CursorWindow;

    array-length v2, v2

    if-lez v2, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/common/data/DataHolder;->isClosed()Z

    move-result v2

    if-nez v2, :cond_1

    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget v2, p0, Lcom/google/android/gms/common/data/DataHolder;->j:I

    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    iput v3, p0, Lcom/google/android/gms/common/data/DataHolder;->j:I

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/data/DataHolder;->releaseReference()V

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    const-string v2, "DataBuffer"

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit16 v4, v4, 0xb2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_3

    :goto_1
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_1
    :goto_2
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :goto_3
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getBoolean(Ljava/lang/String;II)Z
    .locals 1

    invoke-virtual {p0, p2, p1}, Lcom/google/android/gms/common/data/DataHolder;->f(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->e:[Landroid/database/CursorWindow;

    aget-object p3, v0, p3

    iget-object p0, p0, Lcom/google/android/gms/common/data/DataHolder;->d:Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p3, p2, p0}, Landroid/database/CursorWindow;->getLong(II)J

    move-result-wide p0

    const-wide/16 p2, 0x1

    cmp-long p0, p0, p2

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getByteArray(Ljava/lang/String;II)[B
    .locals 1

    invoke-virtual {p0, p2, p1}, Lcom/google/android/gms/common/data/DataHolder;->f(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->e:[Landroid/database/CursorWindow;

    aget-object p3, v0, p3

    iget-object p0, p0, Lcom/google/android/gms/common/data/DataHolder;->d:Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p3, p2, p0}, Landroid/database/CursorWindow;->getBlob(II)[B

    move-result-object p0

    return-object p0
.end method

.method public getCount()I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/common/data/DataHolder;->i:I

    return p0
.end method

.method public getInteger(Ljava/lang/String;II)I
    .locals 1

    invoke-virtual {p0, p2, p1}, Lcom/google/android/gms/common/data/DataHolder;->f(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->e:[Landroid/database/CursorWindow;

    aget-object p3, v0, p3

    iget-object p0, p0, Lcom/google/android/gms/common/data/DataHolder;->d:Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p3, p2, p0}, Landroid/database/CursorWindow;->getInt(II)I

    move-result p0

    return p0
.end method

.method public getLong(Ljava/lang/String;II)J
    .locals 1

    invoke-virtual {p0, p2, p1}, Lcom/google/android/gms/common/data/DataHolder;->f(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->e:[Landroid/database/CursorWindow;

    aget-object p3, v0, p3

    iget-object p0, p0, Lcom/google/android/gms/common/data/DataHolder;->d:Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p3, p2, p0}, Landroid/database/CursorWindow;->getLong(II)J

    move-result-wide p0

    return-wide p0
.end method

.method public getMetadata()Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/data/DataHolder;->g:Landroid/os/Bundle;

    return-object p0
.end method

.method public getStatusCode()I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/common/data/DataHolder;->f:I

    return p0
.end method

.method public getString(Ljava/lang/String;II)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0, p2, p1}, Lcom/google/android/gms/common/data/DataHolder;->f(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->e:[Landroid/database/CursorWindow;

    aget-object p3, v0, p3

    iget-object p0, p0, Lcom/google/android/gms/common/data/DataHolder;->d:Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p3, p2, p0}, Landroid/database/CursorWindow;->getString(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getWindowIndex(I)I
    .locals 3

    const/4 v0, 0x0

    if-ltz p1, :cond_0

    iget v1, p0, Lcom/google/android/gms/common/data/DataHolder;->i:I

    if-ge p1, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(Z)V

    :goto_1
    iget-object v1, p0, Lcom/google/android/gms/common/data/DataHolder;->h:[I

    array-length v2, v1

    if-ge v0, v2, :cond_2

    aget v1, v1, v0

    if-ge p1, v1, :cond_1

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    if-ne v0, v2, :cond_3

    add-int/lit8 v0, v0, -0x1

    :cond_3
    return v0
.end method

.method public hasColumn(Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/data/DataHolder;->d:Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public hasNull(Ljava/lang/String;II)Z
    .locals 1

    invoke-virtual {p0, p2, p1}, Lcom/google/android/gms/common/data/DataHolder;->f(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->e:[Landroid/database/CursorWindow;

    aget-object p3, v0, p3

    iget-object p0, p0, Lcom/google/android/gms/common/data/DataHolder;->d:Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p3, p2, p0}, Landroid/database/CursorWindow;->isNull(II)Z

    move-result p0

    return p0
.end method

.method public isClosed()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/android/gms/common/data/DataHolder;->j:I

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public releaseReference()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/android/gms/common/data/DataHolder;->j:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/gms/common/data/DataHolder;->j:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->e:[Landroid/database/CursorWindow;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteClosable;->releaseReference()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 5

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/common/data/DataHolder;->c:[Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeStringArray(Landroid/os/Parcel;I[Ljava/lang/String;Z)V

    const/4 v2, 0x2

    iget-object v4, p0, Lcom/google/android/gms/common/data/DataHolder;->e:[Landroid/database/CursorWindow;

    invoke-static {p1, v2, v4, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeTypedArray(Landroid/os/Parcel;I[Landroid/os/Parcelable;IZ)V

    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/google/android/gms/common/data/DataHolder;->getStatusCode()I

    move-result v4

    invoke-static {p1, v2, v4}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    const/4 v2, 0x4

    invoke-virtual {p0}, Lcom/google/android/gms/common/data/DataHolder;->getMetadata()Landroid/os/Bundle;

    move-result-object v4

    invoke-static {p1, v2, v4, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBundle(Landroid/os/Parcel;ILandroid/os/Bundle;Z)V

    const/16 v2, 0x3e8

    iget v3, p0, Lcom/google/android/gms/common/data/DataHolder;->b:I

    invoke-static {p1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    and-int/lit8 p1, p2, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/common/data/DataHolder;->releaseReference()V

    :cond_0
    return-void
.end method

.method public final zaa()V
    .locals 5

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->d:Landroid/os/Bundle;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/common/data/DataHolder;->c:[Ljava/lang/String;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    iget-object v3, p0, Lcom/google/android/gms/common/data/DataHolder;->d:Landroid/os/Bundle;

    aget-object v2, v2, v1

    invoke-virtual {v3, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/common/data/DataHolder;->e:[Landroid/database/CursorWindow;

    array-length v2, v1

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/google/android/gms/common/data/DataHolder;->h:[I

    move v2, v0

    :goto_1
    array-length v3, v1

    if-ge v0, v3, :cond_1

    iget-object v3, p0, Lcom/google/android/gms/common/data/DataHolder;->h:[I

    aput v2, v3, v0

    aget-object v3, v1, v0

    invoke-virtual {v3}, Landroid/database/CursorWindow;->getStartPosition()I

    move-result v3

    sub-int v3, v2, v3

    aget-object v4, v1, v0

    invoke-virtual {v4}, Landroid/database/CursorWindow;->getNumRows()I

    move-result v4

    sub-int/2addr v4, v3

    add-int/2addr v2, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iput v2, p0, Lcom/google/android/gms/common/data/DataHolder;->i:I

    return-void
.end method

.method public final zab(Ljava/lang/String;II)F
    .locals 1

    invoke-virtual {p0, p2, p1}, Lcom/google/android/gms/common/data/DataHolder;->f(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->e:[Landroid/database/CursorWindow;

    aget-object p3, v0, p3

    iget-object p0, p0, Lcom/google/android/gms/common/data/DataHolder;->d:Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p3, p2, p0}, Landroid/database/CursorWindow;->getFloat(II)F

    move-result p0

    return p0
.end method

.method public final zac(Ljava/lang/String;II)D
    .locals 1

    invoke-virtual {p0, p2, p1}, Lcom/google/android/gms/common/data/DataHolder;->f(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->e:[Landroid/database/CursorWindow;

    aget-object p3, v0, p3

    iget-object p0, p0, Lcom/google/android/gms/common/data/DataHolder;->d:Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p3, p2, p0}, Landroid/database/CursorWindow;->getDouble(II)D

    move-result-wide p0

    return-wide p0
.end method

.method public final zad(Ljava/lang/String;IILandroid/database/CharArrayBuffer;)V
    .locals 1

    invoke-virtual {p0, p2, p1}, Lcom/google/android/gms/common/data/DataHolder;->f(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->e:[Landroid/database/CursorWindow;

    aget-object p3, v0, p3

    iget-object p0, p0, Lcom/google/android/gms/common/data/DataHolder;->d:Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p3, p2, p0, p4}, Landroid/database/CursorWindow;->copyStringToBuffer(IILandroid/database/CharArrayBuffer;)V

    return-void
.end method
