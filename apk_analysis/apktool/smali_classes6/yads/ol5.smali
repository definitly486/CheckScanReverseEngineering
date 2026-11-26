.class public final Lyads/ol5;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/uq5;


# direct methods
.method public constructor <init>(Lyads/uq5;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/ol5;->a:Lyads/uq5;

    return-void
.end method

.method public static final a(Lyads/ol5;Ljava/util/List;Ljava/util/List;)Lj59;
    .locals 0

    .line 31
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    invoke-static {p1}, Lyads/zq5;->a(Ljava/util/List;)Lyads/yq5;

    move-result-object p0

    .line 33
    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method


# virtual methods
.method public final a(Ljava/util/List;Lyads/mb1;)Lyads/mp2;
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0, p1, v0}, Lyads/ol5;->a(Lyads/ol5;Ljava/util/List;Ljava/util/List;)Lj59;

    iget-object p0, p0, Lyads/ol5;->a:Lyads/uq5;

    const/4 p1, 0x0

    new-array p1, p1, [Lyads/tq5;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lyads/tq5;

    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lyads/tq5;

    invoke-virtual {p0, p2, p1}, Lyads/uq5;->a(Lyads/mb1;[Lyads/tq5;)Lyads/mp2;

    move-result-object p0

    return-object p0
.end method
