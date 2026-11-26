.class public final Landroidx/sqlite/driver/SupportSQLiteStatement$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/sqlite/driver/SupportSQLiteStatement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/sqlite/driver/SupportSQLiteStatement$Companion$SpecialOperation;,
        Landroidx/sqlite/driver/SupportSQLiteStatement$Companion$TransactionOperation;
    }
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

    invoke-direct {p0}, Landroidx/sqlite/driver/SupportSQLiteStatement$Companion;-><init>()V

    return-void
.end method

.method private final getSpecialOperation(Ljava/lang/String;Ljava/lang/String;)Landroidx/sqlite/driver/SupportSQLiteStatement$Companion$SpecialOperation;
    .locals 0

    const-string p0, "PRA"

    invoke-static {p1, p0}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p2, p0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p1, "journal_mode"

    const-string p2, ""

    invoke-static {p0, p1, p2}, Lta8;->a0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "="

    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Lta8;->D(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Landroidx/sqlite/driver/SupportSQLiteStatement$Companion$SpecialOperation$JournalModeOperation;->INSTANCE:Landroidx/sqlite/driver/SupportSQLiteStatement$Companion$SpecialOperation$JournalModeOperation;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private final getStatementPrefixIndex(Ljava/lang/String;)I
    .locals 6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    add-int/lit8 p0, p0, -0x2

    if-gez p0, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_9

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x20

    invoke-static {v1, v2}, Laa4;->f(II)I

    move-result v2

    if-gtz v2, :cond_2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x4

    const/16 v3, 0x2d

    if-ne v1, v3, :cond_4

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, v3, :cond_3

    goto :goto_1

    :cond_3
    add-int/lit8 v0, v0, 0x2

    const/16 v1, 0xa

    invoke-static {v1, v0, v2, p1}, Lta8;->J(CIILjava/lang/CharSequence;)I

    move-result v0

    if-gez v0, :cond_1

    goto :goto_2

    :cond_4
    const/16 v3, 0x2f

    if-ne v1, v3, :cond_8

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x2a

    if-eq v4, v5, :cond_5

    goto :goto_1

    :cond_5
    add-int/lit8 v1, v1, 0x1

    invoke-static {v5, v1, v2, p1}, Lta8;->J(CIILjava/lang/CharSequence;)I

    move-result v1

    if-gez v1, :cond_6

    goto :goto_2

    :cond_6
    add-int/lit8 v0, v1, 0x1

    if-ge v0, p0, :cond_7

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v3, :cond_5

    :cond_7
    add-int/lit8 v0, v1, 0x2

    goto :goto_0

    :cond_8
    :goto_1
    return v0

    :cond_9
    :goto_2
    const/4 p0, -0x1

    return p0
.end method

.method private final getTransactionOperation(Ljava/lang/String;Ljava/lang/String;)Landroidx/sqlite/driver/SupportSQLiteStatement$Companion$TransactionOperation;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p0

    const/4 v0, 0x0

    sparse-switch p0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string p0, "ROL"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, " TO "

    invoke-static {p2, p0, v0}, Lta8;->D(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    sget-object p0, Landroidx/sqlite/driver/SupportSQLiteStatement$Companion$TransactionOperation;->ROLLBACK:Landroidx/sqlite/driver/SupportSQLiteStatement$Companion$TransactionOperation;

    return-object p0

    :sswitch_1
    const-string p0, "END"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :sswitch_2
    const-string p0, "COM"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    sget-object p0, Landroidx/sqlite/driver/SupportSQLiteStatement$Companion$TransactionOperation;->END:Landroidx/sqlite/driver/SupportSQLiteStatement$Companion$TransactionOperation;

    return-object p0

    :sswitch_3
    const-string p0, "BEG"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    :goto_0
    const/4 p0, 0x0

    return-object p0

    :cond_3
    const-string p0, "EXCLUSIVE"

    invoke-static {p2, p0, v0}, Lta8;->D(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result p0

    if-eqz p0, :cond_4

    sget-object p0, Landroidx/sqlite/driver/SupportSQLiteStatement$Companion$TransactionOperation;->BEGIN_EXCLUSIVE:Landroidx/sqlite/driver/SupportSQLiteStatement$Companion$TransactionOperation;

    return-object p0

    :cond_4
    const-string p0, "IMMEDIATE"

    invoke-static {p2, p0, v0}, Lta8;->D(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result p0

    if-eqz p0, :cond_5

    sget-object p0, Landroidx/sqlite/driver/SupportSQLiteStatement$Companion$TransactionOperation;->BEGIN_IMMEDIATE:Landroidx/sqlite/driver/SupportSQLiteStatement$Companion$TransactionOperation;

    return-object p0

    :cond_5
    sget-object p0, Landroidx/sqlite/driver/SupportSQLiteStatement$Companion$TransactionOperation;->BEGIN_DEFERRED:Landroidx/sqlite/driver/SupportSQLiteStatement$Companion$TransactionOperation;

    return-object p0

    :sswitch_data_0
    .sparse-switch
        0x10064 -> :sswitch_3
        0x10561 -> :sswitch_2
        0x10cbb -> :sswitch_1
        0x13daf -> :sswitch_0
    .end sparse-switch
.end method

.method private final isRowStatement(Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p0

    const v0, 0x1367f

    if-eq p0, v0, :cond_2

    const v0, 0x1403a

    if-eq p0, v0, :cond_1

    const v0, 0x14fc2

    if-eq p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "WIT"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_1
    const-string p0, "SEL"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_2
    const-string p0, "PRA"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    :cond_3
    const/4 p0, 0x1

    return p0

    :cond_4
    :goto_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final create(Landroidx/sqlite/db/SupportSQLiteDatabase;Ljava/lang/String;)Landroidx/sqlite/driver/SupportSQLiteStatement;
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2}, Lta8;->f0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, v0}, Landroidx/sqlite/driver/SupportSQLiteStatement$Companion;->getStatementPrefix$sqlite_framework(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance p0, Landroidx/sqlite/driver/SupportSQLiteStatement$OtherSQLiteStatement;

    invoke-direct {p0, p1, p2}, Landroidx/sqlite/driver/SupportSQLiteStatement$OtherSQLiteStatement;-><init>(Landroidx/sqlite/db/SupportSQLiteDatabase;Ljava/lang/String;)V

    return-object p0

    :cond_0
    invoke-direct {p0, v1, v0}, Landroidx/sqlite/driver/SupportSQLiteStatement$Companion;->getTransactionOperation(Ljava/lang/String;Ljava/lang/String;)Landroidx/sqlite/driver/SupportSQLiteStatement$Companion$TransactionOperation;

    move-result-object v2

    if-eqz v2, :cond_1

    new-instance p0, Landroidx/sqlite/driver/SupportSQLiteStatement$TransactionSQLiteStatement;

    invoke-direct {p0, p1, p2, v2}, Landroidx/sqlite/driver/SupportSQLiteStatement$TransactionSQLiteStatement;-><init>(Landroidx/sqlite/db/SupportSQLiteDatabase;Ljava/lang/String;Landroidx/sqlite/driver/SupportSQLiteStatement$Companion$TransactionOperation;)V

    return-object p0

    :cond_1
    invoke-direct {p0, v1, v0}, Landroidx/sqlite/driver/SupportSQLiteStatement$Companion;->getSpecialOperation(Ljava/lang/String;Ljava/lang/String;)Landroidx/sqlite/driver/SupportSQLiteStatement$Companion$SpecialOperation;

    move-result-object v0

    instance-of v0, v0, Landroidx/sqlite/driver/SupportSQLiteStatement$Companion$SpecialOperation$JournalModeOperation;

    if-eqz v0, :cond_2

    new-instance p0, Landroidx/sqlite/driver/SupportSQLiteStatement$JournalModeSetStatement;

    new-instance v0, Landroidx/sqlite/driver/SupportSQLiteStatement$RowSQLiteStatement;

    invoke-direct {v0, p1, p2}, Landroidx/sqlite/driver/SupportSQLiteStatement$RowSQLiteStatement;-><init>(Landroidx/sqlite/db/SupportSQLiteDatabase;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, v0}, Landroidx/sqlite/driver/SupportSQLiteStatement$JournalModeSetStatement;-><init>(Landroidx/sqlite/db/SupportSQLiteDatabase;Ljava/lang/String;Landroidx/sqlite/driver/SupportSQLiteStatement;)V

    return-object p0

    :cond_2
    invoke-direct {p0, v1}, Landroidx/sqlite/driver/SupportSQLiteStatement$Companion;->isRowStatement(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    new-instance p0, Landroidx/sqlite/driver/SupportSQLiteStatement$RowSQLiteStatement;

    invoke-direct {p0, p1, p2}, Landroidx/sqlite/driver/SupportSQLiteStatement$RowSQLiteStatement;-><init>(Landroidx/sqlite/db/SupportSQLiteDatabase;Ljava/lang/String;)V

    return-object p0

    :cond_3
    new-instance p0, Landroidx/sqlite/driver/SupportSQLiteStatement$OtherSQLiteStatement;

    invoke-direct {p0, p1, p2}, Landroidx/sqlite/driver/SupportSQLiteStatement$OtherSQLiteStatement;-><init>(Landroidx/sqlite/db/SupportSQLiteDatabase;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getStatementPrefix$sqlite_framework(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, p1}, Landroidx/sqlite/driver/SupportSQLiteStatement$Companion;->getStatementPrefixIndex(Ljava/lang/String;)I

    move-result p0

    if-ltz p0, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le p0, v0, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 v0, p0, 0x3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p1, p0, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method
