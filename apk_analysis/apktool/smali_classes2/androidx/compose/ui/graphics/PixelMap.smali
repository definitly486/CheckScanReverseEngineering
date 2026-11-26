.class public final Landroidx/compose/ui/graphics/PixelMap;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private final buffer:[I

.field private final bufferOffset:I

.field private final height:I

.field private final stride:I

.field private final width:I


# direct methods
.method public constructor <init>([IIIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/graphics/PixelMap;->buffer:[I

    iput p2, p0, Landroidx/compose/ui/graphics/PixelMap;->width:I

    iput p3, p0, Landroidx/compose/ui/graphics/PixelMap;->height:I

    iput p4, p0, Landroidx/compose/ui/graphics/PixelMap;->bufferOffset:I

    iput p5, p0, Landroidx/compose/ui/graphics/PixelMap;->stride:I

    return-void
.end method


# virtual methods
.method public final get-WaAFU9c(II)J
    .locals 2

    iget-object v0, p0, Landroidx/compose/ui/graphics/PixelMap;->buffer:[I

    iget v1, p0, Landroidx/compose/ui/graphics/PixelMap;->bufferOffset:I

    iget p0, p0, Landroidx/compose/ui/graphics/PixelMap;->stride:I

    invoke-static {p2, p0, v1, p1}, Lti0;->b(IIII)I

    move-result p0

    aget p0, v0, p0

    invoke-static {p0}, Landroidx/compose/ui/graphics/ColorKt;->Color(I)J

    move-result-wide p0

    return-wide p0
.end method

.method public final getBuffer()[I
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/graphics/PixelMap;->buffer:[I

    return-object p0
.end method

.method public final getBufferOffset()I
    .locals 0

    iget p0, p0, Landroidx/compose/ui/graphics/PixelMap;->bufferOffset:I

    return p0
.end method

.method public final getHeight()I
    .locals 0

    iget p0, p0, Landroidx/compose/ui/graphics/PixelMap;->height:I

    return p0
.end method

.method public final getStride()I
    .locals 0

    iget p0, p0, Landroidx/compose/ui/graphics/PixelMap;->stride:I

    return p0
.end method

.method public final getWidth()I
    .locals 0

    iget p0, p0, Landroidx/compose/ui/graphics/PixelMap;->width:I

    return p0
.end method
