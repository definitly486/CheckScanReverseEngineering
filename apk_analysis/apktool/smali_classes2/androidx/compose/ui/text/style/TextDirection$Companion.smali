.class public final Landroidx/compose/ui/text/style/TextDirection$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/ui/text/style/TextDirection;
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

    invoke-direct {p0}, Landroidx/compose/ui/text/style/TextDirection$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getContent-s_7X-co()I
    .locals 0

    invoke-static {}, Landroidx/compose/ui/text/style/TextDirection;->access$getContent$cp()I

    move-result p0

    return p0
.end method

.method public final getContentOrLtr-s_7X-co()I
    .locals 0

    invoke-static {}, Landroidx/compose/ui/text/style/TextDirection;->access$getContentOrLtr$cp()I

    move-result p0

    return p0
.end method

.method public final getContentOrRtl-s_7X-co()I
    .locals 0

    invoke-static {}, Landroidx/compose/ui/text/style/TextDirection;->access$getContentOrRtl$cp()I

    move-result p0

    return p0
.end method

.method public final getLtr-s_7X-co()I
    .locals 0

    invoke-static {}, Landroidx/compose/ui/text/style/TextDirection;->access$getLtr$cp()I

    move-result p0

    return p0
.end method

.method public final getRtl-s_7X-co()I
    .locals 0

    invoke-static {}, Landroidx/compose/ui/text/style/TextDirection;->access$getRtl$cp()I

    move-result p0

    return p0
.end method

.method public final getUnspecified-s_7X-co()I
    .locals 0

    invoke-static {}, Landroidx/compose/ui/text/style/TextDirection;->access$getUnspecified$cp()I

    move-result p0

    return p0
.end method

.method public final valueOf-E8nx0Ws(I)I
    .locals 1

    const/4 p0, 0x0

    if-ltz p1, :cond_0

    const/4 v0, 0x6

    if-ge p1, v0, :cond_0

    const/4 p0, 0x1

    :cond_0
    if-nez p0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "The given value="

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " is not recognized by TextDirection."

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroidx/compose/ui/text/internal/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    :cond_1
    invoke-static {p1}, Landroidx/compose/ui/text/style/TextDirection;->constructor-impl(I)I

    move-result p0

    return p0
.end method
