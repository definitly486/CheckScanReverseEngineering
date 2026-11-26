.class public final Ll39;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldf4;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        "C:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ldf4<",
        "Lk39<",
        "+TA;+TB;+TC;>;>;"
    }
.end annotation


# instance fields
.field public final a:Ldf4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldf4<",
            "TA;>;"
        }
    .end annotation
.end field

.field public final b:Ldf4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldf4<",
            "TB;>;"
        }
    .end annotation
.end field

.field public final c:Ldf4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldf4<",
            "TC;>;"
        }
    .end annotation
.end field

.field public final d:Lop7;


# direct methods
.method public constructor <init>(Ldf4;Ldf4;Ldf4;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldf4<",
            "TA;>;",
            "Ldf4<",
            "TB;>;",
            "Ldf4<",
            "TC;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ll39;->a:Ldf4;

    iput-object p2, p0, Ll39;->b:Ldf4;

    iput-object p3, p0, Ll39;->c:Ldf4;

    const/4 p1, 0x0

    new-array p1, p1, [Lmp7;

    new-instance p2, Lca2;

    const/4 p3, 0x2

    invoke-direct {p2, p0, p3}, Lca2;-><init>(Ljava/lang/Object;I)V

    const-string p3, "kotlin.Triple"

    invoke-static {p3, p1, p2}, Lrp7;->c(Ljava/lang/String;[Lmp7;Lnl3;)Lop7;

    move-result-object p1

    iput-object p1, p0, Ll39;->d:Lop7;

    return-void
.end method


# virtual methods
.method public final deserialize(Lud2;)Ljava/lang/Object;
    .locals 13

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Ll39;->d:Lop7;

    invoke-interface {p1, v0}, Lud2;->beginStructure(Lmp7;)Ldu1;

    move-result-object p1

    invoke-interface {p1}, Ldu1;->decodeSequentially()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-object v6, p0, Ll39;->c:Ldf4;

    iget-object v7, p0, Ll39;->b:Ldf4;

    iget-object p0, p0, Ll39;->a:Ldf4;

    if-eqz v1, :cond_0

    check-cast p0, Lxl2;

    invoke-interface {p1, v0, v2, p0, v5}, Ldu1;->decodeSerializableElement(Lmp7;ILxl2;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast v7, Lxl2;

    invoke-interface {p1, v0, v4, v7, v5}, Ldu1;->decodeSerializableElement(Lmp7;ILxl2;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v6, Lxl2;

    invoke-interface {p1, v0, v3, v6, v5}, Ldu1;->decodeSerializableElement(Lmp7;ILxl2;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v0}, Ldu1;->endStructure(Lmp7;)V

    new-instance p1, Lk39;

    invoke-direct {p1, p0, v1, v2}, Lk39;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    :cond_0
    sget-object v1, Ls39;->c:Ljava/lang/Object;

    move-object v8, v1

    move-object v9, v8

    move-object v10, v9

    :goto_0
    invoke-interface {p1, v0}, Ldu1;->decodeElementIndex(Lmp7;)I

    move-result v11

    const/4 v12, -0x1

    if-eq v11, v12, :cond_4

    if-eqz v11, :cond_3

    if-eq v11, v4, :cond_2

    if-ne v11, v3, :cond_1

    move-object v10, v6

    check-cast v10, Lxl2;

    invoke-interface {p1, v0, v3, v10, v5}, Ldu1;->decodeSerializableElement(Lmp7;ILxl2;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    goto :goto_0

    :cond_1
    new-instance p0, Lkotlinx/serialization/SerializationException;

    const-string p1, "Unexpected index "

    invoke-static {v11, p1}, Ljh;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    move-object v9, v7

    check-cast v9, Lxl2;

    invoke-interface {p1, v0, v4, v9, v5}, Ldu1;->decodeSerializableElement(Lmp7;ILxl2;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    goto :goto_0

    :cond_3
    move-object v8, p0

    check-cast v8, Lxl2;

    invoke-interface {p1, v0, v2, v8, v5}, Ldu1;->decodeSerializableElement(Lmp7;ILxl2;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    goto :goto_0

    :cond_4
    invoke-interface {p1, v0}, Ldu1;->endStructure(Lmp7;)V

    if-eq v8, v1, :cond_7

    if-eq v9, v1, :cond_6

    if-eq v10, v1, :cond_5

    new-instance p0, Lk39;

    invoke-direct {p0, v8, v9, v10}, Lk39;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    :cond_5
    new-instance p0, Lkotlinx/serialization/SerializationException;

    const-string p1, "Element \'third\' is missing"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    new-instance p0, Lkotlinx/serialization/SerializationException;

    const-string p1, "Element \'second\' is missing"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    new-instance p0, Lkotlinx/serialization/SerializationException;

    const-string p1, "Element \'first\' is missing"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getDescriptor()Lmp7;
    .locals 0

    iget-object p0, p0, Ll39;->d:Lop7;

    return-object p0
.end method

.method public final serialize(Lux2;Ljava/lang/Object;)V
    .locals 4

    check-cast p2, Lk39;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Ll39;->d:Lop7;

    invoke-interface {p1, v0}, Lux2;->beginStructure(Lmp7;)Lgu1;

    move-result-object p1

    iget-object v1, p0, Ll39;->a:Ldf4;

    check-cast v1, Lxp7;

    iget-object v2, p2, Lk39;->b:Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-interface {p1, v0, v3, v1, v2}, Lgu1;->encodeSerializableElement(Lmp7;ILxp7;Ljava/lang/Object;)V

    iget-object v1, p0, Ll39;->b:Ldf4;

    check-cast v1, Lxp7;

    iget-object v2, p2, Lk39;->c:Ljava/lang/Object;

    const/4 v3, 0x1

    invoke-interface {p1, v0, v3, v1, v2}, Lgu1;->encodeSerializableElement(Lmp7;ILxp7;Ljava/lang/Object;)V

    iget-object p0, p0, Ll39;->c:Ldf4;

    check-cast p0, Lxp7;

    iget-object p2, p2, Lk39;->d:Ljava/lang/Object;

    const/4 v1, 0x2

    invoke-interface {p1, v0, v1, p0, p2}, Lgu1;->encodeSerializableElement(Lmp7;ILxp7;Ljava/lang/Object;)V

    invoke-interface {p1, v0}, Lgu1;->endStructure(Lmp7;)V

    return-void
.end method
