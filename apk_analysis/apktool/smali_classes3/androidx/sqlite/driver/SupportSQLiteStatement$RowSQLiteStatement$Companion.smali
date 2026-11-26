.class public final Landroidx/sqlite/driver/SupportSQLiteStatement$RowSQLiteStatement$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/sqlite/driver/SupportSQLiteStatement$RowSQLiteStatement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljh2;)V
    .locals 0

    invoke-direct {p0}, Landroidx/sqlite/driver/SupportSQLiteStatement$RowSQLiteStatement$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$getDataType(Landroidx/sqlite/driver/SupportSQLiteStatement$RowSQLiteStatement$Companion;Landroid/database/Cursor;I)I
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/sqlite/driver/SupportSQLiteStatement$RowSQLiteStatement$Companion;->getDataType(Landroid/database/Cursor;I)I

    move-result p0

    return p0
.end method

.method private final getDataType(Landroid/database/Cursor;I)I
    .locals 0

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getType(I)I

    move-result p0

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getType(I)I

    move-result p1

    if-eqz p1, :cond_2

    const/4 p2, 0x1

    if-eq p1, p2, :cond_1

    const/4 p2, 0x2

    if-eq p1, p2, :cond_1

    const/4 p2, 0x3

    if-eq p1, p2, :cond_1

    const/4 p2, 0x4

    if-ne p1, p2, :cond_0

    return p2

    :cond_0
    const-string p1, "Unknown field type: "

    invoke-static {p0, p1}, Lud;->e(ILjava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_1
    return p2

    :cond_2
    const/4 p0, 0x5

    return p0
.end method
