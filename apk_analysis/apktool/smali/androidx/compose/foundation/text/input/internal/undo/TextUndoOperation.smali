.class public final Landroidx/compose/foundation/text/input/internal/undo/TextUndoOperation;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/foundation/text/input/internal/undo/TextUndoOperation$Companion;
    }
.end annotation


# static fields
.field public static final $stable:I

.field public static final Companion:Landroidx/compose/foundation/text/input/internal/undo/TextUndoOperation$Companion;

.field private static final Saver:Landroidx/compose/runtime/saveable/Saver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/saveable/Saver<",
            "Landroidx/compose/foundation/text/input/internal/undo/TextUndoOperation;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final canMerge:Z

.field private final index:I

.field private final postSelection:J

.field private final postText:Ljava/lang/String;

.field private final preSelection:J

.field private final preText:Ljava/lang/String;

.field private final textEditType:Landroidx/compose/foundation/text/input/internal/undo/TextEditType;

.field private final timeInMillis:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/foundation/text/input/internal/undo/TextUndoOperation$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/foundation/text/input/internal/undo/TextUndoOperation$Companion;-><init>(Ljh2;)V

    sput-object v0, Landroidx/compose/foundation/text/input/internal/undo/TextUndoOperation;->Companion:Landroidx/compose/foundation/text/input/internal/undo/TextUndoOperation$Companion;

    new-instance v0, Landroidx/compose/foundation/text/input/internal/undo/TextUndoOperation$Companion$Saver$1;

    invoke-direct {v0}, Landroidx/compose/foundation/text/input/internal/undo/TextUndoOperation$Companion$Saver$1;-><init>()V

    sput-object v0, Landroidx/compose/foundation/text/input/internal/undo/TextUndoOperation;->Saver:Landroidx/compose/runtime/saveable/Saver;

    return-void
.end method

.method private constructor <init>(ILjava/lang/String;Ljava/lang/String;JJJZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/compose/foundation/text/input/internal/undo/TextUndoOperation;->index:I

    iput-object p2, p0, Landroidx/compose/foundation/text/input/internal/undo/TextUndoOperation;->preText:Ljava/lang/String;

    iput-object p3, p0, Landroidx/compose/foundation/text/input/internal/undo/TextUndoOperation;->postText:Ljava/lang/String;

    iput-wide p4, p0, Landroidx/compose/foundation/text/input/internal/undo/TextUndoOperation;->preSelection:J

    iput-wide p6, p0, Landroidx/compose/foundation/text/input/internal/undo/TextUndoOperation;->postSelection:J

    iput-wide p8, p0, Landroidx/compose/foundation/text/input/internal/undo/TextUndoOperation;->timeInMillis:J

    iput-boolean p10, p0, Landroidx/compose/foundation/text/input/internal/undo/TextUndoOperation;->canMerge:Z

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_1

    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "Either pre or post text must not be empty"

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_2

    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-lez p1, :cond_2

    sget-object p1, Landroidx/compose/foundation/text/input/internal/undo/TextEditType;->Insert:Landroidx/compose/foundation/text/input/internal/undo/TextEditType;

    goto :goto_1

    :cond_2
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-lez p1, :cond_3

    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_3

    sget-object p1, Landroidx/compose/foundation/text/input/internal/undo/TextEditType;->Delete:Landroidx/compose/foundation/text/input/internal/undo/TextEditType;

    goto :goto_1

    :cond_3
    sget-object p1, Landroidx/compose/foundation/text/input/internal/undo/TextEditType;->Replace:Landroidx/compose/foundation/text/input/internal/undo/TextEditType;

    :goto_1
    iput-object p1, p0, Landroidx/compose/foundation/text/input/internal/undo/TextUndoOperation;->textEditType:Landroidx/compose/foundation/text/input/internal/undo/TextEditType;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;Ljava/lang/String;JJJZILjh2;)V
    .locals 14

    and-int/lit8 v0, p11, 0x20

    if-eqz v0, :cond_0

    .line 73
    invoke-static {}, Landroidx/compose/foundation/text/UndoManager_jvmAndAndroidKt;->timeNowMillis()J

    move-result-wide v0

    move-wide v10, v0

    goto :goto_0

    :cond_0
    move-wide/from16 v10, p8

    :goto_0
    and-int/lit8 v0, p11, 0x40

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    move v12, v0

    goto :goto_1

    :cond_1
    move/from16 v12, p10

    :goto_1
    const/4 v13, 0x0

    move-object v2, p0

    move v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-wide/from16 v6, p4

    move-wide/from16 v8, p6

    .line 74
    invoke-direct/range {v2 .. v13}, Landroidx/compose/foundation/text/input/internal/undo/TextUndoOperation;-><init>(ILjava/lang/String;Ljava/lang/String;JJJZLjh2;)V

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;Ljava/lang/String;JJJZLjh2;)V
    .locals 0

    .line 72
    invoke-direct/range {p0 .. p10}, Landroidx/compose/foundation/text/input/internal/undo/TextUndoOperation;-><init>(ILjava/lang/String;Ljava/lang/String;JJJZ)V

    return-void
.end method

