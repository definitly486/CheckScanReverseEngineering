.class public final Landroidx/privacysandbox/ads/adservices/common/FrequencyCapFilters;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Landroidx/privacysandbox/ads/adservices/common/ExperimentalFeatures$Ext8OptIn;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/privacysandbox/ads/adservices/common/FrequencyCapFilters$AdEventType;,
        Landroidx/privacysandbox/ads/adservices/common/FrequencyCapFilters$Companion;
    }
.end annotation


# static fields
.field public static final AD_EVENT_TYPE_CLICK:I = 0x3

.field public static final AD_EVENT_TYPE_IMPRESSION:I = 0x1

.field public static final AD_EVENT_TYPE_VIEW:I = 0x2

.field public static final AD_EVENT_TYPE_WIN:I

.field public static final Companion:Landroidx/privacysandbox/ads/adservices/common/FrequencyCapFilters$Companion;


# instance fields
.field private final keyedFrequencyCapsForClickEvents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/privacysandbox/ads/adservices/common/KeyedFrequencyCap;",
            ">;"
        }
    .end annotation
.end field

.field private final keyedFrequencyCapsForImpressionEvents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/privacysandbox/ads/adservices/common/KeyedFrequencyCap;",
            ">;"
        }
    .end annotation
.end field

.field private final keyedFrequencyCapsForViewEvents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/privacysandbox/ads/adservices/common/KeyedFrequencyCap;",
            ">;"
        }
    .end annotation
.end field

.field private final keyedFrequencyCapsForWinEvents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/privacysandbox/ads/adservices/common/KeyedFrequencyCap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/privacysandbox/ads/adservices/common/FrequencyCapFilters$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/privacysandbox/ads/adservices/common/FrequencyCapFilters$Companion;-><init>(Ljh2;)V

    sput-object v0, Landroidx/privacysandbox/ads/adservices/common/FrequencyCapFilters;->Companion:Landroidx/privacysandbox/ads/adservices/common/FrequencyCapFilters$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .line 34
    const/16 v5, 0xf

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Landroidx/privacysandbox/ads/adservices/common/FrequencyCapFilters;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;ILjh2;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/privacysandbox/ads/adservices/common/KeyedFrequencyCap;",
            ">;)V"
        }
    .end annotation

    .line 26
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v5, 0xe

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Landroidx/privacysandbox/ads/adservices/common/FrequencyCapFilters;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;ILjh2;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/privacysandbox/ads/adservices/common/KeyedFrequencyCap;",
            ">;",
            "Ljava/util/List<",
            "Landroidx/privacysandbox/ads/adservices/common/KeyedFrequencyCap;",
            ">;)V"
        }
    .end annotation

    .line 27
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v5, 0xc

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Landroidx/privacysandbox/ads/adservices/common/FrequencyCapFilters;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;ILjh2;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/privacysandbox/ads/adservices/common/KeyedFrequencyCap;",
            ">;",
            "Ljava/util/List<",
            "Landroidx/privacysandbox/ads/adservices/common/KeyedFrequencyCap;",
            ">;",
            "Ljava/util/List<",
            "Landroidx/privacysandbox/ads/adservices/common/KeyedFrequencyCap;",
            ">;)V"
        }
    .end annotation

    .line 28
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v5, 0x8

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v6}, Landroidx/privacysandbox/ads/adservices/common/FrequencyCapFilters;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;ILjh2;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/privacysandbox/ads/adservices/common/KeyedFrequencyCap;",
            ">;",
            "Ljava/util/List<",
            "Landroidx/privacysandbox/ads/adservices/common/KeyedFrequencyCap;",
            ">;",
            "Ljava/util/List<",
            "Landroidx/privacysandbox/ads/adservices/common/KeyedFrequencyCap;",
            ">;",
            "Ljava/util/List<",
            "Landroidx/privacysandbox/ads/adservices/common/KeyedFrequencyCap;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Landroidx/privacysandbox/ads/adservices/common/FrequencyCapFilters;->keyedFrequencyCapsForWinEvents:Ljava/util/List;

    .line 31
    iput-object p2, p0, Landroidx/privacysandbox/ads/adservices/common/FrequencyCapFilters;->keyedFrequencyCapsForImpressionEvents:Ljava/util/List;

    .line 32
    iput-object p3, p0, Landroidx/privacysandbox/ads/adservices/common/FrequencyCapFilters;->keyedFrequencyCapsForViewEvents:Ljava/util/List;

    .line 33
    iput-object p4, p0, Landroidx/privacysandbox/ads/adservices/common/FrequencyCapFilters;->keyedFrequencyCapsForClickEvents:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;ILjh2;)V
    .locals 1

    and-int/lit8 p6, p5, 0x1

    sget-object v0, Lkx2;->b:Lkx2;

    if-eqz p6, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    move-object p3, v0

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    move-object p4, v0

    :cond_3
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/privacysandbox/ads/adservices/common/FrequencyCapFilters;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method private final convertToAdServices(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/privacysandbox/ads/adservices/common/KeyedFrequencyCap;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/adservices/common/KeyedFrequencyCap;",
            ">;"
        }
    .end annotation

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/privacysandbox/ads/adservices/common/KeyedFrequencyCap;

    invoke-virtual {v0}, Landroidx/privacysandbox/ads/adservices/common/KeyedFrequencyCap;->convertToAdServices$ads_adservices_release()Landroid/adservices/common/KeyedFrequencyCap;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object p0
