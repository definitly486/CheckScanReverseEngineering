.class public final Le87;
.super Llj0;
.source "SourceFile"


# static fields
.field public static final c:[B


# instance fields
.field public final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "com.bumptech.glide.load.resource.bitmap.RoundedCorners"

    sget-object v1, Lkf4;->a:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Le87;->c:[B

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-lez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "roundingRadius must be greater than 0."

    invoke-static {v0, v1}, Lr96;->a(ZLjava/lang/String;)V

    iput p1, p0, Le87;->b:I

    return-void
.end method


# virtual methods
.method public final a(Ljava/security/MessageDigest;)V
    .locals 1

    sget-object v0, Le87;->c:[B

    invoke-virtual {p1, v0}, Ljava/security/MessageDigest;->update([B)V

    const/4 v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget p0, p0, Le87;->b:I

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/security/MessageDigest;->update([B)V

    return-void
.end method

.method public final c(Lij0;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 0

    sget-object p3, Lw19;->a:Landroid/graphics/Paint;

    iget p0, p0, Le87;->b:I

    if-lez p0, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    const-string p4, "roundingRadius must be greater than 0."

    invoke-static {p3, p4}, Lr96;->a(ZLjava/lang/String;)V

    new-instance p3, Lu19;

    invoke-direct {p3, p0}, Lu19;-><init>(I)V

    invoke-static {p1, p2, p3}, Lw19;->d(Lij0;Landroid/graphics/Bitmap;Lw19$a;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Le87;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Le87;

    iget p0, p0, Le87;->b:I

    iget p1, p1, Le87;->b:I

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v1
.end method

.method public final hashCode()I
    .locals 1

    iget p0, p0, Le87;->b:I

    const/16 v0, 0x11

    invoke-static {p0, v0}, Leb9;->h(II)I

    move-result p0

    const v0, -0x21f3caa6

    invoke-static {v0, p0}, Leb9;->h(II)I

    move-result p0

    return p0
.end method
