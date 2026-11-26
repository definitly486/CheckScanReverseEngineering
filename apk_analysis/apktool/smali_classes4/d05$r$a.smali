.class public final Ld05$r$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld05$j;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld05$r;
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
        "Ld05$r<",
        "TK;TV;>;",
        "Ld05$s<",
        "TK;TV;>;>;"
    }
.end annotation


# static fields
.field public static final a:Ld05$r$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ld05$r$a<",
            "**>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ld05$r$a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ld05$r$a;->a:Ld05$r$a;

    return-void
.end method


# virtual methods
.method public final a(Ld05$m;Ld05$i;Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Ld05$s;

    check-cast p2, Ld05$r;

    iget-object p0, p2, Ld05$r;->c:Ld05$a0;

    new-instance v0, Ld05$b0;

    iget-object p1, p1, Ld05$s;->i:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0, p1, p3, p2}, Ld05$b0;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Ld05$i;)V

    iput-object v0, p2, Ld05$r;->c:Ld05$a0;

    invoke-interface {p0}, Ld05$a0;->clear()V

    return-void
.end method

.method public final b()Ld05$o;
    .locals 0

    sget-object p0, Ld05$o;->STRONG:Ld05$o;

    return-object p0
.end method

.method public final c()Ld05$o;
    .locals 0

    sget-object p0, Ld05$o;->WEAK:Ld05$o;

    return-object p0
.end method

.method public final d(Ld05$m;Ljava/lang/Object;ILd05$i;)Ld05$i;
    .locals 0

    check-cast p1, Ld05$s;

    check-cast p4, Ld05$r;

    if-nez p4, :cond_0

    new-instance p0, Ld05$r;

    invoke-direct {p0, p2, p3}, Ld05$r;-><init>(Ljava/lang/Object;I)V

    return-object p0

    :cond_0
    new-instance p0, Ld05$r$b;

    invoke-direct {p0, p2, p3, p4}, Ld05$r$b;-><init>(Ljava/lang/Object;ILd05$r;)V

    return-object p0
.end method

.method public final e(Ld05;I)Ld05$m;
    .locals 0

    new-instance p0, Ld05$s;

    invoke-direct {p0, p1, p2}, Ld05$s;-><init>(Ld05;I)V

    return-object p0
.end method

.method public final f(Ld05$m;Ld05$i;Ld05$i;)Ld05$i;
    .locals 2

    check-cast p1, Ld05$s;

    check-cast p2, Ld05$r;

    check-cast p3, Ld05$r;

    sget p0, Ld05$m;->h:I

    invoke-virtual {p2}, Ld05$r;->getValue()Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p2, Ld05$c;->a:Ljava/lang/Object;

    iget v0, p2, Ld05$c;->b:I

    if-nez p3, :cond_1

    new-instance p3, Ld05$r;

    invoke-direct {p3, p0, v0}, Ld05$r;-><init>(Ljava/lang/Object;I)V

    goto :goto_0

    :cond_1
    new-instance v1, Ld05$r$b;

    invoke-direct {v1, p0, v0, p3}, Ld05$r$b;-><init>(Ljava/lang/Object;ILd05$r;)V

    move-object p3, v1

    :goto_0
    iget-object p0, p2, Ld05$r;->c:Ld05$a0;

    iget-object p1, p1, Ld05$s;->i:Ljava/lang/ref/ReferenceQueue;

    invoke-interface {p0, p1, p3}, Ld05$a0;->b(Ljava/lang/ref/ReferenceQueue;Ld05$z;)Ld05$a0;

    move-result-object p0

    iput-object p0, p3, Ld05$r;->c:Ld05$a0;

    return-object p3
.end method
