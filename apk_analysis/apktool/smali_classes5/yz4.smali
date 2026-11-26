.class public final Lyz4;
.super Lqf4;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lyz4$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lqf4<",
        "TK;TV;",
        "Ljava/util/Map$Entry<",
        "+TK;+TV;>;>;"
    }
.end annotation


# instance fields
.field public final c:Lop7;


# direct methods
.method public constructor <init>(Ldf4;Ldf4;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldf4<",
            "TK;>;",
            "Ldf4<",
            "TV;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lqf4;-><init>(Ldf4;Ldf4;)V

    sget-object v0, Leb8$c;->a:Leb8$c;

    const/4 v1, 0x0

    new-array v1, v1, [Lmp7;

    new-instance v2, Lu71;

    const/4 v3, 0x1

    invoke-direct {v2, v3, p1, p2}, Lu71;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    const-string p1, "kotlin.collections.Map.Entry"

    invoke-static {p1, v0, v1, v2}, Lrp7;->e(Ljava/lang/String;Lsp7;[Lmp7;Lnl3;)Lop7;

    move-result-object p1

    iput-object p1, p0, Lyz4;->c:Lop7;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final c(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    new-instance p0, Lyz4$a;

    invoke-direct {p0, p1, p2}, Lyz4$a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final getDescriptor()Lmp7;
    .locals 0

    iget-object p0, p0, Lyz4;->c:Lop7;

    return-object p0
.end method
