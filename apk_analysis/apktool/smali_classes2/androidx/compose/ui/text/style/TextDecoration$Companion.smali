.class public final Landroidx/compose/ui/text/style/TextDecoration$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/ui/text/style/TextDecoration;
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

    invoke-direct {p0}, Landroidx/compose/ui/text/style/TextDecoration$Companion;-><init>()V

    return-void
.end method

.method public static synthetic getLineThrough$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getNone$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getUnderline$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final combine(Ljava/util/List;)Landroidx/compose/ui/text/style/TextDecoration;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/compose/ui/text/style/TextDecoration;",
            ">;)",
            "Landroidx/compose/ui/text/style/TextDecoration;"
        }
    .end annotation

    const/4 p0, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    :goto_0
    if-ge p0, v1, :cond_0

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/text/style/TextDecoration;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {v2}, Landroidx/compose/ui/text/style/TextDecoration;->getMask()I

    move-result v2

    or-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result p0

    new-instance p1, Landroidx/compose/ui/text/style/TextDecoration;

    invoke-direct {p1, p0}, Landroidx/compose/ui/text/style/TextDecoration;-><init>(I)V

    return-object p1
.end method

.method public final getLineThrough()Landroidx/compose/ui/text/style/TextDecoration;
    .locals 0

    invoke-static {}, Landroidx/compose/ui/text/style/TextDecoration;->access$getLineThrough$cp()Landroidx/compose/ui/text/style/TextDecoration;

    move-result-object p0

    return-object p0
.end method

.method public final getNone()Landroidx/compose/ui/text/style/TextDecoration;
    .locals 0

    invoke-static {}, Landroidx/compose/ui/text/style/TextDecoration;->access$getNone$cp()Landroidx/compose/ui/text/style/TextDecoration;

    move-result-object p0

    return-object p0
.end method

.method public final getUnderline()Landroidx/compose/ui/text/style/TextDecoration;
    .locals 0

    invoke-static {}, Landroidx/compose/ui/text/style/TextDecoration;->access$getUnderline$cp()Landroidx/compose/ui/text/style/TextDecoration;

    move-result-object p0

    return-object p0
.end method

.method public final valueOf(I)Landroidx/compose/ui/text/style/TextDecoration;
    .locals 3

    or-int/lit8 v0, p1, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "The given mask="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is not recognized by TextDecoration."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/ui/text/internal/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    :cond_1
    if-eqz p1, :cond_4

    if-eq p1, v1, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    new-instance p0, Landroidx/compose/ui/text/style/TextDecoration;

    invoke-direct {p0, p1}, Landroidx/compose/ui/text/style/TextDecoration;-><init>(I)V

    return-object p0

    :cond_2
    invoke-virtual {p0}, Landroidx/compose/ui/text/style/TextDecoration$Companion;->getLineThrough()Landroidx/compose/ui/text/style/TextDecoration;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-virtual {p0}, Landroidx/compose/ui/text/style/TextDecoration$Companion;->getUnderline()Landroidx/compose/ui/text/style/TextDecoration;

    move-result-object p0

    return-object p0

    :cond_4
    invoke-virtual {p0}, Landroidx/compose/ui/text/style/TextDecoration$Companion;->getNone()Landroidx/compose/ui/text/style/TextDecoration;

    move-result-object p0

    return-object p0
.end method
