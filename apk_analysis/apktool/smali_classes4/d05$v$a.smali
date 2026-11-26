.class public final Ld05$v$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld05$j;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld05$v;
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
        "Ld05$v<",
        "TK;TV;>;",
        "Ld05$w<",
        "TK;TV;>;>;"
    }
.end annotation


# static fields
.field public static final a:Ld05$v$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ld05$v$a<",
            "**>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ld05$v$a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ld05$v$a;->a:Ld05$v$a;

    return-void
.end method


# virtual methods
.method public final a(Ld05$m;Ld05$i;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ld05$w;

    check-cast p2, Ld05$v;

    iput-object p3, p2, Ld05$v;->b:Ljava/lang/Object;

    return-void
.end method

.method public final b()Ld05$o;
    .locals 0

    sget-object p0, Ld05$o;->WEAK:Ld05$o;

    return-object p0
.end method

.method public final c()Ld05$o;
    .locals 0

    sget-object p0, Ld05$o;->STRONG:Ld05$o;

    return-object p0
.end method

.method public final d(Ld05$m;Ljava/lang/Object;ILd05$i;)Ld05$i;
    .locals 0

    check-cast p1, Ld05$w;

    check-cast p4, Ld05$v;

    if-nez p4, :cond_0

    new-instance p0, Ld05$v;

    iget-object p1, p1, Ld05$w;->i:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {p0, p1, p2, p3}, Ld05$v;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;I)V

    return-object p0

    :cond_0
    new-instance p0, Ld05$v$b;

    iget-object p1, p1, Ld05$w;->i:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {p0, p1, p2, p3, p4}, Ld05$v$b;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILd05$v;)V

    return-object p0
.end method

.method public final e(Ld05;I)Ld05$m;
    .locals 0

    new-instance p0, Ld05$w;

    invoke-direct {p0, p1, p2}, Ld05$w;-><init>(Ld05;I)V

    return-object p0
.end method

.method public final f(Ld05$m;Ld05$i;Ld05$i;)Ld05$i;
    .locals 2

    check-cast p1, Ld05$w;

    check-cast p2, Ld05$v;

    check-cast p3, Ld05$v;

    invoke-virtual {p2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget v0, p2, Ld05$d;->a:I

    if-nez p3, :cond_1

    new-instance p3, Ld05$v;

    iget-object p1, p1, Ld05$w;->i:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {p3, p1, p0, v0}, Ld05$v;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;I)V

    goto :goto_0

    :cond_1
    new-instance v1, Ld05$v$b;

    iget-object p1, p1, Ld05$w;->i:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v1, p1, p0, v0, p3}, Ld05$v$b;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILd05$v;)V

    move-object p3, v1

    :goto_0
    iget-object p0, p2, Ld05$v;->b:Ljava/lang/Object;

    iput-object p0, p3, Ld05$v;->b:Ljava/lang/Object;

    return-object p3
.end method
