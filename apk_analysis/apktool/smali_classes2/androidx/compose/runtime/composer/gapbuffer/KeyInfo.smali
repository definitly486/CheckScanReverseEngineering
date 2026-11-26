.class public final Landroidx/compose/runtime/composer/gapbuffer/KeyInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private final index:I

.field private final key:I

.field private final location:I

.field private final nodes:I

.field private final objectKey:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILjava/lang/Object;III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/compose/runtime/composer/gapbuffer/KeyInfo;->key:I

    iput-object p2, p0, Landroidx/compose/runtime/composer/gapbuffer/KeyInfo;->objectKey:Ljava/lang/Object;

    iput p3, p0, Landroidx/compose/runtime/composer/gapbuffer/KeyInfo;->location:I

    iput p4, p0, Landroidx/compose/runtime/composer/gapbuffer/KeyInfo;->nodes:I

    iput p5, p0, Landroidx/compose/runtime/composer/gapbuffer/KeyInfo;->index:I

    return-void
.end method


# virtual methods
.method public final getIndex()I
    .locals 0

    iget p0, p0, Landroidx/compose/runtime/composer/gapbuffer/KeyInfo;->index:I

    return p0
.end method

.method public final getKey()I
    .locals 0

    iget p0, p0, Landroidx/compose/runtime/composer/gapbuffer/KeyInfo;->key:I

    return p0
.end method

.method public final getLocation()I
    .locals 0

    iget p0, p0, Landroidx/compose/runtime/composer/gapbuffer/KeyInfo;->location:I

    return p0
.end method

.method public final getNodes()I
    .locals 0

    iget p0, p0, Landroidx/compose/runtime/composer/gapbuffer/KeyInfo;->nodes:I

    return p0
.end method

.method public final getObjectKey()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroidx/compose/runtime/composer/gapbuffer/KeyInfo;->objectKey:Ljava/lang/Object;

    return-object p0
.end method