.end method


# virtual methods
.method public final convertToAdServices$ads_adservices_release()Landroid/adservices/common/FrequencyCapFilters;
    .locals 2

    new-instance v0, Landroid/adservices/common/FrequencyCapFilters$Builder;

    invoke-direct {v0}, Landroid/adservices/common/FrequencyCapFilters$Builder;-><init>()V

    iget-object v1, p0, Landroidx/privacysandbox/ads/adservices/common/FrequencyCapFilters;->keyedFrequencyCapsForWinEvents:Ljava/util/List;

    invoke-direct {p0, v1}, Landroidx/privacysandbox/ads/adservices/common/FrequencyCapFilters;->convertToAdServices(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/adservices/common/FrequencyCapFilters$Builder;->setKeyedFrequencyCapsForWinEvents(Ljava/util/List;)Landroid/adservices/common/FrequencyCapFilters$Builder;

    move-result-object v0

    iget-object v1, p0, Landroidx/privacysandbox/ads/adservices/common/FrequencyCapFilters;->keyedFrequencyCapsForImpressionEvents:Ljava/util/List;

    invoke-direct {p0, v1}, Landroidx/privacysandbox/ads/adservices/common/FrequencyCapFilters;->convertToAdServices(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/adservices/common/FrequencyCapFilters$Builder;->setKeyedFrequencyCapsForImpressionEvents(Ljava/util/List;)Landroid/adservices/common/FrequencyCapFilters$Builder;

    move-result-object v0

    iget-object v1, p0, Landroidx/privacysandbox/ads/adservices/common/FrequencyCapFilters;->keyedFrequencyCapsForViewEvents:Ljava/util/List;

    invoke-direct {p0, v1}, Landroidx/privacysandbox/ads/adservices/common/FrequencyCapFilters;->convertToAdServices(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/adservices/common/FrequencyCapFilters$Builder;->setKeyedFrequencyCapsForViewEvents(Ljava/util/List;)Landroid/adservices/common/FrequencyCapFilters$Builder;

    move-result-object v0

    iget-object v1, p0, Landroidx/privacysandbox/ads/adservices/common/FrequencyCapFilters;->keyedFrequencyCapsForClickEvents:Ljava/util/List;

    invoke-direct {p0, v1}, Landroidx/privacysandbox/ads/adservices/common/FrequencyCapFilters;->convertToAdServices(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/adservices/common/FrequencyCapFilters$Builder;->setKeyedFrequencyCapsForClickEvents(Ljava/util/List;)Landroid/adservices/common/FrequencyCapFilters$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/adservices/common/FrequencyCapFilters$Builder;->build()Landroid/adservices/common/FrequencyCapFilters;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/privacysandbox/ads/adservices/common/FrequencyCapFilters;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    iget-object v1, p0, Landroidx/privacysandbox/ads/adservices/common/FrequencyCapFilters;->keyedFrequencyCapsForWinEvents:Ljava/util/List;

    check-cast p1, Landroidx/privacysandbox/ads/adservices/common/FrequencyCapFilters;

    iget-object v3, p1, Landroidx/privacysandbox/ads/adservices/common/FrequencyCapFilters;->keyedFrequencyCapsForWinEvents:Ljava/util/List;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroidx/privacysandbox/ads/adservices/common/FrequencyCapFilters;->keyedFrequencyCapsForImpressionEvents:Ljava/util/List;

    iget-object v3, p1, Landroidx/privacysandbox/ads/adservices/common/FrequencyCapFilters;->keyedFrequencyCapsForImpressionEvents:Ljava/util/List;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroidx/privacysandbox/ads/adservices/common/FrequencyCapFilters;->keyedFrequencyCapsForViewEvents:Ljava/util/List;

    iget-object v3, p1, Landroidx/privacysandbox/ads/adservices/common/FrequencyCapFilters;->keyedFrequencyCapsForViewEvents:Ljava/util/List;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p0, p0, Landroidx/privacysandbox/ads/adservices/common/FrequencyCapFilters;->keyedFrequencyCapsForClickEvents:Ljava/util/List;

    iget-object p1, p1, Landroidx/privacysandbox/ads/adservices/common/FrequencyCapFilters;->keyedFrequencyCapsForClickEvents:Ljava/util/List;

    invoke-static {p0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final getKeyedFrequencyCapsForClickEvents()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/privacysandbox/ads/adservices/common/KeyedFrequencyCap;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/privacysandbox/ads/adservices/common/FrequencyCapFilters;->keyedFrequencyCapsForClickEvents:Ljava/util/List;

    return-object p0
.end method

.method public final getKeyedFrequencyCapsForImpressionEvents()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/privacysandbox/ads/adservices/common/KeyedFrequencyCap;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/privacysandbox/ads/adservices/common/FrequencyCapFilters;->keyedFrequencyCapsForImpressionEvents:Ljava/util/List;

    return-object p0
.end method

.method public final getKeyedFrequencyCapsForViewEvents()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/privacysandbox/ads/adservices/common/KeyedFrequencyCap;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/privacysandbox/ads/adservices/common/FrequencyCapFilters;->keyedFrequencyCapsForViewEvents:Ljava/util/List;

    return-object p0
.end method

.method public final getKeyedFrequencyCapsForWinEvents()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/privacysandbox/ads/adservices/common/KeyedFrequencyCap;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/privacysandbox/ads/adservices/common/FrequencyCapFilters;->keyedFrequencyCapsForWinEvents:Ljava/util/List;

    return-object p0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Landroidx/privacysandbox/ads/adservices/common/FrequencyCapFilters;->keyedFrequencyCapsForWinEvents:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Landroidx/privacysandbox/ads/adservices/common/FrequencyCapFilters;->keyedFrequencyCapsForImpressionEvents:Ljava/util/List;

    invoke-static {v2, v0, v1}, Le2;->b(Ljava/util/List;II)I

    move-result v0

    iget-object v2, p0, Landroidx/privacysandbox/ads/adservices/common/FrequencyCapFilters;->keyedFrequencyCapsForViewEvents:Ljava/util/List;

    invoke-static {v2, v0, v1}, Le2;->b(Ljava/util/List;II)I

    move-result v0

    iget-object p0, p0, Landroidx/privacysandbox/ads/adservices/common/FrequencyCapFilters;->keyedFrequencyCapsForClickEvents:Ljava/util/List;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FrequencyCapFilters: keyedFrequencyCapsForWinEvents="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/privacysandbox/ads/adservices/common/FrequencyCapFilters;->keyedFrequencyCapsForWinEvents:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", keyedFrequencyCapsForImpressionEvents="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/privacysandbox/ads/adservices/common/FrequencyCapFilters;->keyedFrequencyCapsForImpressionEvents:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", keyedFrequencyCapsForViewEvents="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/privacysandbox/ads/adservices/common/FrequencyCapFilters;->keyedFrequencyCapsForViewEvents:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", keyedFrequencyCapsForClickEvents="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroidx/privacysandbox/ads/adservices/common/FrequencyCapFilters;->keyedFrequencyCapsForClickEvents:Ljava/util/List;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
