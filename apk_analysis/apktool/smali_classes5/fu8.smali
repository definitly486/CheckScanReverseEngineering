.class public final Lfu8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldf4;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldf4<",
        "Llc2$e;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lfu8;

.field public static final b:Lcl4;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lfu8;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lfu8;->a:Lfu8;

    sget-object v0, Lpo4;->PUBLICATION:Lpo4;

    sget-object v1, Lfu8$a;->f:Lfu8$a;

    invoke-static {v0, v1}, Lnm4;->a(Lpo4;Lll3;)Lcl4;

    move-result-object v0

    sput-object v0, Lfu8;->b:Lcl4;

    return-void
.end method


# virtual methods
.method public final deserialize(Lud2;)Ljava/lang/Object;
    .locals 9

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lfu8;->getDescriptor()Lmp7;

    move-result-object v0

    invoke-interface {p1, v0}, Lud2;->beginStructure(Lmp7;)Ldu1;

    move-result-object p1

    invoke-interface {p1}, Ldu1;->decodeSequentially()Z

    move-result v1

    const/4 v2, 0x1

    sget-object v3, Lfu8;->a:Lfu8;

    const/4 v4, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v3}, Lfu8;->getDescriptor()Lmp7;

    move-result-object v1

    invoke-interface {p1, v1, v4}, Ldu1;->decodeLongElement(Lmp7;I)J

    move-result-wide v3

    goto :goto_1

    :cond_0
    const-wide/16 v5, 0x0

    move v1, v4

    :goto_0
    invoke-virtual {v3}, Lfu8;->getDescriptor()Lmp7;

    move-result-object v7

    invoke-interface {p1, v7}, Ldu1;->decodeElementIndex(Lmp7;)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_2

    if-nez v7, :cond_1

    invoke-virtual {v3}, Lfu8;->getDescriptor()Lmp7;

    move-result-object v1

    invoke-interface {p1, v1, v4}, Ldu1;->decodeLongElement(Lmp7;I)J

    move-result-wide v5

    move v1, v2

    goto :goto_0

    :cond_1
    invoke-static {v7}, Ltc0;->i(I)V

    const/4 p0, 0x0

    throw p0

    :cond_2
    move v2, v1

    move-wide v3, v5

    :goto_1
    sget-object v1, Lj59;->a:Lj59;

    invoke-interface {p1, v0}, Ldu1;->endStructure(Lmp7;)V

    if-eqz v2, :cond_3

    new-instance p0, Llc2$e;

    invoke-direct {p0, v3, v4}, Llc2$e;-><init>(J)V

    return-object p0

    :cond_3
    new-instance p1, Lkotlinx/serialization/MissingFieldException;

    invoke-virtual {p0}, Lfu8;->getDescriptor()Lmp7;

    move-result-object p0

    invoke-interface {p0}, Lmp7;->h()Ljava/lang/String;

    move-result-object p0

    const-string v0, "nanoseconds"

    invoke-direct {p1, v0, p0}, Lkotlinx/serialization/MissingFieldException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1
.end method

.method public final getDescriptor()Lmp7;
    .locals 0

    sget-object p0, Lfu8;->b:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmp7;

    return-object p0
.end method

.method public final serialize(Lux2;Ljava/lang/Object;)V
    .locals 4

    check-cast p2, Llc2$e;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lfu8;->getDescriptor()Lmp7;

    move-result-object p0

    invoke-interface {p1, p0}, Lux2;->beginStructure(Lmp7;)Lgu1;

    move-result-object p1

    sget-object v0, Lfu8;->a:Lfu8;

    invoke-virtual {v0}, Lfu8;->getDescriptor()Lmp7;

    move-result-object v0

    const/4 v1, 0x0

    iget-wide v2, p2, Llc2$e;->c:J

    invoke-interface {p1, v0, v1, v2, v3}, Lgu1;->encodeLongElement(Lmp7;IJ)V

    invoke-interface {p1, p0}, Lgu1;->endStructure(Lmp7;)V

    return-void
.end method
