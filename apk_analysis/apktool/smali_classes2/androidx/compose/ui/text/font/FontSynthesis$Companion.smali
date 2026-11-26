.class public final Landroidx/compose/ui/text/font/FontSynthesis$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/ui/text/font/FontSynthesis;
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

    invoke-direct {p0}, Landroidx/compose/ui/text/font/FontSynthesis$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getAll-GVVA2EU()I
    .locals 0

    invoke-static {}, Landroidx/compose/ui/text/font/FontSynthesis;->access$getAll$cp()I

    move-result p0

    return p0
.end method

.method public final getNone-GVVA2EU()I
    .locals 0

    invoke-static {}, Landroidx/compose/ui/text/font/FontSynthesis;->access$getNone$cp()I

    move-result p0

    return p0
.end method

.method public final getStyle-GVVA2EU()I
    .locals 0

    invoke-static {}, Landroidx/compose/ui/text/font/FontSynthesis;->access$getStyle$cp()I

    move-result p0

    return p0
.end method

.method public final getWeight-GVVA2EU()I
    .locals 0

    invoke-static {}, Landroidx/compose/ui/text/font/FontSynthesis;->access$getWeight$cp()I

    move-result p0

    return p0
.end method

.method public final valueOf-9CiegCU(I)I
    .locals 1

    const/4 p0, 0x1

    if-eqz p1, :cond_1

    if-eq p1, p0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const v0, 0xffff

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :cond_1
    :goto_0
    if-nez p0, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "The given value="

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " is not recognized by FontSynthesis."

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroidx/compose/ui/text/internal/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    :cond_2
    invoke-static {p1}, Landroidx/compose/ui/text/font/FontSynthesis;->constructor-impl(I)I

    move-result p0

    return p0
.end method
