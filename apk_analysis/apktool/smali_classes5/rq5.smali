.class public final Lrq5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldf4;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ldf4<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lcl4;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/io/Serializable;[Ljava/lang/annotation/Annotation;)V
    .locals 0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    invoke-direct {p0, p1, p2}, Lrq5;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 27
    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 28
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    iput-object p1, p0, Lrq5;->b:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lrq5;->a:Ljava/lang/Object;

    sget-object p2, Lkx2;->b:Lkx2;

    iput-object p2, p0, Lrq5;->b:Ljava/util/List;

    sget-object p2, Lpo4;->PUBLICATION:Lpo4;

    new-instance v0, Lrw1;

    invoke-direct {v0, p1, p0}, Lrw1;-><init>(Ljava/lang/String;Lrq5;)V

    invoke-static {p2, v0}, Lnm4;->a(Lpo4;Lll3;)Lcl4;

    move-result-object p1

    iput-object p1, p0, Lrq5;->c:Lcl4;

    return-void
.end method


# virtual methods
.method public final deserialize(Lud2;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lud2;",
            ")TT;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lrq5;->getDescriptor()Lmp7;

    move-result-object v0

    invoke-interface {p1, v0}, Lud2;->beginStructure(Lmp7;)Ldu1;

    move-result-object p1

    invoke-interface {p1}, Ldu1;->decodeSequentially()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lrq5;->getDescriptor()Lmp7;

    move-result-object v1

    invoke-interface {p1, v1}, Ldu1;->decodeElementIndex(Lmp7;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    :goto_0
    sget-object v1, Lj59;->a:Lj59;

    invoke-interface {p1, v0}, Ldu1;->endStructure(Lmp7;)V

    iget-object p0, p0, Lrq5;->a:Ljava/lang/Object;

    return-object p0

    :cond_1
    new-instance p0, Lkotlinx/serialization/SerializationException;

    const-string p1, "Unexpected index "

    invoke-static {v1, p1}, Ljh;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getDescriptor()Lmp7;
    .locals 0

    iget-object p0, p0, Lrq5;->c:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmp7;

    return-object p0
.end method

.method public final serialize(Lux2;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lux2;",
            "TT;)V"
        }
    .end annotation

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lrq5;->getDescriptor()Lmp7;

    move-result-object p2

    invoke-interface {p1, p2}, Lux2;->beginStructure(Lmp7;)Lgu1;

    move-result-object p1

    invoke-virtual {p0}, Lrq5;->getDescriptor()Lmp7;

    move-result-object p0

    invoke-interface {p1, p0}, Lgu1;->endStructure(Lmp7;)V

    return-void
.end method
