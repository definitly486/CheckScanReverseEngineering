.class public final Lrd4;
.super Lt0;
.source "SourceFile"


# instance fields
.field public final f:Loc4;


# direct methods
.method public constructor <init>(Lxb4;Loc4;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, p1, p2, p3}, Lt0;-><init>(Lxb4;Loc4;Ljava/lang/String;)V

    iput-object p2, p0, Lrd4;->f:Loc4;

    const-string p1, "primitive"

    iget-object p0, p0, Lyh5;->a:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public final decodeElementIndex(Lmp7;)I
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    return p0
.end method

.method public final r(Ljava/lang/String;)Loc4;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "primitive"

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lrd4;->f:Loc4;

    return-object p0

    :cond_0
    const-string p0, "This input can only handle primitives with \'primitive\' tag"

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final t()Loc4;
    .locals 0

    iget-object p0, p0, Lrd4;->f:Loc4;

    return-object p0
.end method
