.class public final Lyads/e50;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/wx3;


# instance fields
.field public final a:Lyads/vx3;

.field public final b:[Lyads/wx3;


# direct methods
.method public varargs constructor <init>([Lyads/wx3;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lyads/vx3;

    invoke-direct {v0}, Lyads/vx3;-><init>()V

    iput-object v0, p0, Lyads/e50;->a:Lyads/vx3;

    iput-object p1, p0, Lyads/e50;->b:[Lyads/wx3;

    return-void
.end method


# virtual methods
.method public final a(II)Lyads/vx3;
    .locals 5

    iget-object v0, p0, Lyads/e50;->b:[Lyads/wx3;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-interface {v3, p1, p2}, Lyads/wx3;->a(II)Lyads/vx3;

    move-result-object p1

    iget p2, p1, Lyads/vx3;->a:I

    iget p1, p1, Lyads/vx3;->b:I

    add-int/lit8 v2, v2, 0x1

    move v4, p2

    move p2, p1

    move p1, v4

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lyads/e50;->a:Lyads/vx3;

    iput p1, p0, Lyads/vx3;->a:I

    iput p2, p0, Lyads/vx3;->b:I

    return-object p0
.end method
