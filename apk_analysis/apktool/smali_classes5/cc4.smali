.class public final Lcc4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldf4;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcc4$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldf4<",
        "Lzb4;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcc4;

.field public static final b:Lcc4$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcc4;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcc4;->a:Lcc4;

    sget-object v0, Lcc4$a;->b:Lcc4$a;

    sput-object v0, Lcc4;->b:Lcc4$a;

    return-void
.end method


# virtual methods
.method public final deserialize(Lud2;)Ljava/lang/Object;
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Ltc0;->e(Lud2;)Lkc4;

    new-instance p0, Lzb4;

    sget-object v0, Luc4;->a:Luc4;

    new-instance v1, Lmr;

    invoke-direct {v1, v0}, Lmr;-><init>(Ldf4;)V

    invoke-virtual {v1, p1}, Lw;->f(Lud2;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-direct {p0, p1}, Lzb4;-><init>(Ljava/util/List;)V

    return-object p0
.end method

.method public final getDescriptor()Lmp7;
    .locals 0

    sget-object p0, Lcc4;->b:Lcc4$a;

    return-object p0
.end method

.method public final serialize(Lux2;Ljava/lang/Object;)V
    .locals 4

    check-cast p2, Lzb4;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Ltc0;->f(Lux2;)V

    sget-object p0, Luc4;->a:Luc4;

    new-instance v0, Lkr;

    invoke-interface {p0}, Lxp7;->getDescriptor()Lmp7;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1}, Lkr4;-><init>(Lmp7;)V

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-interface {p1, v0, v1}, Lux2;->beginCollection(Lmp7;I)Lgu1;

    move-result-object p1

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v0, v2, p0, v3}, Lgu1;->encodeSerializableElement(Lmp7;ILxp7;Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {p1, v0}, Lgu1;->endStructure(Lmp7;)V

    return-void
.end method
