.class public final Landroidx/compose/runtime/composer/linkbuffer/LinkGroupSourceInformation;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/runtime/composer/GroupSourceInformation;


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private closed:Z

.field private dataEndOffset:I

.field private final dataStartOffset:I

.field private groups:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final key:I

.field private sourceInformation:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/compose/runtime/composer/linkbuffer/LinkGroupSourceInformation;->key:I

    iput-object p2, p0, Landroidx/compose/runtime/composer/linkbuffer/LinkGroupSourceInformation;->sourceInformation:Ljava/lang/String;

    iput p3, p0, Landroidx/compose/runtime/composer/linkbuffer/LinkGroupSourceInformation;->dataStartOffset:I

    return-void
.end method

.method private final add(Ljava/lang/Object;)V
    .locals 1

    invoke-virtual {p0}, Landroidx/compose/runtime/composer/linkbuffer/LinkGroupSourceInformation;->getGroups()Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/compose/runtime/composer/linkbuffer/LinkGroupSourceInformation;->groups:Ljava/util/ArrayList;

    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private final hasGroup(Landroidx/compose/runtime/composer/linkbuffer/LinkAnchor;)Z
    .locals 5

    invoke-virtual {p0}, Landroidx/compose/runtime/composer/linkbuffer/LinkGroupSourceInformation;->getGroups()Ljava/util/ArrayList;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v1

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_2

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    instance-of v4, v3, Landroidx/compose/runtime/composer/linkbuffer/LinkGroupSourceInformation;

    if-eqz v4, :cond_0

    check-cast v3, Landroidx/compose/runtime/composer/linkbuffer/LinkGroupSourceInformation;

    invoke-direct {v3, p1}, Landroidx/compose/runtime/composer/linkbuffer/LinkGroupSourceInformation;->hasGroup(Landroidx/compose/runtime/composer/linkbuffer/LinkAnchor;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    const/4 p0, 0x1

    return p0

    :cond_2
    return v0
.end method

.method private final openInformation()Landroidx/compose/runtime/composer/linkbuffer/LinkGroupSourceInformation;
    .locals 5

    invoke-virtual {p0}, Landroidx/compose/runtime/composer/linkbuffer/LinkGroupSourceInformation;->getGroups()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Landroidx/compose/runtime/composer/linkbuffer/LinkGroupSourceInformation;

    if-eqz v4, :cond_0

    move-object v4, v3

    check-cast v4, Landroidx/compose/runtime/composer/linkbuffer/LinkGroupSourceInformation;

    invoke-virtual {v4}, Landroidx/compose/runtime/composer/linkbuffer/LinkGroupSourceInformation;->getClosed()Z

    move-result v4

    if-nez v4, :cond_0

    move-object v1, v3

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    check-cast v1, Landroidx/compose/runtime/composer/linkbuffer/LinkGroupSourceInformation;

    if-eqz v1, :cond_2

    invoke-direct {v1}, Landroidx/compose/runtime/composer/linkbuffer/LinkGroupSourceInformation;->openInformation()Landroidx/compose/runtime/composer/linkbuffer/LinkGroupSourceInformation;

    move-result-object v0

    if-eqz v0, :cond_2

    return-object v0

    :cond_2
    return-object p0
.end method


# virtual methods
.method public final addGroupAfter(Landroidx/compose/runtime/composer/linkbuffer/LinkAnchor;Landroidx/compose/runtime/composer/linkbuffer/LinkAnchor;)V
    .locals 4

    invoke-virtual {p0}, Landroidx/compose/runtime/composer/linkbuffer/LinkGroupSourceInformation;->getGroups()Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/compose/runtime/composer/linkbuffer/LinkGroupSourceInformation;->groups:Ljava/util/ArrayList;

    :cond_0
    const/4 p0, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_0
    if-ge p0, v1, :cond_2

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    instance-of v3, v2, Landroidx/compose/runtime/composer/linkbuffer/LinkGroupSourceInformation;

    if-eqz v3, :cond_1

    check-cast v2, Landroidx/compose/runtime/composer/linkbuffer/LinkGroupSourceInformation;

    invoke-direct {v2, p1}, Landroidx/compose/runtime/composer/linkbuffer/LinkGroupSourceInformation;->hasGroup(Landroidx/compose/runtime/composer/linkbuffer/LinkAnchor;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, -0x1

    :cond_3
    :goto_1
    invoke-virtual {v0, p0, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public final close(I)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/composer/linkbuffer/LinkGroupSourceInformation;->setClosed(Z)V

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/composer/linkbuffer/LinkGroupSourceInformation;->setDataEndOffset(I)V

    return-void
.end method

.method public final endGrouplessCall(I)V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/runtime/composer/linkbuffer/LinkGroupSourceInformation;->openInformation()Landroidx/compose/runtime/composer/linkbuffer/LinkGroupSourceInformation;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/composer/linkbuffer/LinkGroupSourceInformation;->close(I)V

    return-void
.end method

.method public getClosed()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/compose/runtime/composer/linkbuffer/LinkGroupSourceInformation;->closed:Z

    return p0
.end method

.method public getDataEndOffset()I
    .locals 0

    iget p0, p0, Landroidx/compose/runtime/composer/linkbuffer/LinkGroupSourceInformation;->dataEndOffset:I

    return p0
.end method

.method public getDataStartOffset()I
    .locals 0

    iget p0, p0, Landroidx/compose/runtime/composer/linkbuffer/LinkGroupSourceInformation;->dataStartOffset:I

    return p0
.end method

.method public getGroups()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/runtime/composer/linkbuffer/LinkGroupSourceInformation;->groups:Ljava/util/ArrayList;

    return-object p0
.end method

.method public getKey()I
    .locals 0

    iget p0, p0, Landroidx/compose/runtime/composer/linkbuffer/LinkGroupSourceInformation;->key:I

    return p0
.end method

.method public getSourceInformation()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroidx/compose/runtime/composer/linkbuffer/LinkGroupSourceInformation;->sourceInformation:Ljava/lang/String;

    return-object p0
.end method

.method public final removeGroup(Landroidx/compose/runtime/composer/linkbuffer/LinkAnchor;)Z
    .locals 5

    invoke-virtual {p0}, Landroidx/compose/runtime/composer/linkbuffer/LinkGroupSourceInformation;->getGroups()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v1

    :goto_0
    if-ltz v2, :cond_3

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Landroidx/compose/runtime/composer/linkbuffer/LinkAnchor;

    if-eqz v4, :cond_1

    if-eq v3, p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    instance-of v4, v3, Landroidx/compose/runtime/composer/linkbuffer/LinkGroupSourceInformation;

    if-eqz v4, :cond_2

    check-cast v3, Landroidx/compose/runtime/composer/linkbuffer/LinkGroupSourceInformation;

    invoke-virtual {v3, p1}, Landroidx/compose/runtime/composer/linkbuffer/LinkGroupSourceInformation;->removeGroup(Landroidx/compose/runtime/composer/linkbuffer/LinkAnchor;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/compose/runtime/composer/linkbuffer/LinkGroupSourceInformation;->groups:Ljava/util/ArrayList;

    const/4 p0, 0x0

    return p0

    :cond_4
    return v1
.end method

.method public final reportGroup(Landroidx/compose/runtime/composer/linkbuffer/LinkAnchor;)V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/runtime/composer/linkbuffer/LinkGroupSourceInformation;->openInformation()Landroidx/compose/runtime/composer/linkbuffer/LinkGroupSourceInformation;

    move-result-object p0

    invoke-direct {p0, p1}, Landroidx/compose/runtime/composer/linkbuffer/LinkGroupSourceInformation;->add(Ljava/lang/Object;)V

    return-void
.end method

.method public setClosed(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/compose/runtime/composer/linkbuffer/LinkGroupSourceInformation;->closed:Z

    return-void
.end method

.method public setDataEndOffset(I)V
    .locals 0

    iput p1, p0, Landroidx/compose/runtime/composer/linkbuffer/LinkGroupSourceInformation;->dataEndOffset:I

    return-void
.end method

.method public setSourceInformation(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/runtime/composer/linkbuffer/LinkGroupSourceInformation;->sourceInformation:Ljava/lang/String;

    return-void
.end method

.method public final startGrouplessCall(ILjava/lang/String;I)V
    .locals 1

    invoke-direct {p0}, Landroidx/compose/runtime/composer/linkbuffer/LinkGroupSourceInformation;->openInformation()Landroidx/compose/runtime/composer/linkbuffer/LinkGroupSourceInformation;

    move-result-object p0

    new-instance v0, Landroidx/compose/runtime/composer/linkbuffer/LinkGroupSourceInformation;

    invoke-direct {v0, p1, p2, p3}, Landroidx/compose/runtime/composer/linkbuffer/LinkGroupSourceInformation;-><init>(ILjava/lang/String;I)V

    invoke-direct {p0, v0}, Landroidx/compose/runtime/composer/linkbuffer/LinkGroupSourceInformation;->add(Ljava/lang/Object;)V

    return-void
.end method