.method public static final synthetic access$getSaver$cp()Landroidx/compose/runtime/saveable/Saver;
    .locals 1

    sget-object v0, Landroidx/compose/foundation/text/input/internal/undo/TextUndoOperation;->Saver:Landroidx/compose/runtime/saveable/Saver;

    return-object v0
.end method


# virtual methods
.method public final getCanMerge()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/compose/foundation/text/input/internal/undo/TextUndoOperation;->canMerge:Z

    return p0
.end method

.method public final getDeletionType()Landroidx/compose/foundation/text/input/internal/undo/TextDeleteType;
    .locals 3

    iget-object v0, p0, Landroidx/compose/foundation/text/input/internal/undo/TextUndoOperation;->textEditType:Landroidx/compose/foundation/text/input/internal/undo/TextEditType;

    sget-object v1, Landroidx/compose/foundation/text/input/internal/undo/TextEditType;->Delete:Landroidx/compose/foundation/text/input/internal/undo/TextEditType;

    if-eq v0, v1, :cond_0

    sget-object p0, Landroidx/compose/foundation/text/input/internal/undo/TextDeleteType;->NotByUser:Landroidx/compose/foundation/text/input/internal/undo/TextDeleteType;

    return-object p0

    :cond_0
    iget-wide v0, p0, Landroidx/compose/foundation/text/input/internal/undo/TextUndoOperation;->postSelection:J

    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRange;->getCollapsed-impl(J)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object p0, Landroidx/compose/foundation/text/input/internal/undo/TextDeleteType;->NotByUser:Landroidx/compose/foundation/text/input/internal/undo/TextDeleteType;

    return-object p0

    :cond_1
    iget-wide v0, p0, Landroidx/compose/foundation/text/input/internal/undo/TextUndoOperation;->preSelection:J

    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRange;->getCollapsed-impl(J)Z

    move-result v0

    iget-wide v1, p0, Landroidx/compose/foundation/text/input/internal/undo/TextUndoOperation;->preSelection:J

    if-eqz v0, :cond_3

    invoke-static {v1, v2}, Landroidx/compose/ui/text/TextRange;->getStart-impl(J)I

    move-result v0

    iget-wide v1, p0, Landroidx/compose/foundation/text/input/internal/undo/TextUndoOperation;->postSelection:J

    invoke-static {v1, v2}, Landroidx/compose/ui/text/TextRange;->getStart-impl(J)I

    move-result p0

    if-le v0, p0, :cond_2

    sget-object p0, Landroidx/compose/foundation/text/input/internal/undo/TextDeleteType;->Start:Landroidx/compose/foundation/text/input/internal/undo/TextDeleteType;

    return-object p0

    :cond_2
    sget-object p0, Landroidx/compose/foundation/text/input/internal/undo/TextDeleteType;->End:Landroidx/compose/foundation/text/input/internal/undo/TextDeleteType;

    return-object p0

    :cond_3
    invoke-static {v1, v2}, Landroidx/compose/ui/text/TextRange;->getStart-impl(J)I

    move-result v0

    iget-wide v1, p0, Landroidx/compose/foundation/text/input/internal/undo/TextUndoOperation;->postSelection:J

    invoke-static {v1, v2}, Landroidx/compose/ui/text/TextRange;->getStart-impl(J)I

    move-result v1

    if-ne v0, v1, :cond_4

    iget-wide v0, p0, Landroidx/compose/foundation/text/input/internal/undo/TextUndoOperation;->preSelection:J

    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRange;->getStart-impl(J)I

    move-result v0

    iget p0, p0, Landroidx/compose/foundation/text/input/internal/undo/TextUndoOperation;->index:I

    if-ne v0, p0, :cond_4

    sget-object p0, Landroidx/compose/foundation/text/input/internal/undo/TextDeleteType;->Inner:Landroidx/compose/foundation/text/input/internal/undo/TextDeleteType;

    return-object p0

    :cond_4
    sget-object p0, Landroidx/compose/foundation/text/input/internal/undo/TextDeleteType;->NotByUser:Landroidx/compose/foundation/text/input/internal/undo/TextDeleteType;

    return-object p0
.end method

.method public final getIndex()I
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/text/input/internal/undo/TextUndoOperation;->index:I

    return p0
.end method

.method public final getPostSelection-d9O1mEE()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/foundation/text/input/internal/undo/TextUndoOperation;->postSelection:J

    return-wide v0
.end method

.method public final getPostText()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/text/input/internal/undo/TextUndoOperation;->postText:Ljava/lang/String;

    return-object p0
.end method

.method public final getPreSelection-d9O1mEE()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/foundation/text/input/internal/undo/TextUndoOperation;->preSelection:J

    return-wide v0
.end method

.method public final getPreText()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/text/input/internal/undo/TextUndoOperation;->preText:Ljava/lang/String;

    return-object p0
.end method

.method public final getTextEditType()Landroidx/compose/foundation/text/input/internal/undo/TextEditType;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/text/input/internal/undo/TextUndoOperation;->textEditType:Landroidx/compose/foundation/text/input/internal/undo/TextEditType;

    return-object p0
.end method

.method public final getTimeInMillis()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/foundation/text/input/internal/undo/TextUndoOperation;->timeInMillis:J

    return-wide v0
.end method
