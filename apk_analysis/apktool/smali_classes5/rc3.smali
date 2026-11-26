.class public final Lrc3;
.super Lcg6;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcg6<",
        "Ljava/lang/Float;",
        "[F",
        "Lqc3;",
        ">;"
    }
.end annotation


# static fields
.field public static final c:Lrc3;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lrc3;

    sget-object v1, Lwc3;->a:Lwc3;

    invoke-direct {v0, v1}, Lcg6;-><init>(Ldf4;)V

    sput-object v0, Lrc3;->c:Lrc3;

    return-void
.end method


# virtual methods
.method public final e(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, [F

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    array-length p0, p1

    return p0
.end method

.method public final h(Ldu1;ILjava/lang/Object;)V
    .locals 1

    check-cast p3, Lqc3;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcg6;->b:Lbg6;

    invoke-interface {p1, p0, p2}, Ldu1;->decodeFloatElement(Lmp7;I)F

    move-result p0

    invoke-static {p3}, Lag6;->c(Lag6;)V

    iget-object p1, p3, Lqc3;->a:[F

    iget p2, p3, Lqc3;->b:I

    add-int/lit8 v0, p2, 0x1

    iput v0, p3, Lqc3;->b:I

    aput p0, p1, p2

    return-void
.end method

.method public final i(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [F

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lqc3;

    invoke-direct {p0}, Lag6;-><init>()V

    iput-object p1, p0, Lqc3;->a:[F

    array-length p1, p1

    iput p1, p0, Lqc3;->b:I

    const/16 p1, 0xa

    invoke-virtual {p0, p1}, Lqc3;->b(I)V

    return-object p0
.end method

.method public final l()Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    new-array p0, p0, [F

    return-object p0
.end method

.method public final m(Lgu1;Ljava/lang/Object;I)V
    .locals 3

    check-cast p2, [F

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    iget-object v1, p0, Lcg6;->b:Lbg6;

    aget v2, p2, v0

    invoke-interface {p1, v1, v0, v2}, Lgu1;->encodeFloatElement(Lmp7;IF)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
