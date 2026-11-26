.class public final Lo98;
.super Lh0;
.source "SourceFile"

# interfaces
.implements Lwc4;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo98$a;
    }
.end annotation


# instance fields
.field public final a:Lau1;

.field public final b:Lxb4;

.field public final c:Lml9;

.field public final d:[Lwc4;

.field public final e:Ljq7;

.field public final f:Lfc4;

.field public g:Z

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lau1;Lxb4;Lml9;[Lwc4;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lh0;-><init>()V

    iput-object p1, p0, Lo98;->a:Lau1;

    iput-object p2, p0, Lo98;->b:Lxb4;

    iput-object p3, p0, Lo98;->c:Lml9;

    iput-object p4, p0, Lo98;->d:[Lwc4;

    iget-object p1, p2, Lxb4;->b:Ljq7;

    iput-object p1, p0, Lo98;->e:Ljq7;

    iget-object p1, p2, Lxb4;->a:Lfc4;

    iput-object p1, p0, Lo98;->f:Lfc4;

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p4, :cond_1

    aget-object p2, p4, p1

    if-nez p2, :cond_0

    if-eq p2, p0, :cond_1

    :cond_0
    aput-object p0, p4, p1

    :cond_1
    return-void
.end method


# virtual methods
.method public final beginStructure(Lmp7;)Lgu1;
    .locals 5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lo98;->b:Lxb4;

    invoke-static {v0, p1}, Lnl9;->b(Lxb4;Lmp7;)Lml9;

    move-result-object v1

    iget-char v2, v1, Lml9;->begin:C

    iget-object v3, p0, Lo98;->a:Lau1;

    if-eqz v2, :cond_0

    invoke-virtual {v3, v2}, Lau1;->c(C)V

    const/4 v2, 0x1

    iput-boolean v2, v3, Lau1;->b:Z

    :cond_0
    iget-object v2, p0, Lo98;->h:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v4, p0, Lo98;->i:Ljava/lang/String;

    if-nez v4, :cond_1

    invoke-interface {p1}, Lmp7;->h()Ljava/lang/String;

    move-result-object v4

    :cond_1
    invoke-virtual {v3}, Lau1;->a()V

    invoke-virtual {v3, v2}, Lau1;->g(Ljava/lang/String;)V

    const/16 p1, 0x3a

    invoke-virtual {v3, p1}, Lau1;->c(C)V

    invoke-virtual {p0, v4}, Lo98;->encodeString(Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lo98;->h:Ljava/lang/String;

    iput-object p1, p0, Lo98;->i:Ljava/lang/String;

    :cond_2
    iget-object p1, p0, Lo98;->c:Lml9;

    if-ne p1, v1, :cond_3

    return-object p0

    :cond_3
    iget-object p0, p0, Lo98;->d:[Lwc4;

    if-eqz p0, :cond_4

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget-object p1, p0, p1

    if-eqz p1, :cond_4

    return-object p1

    :cond_4
    new-instance p1, Lo98;

    invoke-direct {p1, v3, v0, v1, p0}, Lo98;-><init>(Lau1;Lxb4;Lml9;[Lwc4;)V

    return-object p1
.end method

.method public final encodeBoolean(Z)V
    .locals 1

    iget-boolean v0, p0, Lo98;->g:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lo98;->encodeString(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object p0, p0, Lo98;->a:Lau1;

    iget-object p0, p0, Lau1;->a:Lyd4;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lyd4;->c(Ljava/lang/String;)V

    return-void
.end method

.method public final encodeByte(B)V
    .locals 1

    iget-boolean v0, p0, Lo98;->g:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lo98;->encodeString(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object p0, p0, Lo98;->a:Lau1;

    invoke-virtual {p0, p1}, Lau1;->b(B)V

    return-void
.end method

.method public final encodeChar(C)V
    .locals 0

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lo98;->encodeString(Ljava/lang/String;)V

    return-void
.end method

.method public final encodeDouble(D)V
    .locals 4

    iget-boolean v0, p0, Lo98;->g:Z

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lo98;->encodeString(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lo98;->a:Lau1;

    iget-object v0, v0, Lau1;->a:Lyd4;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lyd4;->c(Ljava/lang/String;)V

    :goto_0
    iget-object p0, p0, Lo98;->f:Lfc4;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, p2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v2, 0x7fefffffffffffffL    # Double.MAX_VALUE

    cmpg-double p0, v0, v2

    if-gtz p0, :cond_1

    return-void

    :cond_1
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    new-instance p1, Lkotlinx/serialization/json/JsonEncodingException;

    const/4 p2, 0x0

    invoke-static {p2, p0}, Lyc4;->f(Ljava/lang/String;Ljava/lang/Number;)Ljava/lang/String;

    move-result-object p0

    const-string p2, "It is possible to deserialize them using \'JsonBuilder.allowSpecialFloatingPointValues = true\'"

    invoke-direct {p1, p0, p2}, Lkotlinx/serialization/json/JsonEncodingException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1
.end method

.method public final encodeElement(Lmp7;I)Z
    .locals 7

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lo98$a;->a:[I

    iget-object v1, p0, Lo98;->c:Lml9;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/16 v1, 0x2c

    iget-object v2, p0, Lo98;->a:Lau1;

    const/4 v3, 0x1

    if-eq v0, v3, :cond_7

    const/4 v4, 0x0

    const/16 v5, 0x3a

    const/4 v6, 0x2

    if-eq v0, v6, :cond_4

    const/4 v6, 0x3

    if-eq v0, v6, :cond_1

    iget-boolean v0, v2, Lau1;->b:Z

    if-nez v0, :cond_0

    invoke-virtual {v2, v1}, Lau1;->c(C)V

    :cond_0
    invoke-virtual {v2}, Lau1;->a()V

    iget-object v0, p0, Lo98;->b:Lxb4;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, p1}, Lfd4;->d(Lxb4;Lmp7;)V

    invoke-interface {p1, p2}, Lmp7;->f(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lo98;->encodeString(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Lau1;->c(C)V

    invoke-virtual {v2}, Lau1;->h()V

    return v3

    :cond_1
    if-nez p2, :cond_2

    iput-boolean v3, p0, Lo98;->g:Z

    :cond_2
    if-ne p2, v3, :cond_3

    invoke-virtual {v2, v1}, Lau1;->c(C)V

    invoke-virtual {v2}, Lau1;->h()V

    iput-boolean v4, p0, Lo98;->g:Z

    :cond_3
    return v3

    :cond_4
    iget-boolean p1, v2, Lau1;->b:Z

    if-nez p1, :cond_6

    rem-int/2addr p2, v6

    if-nez p2, :cond_5

    invoke-virtual {v2, v1}, Lau1;->c(C)V

    invoke-virtual {v2}, Lau1;->a()V

    move v4, v3

    goto :goto_0

    :cond_5
    invoke-virtual {v2, v5}, Lau1;->c(C)V

    invoke-virtual {v2}, Lau1;->h()V

    :goto_0
    iput-boolean v4, p0, Lo98;->g:Z

    return v3

    :cond_6
    iput-boolean v3, p0, Lo98;->g:Z

    invoke-virtual {v2}, Lau1;->a()V

    return v3

    :cond_7
    iget-boolean p0, v2, Lau1;->b:Z

    if-nez p0, :cond_8

    invoke-virtual {v2, v1}, Lau1;->c(C)V

    :cond_8
    invoke-virtual {v2}, Lau1;->a()V

    return v3
.end method

.method public final encodeEnum(Lmp7;I)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1, p2}, Lmp7;->f(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lo98;->encodeString(Ljava/lang/String;)V

    return-void
.end method

.method public final encodeFloat(F)V
    .locals 2

    iget-boolean v0, p0, Lo98;->g:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lo98;->encodeString(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lo98;->a:Lau1;

    iget-object v0, v0, Lau1;->a:Lyd4;

    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lyd4;->c(Ljava/lang/String;)V

    :goto_0
    iget-object p0, p0, Lo98;->f:Lfc4;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p0

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    cmpg-float p0, p0, v0

    if-gtz p0, :cond_1

    return-void

    :cond_1
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    new-instance p1, Lkotlinx/serialization/json/JsonEncodingException;

    const/4 v0, 0x0

    invoke-static {v0, p0}, Lyc4;->f(Ljava/lang/String;Ljava/lang/Number;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "It is possible to deserialize them using \'JsonBuilder.allowSpecialFloatingPointValues = true\'"

    invoke-direct {p1, p0, v0}, Lkotlinx/serialization/json/JsonEncodingException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1
.end method

.method public final encodeInline(Lmp7;)Lux2;
    .locals 5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lp98;->a(Lmp7;)Z

    move-result v0

    const/4 v1, 0x0

    iget-object v2, p0, Lo98;->c:Lml9;

    iget-object v3, p0, Lo98;->b:Lxb4;

    iget-object v4, p0, Lo98;->a:Lau1;

    if-eqz v0, :cond_1

    instance-of p1, v4, Lcu1;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, v4, Lau1;->a:Lyd4;

    iget-boolean p0, p0, Lo98;->g:Z

    new-instance v4, Lcu1;

    invoke-direct {v4, p1, p0}, Lcu1;-><init>(Lyd4;Z)V

    :goto_0
    new-instance p0, Lo98;

    invoke-direct {p0, v4, v3, v2, v1}, Lo98;-><init>(Lau1;Lxb4;Lml9;[Lwc4;)V

    return-object p0

    :cond_1
    invoke-interface {p1}, Lmp7;->isInline()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lrc4;->a:Li54;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    instance-of p1, v4, Lbu1;

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    iget-object p1, v4, Lau1;->a:Lyd4;

    iget-boolean p0, p0, Lo98;->g:Z

    new-instance v4, Lbu1;

    invoke-direct {v4, p1, p0}, Lbu1;-><init>(Lyd4;Z)V

    :goto_1
    new-instance p0, Lo98;

    invoke-direct {p0, v4, v3, v2, v1}, Lo98;-><init>(Lau1;Lxb4;Lml9;[Lwc4;)V

    return-object p0

    :cond_3
    iget-object v0, p0, Lo98;->h:Ljava/lang/String;

    if-eqz v0, :cond_4

    invoke-interface {p1}, Lmp7;->h()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lo98;->i:Ljava/lang/String;

    return-object p0

    :cond_4
    invoke-super {p0, p1}, Lh0;->encodeInline(Lmp7;)Lux2;

    move-result-object p0

    return-object p0
.end method

.method public final encodeInt(I)V
    .locals 1

    iget-boolean v0, p0, Lo98;->g:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lo98;->encodeString(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object p0, p0, Lo98;->a:Lau1;

    invoke-virtual {p0, p1}, Lau1;->d(I)V

    return-void
.end method

.method public final encodeLong(J)V
    .locals 1

    iget-boolean v0, p0, Lo98;->g:Z

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lo98;->encodeString(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object p0, p0, Lo98;->a:Lau1;

    invoke-virtual {p0, p1, p2}, Lau1;->e(J)V

    return-void
.end method

.method public final encodeNull()V
    .locals 1

    iget-object p0, p0, Lo98;->a:Lau1;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lau1;->a:Lyd4;

    const-string v0, "null"

    invoke-virtual {p0, v0}, Lyd4;->c(Ljava/lang/String;)V

    return-void
.end method

.method public final encodeNullableSerializableElement(Lmp7;ILxp7;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lmp7;",
            "I",
            "Lxp7<",
            "-TT;>;TT;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez p4, :cond_1

    iget-object v0, p0, Lo98;->f:Lfc4;

    iget-boolean v0, v0, Lfc4;->b:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    invoke-super {p0, p1, p2, p3, p4}, Lh0;->encodeNullableSerializableElement(Lmp7;ILxp7;Ljava/lang/Object;)V

    return-void
.end method

.method public final encodeSerializableValue(Lxp7;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lxp7<",
            "-TT;>;TT;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lo98;->b:Lxb4;

    iget-object v1, v0, Lxb4;->a:Lfc4;

    instance-of v2, p1, Lk1;

    iget-object v1, v1, Lfc4;->g:Lyk1;

    if-eqz v2, :cond_0

    sget-object v3, Lyk1;->NONE:Lyk1;

    if-eq v1, v3, :cond_3

    goto :goto_0

    :cond_0
    sget-object v3, Lca6$a;->a:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v3, v1

    const/4 v3, 0x1

    if-eq v1, v3, :cond_3

    const/4 v3, 0x2

    if-eq v1, v3, :cond_3

    const/4 v3, 0x3

    if-ne v1, v3, :cond_2

    invoke-interface {p1}, Lxp7;->getDescriptor()Lmp7;

    move-result-object v1

    invoke-interface {v1}, Lmp7;->getKind()Lsp7;

    move-result-object v1

    sget-object v3, Leb8$a;->a:Leb8$a;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    sget-object v3, Leb8$d;->a:Leb8$d;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_1
    :goto_0
    invoke-interface {p1}, Lxp7;->getDescriptor()Lmp7;

    move-result-object v1

    invoke-static {v0, v1}, Lca6;->a(Lxb4;Lmp7;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    invoke-static {}, Lme0;->e()V

    return-void

    :cond_3
    const/4 v1, 0x0

    :goto_1
    if-eqz v2, :cond_5

    move-object v2, p1

    check-cast v2, Lk1;

    if-eqz p2, :cond_4

    invoke-static {v2, p0, p2}, Lea6;->b(Lk1;Lux2;Ljava/lang/Object;)Lxp7;

    move-result-object v2

    goto :goto_2

    :cond_4
    invoke-interface {v2}, Lxp7;->getDescriptor()Lmp7;

    move-result-object p0

    const-string p1, " should always be non-null. Please report issue to the kotlinx.serialization tracker."

    const-string p2, "Value for serializer "

    invoke-static {p0, p2, p1}, Lh8;->f(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_5
    move-object v2, p1

    :goto_2
    if-eqz v1, :cond_b

    invoke-interface {v2}, Lxp7;->getDescriptor()Lmp7;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v3}, Lfd4;->d(Lxb4;Lmp7;)V

    invoke-static {v3}, Lm96;->a(Lmp7;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {p1}, Lxp7;->getDescriptor()Lmp7;

    move-result-object p0

    invoke-interface {p0}, Lmp7;->h()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v2}, Lxp7;->getDescriptor()Lmp7;

    move-result-object p1

    invoke-interface {p1}, Lmp7;->h()Ljava/lang/String;

    move-result-object p1

    iget-object p2, v0, Lxb4;->a:Lfc4;

    iget-object p2, p2, Lfc4;->g:Lyk1;

    sget-object v0, Lyk1;->ALL_JSON_OBJECTS:Lyk1;

    if-ne p2, v0, :cond_6

    invoke-static {p0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    const-string p0, "in ALL_JSON_OBJECTS class discriminator mode"

    goto :goto_3

    :cond_6
    const-string p2, "as base class \'"

    const/16 v0, 0x27

    invoke-static {v0, p2, p0}, Llt0;->d(CLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_3
    const-string p2, "\' cannot be serialized "

    const-string v0, " because it has property name that conflicts with JSON class discriminator \'"

    const-string v2, "Class \'"

    invoke-static {v2, p1, p2, p0, v0}, Lad2;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "\'."

    invoke-static {p0, v1, p1}, Lme0;->d(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lkotlinx/serialization/json/JsonEncodingException;

    const-string p2, "You can either change class discriminator in JsonConfiguration, or rename property with @SerialName annotation."

    invoke-direct {p1, p0, p2}, Lkotlinx/serialization/json/JsonEncodingException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    :cond_7
    invoke-interface {v2}, Lxp7;->getDescriptor()Lmp7;

    move-result-object p1

    invoke-interface {p1}, Lmp7;->getKind()Lsp7;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p1, Lsp7$b;

    if-nez v0, :cond_a

    instance-of v0, p1, Ldg6;

    if-nez v0, :cond_9

    instance-of p1, p1, Lba6;

    if-nez p1, :cond_8

    invoke-interface {v2}, Lxp7;->getDescriptor()Lmp7;

    move-result-object p1

    invoke-interface {p1}, Lmp7;->h()Ljava/lang/String;

    move-result-object p1

    iput-object v1, p0, Lo98;->h:Ljava/lang/String;

    iput-object p1, p0, Lo98;->i:Ljava/lang/String;

    goto :goto_4

    :cond_8
    const-string p0, "Actual serializer for polymorphic cannot be polymorphic itself"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-void

    :cond_9
    const-string p0, "Primitives cannot be serialized polymorphically with \'type\' parameter. You can use \'JsonBuilder.useArrayPolymorphism\' instead"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-void

    :cond_a
    const-string p0, "Enums cannot be serialized polymorphically with \'type\' parameter. You can use \'JsonBuilder.useArrayPolymorphism\' instead"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-void

    :cond_b
    :goto_4
    invoke-interface {v2, p0, p2}, Lxp7;->serialize(Lux2;Ljava/lang/Object;)V

    return-void
.end method

.method public final encodeShort(S)V
    .locals 1

    iget-boolean v0, p0, Lo98;->g:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lo98;->encodeString(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object p0, p0, Lo98;->a:Lau1;

    invoke-virtual {p0, p1}, Lau1;->f(S)V

    return-void
.end method

.method public final encodeString(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lo98;->a:Lau1;

    invoke-virtual {p0, p1}, Lau1;->g(Ljava/lang/String;)V

    return-void
.end method

.method public final endStructure(Lmp7;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Lo98;->c:Lml9;

    iget-char v0, p1, Lml9;->end:C

    if-eqz v0, :cond_0

    iget-object p0, p0, Lo98;->a:Lau1;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lau1;->b:Z

    iget-char p1, p1, Lml9;->end:C

    invoke-virtual {p0, p1}, Lau1;->c(C)V

    :cond_0
    return-void
.end method

.method public final getSerializersModule()Ljq7;
    .locals 0

    iget-object p0, p0, Lo98;->e:Ljq7;

    return-object p0
.end method

.method public final shouldEncodeElementDefault(Lmp7;I)Z
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lo98;->f:Lfc4;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    return p0
.end method
