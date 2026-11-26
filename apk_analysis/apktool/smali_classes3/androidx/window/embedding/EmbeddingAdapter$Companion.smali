.class public final Landroidx/window/embedding/EmbeddingAdapter$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/window/embedding/EmbeddingAdapter;
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

    invoke-direct {p0}, Landroidx/window/embedding/EmbeddingAdapter$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final generateTag(Landroidx/window/embedding/EmbeddingRule;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroidx/window/embedding/EmbeddingAdapter$Companion;->getRULE_TAG_PREFIX()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroidx/window/embedding/EmbeddingRule;->hashCode()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getINVALID_SPLIT_INFO_TOKEN()Landroid/os/Binder;
    .locals 0

    invoke-static {}, Landroidx/window/embedding/EmbeddingAdapter;->access$getINVALID_SPLIT_INFO_TOKEN$cp()Landroid/os/Binder;

    move-result-object p0

    return-object p0
.end method

.method public final getRULE_TAG_PREFIX()Ljava/lang/String;
    .locals 0

    invoke-static {}, Landroidx/window/embedding/EmbeddingAdapter;->access$getRULE_TAG_PREFIX$cp()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final isTagGenerated(Ljava/lang/String;)Z
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroidx/window/embedding/EmbeddingAdapter$Companion;->getRULE_TAG_PREFIX()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lta8;->T(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const/16 p1, 0x10

    invoke-static {p1, p0}, Lqa8;->o(ILjava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
