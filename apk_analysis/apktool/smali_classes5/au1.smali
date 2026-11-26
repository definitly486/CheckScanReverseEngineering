.class public Lau1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyd4;

.field public b:Z


# direct methods
.method public constructor <init>(Lyd4;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lau1;->a:Lyd4;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lau1;->b:Z

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lau1;->b:Z

    return-void
.end method

.method public b(B)V
    .locals 2

    iget-object p0, p0, Lau1;->a:Lyd4;

    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lyd4;->d(J)V

    return-void
.end method

.method public final c(C)V
    .locals 3

    const/4 v0, 0x1

    iget-object p0, p0, Lau1;->a:Lyd4;

    iget v1, p0, Lyd4;->b:I

    invoke-virtual {p0, v1, v0}, Lyd4;->a(II)V

    iget-object v0, p0, Lyd4;->a:[C

    iget v1, p0, Lyd4;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lyd4;->b:I

    aput-char p1, v0, v1

    return-void
.end method

.method public d(I)V
    .locals 2

    iget-object p0, p0, Lau1;->a:Lyd4;

    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lyd4;->d(J)V

    return-void
.end method

.method public e(J)V
    .locals 0

    iget-object p0, p0, Lau1;->a:Lyd4;

    invoke-virtual {p0, p1, p2}, Lyd4;->d(J)V

    return-void
.end method

.method public f(S)V
    .locals 2

    iget-object p0, p0, Lau1;->a:Lyd4;

    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lyd4;->d(J)V

    return-void
.end method

.method public g(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lau1;->a:Lyd4;

    invoke-virtual {p0, p1}, Lyd4;->e(Ljava/lang/String;)V

    return-void
.end method

.method public h()V
    .locals 0

    return-void
.end method

.method public i()V
    .locals 0

    return-void
.end method
