.class public final Ln49;
.super Lcg6;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcg6<",
        "Lk49;",
        "Ll49;",
        "Lm49;",
        ">;"
    }
.end annotation


# static fields
.field public static final c:Ln49;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ln49;

    sget-object v1, Lo49;->a:Lo49;

    invoke-direct {v0, v1}, Lcg6;-><init>(Ldf4;)V

    sput-object v0, Ln49;->c:Ln49;

    return-void
.end method


# virtual methods
.method public final e(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Ll49;

    iget-object p0, p1, Ll49;->b:[I

    array-length p0, p0

    return p0
.end method

.method public final h(Ldu1;ILjava/lang/Object;)V
    .locals 1

    check-cast p3, Lm49;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcg6;->b:Lbg6;

    invoke-interface {p1, p0, p2}, Ldu1;->decodeInlineElement(Lmp7;I)Lud2;

    move-result-object p0

    invoke-interface {p0}, Lud2;->decodeInt()I

    move-result p0

    invoke-static {p3}, Lag6;->c(Lag6;)V

    iget-object p1, p3, Lm49;->a:[I

    iget p2, p3, Lm49;->b:I

    add-int/lit8 v0, p2, 0x1

    iput v0, p3, Lm49;->b:I

    aput p0, p1, p2

    return-void
.end method

.method public final i(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ll49;

    iget-object p0, p1, Ll49;->b:[I

    new-instance p1, Lm49;

    invoke-direct {p1}, Lag6;-><init>()V

    iput-object p0, p1, Lm49;->a:[I

    array-length p0, p0

    iput p0, p1, Lm49;->b:I

    const/16 p0, 0xa

    invoke-virtual {p1, p0}, Lm49;->b(I)V

    return-object p1
.end method

.method public final l()Ljava/lang/Object;
    .locals 1

    const/4 p0, 0x0

    new-array p0, p0, [I

    new-instance v0, Ll49;

    invoke-direct {v0, p0}, Ll49;-><init>([I)V

    return-object v0
.end method

.method public final m(Lgu1;Ljava/lang/Object;I)V
    .locals 3

    check-cast p2, Ll49;

    iget-object p2, p2, Ll49;->b:[I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    iget-object v1, p0, Lcg6;->b:Lbg6;

    invoke-interface {p1, v1, v0}, Lgu1;->encodeInlineElement(Lmp7;I)Lux2;

    move-result-object v1

    aget v2, p2, v0

    invoke-interface {v1, v2}, Lux2;->encodeInt(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
