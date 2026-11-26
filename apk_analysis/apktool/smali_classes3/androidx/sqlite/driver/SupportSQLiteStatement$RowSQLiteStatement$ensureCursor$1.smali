.class public final Landroidx/sqlite/driver/SupportSQLiteStatement$RowSQLiteStatement$ensureCursor$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/sqlite/db/SupportSQLiteQuery;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/sqlite/driver/SupportSQLiteStatement$RowSQLiteStatement;->ensureCursor()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/sqlite/driver/SupportSQLiteStatement$RowSQLiteStatement;


# direct methods
.method public constructor <init>(Landroidx/sqlite/driver/SupportSQLiteStatement$RowSQLiteStatement;)V
    .locals 0

    iput-object p1, p0, Landroidx/sqlite/driver/SupportSQLiteStatement$RowSQLiteStatement$ensureCursor$1;->this$0:Landroidx/sqlite/driver/SupportSQLiteStatement$RowSQLiteStatement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bindTo(Landroidx/sqlite/db/SupportSQLiteProgram;)V
    .locals 6

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Landroidx/sqlite/driver/SupportSQLiteStatement$RowSQLiteStatement$ensureCursor$1;->this$0:Landroidx/sqlite/driver/SupportSQLiteStatement$RowSQLiteStatement;

    invoke-static {v0}, Landroidx/sqlite/driver/SupportSQLiteStatement$RowSQLiteStatement;->access$getBindingTypes$p(Landroidx/sqlite/driver/SupportSQLiteStatement$RowSQLiteStatement;)[I

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x1

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_5

    iget-object v3, p0, Landroidx/sqlite/driver/SupportSQLiteStatement$RowSQLiteStatement$ensureCursor$1;->this$0:Landroidx/sqlite/driver/SupportSQLiteStatement$RowSQLiteStatement;

    invoke-static {v3}, Landroidx/sqlite/driver/SupportSQLiteStatement$RowSQLiteStatement;->access$getBindingTypes$p(Landroidx/sqlite/driver/SupportSQLiteStatement$RowSQLiteStatement;)[I

    move-result-object v3

    aget v3, v3, v2

    if-eq v3, v1, :cond_4

    const/4 v4, 0x2

    if-eq v3, v4, :cond_3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_2

    const/4 v4, 0x4

    if-eq v3, v4, :cond_1

    const/4 v4, 0x5

    if-eq v3, v4, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_1

    :cond_1
    iget-object v3, p0, Landroidx/sqlite/driver/SupportSQLiteStatement$RowSQLiteStatement$ensureCursor$1;->this$0:Landroidx/sqlite/driver/SupportSQLiteStatement$RowSQLiteStatement;

    invoke-static {v3}, Landroidx/sqlite/driver/SupportSQLiteStatement$RowSQLiteStatement;->access$getBlobBindings$p(Landroidx/sqlite/driver/SupportSQLiteStatement$RowSQLiteStatement;)[[B

    move-result-object v3

    aget-object v3, v3, v2

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindBlob(I[B)V

    goto :goto_1

    :cond_2
    iget-object v3, p0, Landroidx/sqlite/driver/SupportSQLiteStatement$RowSQLiteStatement$ensureCursor$1;->this$0:Landroidx/sqlite/driver/SupportSQLiteStatement$RowSQLiteStatement;

    invoke-static {v3}, Landroidx/sqlite/driver/SupportSQLiteStatement$RowSQLiteStatement;->access$getStringBindings$p(Landroidx/sqlite/driver/SupportSQLiteStatement$RowSQLiteStatement;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v2

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    goto :goto_1

    :cond_3
    iget-object v3, p0, Landroidx/sqlite/driver/SupportSQLiteStatement$RowSQLiteStatement$ensureCursor$1;->this$0:Landroidx/sqlite/driver/SupportSQLiteStatement$RowSQLiteStatement;

    invoke-static {v3}, Landroidx/sqlite/driver/SupportSQLiteStatement$RowSQLiteStatement;->access$getDoubleBindings$p(Landroidx/sqlite/driver/SupportSQLiteStatement$RowSQLiteStatement;)[D

    move-result-object v3

    aget-wide v4, v3, v2

    invoke-interface {p1, v2, v4, v5}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindDouble(ID)V

    goto :goto_1

    :cond_4
    iget-object v3, p0, Landroidx/sqlite/driver/SupportSQLiteStatement$RowSQLiteStatement$ensureCursor$1;->this$0:Landroidx/sqlite/driver/SupportSQLiteStatement$RowSQLiteStatement;

    invoke-static {v3}, Landroidx/sqlite/driver/SupportSQLiteStatement$RowSQLiteStatement;->access$getLongBindings$p(Landroidx/sqlite/driver/SupportSQLiteStatement$RowSQLiteStatement;)[J

    move-result-object v3

    aget-wide v4, v3, v2

    invoke-interface {p1, v2, v4, v5}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method public getArgCount()I
    .locals 0

    iget-object p0, p0, Landroidx/sqlite/driver/SupportSQLiteStatement$RowSQLiteStatement$ensureCursor$1;->this$0:Landroidx/sqlite/driver/SupportSQLiteStatement$RowSQLiteStatement;

    invoke-static {p0}, Landroidx/sqlite/driver/SupportSQLiteStatement$RowSQLiteStatement;->access$getBindingTypes$p(Landroidx/sqlite/driver/SupportSQLiteStatement$RowSQLiteStatement;)[I

    move-result-object p0

    array-length p0, p0

    return p0
.end method

.method public getSql()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroidx/sqlite/driver/SupportSQLiteStatement$RowSQLiteStatement$ensureCursor$1;->this$0:Landroidx/sqlite/driver/SupportSQLiteStatement$RowSQLiteStatement;

    invoke-virtual {p0}, Landroidx/sqlite/driver/SupportSQLiteStatement;->getSql()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
