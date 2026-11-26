.class public final Lur3;
.super Llj0;
.source "SourceFile"


# static fields
.field public static final f:[B


# instance fields
.field public final b:F

.field public final c:F

.field public final d:F

.field public final e:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "com.bumptech.glide.load.resource.bitmap.GranularRoundedCorners"

    sget-object v1, Lkf4;->a:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Lur3;->f:[B

    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lur3;->b:F

    iput p2, p0, Lur3;->c:F

    iput p3, p0, Lur3;->d:F

    iput p4, p0, Lur3;->e:F

    return-void
.end method


# virtual methods
.method public final a(Ljava/security/MessageDigest;)V
    .locals 2

    sget-object v0, Lur3;->f:[B

    invoke-virtual {p1, v0}, Ljava/security/MessageDigest;->update([B)V

    const/16 v0, 0x10

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget v1, p0, Lur3;->b:F

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget v1, p0, Lur3;->c:F

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget v1, p0, Lur3;->d:F

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget p0, p0, Lur3;->e:F

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/security/MessageDigest;->update([B)V

    return-void
.end method

.method public final c(Lij0;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 2

    new-instance p3, Lv19;

    iget p4, p0, Lur3;->b:F

    iget v0, p0, Lur3;->c:F

    iget v1, p0, Lur3;->d:F

    iget p0, p0, Lur3;->e:F

    invoke-direct {p3, p4, v0, v1, p0}, Lv19;-><init>(FFFF)V

    invoke-static {p1, p2, p3}, Lw19;->d(Lij0;Landroid/graphics/Bitmap;Lw19$a;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lur3;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lur3;

    iget v0, p0, Lur3;->b:F

    iget v2, p1, Lur3;->b:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    iget v0, p0, Lur3;->c:F

    iget v2, p1, Lur3;->c:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    iget v0, p0, Lur3;->d:F

    iget v2, p1, Lur3;->d:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    iget p0, p0, Lur3;->e:F

    iget p1, p1, Lur3;->e:F

    cmpl-float p0, p0, p1

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v1
.end method

.method public final hashCode()I
    .locals 2

    iget v0, p0, Lur3;->b:F

    const/16 v1, 0x11

    invoke-static {v0, v1}, Leb9;->g(FI)I

    move-result v0

    const v1, -0x78051026

    invoke-static {v1, v0}, Leb9;->h(II)I

    move-result v0

    iget v1, p0, Lur3;->c:F

    invoke-static {v1, v0}, Leb9;->g(FI)I

    move-result v0

    iget v1, p0, Lur3;->d:F

    invoke-static {v1, v0}, Leb9;->g(FI)I

    move-result v0

    iget p0, p0, Lur3;->e:F

    invoke-static {p0, v0}, Leb9;->g(FI)I

    move-result p0

    return p0
.end method
