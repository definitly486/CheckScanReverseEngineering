.class public final Lcom/google/protobuf/m;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/m$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/google/protobuf/m$b<",
        "TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final d:Lcom/google/protobuf/m;


# instance fields
.field public final a:Lcom/google/protobuf/h0;

.field public b:Z

.field public c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/protobuf/m;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/protobuf/m;-><init>(I)V

    sput-object v0, Lcom/google/protobuf/m;->d:Lcom/google/protobuf/m;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    sget v0, Lcom/google/protobuf/i0;->i:I

    .line 22
    new-instance v0, Lcom/google/protobuf/h0;

    const/16 v1, 0x10

    .line 23
    invoke-direct {v0, v1}, Lcom/google/protobuf/i0;-><init>(I)V

    .line 24
    iput-object v0, p0, Lcom/google/protobuf/m;->a:Lcom/google/protobuf/h0;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    sget p1, Lcom/google/protobuf/i0;->i:I

    new-instance p1, Lcom/google/protobuf/h0;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/google/protobuf/i0;-><init>(I)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/protobuf/m;->a:Lcom/google/protobuf/h0;

    invoke-virtual {p0}, Lcom/google/protobuf/m;->k()V

    invoke-virtual {p0}, Lcom/google/protobuf/m;->k()V

    return-void
.end method

.method public static c(Lui9;ILjava/lang/Object;)I
    .locals 1

    invoke-static {p1}, Lcom/google/protobuf/CodedOutputStream;->Y(I)I

    move-result p1

    sget-object v0, Lui9;->GROUP:Lui9;

    if-ne p0, v0, :cond_0

    mul-int/lit8 p1, p1, 0x2

    :cond_0
    invoke-static {p0, p2}, Lcom/google/protobuf/m;->d(Lui9;Ljava/lang/Object;)I

    move-result p0

    add-int/2addr p0, p1

    return p0
.end method

