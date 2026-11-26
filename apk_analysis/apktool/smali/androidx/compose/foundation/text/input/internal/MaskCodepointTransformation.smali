.class final Landroidx/compose/foundation/text/input/internal/MaskCodepointTransformation;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/foundation/text/input/internal/CodepointTransformation;


# instance fields
.field private final character:C


# direct methods
.method public constructor <init>(C)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-char p1, p0, Landroidx/compose/foundation/text/input/internal/MaskCodepointTransformation;->character:C

    return-void
.end method

.method public static synthetic copy$default(Landroidx/compose/foundation/text/input/internal/MaskCodepointTransformation;CILjava/lang/Object;)Landroidx/compose/foundation/text/input/internal/MaskCodepointTransformation;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget-char p1, p0, Landroidx/compose/foundation/text/input/internal/MaskCodepointTransformation;->character:C

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/compose/foundation/text/input/internal/MaskCodepointTransformation;->copy(C)Landroidx/compose/foundation/text/input/internal/MaskCodepointTransformation;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()C
    .locals 0

    iget-char p0, p0, Landroidx/compose/foundation/text/input/internal/MaskCodepointTransformation;->character:C

    return p0
.end method

.method public final copy(C)Landroidx/compose/foundation/text/input/internal/MaskCodepointTransformation;
    .locals 0

    new-instance p0, Landroidx/compose/foundation/text/input/internal/MaskCodepointTransformation;

    invoke-direct {p0, p1}, Landroidx/compose/foundation/text/input/internal/MaskCodepointTransformation;-><init>(C)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/compose/foundation/text/input/internal/MaskCodepointTransformation;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/compose/foundation/text/input/internal/MaskCodepointTransformation;

    iget-char p0, p0, Landroidx/compose/foundation/text/input/internal/MaskCodepointTransformation;->character:C

    iget-char p1, p1, Landroidx/compose/foundation/text/input/internal/MaskCodepointTransformation;->character:C

    if-eq p0, p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final getCharacter()C
    .locals 0

    iget-char p0, p0, Landroidx/compose/foundation/text/input/internal/MaskCodepointTransformation;->character:C

    return p0
.end method

.method public hashCode()I
    .locals 0

    iget-char p0, p0, Landroidx/compose/foundation/text/input/internal/MaskCodepointTransformation;->character:C

    invoke-static {p0}, Ljava/lang/Character;->hashCode(C)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MaskCodepointTransformation(character="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-char p0, p0, Landroidx/compose/foundation/text/input/internal/MaskCodepointTransformation;->character:C

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public transform(II)I
    .locals 0

    iget-char p0, p0, Landroidx/compose/foundation/text/input/internal/MaskCodepointTransformation;->character:C

    return p0
.end method
