.class public final Li49;
.super Lcg6;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcg6<",
        "Lf49;",
        "Lg49;",
        "Lh49;",
        ">;"
    }
.end annotation


# static fields
.field public static final c:Li49;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Li49;

    sget-object v1, Lj49;->a:Lj49;

    invoke-direct {v0, v1}, Lcg6;-><init>(Ldf4;)V

    sput-object v0, Li49;->c:Li49;

    return-void
.end method


# virtual methods
.method public final e(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lg49;

    iget-object p0, p1, Lg49;->b:[B

    array-length p0, p0

    return p0
.end method

.method public final h(Ldu1;ILjava/lang/Object;)V
    .locals 1

    check-cast p3, Lh49;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcg6;->b:Lbg6;

    invoke-interface {p1, p0, p2}, Ldu1;->decodeInlineElement(Lmp7;I)Lud2;

    move-result-object p0

    invoke-interface {p0}, Lud2;->decodeByte()B

    move-result p0

    invoke-static {p3}, Lag6;->c(Lag6;)V

    iget-object p1, p3, Lh49;->a:[B

    iget p2, p3, Lh49;->b:I

    add-int/lit8 v0, p2, 0x1

    iput v0, p3, Lh49;->b:I

    aput-byte p0, p1, p2

    return-void
.end method

.method public final i(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lg49;

    iget-object p0, p1, Lg49;->b:[B

    new-instance p1, Lh49;

    invoke-direct {p1}, Lag6;-><init>()V

    iput-object p0, p1, Lh49;->a:[B

    array-length p0, p0

    iput p0, p1, Lh49;->b:I

    const/16 p0, 0xa

    invoke-virtual {p1, p0}, Lh49;->b(I)V

    return-object p1
.end method

.method public final l()Ljava/lang/Object;
    .locals 1

    const/4 p0, 0x0

    new-array p0, p0, [B

    new-instance v0, Lg49;

    invoke-direct {v0, p0}, Lg49;-><init>([B)V

    return-object v0
.end method

.method public final m(Lgu1;Ljava/lang/Object;I)V
    .locals 3

    check-cast p2, Lg49;

    iget-object p2, p2, Lg49;->b:[B

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    iget-object v1, p0, Lcg6;->b:Lbg6;

    invoke-interface {p1, v1, v0}, Lgu1;->encodeInlineElement(Lmp7;I)Lux2;

    move-result-object v1

    aget-byte v2, p2, v0

    invoke-interface {v1, v2}, Lux2;->encodeByte(B)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