.method public static d(Lui9;Ljava/lang/Object;)I
    .locals 3

    sget-object v0, Lcom/google/protobuf/m$a;->b:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    const/4 v1, 0x4

    const/16 v2, 0x8

    packed-switch p0, :pswitch_data_0

    const-string p0, "There is no way to get here, but the compiler thinks otherwise."

    invoke-static {p0}, Ln7;->g(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :pswitch_0
    instance-of p0, p1, Lcom/google/protobuf/q$c;

    if-eqz p0, :cond_0

    check-cast p1, Lcom/google/protobuf/q$c;

    invoke-interface {p1}, Lcom/google/protobuf/q$c;->getNumber()I

    move-result p0

    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream;->V(I)I

    move-result p0

    return p0

    :cond_0
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream;->V(I)I

    move-result p0

    return p0

    :pswitch_1
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    shl-long v0, p0, v0

    const/16 v2, 0x3f

    shr-long/2addr p0, v2

    xor-long/2addr p0, v0

    invoke-static {p0, p1}, Lcom/google/protobuf/CodedOutputStream;->a0(J)I

    move-result p0

    return p0

    :pswitch_2
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    shl-int/lit8 p1, p0, 0x1

    shr-int/lit8 p0, p0, 0x1f

    xor-int/2addr p0, p1

    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream;->Z(I)I

    move-result p0

    return p0

    :pswitch_3
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/google/protobuf/CodedOutputStream;->p:Ljava/util/logging/Logger;

    return v2

    :pswitch_4
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/google/protobuf/CodedOutputStream;->p:Ljava/util/logging/Logger;

    return v1

    :pswitch_5
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream;->Z(I)I

    move-result p0

    return p0

    :pswitch_6
    instance-of p0, p1, Lfx0;

    if-eqz p0, :cond_1

    check-cast p1, Lfx0;

    sget-object p0, Lcom/google/protobuf/CodedOutputStream;->p:Ljava/util/logging/Logger;

    invoke-virtual {p1}, Lfx0;->size()I

    move-result p0

    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream;->Z(I)I

    move-result p1

    :goto_0
    add-int/2addr p1, p0

    return p1

    :cond_1
    check-cast p1, [B

    sget-object p0, Lcom/google/protobuf/CodedOutputStream;->p:Ljava/util/logging/Logger;

    array-length p0, p1

    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream;->Z(I)I

    move-result p1

    goto :goto_0

    :pswitch_7
    instance-of p0, p1, Lfx0;

    if-eqz p0, :cond_2

    check-cast p1, Lfx0;

    sget-object p0, Lcom/google/protobuf/CodedOutputStream;->p:Ljava/util/logging/Logger;

    invoke-virtual {p1}, Lfx0;->size()I

    move-result p0

    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream;->Z(I)I

    move-result p1

    goto :goto_0

    :cond_2
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/google/protobuf/CodedOutputStream;->X(Ljava/lang/String;)I

    move-result p0

    return p0

    :pswitch_8
    instance-of p0, p1, Lcom/google/protobuf/r;

    if-eqz p0, :cond_3

    check-cast p1, Lcom/google/protobuf/r;

    invoke-static {p1}, Lcom/google/protobuf/CodedOutputStream;->W(Lcom/google/protobuf/s;)I

    move-result p0

    return p0

    :cond_3
    check-cast p1, Lcom/google/protobuf/a0;

    sget-object p0, Lcom/google/protobuf/CodedOutputStream;->p:Ljava/util/logging/Logger;

    invoke-interface {p1}, Lcom/google/protobuf/a0;->getSerializedSize()I

    move-result p0

    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream;->Z(I)I

    move-result p1

    goto :goto_0

    :pswitch_9
    check-cast p1, Lcom/google/protobuf/a0;

    sget-object p0, Lcom/google/protobuf/CodedOutputStream;->p:Ljava/util/logging/Logger;

    invoke-interface {p1}, Lcom/google/protobuf/a0;->getSerializedSize()I

    move-result p0

    return p0

    :pswitch_a
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/google/protobuf/CodedOutputStream;->p:Ljava/util/logging/Logger;

    return v0

    :pswitch_b
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/google/protobuf/CodedOutputStream;->p:Ljava/util/logging/Logger;

    return v1

    :pswitch_c
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/google/protobuf/CodedOutputStream;->p:Ljava/util/logging/Logger;

    return v2

    :pswitch_d
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream;->V(I)I

    move-result p0

    return p0

    :pswitch_e
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/google/protobuf/CodedOutputStream;->a0(J)I

    move-result p0

    return p0

    :pswitch_f
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/google/protobuf/CodedOutputStream;->a0(J)I

    move-result p0

    return p0

    :pswitch_10
    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/google/protobuf/CodedOutputStream;->p:Ljava/util/logging/Logger;

    return v1

    :pswitch_11
    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/google/protobuf/CodedOutputStream;->p:Ljava/util/logging/Logger;

    return v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static e(Lcom/google/protobuf/m$b;Ljava/lang/Object;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/m$b<",
            "*>;",
            "Ljava/lang/Object;",
            ")I"
        }
    .end annotation

    invoke-interface {p0}, Lcom/google/protobuf/m$b;->getLiteType()Lui9;

    move-result-object v0

    invoke-interface {p0}, Lcom/google/protobuf/m$b;->getNumber()I

    move-result v1

    invoke-interface {p0}, Lcom/google/protobuf/m$b;->isRepeated()Z

    move-result v2

    if-eqz v2, :cond_4

    check-cast p1, Ljava/util/List;

    invoke-interface {p0}, Lcom/google/protobuf/m$b;->isPacked()Z

    move-result p0

    const/4 v2, 0x0

    if-eqz p0, :cond_2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    return v2

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/google/protobuf/m;->d(Lui9;Ljava/lang/Object;)I

    move-result p1

    add-int/2addr v2, p1

    goto :goto_0

    :cond_1
    invoke-static {v1}, Lcom/google/protobuf/CodedOutputStream;->Y(I)I

    move-result p0

    add-int/2addr p0, v2

    invoke-static {v2}, Lcom/google/protobuf/CodedOutputStream;->Z(I)I

    move-result p1

    add-int/2addr p1, p0

    return p1

    :cond_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/google/protobuf/m;->c(Lui9;ILjava/lang/Object;)I

    move-result p1

    add-int/2addr v2, p1

    goto :goto_1

    :cond_3
    return v2

    :cond_4
    invoke-static {v0, v1, p1}, Lcom/google/protobuf/m;->c(Lui9;ILjava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static g(Ljava/util/Map$Entry;)I
    .locals 8

    const/4 v0, 0x3

    invoke-static {v0}, Lcom/google/protobuf/CodedOutputStream;->Y(I)I

    move-result v0

    const/4 v1, 0x2

    invoke-static {v1}, Lcom/google/protobuf/CodedOutputStream;->Y(I)I

    move-result v2

    const/4 v3, 0x1

    invoke-static {v3}, Lcom/google/protobuf/CodedOutputStream;->Y(I)I

    move-result v3

    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/m$b;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4}, Lcom/google/protobuf/m$b;->getLiteJavaType()Lvi9;

    move-result-object v6

    sget-object v7, Lvi9;->MESSAGE:Lvi9;

    if-ne v6, v7, :cond_1

    invoke-interface {v4}, Lcom/google/protobuf/m$b;->isRepeated()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-interface {v4}, Lcom/google/protobuf/m$b;->isPacked()Z

    move-result v6

    if-nez v6, :cond_1

    instance-of v4, v5, Lcom/google/protobuf/r;

    if-eqz v4, :cond_0

    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/m$b;

    invoke-interface {p0}, Lcom/google/protobuf/m$b;->getNumber()I

    move-result p0

    check-cast v5, Lcom/google/protobuf/r;

    mul-int/2addr v3, v1

    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream;->Z(I)I

    move-result p0

    add-int/2addr p0, v2

    add-int/2addr p0, v3

    invoke-static {v5}, Lcom/google/protobuf/CodedOutputStream;->W(Lcom/google/protobuf/s;)I

    move-result v1

    add-int/2addr v1, v0

    add-int/2addr v1, p0

    return v1

    :cond_0
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/m$b;

    invoke-interface {p0}, Lcom/google/protobuf/m$b;->getNumber()I

    move-result p0

    check-cast v5, Lcom/google/protobuf/a0;

    mul-int/2addr v3, v1

    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream;->Z(I)I

    move-result p0

    add-int/2addr p0, v2

    add-int/2addr p0, v3

    invoke-interface {v5}, Lcom/google/protobuf/a0;->getSerializedSize()I

    move-result v1

    invoke-static {v1, v1, v0, p0}, Lej0;->c(IIII)I

    move-result p0

    return p0

    :cond_1
    invoke-static {v4, v5}, Lcom/google/protobuf/m;->e(Lcom/google/protobuf/m$b;Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static i(Ljava/util/Map$Entry;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/protobuf/m$b<",
            "TT;>;>(",
            "Ljava/util/Map$Entry<",
            "TT;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/m$b;

    invoke-interface {v0}, Lcom/google/protobuf/m$b;->getLiteJavaType()Lvi9;

    move-result-object v1

    sget-object v2, Lvi9;->MESSAGE:Lvi9;

    const/4 v3, 0x1

    if-ne v1, v2, :cond_6

    invoke-interface {v0}, Lcom/google/protobuf/m$b;->isRepeated()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "Wrong object type used with protocol message reflection."

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    instance-of v4, v0, Lha5;

    if-eqz v4, :cond_1

    check-cast v0, Lha5;

    invoke-interface {v0}, Lha5;->isInitialized()Z

    move-result v0

    goto :goto_0

    :cond_1
    instance-of v0, v0, Lcom/google/protobuf/r;

    if-eqz v0, :cond_2

    move v0, v3

    :goto_0
    if-nez v0, :cond_0

    return v1

    :cond_2
    invoke-static {v2}, Lfg;->c(Ljava/lang/String;)V

    return v1

    :cond_3
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Lha5;

    if-eqz v0, :cond_4

    check-cast p0, Lha5;

    invoke-interface {p0}, Lha5;->isInitialized()Z

    move-result p0

    return p0

    :cond_4
    instance-of p0, p0, Lcom/google/protobuf/r;

    if-eqz p0, :cond_5

    return v3

    :cond_5
    invoke-static {v2}, Lfg;->c(Ljava/lang/String;)V

    return v1

    :cond_6
    return v3
.end method

.method public static n(Lcom/google/protobuf/m$b;Ljava/lang/Object;)V
    .locals 3

    invoke-interface {p0}, Lcom/google/protobuf/m$b;->getLiteType()Lui9;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/q;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/google/protobuf/m$a;->a:[I

    invoke-virtual {v0}, Lui9;->a()Lvi9;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    :cond_0
    move v1, v2

    goto :goto_0

    :pswitch_0
    instance-of v0, p1, Lcom/google/protobuf/a0;

    if-nez v0, :cond_1

    instance-of v0, p1, Lcom/google/protobuf/r;

    if-eqz v0, :cond_0

    goto :goto_0

    :pswitch_1
    instance-of v0, p1, Ljava/lang/Integer;

    if-nez v0, :cond_1

    instance-of v0, p1, Lcom/google/protobuf/q$c;

    if-eqz v0, :cond_0

    goto :goto_0

    :pswitch_2
    instance-of v0, p1, Lfx0;

    if-nez v0, :cond_1

    instance-of v0, p1, [B

    if-eqz v0, :cond_0

    goto :goto_0

    :pswitch_3
    instance-of v1, p1, Ljava/lang/String;

    goto :goto_0

    :pswitch_4
    instance-of v1, p1, Ljava/lang/Boolean;

    goto :goto_0

    :pswitch_5
    instance-of v1, p1, Ljava/lang/Double;

    goto :goto_0

    :pswitch_6
    instance-of v1, p1, Ljava/lang/Float;

    goto :goto_0

    :pswitch_7
    instance-of v1, p1, Ljava/lang/Long;

    goto :goto_0

    :pswitch_8
    instance-of v1, p1, Ljava/lang/Integer;

    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    return-void

    :cond_2
    invoke-interface {p0}, Lcom/google/protobuf/m$b;->getNumber()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0}, Lcom/google/protobuf/m$b;->getLiteType()Lui9;

    move-result-object p0

    invoke-virtual {p0}, Lui9;->a()Lvi9;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    filled-new-array {v0, p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n"

    invoke-static {p1, p0}, Lnz0;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static o(Lcom/google/protobuf/CodedOutputStream;Lui9;ILjava/lang/Object;)V
    .locals 2

    sget-object v0, Lui9;->GROUP:Lui9;

    if-ne p1, v0, :cond_0

    check-cast p3, Lcom/google/protobuf/a0;

    const/4 p1, 0x3

    invoke-virtual {p0, p2, p1}, Lcom/google/protobuf/CodedOutputStream;->u0(II)V

    invoke-interface {p3, p0}, Lcom/google/protobuf/a0;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    const/4 p1, 0x4

    invoke-virtual {p0, p2, p1}, Lcom/google/protobuf/CodedOutputStream;->u0(II)V

    return-void

    :cond_0
    invoke-virtual {p1}, Lui9;->d()I

    move-result v0

    invoke-virtual {p0, p2, v0}, Lcom/google/protobuf/CodedOutputStream;->u0(II)V

    sget-object p2, Lcom/google/protobuf/m$a;->b:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    packed-switch p1, :pswitch_data_0

    return-void

    :pswitch_0
    instance-of p1, p3, Lcom/google/protobuf/q$c;

    if-eqz p1, :cond_1

    check-cast p3, Lcom/google/protobuf/q$c;

    invoke-interface {p3}, Lcom/google/protobuf/q$c;->getNumber()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/CodedOutputStream;->n0(I)V

    return-void

    :cond_1
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/CodedOutputStream;->n0(I)V

    return-void

    :pswitch_1
    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    const/4 p3, 0x1

    shl-long v0, p1, p3

    const/16 p3, 0x3f

    shr-long/2addr p1, p3

    xor-long/2addr p1, v0

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/CodedOutputStream;->y0(J)V

    return-void

    :pswitch_2
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    shl-int/lit8 p2, p1, 0x1

    shr-int/lit8 p1, p1, 0x1f

    xor-int/2addr p1, p2

    invoke-virtual {p0, p1}, Lcom/google/protobuf/CodedOutputStream;->w0(I)V

    return-void

    :pswitch_3
    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/CodedOutputStream;->l0(J)V

    return-void

    :pswitch_4
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/CodedOutputStream;->j0(I)V

    return-void

    :pswitch_5
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/CodedOutputStream;->w0(I)V

    return-void

    :pswitch_6
    instance-of p1, p3, Lfx0;

    if-eqz p1, :cond_2

    check-cast p3, Lfx0;

    invoke-virtual {p0, p3}, Lcom/google/protobuf/CodedOutputStream;->h0(Lfx0;)V

    return-void

    :cond_2
    check-cast p3, [B

    array-length p1, p3

    invoke-virtual {p0, p1, p3}, Lcom/google/protobuf/CodedOutputStream;->f0(I[B)V

    return-void

    :pswitch_7
    instance-of p1, p3, Lfx0;

    if-eqz p1, :cond_3

    check-cast p3, Lfx0;

    invoke-virtual {p0, p3}, Lcom/google/protobuf/CodedOutputStream;->h0(Lfx0;)V

    return-void

    :cond_3
    check-cast p3, Ljava/lang/String;

    invoke-virtual {p0, p3}, Lcom/google/protobuf/CodedOutputStream;->t0(Ljava/lang/String;)V

    return-void

    :pswitch_8
    check-cast p3, Lcom/google/protobuf/a0;

    invoke-virtual {p0, p3}, Lcom/google/protobuf/CodedOutputStream;->p0(Lcom/google/protobuf/a0;)V

    return-void

    :pswitch_9
    check-cast p3, Lcom/google/protobuf/a0;

    invoke-interface {p3, p0}, Lcom/google/protobuf/a0;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void

    :pswitch_a
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    int-to-byte p1, p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/CodedOutputStream;->d0(B)V

    return-void

    :pswitch_b
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/CodedOutputStream;->j0(I)V

    return-void

    :pswitch_c
    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/CodedOutputStream;->l0(J)V

    return-void

    :pswitch_d
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/CodedOutputStream;->n0(I)V

    return-void

    :pswitch_e
    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/CodedOutputStream;->y0(J)V

    return-void

    :pswitch_f
    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/CodedOutputStream;->y0(J)V

    return-void

    :pswitch_10
    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/CodedOutputStream;->j0(I)V

    return-void

    :pswitch_11
    check-cast p3, Ljava/lang/Double;

    invoke-virtual {p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/CodedOutputStream;->l0(J)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final a(Lcom/google/protobuf/m$b;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    invoke-interface {p1}, Lcom/google/protobuf/m$b;->isRepeated()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1, p2}, Lcom/google/protobuf/m;->n(Lcom/google/protobuf/m$b;Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/google/protobuf/m;->f(Lcom/google/protobuf/m$b;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, Lcom/google/protobuf/m;->a:Lcom/google/protobuf/h0;

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/i0;->h(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    check-cast v0, Ljava/util/List;

    :goto_0
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_1
    const-string p0, "addRepeatedField() can only be called on repeated fields."

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    return-void
.end method

.method public final b()Lcom/google/protobuf/m;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/m<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/protobuf/m;

    invoke-direct {v0}, Lcom/google/protobuf/m;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/protobuf/m;->a:Lcom/google/protobuf/h0;

    iget-object v3, v2, Lcom/google/protobuf/i0;->c:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    invoke-virtual {v2, v1}, Lcom/google/protobuf/i0;->c(I)Ljava/util/Map$Entry;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/m$b;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lcom/google/protobuf/m;->m(Lcom/google/protobuf/m$b;Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lcom/google/protobuf/i0;->d()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/m$b;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lcom/google/protobuf/m;->m(Lcom/google/protobuf/m$b;Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    iget-boolean p0, p0, Lcom/google/protobuf/m;->c:Z

    iput-boolean p0, v0, Lcom/google/protobuf/m;->c:Z

    return-object v0
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/google/protobuf/m;->b()Lcom/google/protobuf/m;

    move-result-object p0

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    instance-of v0, p1, Lcom/google/protobuf/m;

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    check-cast p1, Lcom/google/protobuf/m;

    iget-object p0, p0, Lcom/google/protobuf/m;->a:Lcom/google/protobuf/h0;

    iget-object p1, p1, Lcom/google/protobuf/m;->a:Lcom/google/protobuf/h0;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/i0;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final f(Lcom/google/protobuf/m$b;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object p0, p0, Lcom/google/protobuf/m;->a:Lcom/google/protobuf/h0;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/i0;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Lcom/google/protobuf/r;

    if-eqz p1, :cond_0

    check-cast p0, Lcom/google/protobuf/r;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/google/protobuf/s;->a(Lcom/google/protobuf/a0;)Lcom/google/protobuf/a0;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public final h()Z
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/google/protobuf/m;->a:Lcom/google/protobuf/h0;

    iget-object v3, v2, Lcom/google/protobuf/i0;->c:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    invoke-virtual {v2, v1}, Lcom/google/protobuf/i0;->c(I)Ljava/util/Map$Entry;

    move-result-object v2

    invoke-static {v2}, Lcom/google/protobuf/m;->i(Ljava/util/Map$Entry;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Lcom/google/protobuf/i0;->d()Ljava/lang/Iterable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-static {v1}, Lcom/google/protobuf/m;->i(Ljava/util/Map$Entry;)Z

    move-result v1

    if-nez v1, :cond_2

    :goto_1
    return v0

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/m;->a:Lcom/google/protobuf/h0;

    invoke-virtual {p0}, Lcom/google/protobuf/i0;->hashCode()I

    move-result p0

    return p0
.end method

.method public final j()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TT;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/protobuf/m;->c:Z

    iget-object p0, p0, Lcom/google/protobuf/m;->a:Lcom/google/protobuf/h0;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/protobuf/r$b;

    invoke-virtual {p0}, Lcom/google/protobuf/i0;->entrySet()Ljava/util/Set;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/i0$f;

    invoke-virtual {p0}, Lcom/google/protobuf/i0$f;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/protobuf/r$b;-><init>(Ljava/util/Iterator;)V

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/i0;->entrySet()Ljava/util/Set;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/i0$f;

    invoke-virtual {p0}, Lcom/google/protobuf/i0$f;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public final k()V
    .locals 3

    iget-boolean v0, p0, Lcom/google/protobuf/m;->b:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/protobuf/m;->a:Lcom/google/protobuf/h0;

    iget-object v2, v1, Lcom/google/protobuf/i0;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    invoke-virtual {v1, v0}, Lcom/google/protobuf/i0;->c(I)Ljava/util/Map$Entry;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/google/protobuf/o;

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/o;

    invoke-virtual {v1}, Lcom/google/protobuf/o;->makeImmutable()V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lcom/google/protobuf/h0;->g()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/protobuf/m;->b:Z

    return-void
.end method

.method public final l(Ljava/util/Map$Entry;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TT;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/m$b;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    instance-of v1, p1, Lcom/google/protobuf/r;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/google/protobuf/r;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/google/protobuf/s;->a(Lcom/google/protobuf/a0;)Lcom/google/protobuf/a0;

    move-result-object p1

    :cond_0
    invoke-interface {v0}, Lcom/google/protobuf/m$b;->isRepeated()Z

    move-result v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/protobuf/m;->a:Lcom/google/protobuf/h0;

    if-eqz v1, :cond_4

    invoke-virtual {p0, v0}, Lcom/google/protobuf/m;->f(Lcom/google/protobuf/m$b;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_1

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    :cond_1
    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v4, p0

    check-cast v4, Ljava/util/List;

    instance-of v5, v1, [B

    if-eqz v5, :cond_2

    check-cast v1, [B

    array-length v5, v1

    new-array v5, v5, [B

    array-length v6, v1

    invoke-static {v1, v2, v5, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v1, v5

    :cond_2
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-virtual {v3, v0, p0}, Lcom/google/protobuf/i0;->h(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_4
    invoke-interface {v0}, Lcom/google/protobuf/m$b;->getLiteJavaType()Lvi9;

    move-result-object v1

    sget-object v4, Lvi9;->MESSAGE:Lvi9;

    if-ne v1, v4, :cond_7

    invoke-virtual {p0, v0}, Lcom/google/protobuf/m;->f(Lcom/google/protobuf/m$b;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_6

    instance-of p0, p1, [B

    if-eqz p0, :cond_5

    check-cast p1, [B

    array-length p0, p1

    new-array p0, p0, [B

    array-length v1, p1

    invoke-static {p1, v2, p0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p1, p0

    :cond_5
    invoke-virtual {v3, v0, p1}, Lcom/google/protobuf/i0;->h(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_6
    check-cast p0, Lcom/google/protobuf/a0;

    invoke-interface {p0}, Lcom/google/protobuf/a0;->toBuilder()Lcom/google/protobuf/a0$a;

    move-result-object p0

    check-cast p1, Lcom/google/protobuf/a0;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/m$b;->b(Lcom/google/protobuf/a0$a;Lcom/google/protobuf/a0;)Lcom/google/protobuf/o$a;

    move-result-object p0

    invoke-interface {p0}, Lcom/google/protobuf/a0$a;->build()Lcom/google/protobuf/a0;

    move-result-object p0

    invoke-virtual {v3, v0, p0}, Lcom/google/protobuf/i0;->h(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_7
    instance-of p0, p1, [B

    if-eqz p0, :cond_8

    check-cast p1, [B

    array-length p0, p1

    new-array p0, p0, [B

    array-length v1, p1

    invoke-static {p1, v2, p0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p1, p0

    :cond_8
    invoke-virtual {v3, v0, p1}, Lcom/google/protobuf/i0;->h(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final m(Lcom/google/protobuf/m$b;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    invoke-interface {p1}, Lcom/google/protobuf/m$b;->isRepeated()Z

    move-result v0

    if-eqz v0, :cond_2

    instance-of v0, p2, Ljava/util/List;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast p2, Ljava/util/List;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/google/protobuf/m;->n(Lcom/google/protobuf/m$b;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    move-object p2, v0

    goto :goto_1

    :cond_1
    const-string p0, "Wrong object type used with protocol message reflection."

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    return-void

    :cond_2
    invoke-static {p1, p2}, Lcom/google/protobuf/m;->n(Lcom/google/protobuf/m$b;Ljava/lang/Object;)V

    :goto_1
    instance-of v0, p2, Lcom/google/protobuf/r;

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/protobuf/m;->c:Z

    :cond_3
    iget-object p0, p0, Lcom/google/protobuf/m;->a:Lcom/google/protobuf/h0;

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/i0;->h(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
