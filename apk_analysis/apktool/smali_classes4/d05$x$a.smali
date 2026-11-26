.class public final Ld05$x$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld05$j;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld05$x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ld05$j<",
        "TK;TV;",
        "Ld05$x<",
        "TK;TV;>;",
        "Ld05$y<",
        "TK;TV;>;>;"
    }
.end annotation


# static fields
.field public static final a:Ld05$x$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ld05$x$a<",
            "**>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ld05$x$a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ld05$x$a;->a:Ld05$x$a;

    return-void
.end method


# virtual methods
.method public final a(Ld05$m;Ld05$i;Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Ld05$y;

    check-cast p2, Ld05$x;

    iget-object p0, p2, Ld05$x;->b:Ld05$a0;

    new-instance v0, Ld05$b0;

    iget-object p1, p1, Ld05$y;->j:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0, p1, p3, p2}, Ld05$b0;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Ld05$i;)V

    iput-object v0, p2, Ld05$x;->b:Ld05$a0;

    invoke-interface {p0}, Ld05$a0;->clear()V

    return-void
.end method

.method public final b()Ld05$o;
    .locals 0

    sget-object p0, Ld05$o;->WEAK:Ld05$o;

    return-object p0
.end method

.method public final c()Ld05$o;
    .locals 0

    sget-object p0, Ld05$o;->WEAK:Ld05$o;

    return-object p0
.end method

.method public final d(Ld05$m;Ljava/lang/Object;ILd05$i;)Ld05$i;
    .locals 0

    check-cast p1, Ld05$y;

    check-cast p4, Ld05$x;

    if-nez p4, :cond_0

    new-instance p0, Ld05$x;

    iget-object p1, p1, Ld05$y;->i:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {p0, p1, p2, p3}, Ld05$x;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;I)V

    return-object p0

    :cond_0
    new-instance p0, Ld05$x$b;

    iget-object p1, p1, Ld05$y;->i:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {p0, p1, p2, p3, p4}, Ld05$x$b;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILd05$x;)V

    return-object p0
.end method

.method public final e(Ld05;I)Ld05$m;
    .locals 0

    new-instance p0, Ld05$y;

    invoke-direct {p0, p1, p2}, Ld05$y;-><init>(Ld05;I)V

    return-object p0
.end method

.method public final f(Ld05$m;Ld05$i;Ld05$i;)Ld05$i;
    .locals 3

    check-cast p1, Ld05$y;

    check-cast p2, Ld05$x;

    check-cast p3, Ld05$x;

    invoke-virtual {p2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    sget v0, Ld05$m;->h:I

    iget-object v0, p2, Ld05$x;->b:Ld05$a0;

    invoke-interface {v0}, Ld05$a0;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    :goto_0
    const/4 p0, 0x0

    return-object p0

    :cond_1
    iget v0, p2, Ld05$d;->a:I

    if-nez p3, :cond_2

    new-instance p3, Ld05$x;

    iget-object v1, p1, Ld05$y;->i:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {p3, v1, p0, v0}, Ld05$x;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;I)V

    goto :goto_1

    :cond_2
    new-instance v1, Ld05$x$b;

    iget-object v2, p1, Ld05$y;->i:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v1, v2, p0, v0, p3}, Ld05$x$b;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILd05$x;)V

    move-object p3, v1

    :goto_1
    iget-object p0, p2, Ld05$x;->b:Ld05$a0;

    iget-object p1, p1, Ld05$y;->j:Ljava/lang/ref/ReferenceQueue;

    invoke-interface {p0, p1, p3}, Ld05$a0;->b(Ljava/lang/ref/ReferenceQueue;Ld05$z;)Ld05$a0;

    move-result-object p0

    iput-object p0, p3, Ld05$x;->b:Ld05$a0;

    return-object p3
.end method
