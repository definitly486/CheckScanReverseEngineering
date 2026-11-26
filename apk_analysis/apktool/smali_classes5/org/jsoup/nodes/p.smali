.class public Lorg/jsoup/nodes/p;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jsoup/nodes/p$a;
    }
.end annotation


# instance fields
.field public final a:Lorg/jsoup/nodes/n;

.field public final b:Lnw6;

.field public final c:Lorg/jsoup/nodes/f$a;


# direct methods
.method public constructor <init>(Lorg/jsoup/nodes/n;Lnw6;Lorg/jsoup/nodes/f$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/jsoup/nodes/p;->a:Lorg/jsoup/nodes/n;

    iput-object p2, p0, Lorg/jsoup/nodes/p;->b:Lnw6;

    iput-object p3, p0, Lorg/jsoup/nodes/p;->c:Lorg/jsoup/nodes/f$a;

    return-void
.end method


# virtual methods
.method public a(Lorg/jsoup/nodes/h;I)V
    .locals 0

    iget-object p2, p0, Lorg/jsoup/nodes/p;->b:Lnw6;

    iget-object p0, p0, Lorg/jsoup/nodes/p;->c:Lorg/jsoup/nodes/f$a;

    invoke-virtual {p1, p2, p0}, Lorg/jsoup/nodes/h;->y(Lnw6;Lorg/jsoup/nodes/f$a;)V

    return-void
.end method

.method public b(Lorg/jsoup/nodes/m;I)V
    .locals 0

    iget-object p2, p0, Lorg/jsoup/nodes/p;->b:Lnw6;

    iget-object p0, p0, Lorg/jsoup/nodes/p;->c:Lorg/jsoup/nodes/f$a;

    invoke-virtual {p1, p2, p0}, Lorg/jsoup/nodes/n;->y(Lnw6;Lorg/jsoup/nodes/f$a;)V

    return-void
.end method

.method public c(Lorg/jsoup/nodes/h;I)V
    .locals 1

    iget-object p2, p1, Lorg/jsoup/nodes/h;->f:Lorg/jsoup/nodes/h$a;

    invoke-virtual {p2}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_1

    const-string p2, "</"

    iget-object v0, p0, Lorg/jsoup/nodes/p;->b:Lnw6;

    invoke-virtual {v0, p2}, Lnw6;->b(Ljava/lang/String;)Lnw6;

    move-result-object p2

    iget-object p0, p0, Lorg/jsoup/nodes/p;->c:Lorg/jsoup/nodes/f$a;

    iget-object p0, p0, Lorg/jsoup/nodes/f$a;->g:Lorg/jsoup/nodes/f$a$a;

    sget-object v0, Lorg/jsoup/nodes/f$a$a;->xml:Lorg/jsoup/nodes/f$a$a;

    iget-object p1, p1, Lorg/jsoup/nodes/h;->e:Ljj8;

    if-ne p0, v0, :cond_0

    iget-object p0, p1, Ljj8;->c:Ljava/lang/String;

    invoke-static {p0, v0}, Lorg/jsoup/nodes/a;->b(Ljava/lang/String;Lorg/jsoup/nodes/f$a$a;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    iget-object p0, p1, Ljj8;->c:Ljava/lang/String;

    :goto_0
    invoke-virtual {p2, p0}, Lnw6;->b(Ljava/lang/String;)Lnw6;

    move-result-object p0

    const/16 p1, 0x3e

    invoke-virtual {p0, p1}, Lnw6;->a(C)Lnw6;

    :cond_1
    return-void
.end method

.method public d(Lorg/jsoup/nodes/r;II)V
    .locals 0

    or-int/lit8 p2, p2, 0x1

    invoke-virtual {p1}, Lorg/jsoup/nodes/m;->E()Ljava/lang/String;

    move-result-object p1

    iget-object p3, p0, Lorg/jsoup/nodes/p;->c:Lorg/jsoup/nodes/f$a;

    iget-object p0, p0, Lorg/jsoup/nodes/p;->b:Lnw6;

    invoke-static {p0, p1, p3, p2}, Lorg/jsoup/nodes/j;->c(Lnw6;Ljava/lang/String;Lorg/jsoup/nodes/f$a;I)V

    return-void
.end method

.method public final e(I)V
    .locals 5

    iget-object v0, p0, Lorg/jsoup/nodes/p;->b:Lnw6;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lnw6;->a(C)Lnw6;

    move-result-object v0

    iget-object p0, p0, Lorg/jsoup/nodes/p;->c:Lorg/jsoup/nodes/f$a;

    iget v1, p0, Lorg/jsoup/nodes/f$a;->e:I

    mul-int/2addr p1, v1

    iget p0, p0, Lorg/jsoup/nodes/f$a;->f:I

    sget-object v1, Lja8;->a:[Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ltz p1, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    const-string v4, "width must be >= 0"

    invoke-static {v4, v3}, Lyb9;->a(Ljava/lang/String;Z)V

    const/4 v3, -0x1

    if-lt p0, v3, :cond_1

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    invoke-static {v2}, Lyb9;->b(Z)V

    if-eq p0, v3, :cond_2

    invoke-static {p1, p0}, Ljava/lang/Math;->min(II)I

    move-result p1

    :cond_2
    sget-object p0, Lja8;->a:[Ljava/lang/String;

    const/16 v2, 0x15

    if-ge p1, v2, :cond_3

    aget-object p0, p0, p1

    goto :goto_3

    :cond_3
    new-array p0, p1, [C

    :goto_2
    if-ge v1, p1, :cond_4

    const/16 v2, 0x20

    aput-char v2, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    invoke-static {p0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object p0

    :goto_3
    invoke-virtual {v0, p0}, Lnw6;->b(Ljava/lang/String;)Lnw6;

    return-void
.end method
