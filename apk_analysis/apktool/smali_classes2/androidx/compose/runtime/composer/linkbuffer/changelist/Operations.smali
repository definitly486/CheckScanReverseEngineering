.class public final Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;
.super Landroidx/compose/runtime/composer/DebugStringFormattable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations$OpIterator;,
        Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations$WriteScope;
    }
.end annotation


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field public intArgs:[I

.field public intArgsSize:I

.field public objectArgs:[Ljava/lang/Object;

.field public objectArgsSize:I

.field public opCodes:[Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation;

.field public opCodesSize:I

.field private pushedIntMask:I

.field private pushedObjectMask:I

.field private requiresApplication:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroidx/compose/runtime/composer/DebugStringFormattable;-><init>()V

    const/16 v0, 0x10

    new-array v1, v0, [Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation;

    iput-object v1, p0, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;->opCodes:[Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation;

    new-array v1, v0, [I

    iput-object v1, p0, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;->intArgs:[I

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;->objectArgs:[Ljava/lang/Object;

    return-void
.end method

.method public static synthetic a(Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;->toCollectionString$lambda$0(Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$currentOpToDebugString(Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations$OpIterator;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;->currentOpToDebugString(Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations$OpIterator;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getPushedIntMask$p(Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;)I
    .locals 0

    iget p0, p0, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;->pushedIntMask:I

    return p0
.end method

.method public static final synthetic access$getPushedObjectMask$p(Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;)I
    .locals 0

    iget p0, p0, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;->pushedObjectMask:I

    return p0
.end method

.method public static final synthetic access$setPushedIntMask$p(Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;I)V
    .locals 0

    iput p1, p0, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;->pushedIntMask:I

    return-void
.end method

.method public static final synthetic access$setPushedObjectMask$p(Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;I)V
    .locals 0

    iput p1, p0, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;->pushedObjectMask:I

    return-void
.end method

.method public static final synthetic access$setRequiresApplication$p(Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;->requiresApplication:Z

    return-void
.end method

.method private final createExpectedArgMask(I)I
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    rsub-int/lit8 p1, p1, 0x20

    ushr-int/2addr p0, p1

    return p0
.end method

.method private final currentOpToDebugString(Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations$OpIterator;Ljava/lang/String;)Ljava/lang/String;
    .locals 12

    invoke-virtual {p1}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations$OpIterator;->getOperation()Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation;->getInts()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation;->getObjects()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x28

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-direct {p0, p2}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;->indent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation;->getInts()I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    const-string v7, " = "

    const-string v8, ", "

    const/16 v9, 0xa

    if-ge v6, v3, :cond_2

    invoke-virtual {v0, v6}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation;->intParamName(I)Ljava/lang/String;

    move-result-object v10

    if-nez v4, :cond_1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    move v4, v5

    :goto_1
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations$OpIterator;->getInt(I)I

    move-result v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation;->getObjects()I

    move-result v3

    move v6, v5

    :goto_2
    if-ge v6, v3, :cond_4

    invoke-static {v6}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation$ObjectParameter;->constructor-impl(I)I

    move-result v10

    invoke-virtual {v0, v10}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation;->objectParamName-gvac4VY(I)Ljava/lang/String;

    move-result-object v11

    if-nez v4, :cond_3

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_3
    move v4, v5

    :goto_3
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v10}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations$OpIterator;->getObject-gvac4VY(I)Ljava/lang/Object;

    move-result-object v10

    invoke-direct {p0, v10, v2}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;->formatOpArgumentToString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_4
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final determineNewSize(II)I
    .locals 0

    const/16 p0, 0x400

    if-le p1, p0, :cond_0

    goto :goto_0

    :cond_0
    move p0, p1

    :goto_0
    add-int/2addr p1, p0

    if-ge p1, p2, :cond_1

    return p2

    :cond_1
    return p1
.end method

.method private final ensureIntArgsSizeAtLeast(I)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;->intArgs:[I

    array-length v0, v0

    if-le p1, v0, :cond_0

    invoke-direct {p0, v0, p1}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;->resizeIntArgs(II)V

    :cond_0
    return-void
.end method

.method private final ensureObjectArgsSizeAtLeast(I)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;->objectArgs:[Ljava/lang/Object;

    array-length v0, v0

    if-le p1, v0, :cond_0

    invoke-direct {p0, v0, p1}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;->resizeObjectArgs(II)V

    :cond_0
    return-void
.end method

.method private final exceptionMessageForOperationPushNoScope(Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation;)Ljava/lang/String;
    .locals 1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Cannot push "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " without arguments because it expects "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation;->getInts()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " ints and "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation;->getObjects()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " objects."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final exceptionMessageForOperationPushWithScope(Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation;)Ljava/lang/String;
    .locals 10

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation;->getInts()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    const-string v5, ", "

    const/4 v6, 0x1

    if-ge v3, v1, :cond_2

    shl-int/2addr v6, v3

    iget v7, p0, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;->pushedIntMask:I

    and-int/2addr v6, v7

    if-nez v6, :cond_1

    if-lez v4, :cond_0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {p1, v3}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation;->intParamName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation;->getObjects()I

    move-result v3

    move v7, v2

    :goto_1
    if-ge v2, v3, :cond_5

    shl-int v8, v6, v2

    iget v9, p0, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;->pushedObjectMask:I

    and-int/2addr v8, v9

    if-nez v8, :cond_4

    if-lez v4, :cond_3

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    invoke-static {v2}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation$ObjectParameter;->constructor-impl(I)I

    move-result v8

    invoke-virtual {p1, v8}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation;->objectParamName-gvac4VY(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v7, v7, 0x1

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error while pushing "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ". Not all arguments were provided. Missing "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " int arguments ("

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") and "

    const-string v2, " object arguments ("

    invoke-static {v1, v0, p1, v7, v2}, Lo2;->e(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const-string p1, ")."

    invoke-static {v1, p0, p1}, Lme0;->d(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final formatOpArgumentToString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    const-string p0, "null"

    return-object p0

    :cond_0
    instance-of v0, p1, [Ljava/lang/Object;

    sget-object v1, Lkx2;->b:Lkx2;

    if-eqz v0, :cond_2

    check-cast p1, [Ljava/lang/Object;

    array-length v0, p1

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v1, Lsr;

    invoke-direct {v1, p1}, Lsr;-><init>([Ljava/lang/Object;)V

    :goto_0
    invoke-direct {p0, v1, p2}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;->toCollectionString(Ljava/lang/Iterable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    instance-of v0, p1, [I

    if-eqz v0, :cond_4

    check-cast p1, [I

    array-length v0, p1

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    new-instance v1, Ltr;

    invoke-direct {v1, p1}, Ltr;-><init>([I)V

    :goto_1
    invoke-direct {p0, v1, p2}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;->toCollectionString(Ljava/lang/Iterable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    instance-of v0, p1, [J

    if-eqz v0, :cond_6

    check-cast p1, [J

    array-length v0, p1

    if-nez v0, :cond_5

    goto :goto_2

    :cond_5
    new-instance v1, Lur;

    invoke-direct {v1, p1}, Lur;-><init>([J)V

    :goto_2
    invoke-direct {p0, v1, p2}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;->toCollectionString(Ljava/lang/Iterable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_6
    instance-of v0, p1, [F

    if-eqz v0, :cond_8

    check-cast p1, [F

    array-length v0, p1

    if-nez v0, :cond_7

    goto :goto_3

    :cond_7
    new-instance v1, Lvr;

    invoke-direct {v1, p1}, Lvr;-><init>([F)V

    :goto_3
    invoke-direct {p0, v1, p2}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;->toCollectionString(Ljava/lang/Iterable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_8
    instance-of v0, p1, [D

    if-eqz v0, :cond_a

    check-cast p1, [D

    array-length v0, p1

    if-nez v0, :cond_9

    goto :goto_4

    :cond_9
    new-instance v1, Lwr;

    invoke-direct {v1, p1}, Lwr;-><init>([D)V

    :goto_4
    invoke-direct {p0, v1, p2}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;->toCollectionString(Ljava/lang/Iterable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_a
    instance-of v0, p1, Ljava/lang/Iterable;

    if-eqz v0, :cond_b

    check-cast p1, Ljava/lang/Iterable;

    invoke-direct {p0, p1, p2}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;->toCollectionString(Ljava/lang/Iterable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_b
    instance-of p0, p1, Landroidx/compose/runtime/composer/DebugStringFormattable;

    if-eqz p0, :cond_c

    check-cast p1, Landroidx/compose/runtime/composer/DebugStringFormattable;

    invoke-virtual {p1, p2}, Landroidx/compose/runtime/composer/DebugStringFormattable;->toDebugString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_c
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic getOpCodes$runtime$annotations()V
    .locals 0

    return-void
.end method

.method private final indent(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const-string p0, "    "

    invoke-static {p1, p0}, Lni0;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final peekOperation()Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation;
    .locals 1

    iget-object v0, p0, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;->opCodes:[Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation;

    iget p0, p0, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;->opCodesSize:I

    add-int/lit8 p0, p0, -0x1

    aget-object p0, v0, p0

    return-object p0
.end method

.method private final resizeIntArgs(II)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;->determineNewSize(II)I

    move-result p2

    new-array p2, p2, [I

    iget-object v0, p0, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;->intArgs:[I

    const/4 v1, 0x0

    invoke-static {v1, v1, p1, v0, p2}, Laq5;->h(III[I[I)V

    iput-object p2, p0, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;->intArgs:[I

    return-void
.end method

.method private final resizeObjectArgs(II)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;->determineNewSize(II)I

    move-result p2

    new-array p2, p2, [Ljava/lang/Object;

    iget-object v0, p0, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;->objectArgs:[Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {v0, v1, p2, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object p2, p0, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;->objectArgs:[Ljava/lang/Object;

    return-void
.end method

.method private final resizeOpCodes()V
    .locals 4

    iget v0, p0, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;->opCodesSize:I

    const/16 v1, 0x400

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    add-int/2addr v1, v0

    new-array v1, v1, [Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation;

    iget-object v2, p0, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;->opCodes:[Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation;

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;->opCodes:[Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation;

    return-void
.end method

.method private final toCollectionString(Ljava/lang/Iterable;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+TT;>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v5, Lgz5;

    const/4 v0, 0x0

    invoke-direct {v5, v0, p0, p2}, Lgz5;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    const/16 v6, 0x18

    const-string v1, ", "

    const-string v2, "["

    const-string v3, "]"

    const/4 v4, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Lqn1;->a0(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;ILnl3;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final toCollectionString$lambda$0(Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 0

    invoke-direct {p0, p2, p1}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;->formatOpArgumentToString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final topIntIndexOf(I)I
    .locals 2

    iget v0, p0, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;->intArgsSize:I

    iget-object v1, p0, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;->opCodes:[Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation;

    iget p0, p0, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;->opCodesSize:I

    add-int/lit8 p0, p0, -0x1

    aget-object p0, v1, p0

    invoke-virtual {p0}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation;->getInts()I

    move-result p0

    sub-int/2addr v0, p0

    add-int/2addr v0, p1

    return v0
.end method

.method private final topObjectIndexOf-gvac4VY(I)I
    .locals 2

    iget v0, p0, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;->objectArgsSize:I

    iget-object v1, p0, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;->opCodes:[Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation;

    iget p0, p0, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;->opCodesSize:I

    add-int/lit8 p0, p0, -0x1

    aget-object p0, v1, p0

    invoke-virtual {p0}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation;->getObjects()I

    move-result p0

    sub-int/2addr v0, p0

    add-int/2addr v0, p1

    return v0
.end method


# virtual methods
.method public final clear()V
    .locals 4

    const/4 v0, 0x0

    iput v0, p0, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;->opCodesSize:I

    iput v0, p0, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;->intArgsSize:I

    iget-object v1, p0, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;->objectArgs:[Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;->objectArgsSize:I

    invoke-static {v2, v1, v0, v3}, Laq5;->t(Ljava/lang/Object;[Ljava/lang/Object;II)V

    iput v0, p0, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;->objectArgsSize:I

    iput-boolean v0, p0, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;->requiresApplication:Z

    return-void
.end method

.method public final drain(Lnl3;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnl3<",
            "-",
            "Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations$OpIterator;",
            "Lj59;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;->isNotEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations$OpIterator;

    invoke-direct {v0, p0}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations$OpIterator;-><init>(Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;)V

    :cond_0
    invoke-interface {p1, v0}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations$OpIterator;->next()Z

    move-result v1

    if-nez v1, :cond_0

    :cond_1
    invoke-virtual {p0}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;->clear()V

    return-void
.end method

.method public final ensureAllArgumentsPushedFor(Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation;)V
    .locals 2

    iget p0, p0, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;->pushedIntMask:I

    invoke-virtual {p1}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation;->getInts()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    :goto_0
    rsub-int/lit8 v0, v0, 0x20

    ushr-int v0, v1, v0

    if-ne p0, v0, :cond_1

    invoke-virtual {p1}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation;->getObjects()I

    :cond_1
    return-void
.end method

.method public final executeAndFlushAllPendingOperations(Landroidx/compose/runtime/Applier;Landroidx/compose/runtime/composer/linkbuffer/SlotTableEditor;Landroidx/compose/runtime/composer/RememberManager;Landroidx/compose/runtime/composer/gapbuffer/changelist/OperationErrorContext;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/Applier<",
            "*>;",
            "Landroidx/compose/runtime/composer/linkbuffer/SlotTableEditor;",
            "Landroidx/compose/runtime/composer/RememberManager;",
            "Landroidx/compose/runtime/composer/gapbuffer/changelist/OperationErrorContext;",
            ")V"
        }
    .end annotation

    invoke-virtual {p0}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;->isNotEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v2, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations$OpIterator;

    invoke-direct {v2, p0}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations$OpIterator;-><init>(Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;)V

    :goto_0
    invoke-virtual {v2}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations$OpIterator;->getOperation()Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation;

    move-result-object v1

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation;->executeWithComposeStackTrace(Landroidx/compose/runtime/composer/linkbuffer/changelist/OperationArgContainer;Landroidx/compose/runtime/Applier;Landroidx/compose/runtime/composer/linkbuffer/SlotTableEditor;Landroidx/compose/runtime/composer/RememberManager;Landroidx/compose/runtime/composer/gapbuffer/changelist/OperationErrorContext;)V

    invoke-virtual {v2}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations$OpIterator;->next()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    move-object p1, v3

    move-object p2, v4

    move-object p3, v5

    move-object p4, v6

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual {p0}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;->clear()V

    return-void
.end method

.method public final forEach(Lnl3;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnl3<",
            "-",
            "Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations$OpIterator;",
            "Lj59;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;->isNotEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations$OpIterator;

    invoke-direct {v0, p0}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations$OpIterator;-><init>(Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;)V

    :cond_0
    invoke-interface {p1, v0}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations$OpIterator;->next()Z

    move-result p0

    if-nez p0, :cond_0

    :cond_1
    return-void
.end method

.method public final getRequiresApplication()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;->requiresApplication:Z

    return p0
.end method

.method public final getSize()I
    .locals 0

    iget p0, p0, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;->opCodesSize:I

    return p0
.end method

.method public final isEmpty()Z
    .locals 0

    invoke-virtual {p0}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;->getSize()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final isNotEmpty()Z
    .locals 0

    invoke-virtual {p0}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;->getSize()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final pop()V
    .locals 6

    iget-object v0, p0, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;->opCodes:[Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation;

    iget v1, p0, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;->opCodesSize:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;->opCodesSize:I

    aget-object v2, v0, v1

    const/4 v3, 0x0

    aput-object v3, v0, v1

    invoke-virtual {v2}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation;->getObjects()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v4, p0, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;->objectArgs:[Ljava/lang/Object;

    iget v5, p0, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;->objectArgsSize:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;->objectArgsSize:I

    aput-object v3, v4, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;->intArgsSize:I

    invoke-virtual {v2}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation;->getInts()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;->intArgsSize:I

    return-void
.end method

.method public final popInto(Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;)V
    .locals 7

    iget-object v0, p0, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;->opCodes:[Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation;

    iget v1, p0, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;->opCodesSize:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;->opCodesSize:I

    aget-object v2, v0, v1

    const/4 v3, 0x0

    aput-object v3, v0, v1

    invoke-virtual {p1, v2}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;->pushOp(Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation;)V

    iget-object v0, p0, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;->objectArgs:[Ljava/lang/Object;

    iget-object v1, p1, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;->objectArgs:[Ljava/lang/Object;

    iget v4, p1, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;->objectArgsSize:I

    invoke-virtual {v2}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation;->getObjects()I

    move-result v5

    sub-int/2addr v4, v5

    iget v5, p0, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;->objectArgsSize:I

    invoke-virtual {v2}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation;->getObjects()I

    move-result v6

    sub-int/2addr v5, v6

    iget v6, p0, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;->objectArgsSize:I

    sub-int/2addr v6, v5

    invoke-static {v0, v5, v1, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;->objectArgs:[Ljava/lang/Object;

    iget v1, p0, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;->objectArgsSize:I

    invoke-virtual {v2}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation;->getObjects()I

    move-result v4

    sub-int/2addr v1, v4

    iget v4, p0, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;->objectArgsSize:I

    invoke-static {v3, v0, v1, v4}, Laq5;->t(Ljava/lang/Object;[Ljava/lang/Object;II)V

    iget-object v0, p0, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;->intArgs:[I

    iget-object v1, p1, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;->intArgs:[I

    iget p1, p1, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;->intArgsSize:I

    invoke-virtual {v2}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation;->getInts()I

    move-result v3

    sub-int/2addr p1, v3

    iget v3, p0, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;->intArgsSize:I

    invoke-virtual {v2}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation;->getInts()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;->intArgsSize:I

    invoke-static {p1, v3, v4, v0, v1}, Laq5;->h(III[I[I)V

    iget p1, p0, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;->objectArgsSize:I

    invoke-virtual {v2}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation;->getObjects()I

    move-result v0

    sub-int/2addr p1, v0

    iput p1, p0, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;->objectArgsSize:I

    iget p1, p0, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;->intArgsSize:I

    invoke-virtual {v2}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation;->getInts()I

    move-result v0

    sub-int/2addr p1, v0

    iput p1, p0, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;->intArgsSize:I

    return-void
.end method

.method public final push(Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation;)V
    .locals 0

    .line 18
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;->pushOp(Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation;)V

    return-void
.end method

.method public final push(Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation;Lnl3;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation;",
            "Lnl3<",
            "-",
            "Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations$WriteScope;",
            "Lj59;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;->pushOp(Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation;)V

    invoke-static {p0}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations$WriteScope;->constructor-impl(Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;)Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations$WriteScope;->box-impl(Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;)Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations$WriteScope;

    move-result-object v0

    invoke-interface {p2, v0}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;->ensureAllArgumentsPushedFor(Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation;)V

    return-void
.end method

.method public final pushOp(Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation;)V
    .locals 3

    iget v0, p0, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;->opCodesSize:I

    iget-object v1, p0, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;->opCodes:[Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation;

    array-length v1, v1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;->resizeOpCodes()V

    :cond_0
    iget v0, p0, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;->intArgsSize:I

    invoke-virtual {p1}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation;->getInts()I

    move-result v1

    add-int/2addr v1, v0

    iget-object v0, p0, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;->intArgs:[I

    array-length v0, v0

    if-le v1, v0, :cond_1

    invoke-direct {p0, v0, v1}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;->resizeIntArgs(II)V

    :cond_1
    iget v0, p0, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;->objectArgsSize:I

    invoke-virtual {p1}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation;->getObjects()I

    move-result v1

    add-int/2addr v1, v0

    iget-object v0, p0, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;->objectArgs:[Ljava/lang/Object;

    array-length v0, v0

    if-le v1, v0, :cond_2

    invoke-direct {p0, v0, v1}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;->resizeObjectArgs(II)V

    :cond_2
    iget-object v0, p0, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;->opCodes:[Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation;

    iget v1, p0, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;->opCodesSize:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;->opCodesSize:I

    aput-object p1, v0, v1

    iget v0, p0, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;->intArgsSize:I

    invoke-virtual {p1}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation;->getInts()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p0, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;->intArgsSize:I

    iget v0, p0, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;->objectArgsSize:I

    invoke-virtual {p1}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation;->getObjects()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p0, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;->objectArgsSize:I

    invoke-virtual {p1}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation;->isExternallyVisible()Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;->requiresApplication:Z

    :cond_3
    return-void
.end method

.method public toDebugString(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;->isNotEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations$OpIterator;

    invoke-direct {v1, p0}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations$OpIterator;-><init>(Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;)V

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ". "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v1, p1}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations;->currentOpToDebugString(Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations$OpIterator;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operations$OpIterator;->next()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    move v2, v3

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0
    .annotation runtime Lul2;
    .end annotation

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
