.class public final Lyads/km0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public final b:Z

.field public final c:Z


# direct methods
.method public constructor <init>(Lyads/vz2;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget p1, p1, Lyads/vz2;->e:I

    const/4 v0, 0x1

    and-int/2addr p1, v0

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lyads/km0;->b:Z

    invoke-static {p2, v1}, Lyads/um0;->a(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lyads/km0;->c:Z

    return-void
.end method


# virtual methods
.method public final compareTo(Ljava/lang/Object;)I
    .locals 2

    check-cast p1, Lyads/km0;

    iget-boolean v0, p0, Lyads/km0;->c:Z

    iget-boolean v1, p1, Lyads/km0;->c:Z

    invoke-static {v0, v1}, Lyads/xu;->a(ZZ)I

    move-result v0

    invoke-static {v0}, Lyads/q40;->a(I)Lyads/s40;

    move-result-object v0

    iget-boolean p0, p0, Lyads/km0;->b:Z

    iget-boolean p1, p1, Lyads/km0;->b:Z

    invoke-virtual {v0, p0, p1}, Lyads/s40;->a(ZZ)Lyads/s40;

    move-result-object p0

    invoke-virtual {p0}, Lyads/s40;->a()I

    move-result p0

    return p0
.end method
