.class public final Landroidx/compose/runtime/composer/linkbuffer/KeyInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private final handle:J

.field private final index:I

.field private final key:I

.field private final nodes:I

.field private final objectKey:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILjava/lang/Object;JII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/compose/runtime/composer/linkbuffer/KeyInfo;->key:I

    iput-object p2, p0, Landroidx/compose/runtime/composer/linkbuffer/KeyInfo;->objectKey:Ljava/lang/Object;

    iput-wide p3, p0, Landroidx/compose/runtime/composer/linkbuffer/KeyInfo;->handle:J

    iput p5, p0, Landroidx/compose/runtime/composer/linkbuffer/KeyInfo;->nodes:I

    iput p6, p0, Landroidx/compose/runtime/composer/linkbuffer/KeyInfo;->index:I

    return-void
.end method


# virtual methods
.method public final getAddress()I
    .locals 2

    invoke-virtual {p0}, Landroidx/compose/runtime/composer/linkbuffer/KeyInfo;->getHandle()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/compose/runtime/composer/linkbuffer/GroupHandleKt;->getGroup(J)I

    move-result p0

    return p0
.end method

.method public final getHandle()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/runtime/composer/linkbuffer/KeyInfo;->handle:J

    return-wide v0
.end method

.method public final getIndex()I
    .locals 0

    iget p0, p0, Landroidx/compose/runtime/composer/linkbuffer/KeyInfo;->index:I

    return p0
.end method

.method public final getJoinedKey()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Landroidx/compose/runtime/composer/linkbuffer/KeyInfo;->objectKey:Ljava/lang/Object;

    iget v1, p0, Landroidx/compose/runtime/composer/linkbuffer/KeyInfo;->key:I

    if-eqz v0, :cond_0

    new-instance v0, Landroidx/compose/runtime/JoinedKey;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object p0, p0, Landroidx/compose/runtime/composer/linkbuffer/KeyInfo;->objectKey:Ljava/lang/Object;

    invoke-direct {v0, v1, p0}, Landroidx/compose/runtime/JoinedKey;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public final getKey()I
    .locals 0

    iget p0, p0, Landroidx/compose/runtime/composer/linkbuffer/KeyInfo;->key:I

    return p0
.end method

.method public final getNodes()I
    .locals 0

    iget p0, p0, Landroidx/compose/runtime/composer/linkbuffer/KeyInfo;->nodes:I

    return p0
.end method

.method public final getObjectKey()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroidx/compose/runtime/composer/linkbuffer/KeyInfo;->objectKey:Ljava/lang/Object;

    return-object p0
.end method
