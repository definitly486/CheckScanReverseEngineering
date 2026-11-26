.class public final Ld05$p$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld05$j;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld05$p;
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
        "Ld05$p<",
        "TK;TV;>;",
        "Ld05$q<",
        "TK;TV;>;>;"
    }
.end annotation


# static fields
.field public static final a:Ld05$p$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ld05$p$a<",
            "**>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ld05$p$a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ld05$p$a;->a:Ld05$p$a;

    return-void
.end method


# virtual methods
.method public final a(Ld05$m;Ld05$i;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ld05$q;

    check-cast p2, Ld05$p;

    iput-object p3, p2, Ld05$p;->c:Ljava/lang/Object;

    return-void
.end method

.method public final b()Ld05$o;
    .locals 0

    sget-object p0, Ld05$o;->STRONG:Ld05$o;

    return-object p0
.end method

.method public final c()Ld05$o;
    .locals 0

    sget-object p0, Ld05$o;->STRONG:Ld05$o;

    return-object p0
.end method

.method public final d(Ld05$m;Ljava/lang/Object;ILd05$i;)Ld05$i;
    .locals 0

    check-cast p1, Ld05$q;

    check-cast p4, Ld05$p;

    if-nez p4, :cond_0

    new-instance p0, Ld05$p;

    invoke-direct {p0, p2, p3}, Ld05$p;-><init>(Ljava/lang/Object;I)V

    return-object p0

    :cond_0
    new-instance p0, Ld05$p$b;

    invoke-direct {p0, p2, p3, p4}, Ld05$p$b;-><init>(Ljava/lang/Object;ILd05$p;)V

    return-object p0
.end method

.method public final e(Ld05;I)Ld05$m;
    .locals 0

    new-instance p0, Ld05$q;

    invoke-direct {p0, p1, p2}, Ld05$m;-><init>(Ld05;I)V

    return-object p0
.end method

.method public final f(Ld05$m;Ld05$i;Ld05$i;)Ld05$i;
    .locals 1

    check-cast p1, Ld05$q;

    check-cast p2, Ld05$p;

    check-cast p3, Ld05$p;

    iget-object p0, p2, Ld05$c;->a:Ljava/lang/Object;

    iget p1, p2, Ld05$c;->b:I

    if-nez p3, :cond_0

    new-instance p3, Ld05$p;

    invoke-direct {p3, p0, p1}, Ld05$p;-><init>(Ljava/lang/Object;I)V

    goto :goto_0

    :cond_0
    new-instance v0, Ld05$p$b;

    invoke-direct {v0, p0, p1, p3}, Ld05$p$b;-><init>(Ljava/lang/Object;ILd05$p;)V

    move-object p3, v0

    :goto_0
    iget-object p0, p2, Ld05$p;->c:Ljava/lang/Object;

    iput-object p0, p3, Ld05$p;->c:Ljava/lang/Object;

    return-object p3
.end method
