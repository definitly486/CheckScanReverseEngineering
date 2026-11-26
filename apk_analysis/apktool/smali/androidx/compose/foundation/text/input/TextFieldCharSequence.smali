.class public final Landroidx/compose/foundation/text/input/TextFieldCharSequence;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/CharSequence;


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private final composingAnnotations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/compose/ui/text/AnnotatedString$Range<",
            "Landroidx/compose/ui/text/AnnotatedString$Annotation;",
            ">;>;"
        }
    .end annotation
.end field

.field private final composition:Landroidx/compose/ui/text/TextRange;

.field private final highlight:Lb36;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb36<",
            "Landroidx/compose/foundation/text/input/TextHighlightType;",
            "Landroidx/compose/ui/text/TextRange;",
            ">;"
        }
    .end annotation
.end field

.field private final outputAnnotations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/compose/ui/text/AnnotatedString$Range<",
            "Landroidx/compose/ui/text/AnnotatedString$Annotation;",
            ">;>;"
        }
    .end annotation
.end field

.field private final selection:J

.field private final text:Ljava/lang/CharSequence;


# direct methods
.method private constructor <init>(Ljava/lang/CharSequence;JLandroidx/compose/ui/text/TextRange;Lb36;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "J",
            "Landroidx/compose/ui/text/TextRange;",
            "Lb36<",
            "Landroidx/compose/foundation/text/input/TextHighlightType;",
            "Landroidx/compose/ui/text/TextRange;",
            ">;",
            "Ljava/util/List<",
            "Landroidx/compose/ui/text/AnnotatedString$Range<",
            "Landroidx/compose/ui/text/AnnotatedString$Annotation;",
            ">;>;",
            "Ljava/util/List<",
            "Landroidx/compose/ui/text/AnnotatedString$Range<",
            "Landroidx/compose/ui/text/AnnotatedString$Annotation;",
            ">;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p6, p0, Landroidx/compose/foundation/text/input/TextFieldCharSequence;->composingAnnotations:Ljava/util/List;

    iput-object p7, p0, Landroidx/compose/foundation/text/input/TextFieldCharSequence;->outputAnnotations:Ljava/util/List;

    instance-of p6, p1, Landroidx/compose/foundation/text/input/TextFieldCharSequence;

    if-eqz p6, :cond_0

    move-object p6, p1

    check-cast p6, Landroidx/compose/foundation/text/input/TextFieldCharSequence;

    iget-object p6, p6, Landroidx/compose/foundation/text/input/TextFieldCharSequence;->text:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    move-object p6, p1

    :goto_0
    iput-object p6, p0, Landroidx/compose/foundation/text/input/TextFieldCharSequence;->text:Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p6

    const/4 p7, 0x0

    invoke-static {p2, p3, p7, p6}, Landroidx/compose/ui/text/TextRangeKt;->coerceIn-8ffj60Q(JII)J

    move-result-wide p2

    iput-wide p2, p0, Landroidx/compose/foundation/text/input/TextFieldCharSequence;->selection:J

    const/4 p2, 0x0

    if-eqz p4, :cond_1

    invoke-virtual {p4}, Landroidx/compose/ui/text/TextRange;->unbox-impl()J

    move-result-wide p3

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p6

    invoke-static {p3, p4, p7, p6}, Landroidx/compose/ui/text/TextRangeKt;->coerceIn-8ffj60Q(JII)J

    move-result-wide p3

    invoke-static {p3, p4}, Landroidx/compose/ui/text/TextRange;->box-impl(J)Landroidx/compose/ui/text/TextRange;

    move-result-object p3

    goto :goto_1

    :cond_1
    move-object p3, p2

    :goto_1
    iput-object p3, p0, Landroidx/compose/foundation/text/input/TextFieldCharSequence;->composition:Landroidx/compose/ui/text/TextRange;

    if-eqz p5, :cond_2

    iget-object p3, p5, Lb36;->c:Ljava/lang/Object;

    check-cast p3, Landroidx/compose/ui/text/TextRange;

    invoke-virtual {p3}, Landroidx/compose/ui/text/TextRange;->unbox-impl()J

    move-result-wide p3

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    invoke-static {p3, p4, p7, p1}, Landroidx/compose/ui/text/TextRangeKt;->coerceIn-8ffj60Q(JII)J

    move-result-wide p3

    invoke-static {p3, p4}, Landroidx/compose/ui/text/TextRange;->box-impl(J)Landroidx/compose/ui/text/TextRange;

    move-result-object p1

    const/4 p3, 0x1

    invoke-static {p5, p2, p1, p3}, Lb36;->a(Lb36;Ljava/lang/Integer;Ljava/lang/Object;I)Lb36;

    move-result-object p2

    :cond_2
    iput-object p2, p0, Landroidx/compose/foundation/text/input/TextFieldCharSequence;->highlight:Lb36;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/CharSequence;JLandroidx/compose/ui/text/TextRange;Lb36;Ljava/util/List;Ljava/util/List;ILjh2;)V
    .locals 8

    and-int/lit8 v0, p8, 0x1

    if-eqz v0, :cond_0

    .line 85
    const-string v0, ""

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    and-int/lit8 v1, p8, 0x2

    if-eqz v1, :cond_1

    .line 86
    sget-object v1, Landroidx/compose/ui/text/TextRange;->Companion:Landroidx/compose/ui/text/TextRange$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/text/TextRange$Companion;->getZero-d9O1mEE()J

    move-result-wide v1

    goto :goto_1

    :cond_1
    move-wide v1, p2

    :goto_1
    and-int/lit8 v3, p8, 0x4

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    move-object v3, v4

    goto :goto_2

    :cond_2
    move-object v3, p4

    :goto_2
    and-int/lit8 v5, p8, 0x8

    if-eqz v5, :cond_3

    move-object v5, v4

    goto :goto_3

    :cond_3
    move-object v5, p5

    :goto_3
    and-int/lit8 v6, p8, 0x10

    if-eqz v6, :cond_4

    move-object v6, v4

    goto :goto_4

    :cond_4
    move-object v6, p6

    :goto_4
    and-int/lit8 v7, p8, 0x20

    if-eqz v7, :cond_5

    goto :goto_5

    :cond_5
    move-object v4, p7

    :goto_5
    const/4 v7, 0x0

    move-object p1, p0

    move-object p2, v0

    move-wide p3, v1

    move-object p5, v3

    move-object/from16 p8, v4

    move-object p6, v5

    move-object p7, v6

    move-object/from16 p9, v7

    .line 87
    invoke-direct/range {p1 .. p9}, Landroidx/compose/foundation/text/input/TextFieldCharSequence;-><init>(Ljava/lang/CharSequence;JLandroidx/compose/ui/text/TextRange;Lb36;Ljava/util/List;Ljava/util/List;Ljh2;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/CharSequence;JLandroidx/compose/ui/text/TextRange;Lb36;Ljava/util/List;Ljava/util/List;Ljh2;)V
    .locals 0

    .line 84
    invoke-direct/range {p0 .. p7}, Landroidx/compose/foundation/text/input/TextFieldCharSequence;-><init>(Ljava/lang/CharSequence;JLandroidx/compose/ui/text/TextRange;Lb36;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public final bridge charAt(I)C
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/text/input/TextFieldCharSequence;->get(I)C

    move-result p0

    return p0
.end method

.method public final contentEquals(Ljava/lang/CharSequence;)Z
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/text/input/TextFieldCharSequence;->text:Ljava/lang/CharSequence;

    invoke-static {p0, p1}, Lra8;->s(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    const-class v2, Landroidx/compose/foundation/text/input/TextFieldCharSequence;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    check-cast p1, Landroidx/compose/foundation/text/input/TextFieldCharSequence;

    iget-wide v2, p0, Landroidx/compose/foundation/text/input/TextFieldCharSequence;->selection:J

    iget-wide v4, p1, Landroidx/compose/foundation/text/input/TextFieldCharSequence;->selection:J

    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/text/TextRange;->equals-impl0(JJ)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Landroidx/compose/foundation/text/input/TextFieldCharSequence;->composition:Landroidx/compose/ui/text/TextRange;

    iget-object v3, p1, Landroidx/compose/foundation/text/input/TextFieldCharSequence;->composition:Landroidx/compose/ui/text/TextRange;

    invoke-static {v2, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    :cond_4
    iget-object v2, p0, Landroidx/compose/foundation/text/input/TextFieldCharSequence;->highlight:Lb36;

    iget-object v3, p1, Landroidx/compose/foundation/text/input/TextFieldCharSequence;->highlight:Lb36;

    invoke-static {v2, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    :cond_5
    iget-object v2, p0, Landroidx/compose/foundation/text/input/TextFieldCharSequence;->composingAnnotations:Ljava/util/List;

    iget-object v3, p1, Landroidx/compose/foundation/text/input/TextFieldCharSequence;->composingAnnotations:Ljava/util/List;

    invoke-static {v2, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    :cond_6
    iget-object p1, p1, Landroidx/compose/foundation/text/input/TextFieldCharSequence;->text:Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/text/input/TextFieldCharSequence;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_7

    return v1

    :cond_7
    return v0
.end method

.method public get(I)C
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/text/input/TextFieldCharSequence;->text:Ljava/lang/CharSequence;

    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p0

    return p0
.end method

.method public final getComposingAnnotations()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/compose/ui/text/AnnotatedString$Range<",
            "Landroidx/compose/ui/text/AnnotatedString$Annotation;",
            ">;>;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/foundation/text/input/TextFieldCharSequence;->composingAnnotations:Ljava/util/List;

    return-object p0
.end method

.method public final getComposition-MzsxiRA()Landroidx/compose/ui/text/TextRange;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/text/input/TextFieldCharSequence;->composition:Landroidx/compose/ui/text/TextRange;

    return-object p0
.end method

.method public final getHighlight()Lb36;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lb36<",
            "Landroidx/compose/foundation/text/input/TextHighlightType;",
            "Landroidx/compose/ui/text/TextRange;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/foundation/text/input/TextFieldCharSequence;->highlight:Lb36;

    return-object p0
.end method

.method public getLength()I
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/text/input/TextFieldCharSequence;->text:Ljava/lang/CharSequence;

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    return p0
.end method

.method public final getOutputAnnotations()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/compose/ui/text/AnnotatedString$Range<",
            "Landroidx/compose/ui/text/AnnotatedString$Annotation;",
            ">;>;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/foundation/text/input/TextFieldCharSequence;->outputAnnotations:Ljava/util/List;

    return-object p0
.end method

.method public final getSelection-d9O1mEE()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/foundation/text/input/TextFieldCharSequence;->selection:J

    return-wide v0
.end method

.method public final getText()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/text/input/TextFieldCharSequence;->text:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public hashCode()I
    .locals 5

    iget-object v0, p0, Landroidx/compose/foundation/text/input/TextFieldCharSequence;->text:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Landroidx/compose/foundation/text/input/TextFieldCharSequence;->selection:J

    invoke-static {v1, v2}, Landroidx/compose/ui/text/TextRange;->hashCode-impl(J)I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Landroidx/compose/foundation/text/input/TextFieldCharSequence;->composition:Landroidx/compose/ui/text/TextRange;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/compose/ui/text/TextRange;->unbox-impl()J

    move-result-wide v3

    invoke-static {v3, v4}, Landroidx/compose/ui/text/TextRange;->hashCode-impl(J)I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Landroidx/compose/foundation/text/input/TextFieldCharSequence;->highlight:Lb36;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lb36;->hashCode()I

    move-result v0

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object p0, p0, Landroidx/compose/foundation/text/input/TextFieldCharSequence;->composingAnnotations:Ljava/util/List;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :cond_2
    add-int/2addr v1, v2

    return v1
.end method

.method public final bridge length()I
    .locals 0

    invoke-virtual {p0}, Landroidx/compose/foundation/text/input/TextFieldCharSequence;->getLength()I

    move-result p0

    return p0
.end method

.method public final shouldShowSelection()Z
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/text/input/TextFieldCharSequence;->highlight:Lb36;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/text/input/TextFieldCharSequence;->text:Ljava/lang/CharSequence;

    invoke-interface {p0, p1, p2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public final toCharArray([CIII)V
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/text/input/TextFieldCharSequence;->text:Ljava/lang/CharSequence;

    invoke-static {p0, p1, p2, p3, p4}, Landroidx/compose/foundation/text/input/internal/ToCharArray_androidKt;->toCharArray(Ljava/lang/CharSequence;[CIII)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/text/input/TextFieldCharSequence;->text:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
