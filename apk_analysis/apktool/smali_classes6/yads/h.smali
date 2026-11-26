.class public abstract Lyads/h;
.super Lyads/i46;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lyads/i46;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lyads/h;->b:I

    return-void
.end method


# virtual methods
.method public abstract a()Ljava/lang/Object;
.end method

.method public final hasNext()Z
    .locals 5

    iget v0, p0, Lyads/h;->b:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    invoke-static {v0}, Lyads/xn0;->a(I)I

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eq v0, v3, :cond_0

    iput v1, p0, Lyads/h;->b:I

    invoke-virtual {p0}, Lyads/h;->a()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lyads/h;->c:Ljava/lang/Object;

    iget v0, p0, Lyads/h;->b:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iput v2, p0, Lyads/h;->b:I

    return v2

    :cond_0
    return v4

    :cond_1
    return v2

    :cond_2
    invoke-static {}, Lud;->g()V

    const/4 p0, 0x0

    return p0
.end method

.method public final next()Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0}, Lyads/h;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    iput v0, p0, Lyads/h;->b:I

    iget-object v0, p0, Lyads/h;->c:Ljava/lang/Object;

    const/4 v1, 0x0

    iput-object v1, p0, Lyads/h;->c:Ljava/lang/Object;

    return-object v0

    :cond_0
    invoke-static {}, Lqz0;->e()V

    const/4 p0, 0x0

    return-object p0
.end method
