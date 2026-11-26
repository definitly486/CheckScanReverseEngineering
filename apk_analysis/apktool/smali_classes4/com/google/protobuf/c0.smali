.class public final Lcom/google/protobuf/c0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/f0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/protobuf/f0<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final p:[I

.field public static final q:Lsun/misc/Unsafe;


# instance fields
.field public final a:[I

.field public final b:[Ljava/lang/Object;

.field public final c:I

.field public final d:I

.field public final e:Lcom/google/protobuf/a0;

.field public final f:Z

.field public final g:Z

.field public final h:[I

.field public final i:I

.field public final j:I

.field public final k:Lan5;

.field public final l:Lcom/google/protobuf/u;

.field public final m:Lcom/google/protobuf/j0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/j0<",
            "**>;"
        }
    .end annotation
.end field

.field public final n:Lcom/google/protobuf/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/k<",
            "*>;"
        }
    .end annotation
.end field

.field public final o:Lcom/google/protobuf/y;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/protobuf/c0;->p:[I

    :try_start_0
    new-instance v0, Lg79;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/misc/Unsafe;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 v0, 0x0

    :goto_0
    sput-object v0, Lcom/google/protobuf/c0;->q:Lsun/misc/Unsafe;

    return-void
.end method

.method public constructor <init>([I[Ljava/lang/Object;IILcom/google/protobuf/a0;[IIILan5;Lcom/google/protobuf/u;Lcom/google/protobuf/j0;Lcom/google/protobuf/k;Lcom/google/protobuf/y;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/protobuf/c0;->a:[I

    iput-object p2, p0, Lcom/google/protobuf/c0;->b:[Ljava/lang/Object;

    iput p3, p0, Lcom/google/protobuf/c0;->c:I

    iput p4, p0, Lcom/google/protobuf/c0;->d:I

    instance-of p1, p5, Lcom/google/protobuf/o;

    iput-boolean p1, p0, Lcom/google/protobuf/c0;->g:Z

    if-eqz p12, :cond_0

    invoke-virtual {p12, p5}, Lcom/google/protobuf/k;->e(Lcom/google/protobuf/a0;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/google/protobuf/c0;->f:Z

    iput-object p6, p0, Lcom/google/protobuf/c0;->h:[I

    iput p7, p0, Lcom/google/protobuf/c0;->i:I

    iput p8, p0, Lcom/google/protobuf/c0;->j:I

    iput-object p9, p0, Lcom/google/protobuf/c0;->k:Lan5;

    iput-object p10, p0, Lcom/google/protobuf/c0;->l:Lcom/google/protobuf/u;

    iput-object p11, p0, Lcom/google/protobuf/c0;->m:Lcom/google/protobuf/j0;

    iput-object p12, p0, Lcom/google/protobuf/c0;->n:Lcom/google/protobuf/k;

    iput-object p5, p0, Lcom/google/protobuf/c0;->e:Lcom/google/protobuf/a0;

    iput-object p13, p0, Lcom/google/protobuf/c0;->o:Lcom/google/protobuf/y;

    return-void
.end method

.method public static A(Ljava/lang/Object;J)J
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)J"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lh79;->j(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0
.end method

.method public static G(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Field "

    const-string v3, " for "

    invoke-static {v2, p1, v3}, Ln7;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " not found. Known fields are "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static M(I)I
    .locals 1

    const/high16 v0, 0xff00000

    and-int/2addr p0, v0

    ushr-int/lit8 p0, p0, 0x14

    return p0
.end method

.method public static P(ILjava/lang/Object;Lcom/google/protobuf/n0;)V
    .locals 1

    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/String;

    check-cast p2, Lcom/google/protobuf/h;

    iget-object p2, p2, Lcom/google/protobuf/h;->a:Lcom/google/protobuf/CodedOutputStream;

    invoke-virtual {p2, p0, p1}, Lcom/google/protobuf/CodedOutputStream;->s0(ILjava/lang/String;)V

    return-void

    :cond_0
    check-cast p1, Lfx0;

    check-cast p2, Lcom/google/protobuf/h;

    invoke-virtual {p2, p0, p1}, Lcom/google/protobuf/h;->a(ILfx0;)V

    return-void
.end method

.method public static h(Ljava/lang/Object;)V
    .locals 1

    invoke-static {p0}, Lcom/google/protobuf/c0;->q(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "Mutating immutable message: "

    invoke-static {p0, v0}, Lr01;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static i([BIILui9;Ljava/lang/Class;Lcom/google/protobuf/d$b;)I
    .locals 1

    sget-object v0, Lcom/google/protobuf/c0$a;->a:[I

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    aget p3, v0, p3

    const/4 v0, 0x0

    packed-switch p3, :pswitch_data_0

    const-string p0, "unsupported field type."

    invoke-static {p0}, Ln7;->g(Ljava/lang/String;)V

    return v0

    :pswitch_0
    invoke-static {p0, p1, p5}, Lcom/google/protobuf/d;->r([BILcom/google/protobuf/d$b;)I

    move-result p1

    iget p2, p5, Lcom/google/protobuf/d$b;->a:I

    if-ltz p2, :cond_1

    if-nez p2, :cond_0

    const-string p0, ""

    iput-object p0, p5, Lcom/google/protobuf/d$b;->c:Ljava/lang/Object;

    return p1

    :cond_0
    sget-object p3, Lcom/google/protobuf/m0;->a:Lcom/google/protobuf/m0$b;

    invoke-virtual {p3, p0, p1, p2}, Lcom/google/protobuf/m0$b;->a([BII)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p5, Lcom/google/protobuf/d$b;->c:Ljava/lang/Object;

    add-int/2addr p1, p2

    return p1

    :cond_1
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->g()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :pswitch_1
    invoke-static {p0, p1, p5}, Lcom/google/protobuf/d;->t([BILcom/google/protobuf/d$b;)I

    move-result p0

    iget-wide p1, p5, Lcom/google/protobuf/d$b;->b:J

    invoke-static {p1, p2}, Lcom/google/protobuf/f;->c(J)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p5, Lcom/google/protobuf/d$b;->c:Ljava/lang/Object;

    return p0

    :pswitch_2
    invoke-static {p0, p1, p5}, Lcom/google/protobuf/d;->r([BILcom/google/protobuf/d$b;)I

    move-result p0

    iget p1, p5, Lcom/google/protobuf/d$b;->a:I

    invoke-static {p1}, Lcom/google/protobuf/f;->b(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p5, Lcom/google/protobuf/d$b;->c:Ljava/lang/Object;

    return p0

    :pswitch_3
    sget-object p3, Lrs6;->c:Lrs6;

    invoke-virtual {p3, p4}, Lrs6;->a(Ljava/lang/Class;)Lcom/google/protobuf/f0;

    move-result-object p3

    invoke-static {p3, p0, p1, p2, p5}, Lcom/google/protobuf/d;->e(Lcom/google/protobuf/f0;[BIILcom/google/protobuf/d$b;)I

    move-result p0

    return p0

    :pswitch_4
    invoke-static {p0, p1, p5}, Lcom/google/protobuf/d;->t([BILcom/google/protobuf/d$b;)I

    move-result p0

    iget-wide p1, p5, Lcom/google/protobuf/d$b;->b:J

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p5, Lcom/google/protobuf/d$b;->c:Ljava/lang/Object;

    return p0

    :pswitch_5
    invoke-static {p0, p1, p5}, Lcom/google/protobuf/d;->r([BILcom/google/protobuf/d$b;)I

    move-result p0

    iget p1, p5, Lcom/google/protobuf/d$b;->a:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p5, Lcom/google/protobuf/d$b;->c:Ljava/lang/Object;

    return p0

    :pswitch_6
    invoke-static {p0, p1}, Lcom/google/protobuf/d;->b([BI)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    iput-object p0, p5, Lcom/google/protobuf/d$b;->c:Ljava/lang/Object;

    add-int/lit8 p1, p1, 0x4

    return p1

    :pswitch_7
    invoke-static {p0, p1}, Lcom/google/protobuf/d;->c([BI)J

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    iput-object p0, p5, Lcom/google/protobuf/d$b;->c:Ljava/lang/Object;

    add-int/lit8 p1, p1, 0x8

    return p1

    :pswitch_8
    invoke-static {p0, p1}, Lcom/google/protobuf/d;->b([BI)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    iput-object p0, p5, Lcom/google/protobuf/d$b;->c:Ljava/lang/Object;

    add-int/lit8 p1, p1, 0x4

    return p1

    :pswitch_9
    invoke-static {p0, p1}, Lcom/google/protobuf/d;->c([BI)J

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    iput-object p0, p5, Lcom/google/protobuf/d$b;->c:Ljava/lang/Object;

    add-int/lit8 p1, p1, 0x8

    return p1

    :pswitch_a
    invoke-static {p0, p1, p5}, Lcom/google/protobuf/d;->a([BILcom/google/protobuf/d$b;)I

    move-result p0

    return p0

    :pswitch_b
    invoke-static {p0, p1, p5}, Lcom/google/protobuf/d;->t([BILcom/google/protobuf/d$b;)I

    move-result p0

    iget-wide p1, p5, Lcom/google/protobuf/d$b;->b:J

    const-wide/16 p3, 0x0

    cmp-long p1, p1, p3

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    :cond_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p5, Lcom/google/protobuf/d$b;->c:Ljava/lang/Object;

    return p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static n(Ljava/lang/Object;)Lcom/google/protobuf/k0;
    .locals 2

    check-cast p0, Lcom/google/protobuf/o;

    iget-object v0, p0, Lcom/google/protobuf/o;->unknownFields:Lcom/google/protobuf/k0;

    sget-object v1, Lcom/google/protobuf/k0;->f:Lcom/google/protobuf/k0;

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/google/protobuf/k0;

    invoke-direct {v0}, Lcom/google/protobuf/k0;-><init>()V

    iput-object v0, p0, Lcom/google/protobuf/o;->unknownFields:Lcom/google/protobuf/k0;

    :cond_0
    return-object v0
.end method

.method public static q(Ljava/lang/Object;)Z
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    instance-of v0, p0, Lcom/google/protobuf/o;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/google/protobuf/o;

    invoke-virtual {p0}, Lcom/google/protobuf/o;->isMutable()Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static x(Lfa5;Lan5;Lcom/google/protobuf/u;Lcom/google/protobuf/j0;Lcom/google/protobuf/k;Lcom/google/protobuf/y;)Lcom/google/protobuf/c0;
    .locals 31

    move-object/from16 v0, p0

    instance-of v1, v0, Lsx6;

    if-eqz v1, :cond_36

    check-cast v0, Lsx6;

    iget-object v1, v0, Lsx6;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const v6, 0xd800

    if-lt v4, v6, :cond_0

    const/4 v4, 0x1

    :goto_0
    add-int/lit8 v7, v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v6, :cond_1

    move v4, v7

    goto :goto_0

    :cond_0
    const/4 v7, 0x1

    :cond_1
    add-int/lit8 v4, v7, 0x1

    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v6, :cond_3

    and-int/lit16 v7, v7, 0x1fff

    const/16 v9, 0xd

    :goto_1
    add-int/lit8 v10, v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v6, :cond_2

    and-int/lit16 v4, v4, 0x1fff

    shl-int/2addr v4, v9

    or-int/2addr v7, v4

    add-int/lit8 v9, v9, 0xd

    move v4, v10

    goto :goto_1

    :cond_2
    shl-int/2addr v4, v9

    or-int/2addr v7, v4

    move v4, v10

    :cond_3
    if-nez v7, :cond_4

    sget-object v7, Lcom/google/protobuf/c0;->p:[I

    move v9, v3

    move v10, v9

    move v11, v10

    move v12, v11

    move v13, v12

    move/from16 v16, v13

    move-object v15, v7

    move/from16 v7, v16

    goto/16 :goto_a

    :cond_4
    add-int/lit8 v7, v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v6, :cond_6

    and-int/lit16 v4, v4, 0x1fff

    const/16 v9, 0xd

    :goto_2
    add-int/lit8 v10, v7, 0x1

    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v6, :cond_5

    and-int/lit16 v7, v7, 0x1fff

    shl-int/2addr v7, v9

    or-int/2addr v4, v7

    add-int/lit8 v9, v9, 0xd

    move v7, v10

    goto :goto_2

    :cond_5
    shl-int/2addr v7, v9

    or-int/2addr v4, v7

    move v7, v10

    :cond_6
    add-int/lit8 v9, v7, 0x1

    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v6, :cond_8

    and-int/lit16 v7, v7, 0x1fff

    const/16 v10, 0xd

    :goto_3
    add-int/lit8 v11, v9, 0x1

    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-lt v9, v6, :cond_7

    and-int/lit16 v9, v9, 0x1fff

    shl-int/2addr v9, v10

    or-int/2addr v7, v9

    add-int/lit8 v10, v10, 0xd

    move v9, v11

    goto :goto_3

    :cond_7
    shl-int/2addr v9, v10

    or-int/2addr v7, v9

    move v9, v11

    :cond_8
    add-int/lit8 v10, v9, 0x1

    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-lt v9, v6, :cond_a

    and-int/lit16 v9, v9, 0x1fff

    const/16 v11, 0xd

    :goto_4
    add-int/lit8 v12, v10, 0x1

    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-lt v10, v6, :cond_9

    and-int/lit16 v10, v10, 0x1fff

    shl-int/2addr v10, v11

    or-int/2addr v9, v10

    add-int/lit8 v11, v11, 0xd

    move v10, v12

    goto :goto_4

    :cond_9
    shl-int/2addr v10, v11

    or-int/2addr v9, v10

    move v10, v12

    :cond_a
    add-int/lit8 v11, v10, 0x1

    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-lt v10, v6, :cond_c

    and-int/lit16 v10, v10, 0x1fff

    const/16 v12, 0xd

    :goto_5
    add-int/lit8 v13, v11, 0x1

    invoke-virtual {v1, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-lt v11, v6, :cond_b

    and-int/lit16 v11, v11, 0x1fff

    shl-int/2addr v11, v12

    or-int/2addr v10, v11

    add-int/lit8 v12, v12, 0xd

    move v11, v13

    goto :goto_5

    :cond_b
    shl-int/2addr v11, v12

    or-int/2addr v10, v11

    move v11, v13

    :cond_c
    add-int/lit8 v12, v11, 0x1

    invoke-virtual {v1, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-lt v11, v6, :cond_e

    and-int/lit16 v11, v11, 0x1fff

    const/16 v13, 0xd

    :goto_6
    add-int/lit8 v14, v12, 0x1

    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-lt v12, v6, :cond_d

    and-int/lit16 v12, v12, 0x1fff

    shl-int/2addr v12, v13

    or-int/2addr v11, v12

    add-int/lit8 v13, v13, 0xd

    move v12, v14

    goto :goto_6

    :cond_d
    shl-int/2addr v12, v13

    or-int/2addr v11, v12

    move v12, v14

    :cond_e
    add-int/lit8 v13, v12, 0x1

    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-lt v12, v6, :cond_10

    and-int/lit16 v12, v12, 0x1fff

    const/16 v14, 0xd

    :goto_7
    add-int/lit8 v15, v13, 0x1

    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-lt v13, v6, :cond_f

    and-int/lit16 v13, v13, 0x1fff

    shl-int/2addr v13, v14

    or-int/2addr v12, v13

    add-int/lit8 v14, v14, 0xd

    move v13, v15

    goto :goto_7

    :cond_f
    shl-int/2addr v13, v14

    or-int/2addr v12, v13

    move v13, v15

    :cond_10
    add-int/lit8 v14, v13, 0x1

    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-lt v13, v6, :cond_12

    and-int/lit16 v13, v13, 0x1fff

    const/16 v15, 0xd

    :goto_8
    add-int/lit8 v16, v14, 0x1

    invoke-virtual {v1, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-lt v14, v6, :cond_11

    and-int/lit16 v14, v14, 0x1fff

    shl-int/2addr v14, v15

    or-int/2addr v13, v14

    add-int/lit8 v15, v15, 0xd

    move/from16 v14, v16

    goto :goto_8

    :cond_11
    shl-int/2addr v14, v15

    or-int/2addr v13, v14

    move/from16 v14, v16

    :cond_12
    add-int/lit8 v15, v14, 0x1

    invoke-virtual {v1, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-lt v14, v6, :cond_14

    and-int/lit16 v14, v14, 0x1fff

    const/16 v16, 0xd

    :goto_9
    add-int/lit8 v17, v15, 0x1

    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-lt v15, v6, :cond_13

    and-int/lit16 v15, v15, 0x1fff

    shl-int v15, v15, v16

    or-int/2addr v14, v15

    add-int/lit8 v16, v16, 0xd

    move/from16 v15, v17

    goto :goto_9

    :cond_13
    shl-int v15, v15, v16

    or-int/2addr v14, v15

    move/from16 v15, v17

    :cond_14
    add-int v16, v14, v12

    add-int v13, v16, v13

    new-array v13, v13, [I

    mul-int/lit8 v16, v4, 0x2

    add-int v16, v16, v7

    move v7, v12

    move v12, v9

    move v9, v7

    move v7, v4

    move v4, v15

    move-object v15, v13

    move v13, v10

    move/from16 v10, v16

    move/from16 v16, v14

    :goto_a
    iget-object v14, v0, Lsx6;->c:[Ljava/lang/Object;

    iget-object v3, v0, Lsx6;->a:Lcom/google/protobuf/a0;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const/16 v17, 0x1

    mul-int/lit8 v5, v11, 0x3

    new-array v5, v5, [I

    mul-int/lit8 v11, v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    add-int v9, v16, v9

    move/from16 v21, v9

    move/from16 v20, v16

    const/16 v18, 0x0

    const/16 v19, 0x0

    :goto_b
    if-ge v4, v2, :cond_35

    add-int/lit8 v22, v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v6, :cond_16

    and-int/lit16 v4, v4, 0x1fff

    move/from16 v8, v22

    const/16 v22, 0xd

    :goto_c
    add-int/lit8 v23, v8, 0x1

    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-lt v8, v6, :cond_15

    and-int/lit16 v8, v8, 0x1fff

    shl-int v8, v8, v22

    or-int/2addr v4, v8

    add-int/lit8 v22, v22, 0xd

    move/from16 v8, v23

    goto :goto_c

    :cond_15
    shl-int v8, v8, v22

    or-int/2addr v4, v8

    move/from16 v8, v23

    goto :goto_d

    :cond_16
    move/from16 v8, v22

    :goto_d
    add-int/lit8 v22, v8, 0x1

    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-lt v8, v6, :cond_18

    and-int/lit16 v8, v8, 0x1fff

    move/from16 v6, v22

    const/16 v22, 0xd

    :goto_e
    add-int/lit8 v24, v6, 0x1

    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    move/from16 v25, v2

    const v2, 0xd800

    if-lt v6, v2, :cond_17

    and-int/lit16 v2, v6, 0x1fff

    shl-int v2, v2, v22

    or-int/2addr v8, v2

    add-int/lit8 v22, v22, 0xd

    move/from16 v6, v24

    move/from16 v2, v25

    goto :goto_e

    :cond_17
    shl-int v2, v6, v22

    or-int/2addr v8, v2

    move/from16 v2, v24

    goto :goto_f

    :cond_18
    move/from16 v25, v2

    move/from16 v2, v22

    :goto_f
    and-int/lit16 v6, v8, 0xff

    move/from16 v22, v4

    and-int/lit16 v4, v8, 0x400

    if-eqz v4, :cond_19

    add-int/lit8 v4, v18, 0x1

    aput v19, v15, v18

    move/from16 v18, v4

    :cond_19
    const/16 v4, 0x33

    move-object/from16 v27, v5

    sget-object v5, Lcom/google/protobuf/c0;->q:Lsun/misc/Unsafe;

    if-lt v6, v4, :cond_22

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    move/from16 v28, v4

    const v4, 0xd800

    if-lt v2, v4, :cond_1b

    and-int/lit16 v2, v2, 0x1fff

    move/from16 v4, v28

    const/16 v28, 0xd

    :goto_10
    add-int/lit8 v29, v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    move/from16 v30, v2

    const v2, 0xd800

    if-lt v4, v2, :cond_1a

    and-int/lit16 v2, v4, 0x1fff

    shl-int v2, v2, v28

    or-int v2, v30, v2

    add-int/lit8 v28, v28, 0xd

    move/from16 v4, v29

    goto :goto_10

    :cond_1a
    shl-int v2, v4, v28

    or-int v2, v30, v2

    move/from16 v4, v29

    goto :goto_11

    :cond_1b
    move/from16 v4, v28

    :goto_11
    move/from16 v28, v2

    add-int/lit8 v2, v6, -0x33

    move/from16 v29, v4

    const/16 v4, 0x9

    if-eq v2, v4, :cond_1e

    const/16 v4, 0x11

    if-ne v2, v4, :cond_1c

    goto :goto_13

    :cond_1c
    const/16 v4, 0xc

    if-ne v2, v4, :cond_1f

    invoke-virtual {v0}, Lsx6;->getSyntax()Lqs6;

    move-result-object v2

    sget-object v4, Lqs6;->PROTO2:Lqs6;

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1d

    and-int/lit16 v2, v8, 0x800

    if-eqz v2, :cond_1f

    :cond_1d
    div-int/lit8 v2, v19, 0x3

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v4, v10, 0x1

    aget-object v10, v14, v10

    aput-object v10, v11, v2

    :goto_12
    move v10, v4

    goto :goto_14

    :cond_1e
    :goto_13
    div-int/lit8 v2, v19, 0x3

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v4, v10, 0x1

    aget-object v10, v14, v10

    aput-object v10, v11, v2

    goto :goto_12

    :cond_1f
    :goto_14
    mul-int/lit8 v2, v28, 0x2

    aget-object v4, v14, v2

    move/from16 v24, v2

    instance-of v2, v4, Ljava/lang/reflect/Field;

    if-eqz v2, :cond_20

    check-cast v4, Ljava/lang/reflect/Field;

    :goto_15
    move/from16 v28, v9

    move v2, v10

    goto :goto_16

    :cond_20
    check-cast v4, Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/protobuf/c0;->G(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    aput-object v4, v14, v24

    goto :goto_15

    :goto_16
    invoke-virtual {v5, v4}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v9

    long-to-int v4, v9

    add-int/lit8 v9, v24, 0x1

    aget-object v10, v14, v9

    move/from16 v24, v2

    instance-of v2, v10, Ljava/lang/reflect/Field;

    if-eqz v2, :cond_21

    check-cast v10, Ljava/lang/reflect/Field;

    goto :goto_17

    :cond_21
    check-cast v10, Ljava/lang/String;

    invoke-static {v3, v10}, Lcom/google/protobuf/c0;->G(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v10

    aput-object v10, v14, v9

    :goto_17
    invoke-virtual {v5, v10}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v9

    long-to-int v2, v9

    move v5, v2

    move/from16 v10, v24

    move/from16 v26, v29

    const/4 v2, 0x0

    move/from16 v24, v7

    goto/16 :goto_22

    :cond_22
    move/from16 v28, v9

    add-int/lit8 v4, v10, 0x1

    aget-object v9, v14, v10

    check-cast v9, Ljava/lang/String;

    invoke-static {v3, v9}, Lcom/google/protobuf/c0;->G(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v9

    move/from16 v29, v4

    const/16 v4, 0x9

    if-eq v6, v4, :cond_23

    const/16 v4, 0x11

    if-ne v6, v4, :cond_24

    :cond_23
    move/from16 v24, v7

    goto/16 :goto_1b

    :cond_24
    const/16 v4, 0x1b

    if-eq v6, v4, :cond_25

    const/16 v4, 0x31

    if-ne v6, v4, :cond_26

    :cond_25
    move/from16 v24, v7

    goto :goto_1a

    :cond_26
    const/16 v4, 0xc

    if-eq v6, v4, :cond_2a

    const/16 v4, 0x1e

    if-eq v6, v4, :cond_2a

    const/16 v4, 0x2c

    if-ne v6, v4, :cond_27

    goto :goto_18

    :cond_27
    const/16 v4, 0x32

    if-ne v6, v4, :cond_29

    add-int/lit8 v4, v20, 0x1

    aput v19, v15, v20

    div-int/lit8 v20, v19, 0x3

    mul-int/lit8 v20, v20, 0x2

    add-int/lit8 v24, v10, 0x2

    aget-object v26, v14, v29

    aput-object v26, v11, v20

    move/from16 v26, v4

    and-int/lit16 v4, v8, 0x800

    if-eqz v4, :cond_28

    add-int/lit8 v20, v20, 0x1

    add-int/lit8 v4, v10, 0x3

    aget-object v10, v14, v24

    aput-object v10, v11, v20

    move/from16 v24, v7

    move/from16 v20, v26

    goto :goto_1d

    :cond_28
    move/from16 v4, v24

    move/from16 v20, v26

    move/from16 v24, v7

    goto :goto_1d

    :cond_29
    move/from16 v24, v7

    goto :goto_1c

    :cond_2a
    :goto_18
    invoke-virtual {v0}, Lsx6;->getSyntax()Lqs6;

    move-result-object v4

    move/from16 v24, v7

    sget-object v7, Lqs6;->PROTO2:Lqs6;

    if-eq v4, v7, :cond_2b

    and-int/lit16 v4, v8, 0x800

    if-eqz v4, :cond_2c

    :cond_2b
    div-int/lit8 v4, v19, 0x3

    mul-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v10, v10, 0x2

    aget-object v7, v14, v29

    aput-object v7, v11, v4

    :goto_19
    move v4, v10

    goto :goto_1d

    :goto_1a
    div-int/lit8 v4, v19, 0x3

    mul-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v10, v10, 0x2

    aget-object v7, v14, v29

    aput-object v7, v11, v4

    goto :goto_19

    :goto_1b
    div-int/lit8 v4, v19, 0x3

    mul-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v9}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v7

    aput-object v7, v11, v4

    :cond_2c
    :goto_1c
    move/from16 v4, v29

    :goto_1d
    invoke-virtual {v5, v9}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v9

    long-to-int v7, v9

    and-int/lit16 v9, v8, 0x1000

    if-eqz v9, :cond_30

    const/16 v9, 0x11

    if-gt v6, v9, :cond_30

    add-int/lit8 v9, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const v10, 0xd800

    if-lt v2, v10, :cond_2e

    and-int/lit16 v2, v2, 0x1fff

    const/16 v23, 0xd

    :goto_1e
    add-int/lit8 v26, v9, 0x1

    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-lt v9, v10, :cond_2d

    and-int/lit16 v9, v9, 0x1fff

    shl-int v9, v9, v23

    or-int/2addr v2, v9

    add-int/lit8 v23, v23, 0xd

    move/from16 v9, v26

    goto :goto_1e

    :cond_2d
    shl-int v9, v9, v23

    or-int/2addr v2, v9

    goto :goto_1f

    :cond_2e
    move/from16 v26, v9

    :goto_1f
    mul-int/lit8 v9, v24, 0x2

    div-int/lit8 v23, v2, 0x20

    add-int v23, v23, v9

    aget-object v9, v14, v23

    instance-of v10, v9, Ljava/lang/reflect/Field;

    if-eqz v10, :cond_2f

    check-cast v9, Ljava/lang/reflect/Field;

    goto :goto_20

    :cond_2f
    check-cast v9, Ljava/lang/String;

    invoke-static {v3, v9}, Lcom/google/protobuf/c0;->G(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v9

    aput-object v9, v14, v23

    :goto_20
    invoke-virtual {v5, v9}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v9

    long-to-int v5, v9

    rem-int/lit8 v2, v2, 0x20

    goto :goto_21

    :cond_30
    const v5, 0xfffff

    move/from16 v26, v2

    const/4 v2, 0x0

    :goto_21
    const/16 v9, 0x12

    if-lt v6, v9, :cond_31

    const/16 v9, 0x31

    if-gt v6, v9, :cond_31

    add-int/lit8 v9, v21, 0x1

    aput v7, v15, v21

    move v10, v4

    move v4, v7

    move/from16 v21, v9

    goto :goto_22

    :cond_31
    move v10, v4

    move v4, v7

    :goto_22
    add-int/lit8 v7, v19, 0x1

    aput v22, v27, v19

    add-int/lit8 v9, v19, 0x2

    move-object/from16 v22, v1

    and-int/lit16 v1, v8, 0x200

    if-eqz v1, :cond_32

    const/high16 v1, 0x20000000

    goto :goto_23

    :cond_32
    const/4 v1, 0x0

    :goto_23
    move/from16 v23, v1

    and-int/lit16 v1, v8, 0x100

    if-eqz v1, :cond_33

    const/high16 v1, 0x10000000

    goto :goto_24

    :cond_33
    const/4 v1, 0x0

    :goto_24
    or-int v1, v23, v1

    and-int/lit16 v8, v8, 0x800

    if-eqz v8, :cond_34

    const/high16 v8, -0x80000000

    goto :goto_25

    :cond_34
    const/4 v8, 0x0

    :goto_25
    or-int/2addr v1, v8

    shl-int/lit8 v6, v6, 0x14

    or-int/2addr v1, v6

    or-int/2addr v1, v4

    aput v1, v27, v7

    add-int/lit8 v19, v19, 0x3

    shl-int/lit8 v1, v2, 0x14

    or-int/2addr v1, v5

    aput v1, v27, v9

    move-object/from16 v1, v22

    move/from16 v7, v24

    move/from16 v2, v25

    move/from16 v4, v26

    move-object/from16 v5, v27

    move/from16 v9, v28

    const v6, 0xd800

    goto/16 :goto_b

    :cond_35
    move-object/from16 v27, v5

    move/from16 v28, v9

    new-instance v9, Lcom/google/protobuf/c0;

    iget-object v14, v0, Lsx6;->a:Lcom/google/protobuf/a0;

    invoke-virtual {v0}, Lsx6;->getSyntax()Lqs6;

    move-object/from16 v18, p1

    move-object/from16 v19, p2

    move-object/from16 v20, p3

    move-object/from16 v21, p4

    move-object/from16 v22, p5

    move-object/from16 v10, v27

    move/from16 v17, v28

    invoke-direct/range {v9 .. v22}, Lcom/google/protobuf/c0;-><init>([I[Ljava/lang/Object;IILcom/google/protobuf/a0;[IIILan5;Lcom/google/protobuf/u;Lcom/google/protobuf/j0;Lcom/google/protobuf/k;Lcom/google/protobuf/y;)V

    return-object v9

    :cond_36
    check-cast v0, Ldb8;

    const/4 v0, 0x0

    throw v0
.end method

.method public static y(I)J
    .locals 2

    const v0, 0xfffff

    and-int/2addr p0, v0

    int-to-long v0, p0

    return-wide v0
.end method

.method public static z(Ljava/lang/Object;J)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)I"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lh79;->j(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method


# virtual methods
.method public final B(Ljava/lang/Object;[BIIILcom/google/protobuf/d$b;)I
    .locals 38
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BIII",
            "Lcom/google/protobuf/d$b;",
            ")I"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p4

    move-object/from16 v6, p6

    iget-object v11, v6, Lcom/google/protobuf/d$b;->d:Lcom/google/protobuf/j;

    invoke-static {v2}, Lcom/google/protobuf/c0;->h(Ljava/lang/Object;)V

    move/from16 v1, p3

    const/4 v5, -0x1

    const/4 v7, 0x0

    const v8, 0xfffff

    const/4 v9, 0x0

    const/4 v15, 0x0

    :goto_0
    const v16, 0xfffff

    :goto_1
    sget-object v12, Lcom/google/protobuf/c0;->q:Lsun/misc/Unsafe;

    if-ge v1, v4, :cond_84

    add-int/lit8 v15, v1, 0x1

    aget-byte v1, v3, v1

    if-gez v1, :cond_0

    invoke-static {v1, v3, v15, v6}, Lcom/google/protobuf/d;->q(I[BILcom/google/protobuf/d$b;)I

    move-result v15

    iget v1, v6, Lcom/google/protobuf/d$b;->a:I

    :cond_0
    move v6, v15

    move v15, v1

    ushr-int/lit8 v1, v15, 0x3

    and-int/lit8 v14, v15, 0x7

    iget v13, v0, Lcom/google/protobuf/c0;->d:I

    const/16 v19, 0x3

    iget v3, v0, Lcom/google/protobuf/c0;->c:I

    if-le v1, v5, :cond_2

    div-int/lit8 v7, v7, 0x3

    if-lt v1, v3, :cond_1

    if-gt v1, v13, :cond_1

    invoke-virtual {v0, v1, v7}, Lcom/google/protobuf/c0;->J(II)I

    move-result v3

    goto :goto_2

    :cond_1
    const/4 v3, -0x1

    :goto_2
    const/4 v13, 0x0

    goto :goto_3

    :cond_2
    if-lt v1, v3, :cond_3

    if-gt v1, v13, :cond_3

    const/4 v13, 0x0

    invoke-virtual {v0, v1, v13}, Lcom/google/protobuf/c0;->J(II)I

    move-result v3

    goto :goto_3

    :cond_3
    const/4 v13, 0x0

    const/4 v3, -0x1

    :goto_3
    const-wide/16 v20, 0x0

    const/4 v5, -0x1

    if-ne v3, v5, :cond_4

    move-object v10, v2

    move/from16 v18, v5

    move v3, v6

    move/from16 v26, v8

    move/from16 v29, v9

    move-object/from16 v22, v11

    move-object v8, v12

    move v9, v15

    move-object/from16 v6, p2

    move-object/from16 v11, p6

    move v12, v1

    move v15, v13

    const/4 v1, 0x1

    move/from16 v13, p5

    goto/16 :goto_4a

    :cond_4
    add-int/lit8 v17, v3, 0x1

    iget-object v5, v0, Lcom/google/protobuf/c0;->a:[I

    aget v13, v5, v17

    const/16 v17, 0x1

    invoke-static {v13}, Lcom/google/protobuf/c0;->M(I)I

    move-result v7

    move/from16 v22, v1

    and-int v1, v13, v16

    move-object/from16 v23, v5

    int-to-long v4, v1

    const/high16 v24, 0x20000000

    const-string v1, ""

    move-wide/from16 v26, v4

    const/16 v4, 0x11

    if-gt v7, v4, :cond_16

    add-int/lit8 v4, v3, 0x2

    aget v4, v23, v4

    ushr-int/lit8 v23, v4, 0x14

    shl-int v23, v17, v23

    and-int v4, v4, v16

    if-eq v4, v8, :cond_7

    move/from16 v5, v16

    move/from16 v28, v6

    if-eq v8, v5, :cond_5

    int-to-long v5, v8

    invoke-virtual {v12, v2, v5, v6, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    const v5, 0xfffff

    :cond_5
    if-ne v4, v5, :cond_6

    const/4 v5, 0x0

    goto :goto_4

    :cond_6
    int-to-long v5, v4

    invoke-virtual {v12, v2, v5, v6}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v5

    :goto_4
    move/from16 v29, v4

    move/from16 v30, v5

    goto :goto_5

    :cond_7
    move/from16 v28, v6

    move/from16 v29, v8

    move/from16 v30, v9

    :goto_5
    packed-switch v7, :pswitch_data_0

    move-object/from16 v7, p2

    move-object/from16 v9, p6

    move v8, v3

    move-object v3, v12

    move/from16 v4, v17

    move/from16 v12, v28

    const/16 v18, -0x1

    goto/16 :goto_11

    :pswitch_0
    move/from16 v1, v19

    if-ne v14, v1, :cond_8

    invoke-virtual {v0, v2, v3}, Lcom/google/protobuf/c0;->v(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    shl-int/lit8 v4, v22, 0x3

    or-int/lit8 v8, v4, 0x4

    invoke-virtual {v0, v3}, Lcom/google/protobuf/c0;->m(I)Lcom/google/protobuf/f0;

    move-result-object v4

    move-object/from16 v5, p2

    move/from16 v7, p4

    move-object/from16 v9, p6

    move v13, v3

    move/from16 v6, v28

    const/16 v18, -0x1

    move-object v3, v1

    invoke-static/range {v3 .. v9}, Lcom/google/protobuf/d;->u(Ljava/lang/Object;Lcom/google/protobuf/f0;[BIIILcom/google/protobuf/d$b;)I

    move-result v1

    move-object v7, v5

    invoke-virtual {v0, v2, v13, v3}, Lcom/google/protobuf/c0;->K(Ljava/lang/Object;ILjava/lang/Object;)V

    or-int v3, v30, v23

    move/from16 v4, p4

    move-object v6, v9

    move/from16 v5, v22

    move/from16 v8, v29

    const v16, 0xfffff

    move v9, v3

    move-object v3, v7

    move v7, v13

    goto/16 :goto_1

    :cond_8
    const/16 v18, -0x1

    move-object/from16 v7, p2

    move-object/from16 v9, p6

    move v8, v3

    move-object v3, v12

    move/from16 v4, v17

    move/from16 v12, v28

    goto/16 :goto_11

    :pswitch_1
    move-object/from16 v7, p2

    move-object/from16 v9, p6

    move v13, v3

    move/from16 v4, v28

    const/16 v18, -0x1

    if-nez v14, :cond_9

    invoke-static {v7, v4, v9}, Lcom/google/protobuf/d;->t([BILcom/google/protobuf/d$b;)I

    move-result v8

    iget-wide v3, v9, Lcom/google/protobuf/d$b;->b:J

    invoke-static {v3, v4}, Lcom/google/protobuf/f;->c(J)J

    move-result-wide v5

    move-object v1, v12

    move-wide/from16 v3, v26

    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    move-object v12, v2

    or-int v1, v30, v23

    move/from16 v4, p4

    move-object v3, v7

    move-object v6, v9

    move v7, v13

    move/from16 v5, v22

    const v16, 0xfffff

    move v9, v1

    move v1, v8

    :goto_6
    move/from16 v8, v29

    goto/16 :goto_1

    :cond_9
    move-object/from16 v36, v12

    move-object v12, v2

    move-object/from16 v2, v36

    :cond_a
    move-object v3, v2

    move-object v2, v12

    move v8, v13

    :goto_7
    move v12, v4

    move/from16 v4, v17

    goto/16 :goto_11

    :pswitch_2
    move-object v4, v12

    move-object v12, v2

    move-object v2, v4

    move-object/from16 v7, p2

    move-object/from16 v9, p6

    move v13, v3

    move-wide/from16 v5, v26

    move/from16 v4, v28

    const/16 v18, -0x1

    if-nez v14, :cond_a

    invoke-static {v7, v4, v9}, Lcom/google/protobuf/d;->r([BILcom/google/protobuf/d$b;)I

    move-result v1

    iget v3, v9, Lcom/google/protobuf/d$b;->a:I

    invoke-static {v3}, Lcom/google/protobuf/f;->b(I)I

    move-result v3

    invoke-virtual {v2, v12, v5, v6, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    or-int v2, v30, v23

    move/from16 v4, p4

    move-object v3, v7

    move-object v6, v9

    move v7, v13

    :goto_8
    move/from16 v5, v22

    move/from16 v8, v29

    const v16, 0xfffff

    move v9, v2

    :goto_9
    move-object v2, v12

    goto/16 :goto_1

    :pswitch_3
    move-object v4, v12

    move-object v12, v2

    move-object v2, v4

    move-object/from16 v7, p2

    move-object/from16 v9, p6

    move v8, v3

    move-wide/from16 v5, v26

    move/from16 v4, v28

    const/16 v18, -0x1

    if-nez v14, :cond_d

    invoke-static {v7, v4, v9}, Lcom/google/protobuf/d;->r([BILcom/google/protobuf/d$b;)I

    move-result v1

    iget v3, v9, Lcom/google/protobuf/d$b;->a:I

    invoke-virtual {v0, v8}, Lcom/google/protobuf/c0;->k(I)Lcom/google/protobuf/q$e;

    move-result-object v4

    const/high16 v14, -0x80000000

    and-int/2addr v13, v14

    if-eqz v13, :cond_c

    if-eqz v4, :cond_c

    invoke-interface {v4, v3}, Lcom/google/protobuf/q$e;->isInRange(I)Z

    move-result v4

    if-eqz v4, :cond_b

    goto :goto_a

    :cond_b
    invoke-static {v12}, Lcom/google/protobuf/c0;->n(Ljava/lang/Object;)Lcom/google/protobuf/k0;

    move-result-object v2

    int-to-long v3, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v15, v3}, Lcom/google/protobuf/k0;->f(ILjava/lang/Object;)V

    move/from16 v4, p4

    move-object v3, v7

    move v7, v8

    move-object v6, v9

    move-object v2, v12

    move/from16 v5, v22

    move/from16 v8, v29

    move/from16 v9, v30

    goto/16 :goto_0

    :cond_c
    :goto_a
    invoke-virtual {v2, v12, v5, v6, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :goto_b
    or-int v2, v30, v23

    move/from16 v4, p4

    move-object v3, v7

    move v7, v8

    move-object v6, v9

    goto :goto_8

    :cond_d
    move-object v3, v2

    move-object v2, v12

    goto/16 :goto_7

    :pswitch_4
    move-object v4, v12

    move-object v12, v2

    move-object v2, v4

    move-object/from16 v7, p2

    move-object/from16 v9, p6

    move v8, v3

    move-wide/from16 v5, v26

    move/from16 v4, v28

    const/4 v3, 0x2

    const/16 v18, -0x1

    if-ne v14, v3, :cond_d

    invoke-static {v7, v4, v9}, Lcom/google/protobuf/d;->a([BILcom/google/protobuf/d$b;)I

    move-result v1

    iget-object v3, v9, Lcom/google/protobuf/d$b;->c:Ljava/lang/Object;

    invoke-virtual {v2, v12, v5, v6, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_b

    :pswitch_5
    move-object v4, v12

    move-object v12, v2

    move-object v2, v4

    move-object/from16 v7, p2

    move-object/from16 v9, p6

    move v8, v3

    move/from16 v4, v28

    const/4 v3, 0x2

    const/16 v18, -0x1

    if-ne v14, v3, :cond_d

    invoke-virtual {v0, v12, v8}, Lcom/google/protobuf/c0;->v(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v8}, Lcom/google/protobuf/c0;->m(I)Lcom/google/protobuf/f0;

    move-result-object v2

    move/from16 v5, p4

    move-object v3, v7

    move-object v6, v9

    invoke-static/range {v1 .. v6}, Lcom/google/protobuf/d;->v(Ljava/lang/Object;Lcom/google/protobuf/f0;[BIILcom/google/protobuf/d$b;)I

    move-result v2

    invoke-virtual {v0, v12, v8, v1}, Lcom/google/protobuf/c0;->K(Ljava/lang/Object;ILjava/lang/Object;)V

    or-int v1, v30, v23

    move/from16 v4, p4

    move v7, v8

    move/from16 v5, v22

    move/from16 v8, v29

    const v16, 0xfffff

    move v9, v1

    move v1, v2

    goto/16 :goto_9

    :pswitch_6
    move-object v4, v12

    move-object v12, v2

    move-object v2, v4

    move-object/from16 v7, p2

    move-object/from16 v9, p6

    move v8, v3

    move-wide/from16 v5, v26

    move/from16 v4, v28

    const/4 v3, 0x2

    const/16 v18, -0x1

    if-ne v14, v3, :cond_d

    and-int v3, v13, v24

    if-eqz v3, :cond_10

    invoke-static {v7, v4, v9}, Lcom/google/protobuf/d;->r([BILcom/google/protobuf/d$b;)I

    move-result v3

    iget v4, v9, Lcom/google/protobuf/d$b;->a:I

    if-ltz v4, :cond_f

    if-nez v4, :cond_e

    iput-object v1, v9, Lcom/google/protobuf/d$b;->c:Ljava/lang/Object;

    goto :goto_c

    :cond_e
    sget-object v1, Lcom/google/protobuf/m0;->a:Lcom/google/protobuf/m0$b;

    invoke-virtual {v1, v7, v3, v4}, Lcom/google/protobuf/m0$b;->a([BII)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v9, Lcom/google/protobuf/d$b;->c:Ljava/lang/Object;

    add-int/2addr v3, v4

    :goto_c
    move v1, v3

    goto :goto_d

    :cond_f
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->g()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    :cond_10
    invoke-static {v7, v4, v9}, Lcom/google/protobuf/d;->o([BILcom/google/protobuf/d$b;)I

    move-result v1

    :goto_d
    iget-object v3, v9, Lcom/google/protobuf/d$b;->c:Ljava/lang/Object;

    invoke-virtual {v2, v12, v5, v6, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_b

    :pswitch_7
    move-object v4, v12

    move-object v12, v2

    move-object v2, v4

    move-object/from16 v7, p2

    move-object/from16 v9, p6

    move v8, v3

    move-wide/from16 v5, v26

    move/from16 v4, v28

    const/16 v18, -0x1

    if-nez v14, :cond_d

    invoke-static {v7, v4, v9}, Lcom/google/protobuf/d;->t([BILcom/google/protobuf/d$b;)I

    move-result v1

    iget-wide v2, v9, Lcom/google/protobuf/d$b;->b:J

    cmp-long v2, v2, v20

    if-eqz v2, :cond_11

    move/from16 v2, v17

    goto :goto_e

    :cond_11
    const/4 v2, 0x0

    :goto_e
    sget-object v3, Lh79;->c:Lh79$d;

    invoke-virtual {v3, v12, v5, v6, v2}, Lh79$d;->g(Ljava/lang/Object;JZ)V

    goto/16 :goto_b

    :pswitch_8
    move-object v1, v12

    move-object v12, v2

    move-object v2, v1

    move-object/from16 v7, p2

    move-object/from16 v9, p6

    move v8, v3

    move-wide/from16 v5, v26

    move/from16 v4, v28

    const/4 v1, 0x5

    const/16 v18, -0x1

    if-ne v14, v1, :cond_d

    invoke-static {v7, v4}, Lcom/google/protobuf/d;->b([BI)I

    move-result v1

    invoke-virtual {v2, v12, v5, v6, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    add-int/lit8 v1, v4, 0x4

    goto/16 :goto_b

    :pswitch_9
    move-object v1, v12

    move-object v12, v2

    move-object v2, v1

    move-object/from16 v7, p2

    move-object/from16 v9, p6

    move v8, v3

    move/from16 v1, v17

    move-wide/from16 v5, v26

    move/from16 v4, v28

    const/16 v18, -0x1

    if-ne v14, v1, :cond_12

    move-wide/from16 v26, v5

    invoke-static {v7, v4}, Lcom/google/protobuf/d;->c([BI)J

    move-result-wide v5

    move-object v1, v2

    move-object v2, v12

    move v12, v4

    move-wide/from16 v3, v26

    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    :goto_f
    add-int/lit8 v1, v12, 0x8

    :goto_10
    or-int v3, v30, v23

    move/from16 v4, p4

    move-object v6, v9

    move/from16 v5, v22

    const v16, 0xfffff

    move v9, v3

    move-object v3, v7

    move v7, v8

    goto/16 :goto_6

    :cond_12
    move-object v1, v2

    move-object v2, v12

    move v12, v4

    :cond_13
    move-object v3, v1

    :cond_14
    const/4 v4, 0x1

    goto/16 :goto_11

    :pswitch_a
    move-object/from16 v7, p2

    move-object/from16 v9, p6

    move v8, v3

    move-object v1, v12

    move-wide/from16 v3, v26

    move/from16 v12, v28

    const/16 v18, -0x1

    if-nez v14, :cond_13

    invoke-static {v7, v12, v9}, Lcom/google/protobuf/d;->r([BILcom/google/protobuf/d$b;)I

    move-result v5

    iget v6, v9, Lcom/google/protobuf/d$b;->a:I

    invoke-virtual {v1, v2, v3, v4, v6}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    or-int v1, v30, v23

    move/from16 v4, p4

    move-object v3, v7

    move v7, v8

    move-object v6, v9

    move/from16 v8, v29

    const v16, 0xfffff

    move v9, v1

    move v1, v5

    move/from16 v5, v22

    goto/16 :goto_1

    :pswitch_b
    move-object/from16 v7, p2

    move-object/from16 v9, p6

    move v8, v3

    move-object v1, v12

    move-wide/from16 v3, v26

    move/from16 v12, v28

    const/16 v18, -0x1

    if-nez v14, :cond_13

    invoke-static {v7, v12, v9}, Lcom/google/protobuf/d;->t([BILcom/google/protobuf/d$b;)I

    move-result v12

    iget-wide v5, v9, Lcom/google/protobuf/d$b;->b:J

    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    or-int v1, v30, v23

    move/from16 v4, p4

    move-object v3, v7

    move v7, v8

    move-object v6, v9

    move/from16 v5, v22

    move/from16 v8, v29

    const v16, 0xfffff

    move v9, v1

    move v1, v12

    goto/16 :goto_1

    :pswitch_c
    move-object/from16 v7, p2

    move-object/from16 v9, p6

    move v8, v3

    move-object v3, v12

    move-wide/from16 v5, v26

    move/from16 v12, v28

    const/4 v1, 0x5

    const/16 v18, -0x1

    if-ne v14, v1, :cond_14

    invoke-static {v7, v12}, Lcom/google/protobuf/d;->b([BI)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    sget-object v3, Lh79;->c:Lh79$d;

    invoke-virtual {v3, v2, v5, v6, v1}, Lh79$d;->j(Ljava/lang/Object;JF)V

    add-int/lit8 v1, v12, 0x4

    goto/16 :goto_10

    :pswitch_d
    move-object/from16 v7, p2

    move-object/from16 v9, p6

    move v8, v3

    move-object v3, v12

    move/from16 v4, v17

    move-wide/from16 v5, v26

    move/from16 v12, v28

    const/16 v18, -0x1

    if-ne v14, v4, :cond_15

    invoke-static {v7, v12}, Lcom/google/protobuf/d;->c([BI)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v3

    sget-object v1, Lh79;->c:Lh79$d;

    move-wide/from16 v36, v5

    move-wide v5, v3

    move-wide/from16 v3, v36

    invoke-virtual/range {v1 .. v6}, Lh79$d;->i(Ljava/lang/Object;JD)V

    goto/16 :goto_f

    :cond_15
    :goto_11
    move v1, v8

    move-object v8, v3

    move v3, v12

    move/from16 v12, v22

    move-object/from16 v22, v11

    move-object v11, v9

    move v9, v15

    move v15, v1

    move/from16 v13, p5

    move-object v10, v2

    move v1, v4

    move-object v6, v7

    move/from16 v26, v29

    move/from16 v29, v30

    goto/16 :goto_4a

    :cond_16
    move-wide/from16 v4, v26

    const/16 v18, -0x1

    move/from16 v26, v3

    move-object v3, v12

    move v12, v6

    const/16 v6, 0x1b

    const/16 v27, 0xa

    if-ne v7, v6, :cond_1a

    const/4 v6, 0x2

    if-ne v14, v6, :cond_19

    invoke-virtual {v3, v2, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/q$j;

    invoke-interface {v1}, Lcom/google/protobuf/q$j;->isModifiable()Z

    move-result v6

    if-nez v6, :cond_18

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_17

    :goto_12
    move/from16 v6, v27

    goto :goto_13

    :cond_17
    mul-int/lit8 v27, v6, 0x2

    goto :goto_12

    :goto_13
    invoke-interface {v1, v6}, Lcom/google/protobuf/q$j;->mutableCopyWithCapacity(I)Lcom/google/protobuf/q$j;

    move-result-object v1

    invoke-virtual {v3, v2, v4, v5, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_18
    move-object v6, v1

    move/from16 v13, v26

    invoke-virtual {v0, v13}, Lcom/google/protobuf/c0;->m(I)Lcom/google/protobuf/f0;

    move-result-object v1

    move-object/from16 v3, p2

    move/from16 v5, p4

    move-object/from16 v7, p6

    move v4, v12

    move-object v12, v2

    move v2, v15

    move v15, v13

    invoke-static/range {v1 .. v7}, Lcom/google/protobuf/d;->f(Lcom/google/protobuf/f0;I[BIILcom/google/protobuf/q$j;Lcom/google/protobuf/d$b;)I

    move-result v1

    move/from16 v4, p4

    move-object/from16 v6, p6

    move v7, v15

    move/from16 v5, v22

    const v16, 0xfffff

    move v15, v2

    goto/16 :goto_9

    :cond_19
    move/from16 v28, v12

    move-object v12, v2

    move v2, v15

    move/from16 v15, v26

    move/from16 v6, p4

    move/from16 v26, v8

    move/from16 v29, v9

    move/from16 v12, v22

    move v9, v2

    move-object v8, v3

    move-object/from16 v22, v11

    move/from16 v11, v28

    move-object/from16 v3, p2

    move-object/from16 v2, p6

    goto/16 :goto_3e

    :cond_1a
    move/from16 v28, v12

    move-object v12, v2

    move v2, v15

    move/from16 v15, v26

    const/16 v6, 0x31

    if-gt v7, v6, :cond_59

    move/from16 v26, v8

    move/from16 v29, v9

    int-to-long v8, v13

    invoke-virtual {v3, v12, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/protobuf/q$j;

    invoke-interface {v6}, Lcom/google/protobuf/q$j;->isModifiable()Z

    move-result v13

    if-nez v13, :cond_1c

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v13

    if-nez v13, :cond_1b

    :goto_14
    move/from16 v13, v27

    goto :goto_15

    :cond_1b
    mul-int/lit8 v27, v13, 0x2

    goto :goto_14

    :goto_15
    invoke-interface {v6, v13}, Lcom/google/protobuf/q$j;->mutableCopyWithCapacity(I)Lcom/google/protobuf/q$j;

    move-result-object v6

    invoke-virtual {v3, v12, v4, v5, v6}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_1c
    move-object v13, v6

    packed-switch v7, :pswitch_data_1

    :goto_16
    move/from16 v6, p4

    move-object/from16 v10, p6

    move v9, v2

    move-object v8, v3

    move/from16 v12, v22

    move-object/from16 v3, p2

    move-object/from16 v22, v11

    move/from16 v11, v28

    goto/16 :goto_35

    :pswitch_e
    const/4 v1, 0x3

    if-ne v14, v1, :cond_1f

    invoke-virtual {v0, v15}, Lcom/google/protobuf/c0;->m(I)Lcom/google/protobuf/f0;

    move-result-object v1

    and-int/lit8 v4, v2, -0x8

    or-int/lit8 v5, v4, 0x4

    move/from16 v4, p4

    move-object/from16 v6, p6

    move v7, v2

    move-object v8, v3

    move/from16 v3, v28

    const/16 v17, 0x1

    move-object/from16 v2, p2

    invoke-static/range {v1 .. v6}, Lcom/google/protobuf/d;->d(Lcom/google/protobuf/f0;[BIIILcom/google/protobuf/d$b;)I

    move-result v9

    iget-object v2, v6, Lcom/google/protobuf/d$b;->c:Ljava/lang/Object;

    invoke-interface {v13, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_17
    if-ge v9, v4, :cond_1e

    move-object/from16 v2, p2

    invoke-static {v2, v9, v6}, Lcom/google/protobuf/d;->r([BILcom/google/protobuf/d$b;)I

    move-result v3

    iget v14, v6, Lcom/google/protobuf/d$b;->a:I

    if-eq v7, v14, :cond_1d

    move-object v3, v2

    goto :goto_18

    :cond_1d
    invoke-static/range {v1 .. v6}, Lcom/google/protobuf/d;->d(Lcom/google/protobuf/f0;[BIIILcom/google/protobuf/d$b;)I

    move-result v9

    move-object v3, v2

    iget-object v2, v6, Lcom/google/protobuf/d$b;->c:Ljava/lang/Object;

    invoke-interface {v13, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_17

    :cond_1e
    move-object/from16 v3, p2

    :goto_18
    move-object v10, v6

    move v1, v9

    move/from16 v12, v22

    move v6, v4

    move v9, v7

    move-object/from16 v22, v11

    :goto_19
    move/from16 v11, v28

    goto/16 :goto_36

    :cond_1f
    const/16 v17, 0x1

    goto :goto_16

    :pswitch_f
    move/from16 v4, p4

    move-object/from16 v6, p6

    move v7, v2

    move-object v8, v3

    move/from16 v1, v28

    const/4 v2, 0x2

    const/16 v17, 0x1

    move-object/from16 v3, p2

    if-ne v14, v2, :cond_21

    invoke-static {v3, v1, v13, v6}, Lcom/google/protobuf/d;->m([BILcom/google/protobuf/q$j;Lcom/google/protobuf/d$b;)I

    move-result v2

    move-object v10, v6

    move v9, v7

    :goto_1a
    move/from16 v12, v22

    move v6, v4

    move-object/from16 v22, v11

    move v11, v1

    :cond_20
    :goto_1b
    move v1, v2

    goto/16 :goto_36

    :cond_21
    if-nez v14, :cond_24

    check-cast v13, Lcom/google/protobuf/v;

    invoke-static {v3, v1, v6}, Lcom/google/protobuf/d;->t([BILcom/google/protobuf/d$b;)I

    move-result v2

    move-object/from16 v19, v8

    iget-wide v8, v6, Lcom/google/protobuf/d$b;->b:J

    invoke-static {v8, v9}, Lcom/google/protobuf/f;->c(J)J

    move-result-wide v8

    invoke-virtual {v13, v8, v9}, Lcom/google/protobuf/v;->addLong(J)V

    :goto_1c
    if-ge v2, v4, :cond_23

    invoke-static {v3, v2, v6}, Lcom/google/protobuf/d;->r([BILcom/google/protobuf/d$b;)I

    move-result v5

    iget v8, v6, Lcom/google/protobuf/d$b;->a:I

    if-eq v7, v8, :cond_22

    goto :goto_1d

    :cond_22
    invoke-static {v3, v5, v6}, Lcom/google/protobuf/d;->t([BILcom/google/protobuf/d$b;)I

    move-result v2

    iget-wide v8, v6, Lcom/google/protobuf/d$b;->b:J

    invoke-static {v8, v9}, Lcom/google/protobuf/f;->c(J)J

    move-result-wide v8

    invoke-virtual {v13, v8, v9}, Lcom/google/protobuf/v;->addLong(J)V

    goto :goto_1c

    :cond_23
    :goto_1d
    move-object v10, v6

    move v9, v7

    move-object/from16 v8, v19

    goto :goto_1a

    :cond_24
    move-object v10, v6

    move v9, v7

    :goto_1e
    move/from16 v12, v22

    move v6, v4

    move-object/from16 v22, v11

    move v11, v1

    goto/16 :goto_35

    :pswitch_10
    move/from16 v4, p4

    move-object/from16 v6, p6

    move v7, v2

    move-object/from16 v19, v3

    move/from16 v1, v28

    const/4 v2, 0x2

    const/16 v17, 0x1

    move-object/from16 v3, p2

    if-ne v14, v2, :cond_25

    invoke-static {v3, v1, v13, v6}, Lcom/google/protobuf/d;->l([BILcom/google/protobuf/q$j;Lcom/google/protobuf/d$b;)I

    move-result v2

    goto :goto_1d

    :cond_25
    if-nez v14, :cond_27

    check-cast v13, Lcom/google/protobuf/p;

    invoke-static {v3, v1, v6}, Lcom/google/protobuf/d;->r([BILcom/google/protobuf/d$b;)I

    move-result v2

    iget v5, v6, Lcom/google/protobuf/d$b;->a:I

    invoke-static {v5}, Lcom/google/protobuf/f;->b(I)I

    move-result v5

    invoke-virtual {v13, v5}, Lcom/google/protobuf/p;->addInt(I)V

    :goto_1f
    if-ge v2, v4, :cond_23

    invoke-static {v3, v2, v6}, Lcom/google/protobuf/d;->r([BILcom/google/protobuf/d$b;)I

    move-result v5

    iget v8, v6, Lcom/google/protobuf/d$b;->a:I

    if-eq v7, v8, :cond_26

    goto :goto_1d

    :cond_26
    invoke-static {v3, v5, v6}, Lcom/google/protobuf/d;->r([BILcom/google/protobuf/d$b;)I

    move-result v2

    iget v5, v6, Lcom/google/protobuf/d$b;->a:I

    invoke-static {v5}, Lcom/google/protobuf/f;->b(I)I

    move-result v5

    invoke-virtual {v13, v5}, Lcom/google/protobuf/p;->addInt(I)V

    goto :goto_1f

    :cond_27
    move-object v10, v6

    move v9, v7

    move-object/from16 v8, v19

    goto :goto_1e

    :pswitch_11
    move/from16 v4, p4

    move-object/from16 v6, p6

    move v7, v2

    move-object/from16 v19, v3

    move/from16 v1, v28

    const/4 v2, 0x2

    const/16 v17, 0x1

    move-object/from16 v3, p2

    if-ne v14, v2, :cond_28

    invoke-static {v3, v1, v13, v6}, Lcom/google/protobuf/d;->n([BILcom/google/protobuf/q$j;Lcom/google/protobuf/d$b;)I

    move-result v2

    move/from16 v28, v1

    move v14, v2

    move-object v8, v3

    move-object v5, v13

    move v13, v7

    :goto_20
    move v9, v4

    move-object v7, v6

    goto :goto_21

    :cond_28
    if-nez v14, :cond_29

    move-object v2, v3

    move-object v5, v13

    move v3, v1

    move v1, v7

    invoke-static/range {v1 .. v6}, Lcom/google/protobuf/d;->s(I[BIILcom/google/protobuf/q$j;Lcom/google/protobuf/d$b;)I

    move-result v7

    move v13, v1

    move-object v8, v2

    move/from16 v28, v3

    move v1, v7

    move v14, v1

    goto :goto_20

    :goto_21
    invoke-virtual {v0, v15}, Lcom/google/protobuf/c0;->k(I)Lcom/google/protobuf/q$e;

    move-result-object v4

    move-object v3, v5

    const/4 v5, 0x0

    iget-object v6, v0, Lcom/google/protobuf/c0;->m:Lcom/google/protobuf/j0;

    move-object v1, v12

    move/from16 v2, v22

    invoke-static/range {v1 .. v6}, Lcom/google/protobuf/g0;->k(Ljava/lang/Object;ILjava/util/List;Lcom/google/protobuf/q$e;Ljava/lang/Object;Lcom/google/protobuf/j0;)Ljava/lang/Object;

    move v12, v2

    move-object v10, v7

    move-object v3, v8

    move v6, v9

    move-object/from16 v22, v11

    move v9, v13

    move v1, v14

    move-object/from16 v8, v19

    goto/16 :goto_19

    :cond_29
    move v13, v7

    move/from16 v12, v22

    move-object v10, v6

    move-object/from16 v22, v11

    move v9, v13

    move-object/from16 v8, v19

    move v11, v1

    :goto_22
    move v6, v4

    goto/16 :goto_35

    :pswitch_12
    move-object/from16 v8, p2

    move/from16 v9, p4

    move-object/from16 v7, p6

    move-object/from16 v19, v3

    move-object v5, v13

    move/from16 v12, v22

    move/from16 v4, v28

    const/16 v17, 0x1

    move v13, v2

    const/4 v2, 0x2

    if-ne v14, v2, :cond_32

    invoke-static {v8, v4, v7}, Lcom/google/protobuf/d;->r([BILcom/google/protobuf/d$b;)I

    move-result v1

    iget v2, v7, Lcom/google/protobuf/d$b;->a:I

    if-ltz v2, :cond_31

    array-length v3, v8

    sub-int/2addr v3, v1

    if-gt v2, v3, :cond_30

    if-nez v2, :cond_2a

    sget-object v2, Lfx0;->c:Lfx0$h;

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_24

    :cond_2a
    invoke-static {v8, v1, v2}, Lfx0;->d([BII)Lfx0$h;

    move-result-object v3

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_23
    add-int/2addr v1, v2

    :goto_24
    if-ge v1, v9, :cond_2f

    invoke-static {v8, v1, v7}, Lcom/google/protobuf/d;->r([BILcom/google/protobuf/d$b;)I

    move-result v2

    iget v3, v7, Lcom/google/protobuf/d$b;->a:I

    if-eq v13, v3, :cond_2b

    goto :goto_25

    :cond_2b
    invoke-static {v8, v2, v7}, Lcom/google/protobuf/d;->r([BILcom/google/protobuf/d$b;)I

    move-result v1

    iget v2, v7, Lcom/google/protobuf/d$b;->a:I

    if-ltz v2, :cond_2e

    array-length v3, v8

    sub-int/2addr v3, v1

    if-gt v2, v3, :cond_2d

    if-nez v2, :cond_2c

    sget-object v2, Lfx0;->c:Lfx0$h;

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_24

    :cond_2c
    invoke-static {v8, v1, v2}, Lfx0;->d([BII)Lfx0$h;

    move-result-object v3

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_23

    :cond_2d
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->j()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    :cond_2e
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->g()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    :cond_2f
    :goto_25
    move-object v10, v7

    move-object v3, v8

    move v6, v9

    move-object/from16 v22, v11

    move v9, v13

    move-object/from16 v8, v19

    move v11, v4

    goto/16 :goto_36

    :cond_30
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->j()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    :cond_31
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->g()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    :cond_32
    move-object v10, v7

    move-object v3, v8

    move v6, v9

    move-object/from16 v22, v11

    move v9, v13

    move-object/from16 v8, v19

    move v11, v4

    goto/16 :goto_35

    :pswitch_13
    move-object/from16 v8, p2

    move/from16 v9, p4

    move-object/from16 v7, p6

    move-object/from16 v19, v3

    move-object v5, v13

    move/from16 v12, v22

    move/from16 v4, v28

    const/16 v17, 0x1

    move v13, v2

    const/4 v2, 0x2

    if-ne v14, v2, :cond_33

    invoke-virtual {v0, v15}, Lcom/google/protobuf/c0;->m(I)Lcom/google/protobuf/f0;

    move-result-object v1

    move-object v6, v5

    move-object v3, v8

    move v5, v9

    move v2, v13

    move/from16 v13, v17

    invoke-static/range {v1 .. v7}, Lcom/google/protobuf/d;->f(Lcom/google/protobuf/f0;I[BIILcom/google/protobuf/q$j;Lcom/google/protobuf/d$b;)I

    move-result v1

    move v6, v5

    move v5, v4

    move v4, v6

    move-object v6, v7

    move v9, v2

    move-object v10, v6

    move-object/from16 v22, v11

    move-object/from16 v8, v19

    move v6, v4

    move v11, v5

    goto/16 :goto_36

    :cond_33
    move-object v6, v7

    move v7, v13

    move-object v10, v6

    move-object v3, v8

    move v6, v9

    move-object/from16 v22, v11

    move-object/from16 v8, v19

    move v11, v4

    move v9, v7

    goto/16 :goto_35

    :pswitch_14
    move/from16 v4, p4

    move-object/from16 v6, p6

    move v7, v2

    move/from16 v12, v22

    move/from16 v5, v28

    const/4 v2, 0x2

    move-wide/from16 v22, v8

    move-object v8, v3

    move-object/from16 v3, p2

    if-ne v14, v2, :cond_43

    const-wide/32 v24, 0x20000000

    and-long v22, v22, v24

    cmp-long v2, v22, v20

    if-nez v2, :cond_3b

    invoke-static {v3, v5, v6}, Lcom/google/protobuf/d;->r([BILcom/google/protobuf/d$b;)I

    move-result v2

    iget v9, v6, Lcom/google/protobuf/d$b;->a:I

    if-ltz v9, :cond_3a

    if-nez v9, :cond_34

    invoke-interface {v13, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v22, v11

    goto :goto_27

    :cond_34
    new-instance v14, Ljava/lang/String;

    move-object/from16 v22, v11

    sget-object v11, Lcom/google/protobuf/q;->a:Ljava/nio/charset/Charset;

    invoke-direct {v14, v3, v2, v9, v11}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_26
    add-int/2addr v2, v9

    :goto_27
    if-ge v2, v4, :cond_38

    invoke-static {v3, v2, v6}, Lcom/google/protobuf/d;->r([BILcom/google/protobuf/d$b;)I

    move-result v9

    iget v11, v6, Lcom/google/protobuf/d$b;->a:I

    if-eq v7, v11, :cond_35

    goto :goto_28

    :cond_35
    invoke-static {v3, v9, v6}, Lcom/google/protobuf/d;->r([BILcom/google/protobuf/d$b;)I

    move-result v2

    iget v9, v6, Lcom/google/protobuf/d$b;->a:I

    if-ltz v9, :cond_37

    if-nez v9, :cond_36

    invoke-interface {v13, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_27

    :cond_36
    new-instance v11, Ljava/lang/String;

    sget-object v14, Lcom/google/protobuf/q;->a:Ljava/nio/charset/Charset;

    invoke-direct {v11, v3, v2, v9, v14}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-interface {v13, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_26

    :cond_37
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->g()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    :cond_38
    :goto_28
    move v1, v2

    :cond_39
    :goto_29
    move v11, v5

    move-object v10, v6

    move v9, v7

    move v6, v4

    goto/16 :goto_36

    :cond_3a
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->g()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    :cond_3b
    move-object/from16 v22, v11

    invoke-static {v3, v5, v6}, Lcom/google/protobuf/d;->r([BILcom/google/protobuf/d$b;)I

    move-result v2

    iget v9, v6, Lcom/google/protobuf/d$b;->a:I

    if-ltz v9, :cond_42

    if-nez v9, :cond_3c

    invoke-interface {v13, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2b

    :cond_3c
    add-int v11, v2, v9

    sget-object v14, Lcom/google/protobuf/m0;->a:Lcom/google/protobuf/m0$b;

    invoke-virtual {v14, v3, v2, v11}, Lcom/google/protobuf/m0$b;->e([BII)Z

    move-result v14

    if-eqz v14, :cond_41

    new-instance v14, Ljava/lang/String;

    move/from16 v19, v11

    sget-object v11, Lcom/google/protobuf/q;->a:Ljava/nio/charset/Charset;

    invoke-direct {v14, v3, v2, v9, v11}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2a
    move/from16 v2, v19

    :goto_2b
    if-ge v2, v4, :cond_38

    invoke-static {v3, v2, v6}, Lcom/google/protobuf/d;->r([BILcom/google/protobuf/d$b;)I

    move-result v9

    iget v11, v6, Lcom/google/protobuf/d$b;->a:I

    if-eq v7, v11, :cond_3d

    goto :goto_28

    :cond_3d
    invoke-static {v3, v9, v6}, Lcom/google/protobuf/d;->r([BILcom/google/protobuf/d$b;)I

    move-result v2

    iget v9, v6, Lcom/google/protobuf/d$b;->a:I

    if-ltz v9, :cond_40

    if-nez v9, :cond_3e

    invoke-interface {v13, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2b

    :cond_3e
    add-int v11, v2, v9

    sget-object v14, Lcom/google/protobuf/m0;->a:Lcom/google/protobuf/m0$b;

    invoke-virtual {v14, v3, v2, v11}, Lcom/google/protobuf/m0$b;->e([BII)Z

    move-result v14

    if-eqz v14, :cond_3f

    new-instance v14, Ljava/lang/String;

    move/from16 v19, v11

    sget-object v11, Lcom/google/protobuf/q;->a:Ljava/nio/charset/Charset;

    invoke-direct {v14, v3, v2, v9, v11}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2a

    :cond_3f
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->d()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    :cond_40
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->g()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    :cond_41
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->d()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    :cond_42
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->g()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    :cond_43
    move-object/from16 v22, v11

    :cond_44
    move v11, v5

    move-object v10, v6

    move v9, v7

    goto/16 :goto_22

    :pswitch_15
    move/from16 v4, p4

    move-object/from16 v6, p6

    move v7, v2

    move-object v8, v3

    move/from16 v12, v22

    move/from16 v5, v28

    const/4 v2, 0x2

    move-object/from16 v3, p2

    move-object/from16 v22, v11

    if-ne v14, v2, :cond_45

    invoke-static {v3, v5, v13, v6}, Lcom/google/protobuf/d;->g([BILcom/google/protobuf/q$j;Lcom/google/protobuf/d$b;)I

    move-result v1

    goto/16 :goto_29

    :cond_45
    if-nez v14, :cond_44

    check-cast v13, Lcom/google/protobuf/e;

    invoke-static {v3, v5, v6}, Lcom/google/protobuf/d;->t([BILcom/google/protobuf/d$b;)I

    move-result v1

    move v9, v1

    iget-wide v1, v6, Lcom/google/protobuf/d$b;->b:J

    cmp-long v1, v1, v20

    if-eqz v1, :cond_46

    const/4 v1, 0x1

    goto :goto_2c

    :cond_46
    const/4 v1, 0x0

    :goto_2c
    invoke-virtual {v13, v1}, Lcom/google/protobuf/e;->addBoolean(Z)V

    :goto_2d
    move v1, v9

    if-ge v1, v4, :cond_39

    invoke-static {v3, v1, v6}, Lcom/google/protobuf/d;->r([BILcom/google/protobuf/d$b;)I

    move-result v2

    iget v9, v6, Lcom/google/protobuf/d$b;->a:I

    if-eq v7, v9, :cond_47

    goto/16 :goto_29

    :cond_47
    invoke-static {v3, v2, v6}, Lcom/google/protobuf/d;->t([BILcom/google/protobuf/d$b;)I

    move-result v1

    move v9, v1

    iget-wide v1, v6, Lcom/google/protobuf/d$b;->b:J

    cmp-long v1, v1, v20

    if-eqz v1, :cond_48

    const/4 v1, 0x1

    goto :goto_2e

    :cond_48
    const/4 v1, 0x0

    :goto_2e
    invoke-virtual {v13, v1}, Lcom/google/protobuf/e;->addBoolean(Z)V

    goto :goto_2d

    :pswitch_16
    move/from16 v4, p4

    move-object/from16 v6, p6

    move v7, v2

    move-object v8, v3

    move/from16 v12, v22

    move/from16 v5, v28

    const/4 v2, 0x2

    move-object/from16 v3, p2

    move-object/from16 v22, v11

    if-ne v14, v2, :cond_49

    invoke-static {v3, v5, v13, v6}, Lcom/google/protobuf/d;->i([BILcom/google/protobuf/q$j;Lcom/google/protobuf/d$b;)I

    move-result v1

    goto/16 :goto_29

    :cond_49
    const/4 v1, 0x5

    if-ne v14, v1, :cond_44

    check-cast v13, Lcom/google/protobuf/p;

    invoke-static {v3, v5}, Lcom/google/protobuf/d;->b([BI)I

    move-result v1

    invoke-virtual {v13, v1}, Lcom/google/protobuf/p;->addInt(I)V

    add-int/lit8 v1, v5, 0x4

    :goto_2f
    if-ge v1, v4, :cond_39

    invoke-static {v3, v1, v6}, Lcom/google/protobuf/d;->r([BILcom/google/protobuf/d$b;)I

    move-result v2

    iget v9, v6, Lcom/google/protobuf/d$b;->a:I

    if-eq v7, v9, :cond_4a

    goto/16 :goto_29

    :cond_4a
    invoke-static {v3, v2}, Lcom/google/protobuf/d;->b([BI)I

    move-result v1

    invoke-virtual {v13, v1}, Lcom/google/protobuf/p;->addInt(I)V

    add-int/lit8 v1, v2, 0x4

    goto :goto_2f

    :pswitch_17
    move/from16 v4, p4

    move-object/from16 v6, p6

    move v7, v2

    move-object v8, v3

    move/from16 v12, v22

    move/from16 v5, v28

    const/4 v2, 0x2

    move-object/from16 v3, p2

    move-object/from16 v22, v11

    if-ne v14, v2, :cond_4b

    invoke-static {v3, v5, v13, v6}, Lcom/google/protobuf/d;->j([BILcom/google/protobuf/q$j;Lcom/google/protobuf/d$b;)I

    move-result v1

    goto/16 :goto_29

    :cond_4b
    const/4 v1, 0x1

    if-ne v14, v1, :cond_44

    check-cast v13, Lcom/google/protobuf/v;

    invoke-static {v3, v5}, Lcom/google/protobuf/d;->c([BI)J

    move-result-wide v1

    invoke-virtual {v13, v1, v2}, Lcom/google/protobuf/v;->addLong(J)V

    add-int/lit8 v1, v5, 0x8

    :goto_30
    if-ge v1, v4, :cond_39

    invoke-static {v3, v1, v6}, Lcom/google/protobuf/d;->r([BILcom/google/protobuf/d$b;)I

    move-result v2

    iget v9, v6, Lcom/google/protobuf/d$b;->a:I

    if-eq v7, v9, :cond_4c

    goto/16 :goto_29

    :cond_4c
    invoke-static {v3, v2}, Lcom/google/protobuf/d;->c([BI)J

    move-result-wide v9

    invoke-virtual {v13, v9, v10}, Lcom/google/protobuf/v;->addLong(J)V

    add-int/lit8 v1, v2, 0x8

    goto :goto_30

    :pswitch_18
    move/from16 v4, p4

    move-object/from16 v6, p6

    move v7, v2

    move-object v8, v3

    move/from16 v12, v22

    move/from16 v5, v28

    const/4 v2, 0x2

    move-object/from16 v3, p2

    move-object/from16 v22, v11

    if-ne v14, v2, :cond_4d

    invoke-static {v3, v5, v13, v6}, Lcom/google/protobuf/d;->n([BILcom/google/protobuf/q$j;Lcom/google/protobuf/d$b;)I

    move-result v1

    goto/16 :goto_29

    :cond_4d
    if-nez v14, :cond_44

    move-object v2, v3

    move v3, v5

    move v1, v7

    move-object v5, v13

    invoke-static/range {v1 .. v6}, Lcom/google/protobuf/d;->s(I[BIILcom/google/protobuf/q$j;Lcom/google/protobuf/d$b;)I

    move-result v5

    move v9, v1

    move v11, v3

    move-object v10, v6

    move-object v3, v2

    move v6, v4

    move v1, v5

    goto/16 :goto_36

    :pswitch_19
    move/from16 v6, p4

    move-object/from16 v10, p6

    move v9, v2

    move-object v8, v3

    move-object v5, v13

    move/from16 v12, v22

    const/4 v2, 0x2

    move-object/from16 v3, p2

    move-object/from16 v22, v11

    move/from16 v11, v28

    if-ne v14, v2, :cond_50

    move-object v13, v5

    check-cast v13, Lcom/google/protobuf/v;

    invoke-static {v3, v11, v10}, Lcom/google/protobuf/d;->r([BILcom/google/protobuf/d$b;)I

    move-result v1

    iget v2, v10, Lcom/google/protobuf/d$b;->a:I

    add-int/2addr v2, v1

    :goto_31
    if-ge v1, v2, :cond_4e

    invoke-static {v3, v1, v10}, Lcom/google/protobuf/d;->t([BILcom/google/protobuf/d$b;)I

    move-result v1

    iget-wide v4, v10, Lcom/google/protobuf/d$b;->b:J

    invoke-virtual {v13, v4, v5}, Lcom/google/protobuf/v;->addLong(J)V

    goto :goto_31

    :cond_4e
    if-ne v1, v2, :cond_4f

    goto/16 :goto_36

    :cond_4f
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->j()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    :cond_50
    if-nez v14, :cond_56

    move-object v13, v5

    check-cast v13, Lcom/google/protobuf/v;

    invoke-static {v3, v11, v10}, Lcom/google/protobuf/d;->t([BILcom/google/protobuf/d$b;)I

    move-result v1

    iget-wide v4, v10, Lcom/google/protobuf/d$b;->b:J

    invoke-virtual {v13, v4, v5}, Lcom/google/protobuf/v;->addLong(J)V

    :goto_32
    if-ge v1, v6, :cond_57

    invoke-static {v3, v1, v10}, Lcom/google/protobuf/d;->r([BILcom/google/protobuf/d$b;)I

    move-result v2

    iget v4, v10, Lcom/google/protobuf/d$b;->a:I

    if-eq v9, v4, :cond_51

    goto/16 :goto_36

    :cond_51
    invoke-static {v3, v2, v10}, Lcom/google/protobuf/d;->t([BILcom/google/protobuf/d$b;)I

    move-result v1

    iget-wide v4, v10, Lcom/google/protobuf/d$b;->b:J

    invoke-virtual {v13, v4, v5}, Lcom/google/protobuf/v;->addLong(J)V

    goto :goto_32

    :pswitch_1a
    move/from16 v6, p4

    move-object/from16 v10, p6

    move v9, v2

    move-object v8, v3

    move-object v5, v13

    move/from16 v12, v22

    const/4 v2, 0x2

    move-object/from16 v3, p2

    move-object/from16 v22, v11

    move/from16 v11, v28

    if-ne v14, v2, :cond_52

    invoke-static {v3, v11, v5, v10}, Lcom/google/protobuf/d;->k([BILcom/google/protobuf/q$j;Lcom/google/protobuf/d$b;)I

    move-result v1

    goto/16 :goto_36

    :cond_52
    const/4 v1, 0x5

    if-ne v14, v1, :cond_56

    move-object v13, v5

    check-cast v13, Lcom/google/protobuf/n;

    invoke-static {v3, v11}, Lcom/google/protobuf/d;->b([BI)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    invoke-virtual {v13, v1}, Lcom/google/protobuf/n;->addFloat(F)V

    add-int/lit8 v1, v11, 0x4

    :goto_33
    if-ge v1, v6, :cond_57

    invoke-static {v3, v1, v10}, Lcom/google/protobuf/d;->r([BILcom/google/protobuf/d$b;)I

    move-result v2

    iget v4, v10, Lcom/google/protobuf/d$b;->a:I

    if-eq v9, v4, :cond_53

    goto :goto_36

    :cond_53
    invoke-static {v3, v2}, Lcom/google/protobuf/d;->b([BI)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    invoke-virtual {v13, v1}, Lcom/google/protobuf/n;->addFloat(F)V

    add-int/lit8 v1, v2, 0x4

    goto :goto_33

    :pswitch_1b
    move/from16 v6, p4

    move-object/from16 v10, p6

    move v9, v2

    move-object v8, v3

    move-object v5, v13

    move/from16 v12, v22

    const/4 v2, 0x2

    move-object/from16 v3, p2

    move-object/from16 v22, v11

    move/from16 v11, v28

    if-ne v14, v2, :cond_54

    invoke-static {v3, v11, v5, v10}, Lcom/google/protobuf/d;->h([BILcom/google/protobuf/q$j;Lcom/google/protobuf/d$b;)I

    move-result v1

    goto :goto_36

    :cond_54
    const/4 v1, 0x1

    if-ne v14, v1, :cond_56

    move-object v13, v5

    check-cast v13, Lcom/google/protobuf/i;

    invoke-static {v3, v11}, Lcom/google/protobuf/d;->c([BI)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v4

    invoke-virtual {v13, v4, v5}, Lcom/google/protobuf/i;->addDouble(D)V

    add-int/lit8 v2, v11, 0x8

    :goto_34
    if-ge v2, v6, :cond_20

    invoke-static {v3, v2, v10}, Lcom/google/protobuf/d;->r([BILcom/google/protobuf/d$b;)I

    move-result v4

    iget v5, v10, Lcom/google/protobuf/d$b;->a:I

    if-eq v9, v5, :cond_55

    goto/16 :goto_1b

    :cond_55
    invoke-static {v3, v4}, Lcom/google/protobuf/d;->c([BI)J

    move-result-wide v23

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v1

    invoke-virtual {v13, v1, v2}, Lcom/google/protobuf/i;->addDouble(D)V

    add-int/lit8 v2, v4, 0x8

    const/4 v1, 0x1

    goto :goto_34

    :cond_56
    :goto_35
    move v1, v11

    :cond_57
    :goto_36
    if-eq v1, v11, :cond_58

    move-object/from16 v2, p1

    move v4, v6

    move-object v6, v10

    move v5, v12

    move v7, v15

    move-object/from16 v11, v22

    move/from16 v8, v26

    const v16, 0xfffff

    move v15, v9

    move/from16 v9, v29

    goto/16 :goto_1

    :cond_58
    move/from16 v13, p5

    move-object v6, v3

    move-object v11, v10

    move-object/from16 v10, p1

    move v3, v1

    :goto_37
    const/4 v1, 0x1

    goto/16 :goto_4a

    :cond_59
    move/from16 v6, p4

    move-object/from16 v10, p6

    move/from16 v26, v8

    move/from16 v29, v9

    move/from16 v12, v22

    move v9, v2

    move-object v8, v3

    move-object/from16 v22, v11

    move/from16 v11, v28

    move-object/from16 v3, p2

    const/16 v2, 0x32

    if-ne v7, v2, :cond_65

    const/4 v2, 0x2

    if-ne v14, v2, :cond_64

    invoke-virtual {v0, v15}, Lcom/google/protobuf/c0;->l(I)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v7, p1

    invoke-virtual {v8, v7, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v13

    iget-object v14, v0, Lcom/google/protobuf/c0;->o:Lcom/google/protobuf/y;

    invoke-interface {v14, v13}, Lcom/google/protobuf/y;->isImmutable(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_5a

    invoke-interface {v14}, Lcom/google/protobuf/y;->a()Lcom/google/protobuf/x;

    move-result-object v6

    invoke-interface {v14, v6, v13}, Lcom/google/protobuf/y;->mergeFrom(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/protobuf/x;

    invoke-virtual {v8, v7, v4, v5, v6}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object v13, v6

    :cond_5a
    invoke-interface {v14, v2}, Lcom/google/protobuf/y;->forMapMetadata(Ljava/lang/Object;)Lcom/google/protobuf/w$a;

    move-result-object v2

    invoke-interface {v14, v13}, Lcom/google/protobuf/y;->forMutableMapData(Ljava/lang/Object;)Lcom/google/protobuf/x;

    move-result-object v13

    invoke-static {v3, v11, v10}, Lcom/google/protobuf/d;->r([BILcom/google/protobuf/d$b;)I

    move-result v4

    iget v5, v10, Lcom/google/protobuf/d$b;->a:I

    if-ltz v5, :cond_63

    sub-int v6, p4, v4

    if-gt v5, v6, :cond_63

    add-int v14, v4, v5

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v5, v2, Lcom/google/protobuf/w$a;->c:Ljava/lang/Object;

    move-object v6, v5

    :goto_38
    if-ge v4, v14, :cond_60

    move-object/from16 v19, v1

    add-int/lit8 v1, v4, 0x1

    aget-byte v4, v3, v4

    if-gez v4, :cond_5b

    invoke-static {v4, v3, v1, v10}, Lcom/google/protobuf/d;->q(I[BILcom/google/protobuf/d$b;)I

    move-result v1

    iget v4, v10, Lcom/google/protobuf/d$b;->a:I

    :cond_5b
    move/from16 v23, v1

    ushr-int/lit8 v1, v4, 0x3

    and-int/lit8 v3, v4, 0x7

    move-object/from16 v24, v5

    const/4 v5, 0x1

    if-eq v1, v5, :cond_5e

    const/4 v5, 0x2

    if-eq v1, v5, :cond_5c

    move-object/from16 v3, p2

    move-object v7, v2

    move-object v5, v6

    move-object v2, v10

    move-object/from16 v10, v19

    :goto_39
    move/from16 v1, v23

    :goto_3a
    move/from16 v6, p4

    goto/16 :goto_3d

    :cond_5c
    iget-object v1, v2, Lcom/google/protobuf/w$a;->b:Lui9;

    invoke-virtual {v1}, Lui9;->d()I

    move-result v1

    if-ne v3, v1, :cond_5d

    iget-object v4, v2, Lcom/google/protobuf/w$a;->b:Lui9;

    move/from16 v25, v5

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    move-object/from16 v1, p2

    move/from16 v3, p4

    move-object v7, v2

    move-object v6, v10

    move-object/from16 v10, v19

    move/from16 v2, v23

    invoke-static/range {v1 .. v6}, Lcom/google/protobuf/c0;->i([BIILui9;Ljava/lang/Class;Lcom/google/protobuf/d$b;)I

    move-result v4

    move-object v1, v6

    iget-object v6, v1, Lcom/google/protobuf/d$b;->c:Ljava/lang/Object;

    move-object v2, v10

    move-object v10, v1

    move-object v1, v2

    move-object/from16 v3, p2

    move-object v2, v7

    move-object/from16 v5, v24

    :goto_3b
    move-object/from16 v7, p1

    goto :goto_38

    :cond_5d
    move-object v7, v2

    move-object v1, v10

    move-object/from16 v10, v19

    move-object/from16 v3, p2

    move-object v2, v1

    move-object v5, v6

    goto :goto_39

    :cond_5e
    move-object v7, v2

    move-object v1, v10

    move-object/from16 v10, v19

    move/from16 v2, v23

    iget-object v5, v7, Lcom/google/protobuf/w$a;->a:Lui9;

    invoke-virtual {v5}, Lui9;->d()I

    move-result v5

    if-ne v3, v5, :cond_5f

    iget-object v4, v7, Lcom/google/protobuf/w$a;->a:Lui9;

    const/4 v5, 0x0

    move/from16 v3, p4

    move-object v10, v6

    move-object v6, v1

    move-object/from16 v1, p2

    invoke-static/range {v1 .. v6}, Lcom/google/protobuf/c0;->i([BIILui9;Ljava/lang/Class;Lcom/google/protobuf/d$b;)I

    move-result v4

    move-object v2, v6

    move v6, v3

    move-object v3, v1

    iget-object v1, v2, Lcom/google/protobuf/d$b;->c:Ljava/lang/Object;

    move-object v6, v10

    :goto_3c
    move-object/from16 v5, v24

    move-object v10, v2

    move-object v2, v7

    goto :goto_3b

    :cond_5f
    move v3, v2

    move-object v2, v1

    move v1, v3

    move-object/from16 v3, p2

    move-object v5, v6

    goto :goto_3a

    :goto_3d
    invoke-static {v4, v3, v1, v6, v2}, Lcom/google/protobuf/d;->w(I[BIILcom/google/protobuf/d$b;)I

    move-result v4

    move-object v6, v5

    move-object v1, v10

    goto :goto_3c

    :cond_60
    move-object v5, v6

    move-object v2, v10

    move/from16 v6, p4

    move-object v10, v1

    if-ne v4, v14, :cond_62

    invoke-virtual {v13, v10, v5}, Lcom/google/protobuf/x;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eq v14, v11, :cond_61

    move v4, v6

    move v5, v12

    move v1, v14

    move v7, v15

    move-object/from16 v11, v22

    move/from16 v8, v26

    const v16, 0xfffff

    move-object v6, v2

    move v15, v9

    move/from16 v9, v29

    move-object/from16 v2, p1

    goto/16 :goto_1

    :cond_61
    move-object/from16 v10, p1

    move/from16 v13, p5

    move-object v11, v2

    move-object v6, v3

    move v3, v14

    goto/16 :goto_37

    :cond_62
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->i()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    :cond_63
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->j()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    :cond_64
    move-object v2, v10

    :goto_3e
    move-object/from16 v10, p1

    move/from16 v13, p5

    move-object v6, v3

    move v3, v11

    const/4 v1, 0x1

    move-object v11, v2

    goto/16 :goto_4a

    :cond_65
    move-object v2, v10

    move-object/from16 v10, p1

    add-int/lit8 v17, v15, 0x2

    aget v17, v23, v17

    const v16, 0xfffff

    and-int v2, v17, v16

    int-to-long v2, v2

    packed-switch v7, :pswitch_data_2

    :cond_66
    move-object/from16 v6, p2

    move v13, v11

    move/from16 v17, v15

    const/4 v1, 0x1

    move-object/from16 v11, p6

    goto/16 :goto_48

    :pswitch_1c
    const/4 v1, 0x3

    if-ne v14, v1, :cond_66

    invoke-virtual {v0, v10, v12, v15}, Lcom/google/protobuf/c0;->w(Ljava/lang/Object;II)Ljava/lang/Object;

    move-result-object v1

    and-int/lit8 v2, v9, -0x8

    or-int/lit8 v2, v2, 0x4

    move v6, v2

    invoke-virtual {v0, v15}, Lcom/google/protobuf/c0;->m(I)Lcom/google/protobuf/f0;

    move-result-object v2

    move-object/from16 v3, p2

    move/from16 v5, p4

    move-object/from16 v7, p6

    move v4, v11

    invoke-static/range {v1 .. v7}, Lcom/google/protobuf/d;->u(Ljava/lang/Object;Lcom/google/protobuf/f0;[BIIILcom/google/protobuf/d$b;)I

    move-result v2

    move-object v6, v3

    move-object v3, v1

    move-object v1, v6

    move-object v6, v7

    invoke-virtual {v0, v10, v12, v15, v3}, Lcom/google/protobuf/c0;->L(Ljava/lang/Object;IILjava/lang/Object;)V

    move v7, v2

    :goto_3f
    move v13, v11

    move/from16 v17, v15

    move-object v11, v6

    move-object v6, v1

    :goto_40
    const/4 v1, 0x1

    goto/16 :goto_49

    :pswitch_1d
    move-object/from16 v1, p2

    move-object/from16 v6, p6

    if-nez v14, :cond_67

    invoke-static {v1, v11, v6}, Lcom/google/protobuf/d;->t([BILcom/google/protobuf/d$b;)I

    move-result v7

    iget-wide v13, v6, Lcom/google/protobuf/d$b;->b:J

    invoke-static {v13, v14}, Lcom/google/protobuf/f;->c(J)J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v8, v10, v4, v5, v13}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v8, v10, v2, v3, v12}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_3f

    :cond_67
    move v13, v11

    move/from16 v17, v15

    move-object v11, v6

    move-object v6, v1

    :cond_68
    :goto_41
    const/4 v1, 0x1

    goto/16 :goto_48

    :pswitch_1e
    move-object/from16 v1, p2

    move-object/from16 v6, p6

    if-nez v14, :cond_67

    invoke-static {v1, v11, v6}, Lcom/google/protobuf/d;->r([BILcom/google/protobuf/d$b;)I

    move-result v7

    iget v13, v6, Lcom/google/protobuf/d$b;->a:I

    invoke-static {v13}, Lcom/google/protobuf/f;->b(I)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v8, v10, v4, v5, v13}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v8, v10, v2, v3, v12}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_3f

    :pswitch_1f
    move-object/from16 v1, p2

    move-object/from16 v6, p6

    if-nez v14, :cond_67

    invoke-static {v1, v11, v6}, Lcom/google/protobuf/d;->r([BILcom/google/protobuf/d$b;)I

    move-result v7

    iget v13, v6, Lcom/google/protobuf/d$b;->a:I

    invoke-virtual {v0, v15}, Lcom/google/protobuf/c0;->k(I)Lcom/google/protobuf/q$e;

    move-result-object v14

    if-eqz v14, :cond_6a

    invoke-interface {v14, v13}, Lcom/google/protobuf/q$e;->isInRange(I)Z

    move-result v14

    if-eqz v14, :cond_69

    goto :goto_42

    :cond_69
    invoke-static {v10}, Lcom/google/protobuf/c0;->n(Ljava/lang/Object;)Lcom/google/protobuf/k0;

    move-result-object v2

    int-to-long v3, v13

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v9, v3}, Lcom/google/protobuf/k0;->f(ILjava/lang/Object;)V

    goto :goto_3f

    :cond_6a
    :goto_42
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v8, v10, v4, v5, v13}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v8, v10, v2, v3, v12}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_3f

    :pswitch_20
    move-object/from16 v1, p2

    move-object/from16 v6, p6

    const/4 v7, 0x2

    if-ne v14, v7, :cond_67

    invoke-static {v1, v11, v6}, Lcom/google/protobuf/d;->a([BILcom/google/protobuf/d$b;)I

    move-result v7

    iget-object v13, v6, Lcom/google/protobuf/d$b;->c:Ljava/lang/Object;

    invoke-virtual {v8, v10, v4, v5, v13}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v8, v10, v2, v3, v12}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_3f

    :pswitch_21
    move-object/from16 v1, p2

    move-object/from16 v6, p6

    const/4 v7, 0x2

    if-ne v14, v7, :cond_6b

    invoke-virtual {v0, v10, v12, v15}, Lcom/google/protobuf/c0;->w(Ljava/lang/Object;II)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v15}, Lcom/google/protobuf/c0;->m(I)Lcom/google/protobuf/f0;

    move-result-object v2

    move-object/from16 v3, p2

    move/from16 v5, p4

    move v4, v11

    invoke-static/range {v1 .. v6}, Lcom/google/protobuf/d;->v(Ljava/lang/Object;Lcom/google/protobuf/f0;[BIILcom/google/protobuf/d$b;)I

    move-result v2

    move-object v11, v6

    move-object v6, v3

    invoke-virtual {v0, v10, v12, v15, v1}, Lcom/google/protobuf/c0;->L(Ljava/lang/Object;IILjava/lang/Object;)V

    move v7, v2

    move v13, v4

    move/from16 v17, v15

    goto/16 :goto_40

    :cond_6b
    move v4, v11

    move-object v11, v6

    move-object v6, v1

    move v13, v4

    :cond_6c
    move/from16 v17, v15

    goto/16 :goto_41

    :pswitch_22
    move-object/from16 v6, p2

    move/from16 v17, v13

    const/4 v7, 0x2

    move v13, v11

    move-object/from16 v11, p6

    if-ne v14, v7, :cond_6c

    invoke-static {v6, v13, v11}, Lcom/google/protobuf/d;->r([BILcom/google/protobuf/d$b;)I

    move-result v7

    iget v14, v11, Lcom/google/protobuf/d$b;->a:I

    if-nez v14, :cond_6d

    invoke-virtual {v8, v10, v4, v5, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move/from16 v17, v15

    goto :goto_44

    :cond_6d
    and-int v1, v17, v24

    if-eqz v1, :cond_6f

    add-int v1, v7, v14

    move/from16 v17, v15

    sget-object v15, Lcom/google/protobuf/m0;->a:Lcom/google/protobuf/m0$b;

    invoke-virtual {v15, v6, v7, v1}, Lcom/google/protobuf/m0$b;->e([BII)Z

    move-result v1

    if-eqz v1, :cond_6e

    goto :goto_43

    :cond_6e
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->d()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    :cond_6f
    move/from16 v17, v15

    :goto_43
    new-instance v1, Ljava/lang/String;

    sget-object v15, Lcom/google/protobuf/q;->a:Ljava/nio/charset/Charset;

    invoke-direct {v1, v6, v7, v14, v15}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-virtual {v8, v10, v4, v5, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    add-int/2addr v7, v14

    :goto_44
    invoke-virtual {v8, v10, v2, v3, v12}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_40

    :pswitch_23
    move-object/from16 v6, p2

    move v13, v11

    move/from16 v17, v15

    move-object/from16 v11, p6

    if-nez v14, :cond_68

    invoke-static {v6, v13, v11}, Lcom/google/protobuf/d;->t([BILcom/google/protobuf/d$b;)I

    move-result v1

    iget-wide v14, v11, Lcom/google/protobuf/d$b;->b:J

    cmp-long v7, v14, v20

    if-eqz v7, :cond_70

    const/4 v7, 0x1

    goto :goto_45

    :cond_70
    const/4 v7, 0x0

    :goto_45
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v8, v10, v4, v5, v7}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v8, v10, v2, v3, v12}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :goto_46
    move v7, v1

    goto/16 :goto_40

    :pswitch_24
    move-object/from16 v6, p2

    move v13, v11

    move/from16 v17, v15

    const/4 v1, 0x5

    move-object/from16 v11, p6

    if-ne v14, v1, :cond_68

    invoke-static {v6, v13}, Lcom/google/protobuf/d;->b([BI)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v10, v4, v5, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    add-int/lit8 v1, v13, 0x4

    invoke-virtual {v8, v10, v2, v3, v12}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_46

    :pswitch_25
    move-object/from16 v6, p2

    move v13, v11

    move/from16 v17, v15

    const/4 v1, 0x1

    move-object/from16 v11, p6

    if-ne v14, v1, :cond_71

    invoke-static {v6, v13}, Lcom/google/protobuf/d;->c([BI)J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v8, v10, v4, v5, v7}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    add-int/lit8 v4, v13, 0x8

    invoke-virtual {v8, v10, v2, v3, v12}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :goto_47
    move v7, v4

    goto/16 :goto_49

    :pswitch_26
    move-object/from16 v6, p2

    move v13, v11

    move/from16 v17, v15

    const/4 v1, 0x1

    move-object/from16 v11, p6

    if-nez v14, :cond_71

    invoke-static {v6, v13, v11}, Lcom/google/protobuf/d;->r([BILcom/google/protobuf/d$b;)I

    move-result v7

    iget v14, v11, Lcom/google/protobuf/d$b;->a:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v8, v10, v4, v5, v14}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v8, v10, v2, v3, v12}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_49

    :pswitch_27
    move-object/from16 v6, p2

    move v13, v11

    move/from16 v17, v15

    const/4 v1, 0x1

    move-object/from16 v11, p6

    if-nez v14, :cond_71

    invoke-static {v6, v13, v11}, Lcom/google/protobuf/d;->t([BILcom/google/protobuf/d$b;)I

    move-result v7

    iget-wide v14, v11, Lcom/google/protobuf/d$b;->b:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v8, v10, v4, v5, v14}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v8, v10, v2, v3, v12}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_49

    :pswitch_28
    move-object/from16 v6, p2

    move v13, v11

    move/from16 v17, v15

    const/4 v1, 0x1

    const/4 v7, 0x5

    move-object/from16 v11, p6

    if-ne v14, v7, :cond_71

    invoke-static {v6, v13}, Lcom/google/protobuf/d;->b([BI)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v8, v10, v4, v5, v7}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    add-int/lit8 v4, v13, 0x4

    invoke-virtual {v8, v10, v2, v3, v12}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_47

    :pswitch_29
    move-object/from16 v6, p2

    move v13, v11

    move/from16 v17, v15

    const/4 v1, 0x1

    move-object/from16 v11, p6

    if-ne v14, v1, :cond_71

    invoke-static {v6, v13}, Lcom/google/protobuf/d;->c([BI)J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    invoke-virtual {v8, v10, v4, v5, v7}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    add-int/lit8 v4, v13, 0x8

    invoke-virtual {v8, v10, v2, v3, v12}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_47

    :cond_71
    :goto_48
    move v7, v13

    :goto_49
    if-eq v7, v13, :cond_72

    move/from16 v4, p4

    move-object v3, v6

    move v1, v7

    move v15, v9

    move-object v2, v10

    move-object v6, v11

    move v5, v12

    move/from16 v7, v17

    move-object/from16 v11, v22

    move/from16 v8, v26

    move/from16 v9, v29

    goto/16 :goto_0

    :cond_72
    move/from16 v13, p5

    move v3, v7

    move/from16 v15, v17

    :goto_4a
    if-ne v9, v13, :cond_73

    if-eqz v13, :cond_73

    move/from16 v6, p4

    move v7, v3

    move v15, v9

    move/from16 v1, v26

    move/from16 v9, v29

    const/4 v2, 0x0

    :goto_4b
    const v5, 0xfffff

    goto/16 :goto_5e

    :cond_73
    iget-boolean v2, v0, Lcom/google/protobuf/c0;->f:Z

    if-eqz v2, :cond_83

    invoke-static {}, Lcom/google/protobuf/j;->a()Lcom/google/protobuf/j;

    move-result-object v2

    move-object/from16 v14, v22

    if-eq v14, v2, :cond_82

    iget-object v2, v14, Lcom/google/protobuf/j;->a:Ljava/util/Map;

    new-instance v4, Lcom/google/protobuf/j$a;

    iget-object v5, v0, Lcom/google/protobuf/c0;->e:Lcom/google/protobuf/a0;

    invoke-direct {v4, v12, v5}, Lcom/google/protobuf/j$a;-><init>(ILcom/google/protobuf/a0;)V

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/o$e;

    if-nez v2, :cond_74

    invoke-static {v10}, Lcom/google/protobuf/c0;->n(Ljava/lang/Object;)Lcom/google/protobuf/k0;

    move-result-object v5

    move/from16 v4, p4

    move-object v2, v6

    move v1, v9

    move-object v6, v11

    invoke-static/range {v1 .. v6}, Lcom/google/protobuf/d;->p(I[BIILcom/google/protobuf/k0;Lcom/google/protobuf/d$b;)I

    move-result v3

    move/from16 v23, v3

    move-object v3, v2

    move/from16 v2, v23

    :goto_4c
    move-object/from16 v24, v14

    move/from16 v23, v15

    goto/16 :goto_5a

    :cond_74
    move/from16 v4, p4

    move-object v7, v6

    move-object v6, v11

    move-object v5, v10

    check-cast v5, Lcom/google/protobuf/o$c;

    iget-object v8, v5, Lcom/google/protobuf/o$c;->extensions:Lcom/google/protobuf/m;

    iget-boolean v11, v8, Lcom/google/protobuf/m;->b:Z

    if-eqz v11, :cond_75

    invoke-virtual {v8}, Lcom/google/protobuf/m;->b()Lcom/google/protobuf/m;

    move-result-object v8

    iput-object v8, v5, Lcom/google/protobuf/o$c;->extensions:Lcom/google/protobuf/m;

    :cond_75
    iget-object v8, v5, Lcom/google/protobuf/o$c;->extensions:Lcom/google/protobuf/m;

    ushr-int/lit8 v31, v9, 0x3

    iget-object v11, v2, Lcom/google/protobuf/o$e;->d:Lcom/google/protobuf/o$d;

    iget-object v1, v11, Lcom/google/protobuf/o$d;->d:Lui9;

    iget-object v2, v2, Lcom/google/protobuf/o$e;->c:Lcom/google/protobuf/a0;

    move-object/from16 v19, v2

    iget-boolean v2, v11, Lcom/google/protobuf/o$d;->e:Z

    move/from16 v22, v2

    iget-boolean v2, v11, Lcom/google/protobuf/o$d;->e:Z

    move/from16 v23, v2

    iget-object v2, v0, Lcom/google/protobuf/c0;->m:Lcom/google/protobuf/j0;

    if-eqz v23, :cond_79

    move-object/from16 v35, v2

    iget-boolean v2, v11, Lcom/google/protobuf/o$d;->f:Z

    if-eqz v2, :cond_78

    sget-object v2, Lcom/google/protobuf/d$a;->a:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_3

    const-string v1, "Type cannot be packed: "

    iget-object v2, v11, Lcom/google/protobuf/o$d;->d:Lui9;

    invoke-static {v2, v1}, Lqz0;->g(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, v7

    move-object/from16 v24, v14

    move/from16 v23, v15

    :goto_4d
    const/4 v2, 0x0

    goto/16 :goto_5a

    :pswitch_2a
    new-instance v1, Lcom/google/protobuf/p;

    invoke-direct {v1}, Lcom/google/protobuf/p;-><init>()V

    invoke-static {v7, v3, v1, v6}, Lcom/google/protobuf/d;->n([BILcom/google/protobuf/q$j;Lcom/google/protobuf/d$b;)I

    move-result v2

    iget-object v3, v11, Lcom/google/protobuf/o$d;->b:Lcom/google/protobuf/q$d;

    const/16 v34, 0x0

    move-object/from16 v32, v1

    move-object/from16 v33, v3

    move-object/from16 v30, v5

    invoke-static/range {v30 .. v35}, Lcom/google/protobuf/g0;->j(Ljava/lang/Object;ILjava/util/AbstractList;Lcom/google/protobuf/q$d;Ljava/lang/Object;Lcom/google/protobuf/j0;)Ljava/lang/Object;

    invoke-virtual {v8, v11, v1}, Lcom/google/protobuf/m;->m(Lcom/google/protobuf/m$b;Ljava/lang/Object;)V

    :goto_4e
    move-object v3, v7

    goto :goto_4c

    :pswitch_2b
    new-instance v1, Lcom/google/protobuf/v;

    invoke-direct {v1}, Lcom/google/protobuf/v;-><init>()V

    invoke-static {v7, v3, v1, v6}, Lcom/google/protobuf/d;->m([BILcom/google/protobuf/q$j;Lcom/google/protobuf/d$b;)I

    move-result v2

    invoke-virtual {v8, v11, v1}, Lcom/google/protobuf/m;->m(Lcom/google/protobuf/m$b;Ljava/lang/Object;)V

    goto :goto_4e

    :pswitch_2c
    new-instance v1, Lcom/google/protobuf/p;

    invoke-direct {v1}, Lcom/google/protobuf/p;-><init>()V

    invoke-static {v7, v3, v1, v6}, Lcom/google/protobuf/d;->l([BILcom/google/protobuf/q$j;Lcom/google/protobuf/d$b;)I

    move-result v2

    invoke-virtual {v8, v11, v1}, Lcom/google/protobuf/m;->m(Lcom/google/protobuf/m$b;Ljava/lang/Object;)V

    goto :goto_4e

    :pswitch_2d
    new-instance v1, Lcom/google/protobuf/e;

    invoke-direct {v1}, Lcom/google/protobuf/e;-><init>()V

    invoke-static {v7, v3, v1, v6}, Lcom/google/protobuf/d;->g([BILcom/google/protobuf/q$j;Lcom/google/protobuf/d$b;)I

    move-result v2

    invoke-virtual {v8, v11, v1}, Lcom/google/protobuf/m;->m(Lcom/google/protobuf/m$b;Ljava/lang/Object;)V

    goto :goto_4e

    :pswitch_2e
    new-instance v1, Lcom/google/protobuf/p;

    invoke-direct {v1}, Lcom/google/protobuf/p;-><init>()V

    invoke-static {v7, v3, v1, v6}, Lcom/google/protobuf/d;->i([BILcom/google/protobuf/q$j;Lcom/google/protobuf/d$b;)I

    move-result v2

    invoke-virtual {v8, v11, v1}, Lcom/google/protobuf/m;->m(Lcom/google/protobuf/m$b;Ljava/lang/Object;)V

    goto :goto_4e

    :pswitch_2f
    new-instance v1, Lcom/google/protobuf/v;

    invoke-direct {v1}, Lcom/google/protobuf/v;-><init>()V

    invoke-static {v7, v3, v1, v6}, Lcom/google/protobuf/d;->j([BILcom/google/protobuf/q$j;Lcom/google/protobuf/d$b;)I

    move-result v2

    invoke-virtual {v8, v11, v1}, Lcom/google/protobuf/m;->m(Lcom/google/protobuf/m$b;Ljava/lang/Object;)V

    goto :goto_4e

    :pswitch_30
    new-instance v1, Lcom/google/protobuf/p;

    invoke-direct {v1}, Lcom/google/protobuf/p;-><init>()V

    invoke-static {v7, v3, v1, v6}, Lcom/google/protobuf/d;->n([BILcom/google/protobuf/q$j;Lcom/google/protobuf/d$b;)I

    move-result v2

    invoke-virtual {v8, v11, v1}, Lcom/google/protobuf/m;->m(Lcom/google/protobuf/m$b;Ljava/lang/Object;)V

    goto :goto_4e

    :pswitch_31
    new-instance v1, Lcom/google/protobuf/v;

    invoke-direct {v1}, Lcom/google/protobuf/v;-><init>()V

    invoke-static {v7, v3, v6}, Lcom/google/protobuf/d;->r([BILcom/google/protobuf/d$b;)I

    move-result v2

    iget v3, v6, Lcom/google/protobuf/d$b;->a:I

    add-int/2addr v3, v2

    :goto_4f
    if-ge v2, v3, :cond_76

    invoke-static {v7, v2, v6}, Lcom/google/protobuf/d;->t([BILcom/google/protobuf/d$b;)I

    move-result v2

    move-object/from16 v24, v14

    move/from16 v23, v15

    iget-wide v14, v6, Lcom/google/protobuf/d$b;->b:J

    invoke-virtual {v1, v14, v15}, Lcom/google/protobuf/v;->addLong(J)V

    move/from16 v15, v23

    move-object/from16 v14, v24

    goto :goto_4f

    :cond_76
    move-object/from16 v24, v14

    move/from16 v23, v15

    if-ne v2, v3, :cond_77

    invoke-virtual {v8, v11, v1}, Lcom/google/protobuf/m;->m(Lcom/google/protobuf/m$b;Ljava/lang/Object;)V

    :goto_50
    move-object v3, v7

    goto/16 :goto_5a

    :cond_77
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->j()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    :pswitch_32
    move-object/from16 v24, v14

    move/from16 v23, v15

    new-instance v1, Lcom/google/protobuf/n;

    invoke-direct {v1}, Lcom/google/protobuf/n;-><init>()V

    invoke-static {v7, v3, v1, v6}, Lcom/google/protobuf/d;->k([BILcom/google/protobuf/q$j;Lcom/google/protobuf/d$b;)I

    move-result v2

    invoke-virtual {v8, v11, v1}, Lcom/google/protobuf/m;->m(Lcom/google/protobuf/m$b;Ljava/lang/Object;)V

    goto :goto_50

    :pswitch_33
    move-object/from16 v24, v14

    move/from16 v23, v15

    new-instance v1, Lcom/google/protobuf/i;

    invoke-direct {v1}, Lcom/google/protobuf/i;-><init>()V

    invoke-static {v7, v3, v1, v6}, Lcom/google/protobuf/d;->h([BILcom/google/protobuf/q$j;Lcom/google/protobuf/d$b;)I

    move-result v2

    invoke-virtual {v8, v11, v1}, Lcom/google/protobuf/m;->m(Lcom/google/protobuf/m$b;Ljava/lang/Object;)V

    goto :goto_50

    :cond_78
    move-object/from16 v24, v14

    move-object/from16 v14, v35

    move-object v2, v5

    move/from16 v23, v15

    :goto_51
    move/from16 v5, v31

    goto :goto_52

    :cond_79
    move-object/from16 v24, v14

    move-object v14, v2

    move/from16 v23, v15

    move-object v2, v5

    goto :goto_51

    :goto_52
    sget-object v15, Lui9;->ENUM:Lui9;

    if-ne v1, v15, :cond_7b

    invoke-static {v7, v3, v6}, Lcom/google/protobuf/d;->r([BILcom/google/protobuf/d$b;)I

    move-result v3

    iget-object v1, v11, Lcom/google/protobuf/o$d;->b:Lcom/google/protobuf/q$d;

    iget v15, v6, Lcom/google/protobuf/d$b;->a:I

    invoke-interface {v1, v15}, Lcom/google/protobuf/q$d;->findValueByNumber(I)Lcom/google/protobuf/q$c;

    move-result-object v1

    iget v15, v6, Lcom/google/protobuf/d$b;->a:I

    if-nez v1, :cond_7a

    const/4 v1, 0x0

    invoke-static {v2, v5, v15, v1, v14}, Lcom/google/protobuf/g0;->n(Ljava/lang/Object;IILjava/lang/Object;Lcom/google/protobuf/j0;)Ljava/lang/Object;

    move v2, v3

    goto :goto_50

    :cond_7a
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object v2, v1

    :goto_53
    move v1, v3

    move-object v3, v7

    goto/16 :goto_59

    :cond_7b
    const/4 v2, 0x0

    sget-object v14, Lcom/google/protobuf/d$a;->a:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v14, v1

    packed-switch v1, :pswitch_data_4

    goto :goto_53

    :pswitch_34
    sget-object v1, Lrs6;->c:Lrs6;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrs6;->a(Ljava/lang/Class;)Lcom/google/protobuf/f0;

    move-result-object v2

    if-eqz v22, :cond_7c

    invoke-static {v2, v7, v3, v4, v6}, Lcom/google/protobuf/d;->e(Lcom/google/protobuf/f0;[BIILcom/google/protobuf/d$b;)I

    move-result v1

    iget-object v2, v6, Lcom/google/protobuf/d$b;->c:Ljava/lang/Object;

    invoke-virtual {v8, v11, v2}, Lcom/google/protobuf/m;->a(Lcom/google/protobuf/m$b;Ljava/lang/Object;)V

    move v2, v1

    goto/16 :goto_50

    :cond_7c
    invoke-virtual {v8, v11}, Lcom/google/protobuf/m;->f(Lcom/google/protobuf/m$b;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_7d

    invoke-interface {v2}, Lcom/google/protobuf/f0;->newInstance()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v8, v11, v1}, Lcom/google/protobuf/m;->m(Lcom/google/protobuf/m$b;Ljava/lang/Object;)V

    :cond_7d
    move v5, v4

    move v4, v3

    move-object v3, v7

    invoke-static/range {v1 .. v6}, Lcom/google/protobuf/d;->v(Ljava/lang/Object;Lcom/google/protobuf/f0;[BIILcom/google/protobuf/d$b;)I

    move-result v1

    move-object/from16 v3, p2

    move-object/from16 v6, p6

    :goto_54
    move v2, v1

    goto/16 :goto_5a

    :pswitch_35
    shl-int/lit8 v1, v5, 0x3

    or-int/lit8 v5, v1, 0x4

    sget-object v1, Lrs6;->c:Lrs6;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrs6;->a(Ljava/lang/Class;)Lcom/google/protobuf/f0;

    move-result-object v1

    if-eqz v22, :cond_7e

    move-object/from16 v2, p2

    move/from16 v4, p4

    move-object/from16 v6, p6

    invoke-static/range {v1 .. v6}, Lcom/google/protobuf/d;->d(Lcom/google/protobuf/f0;[BIIILcom/google/protobuf/d$b;)I

    move-result v1

    iget-object v2, v6, Lcom/google/protobuf/d$b;->c:Ljava/lang/Object;

    invoke-virtual {v8, v11, v2}, Lcom/google/protobuf/m;->a(Lcom/google/protobuf/m$b;Ljava/lang/Object;)V

    move-object/from16 v3, p2

    goto :goto_54

    :cond_7e
    move-object/from16 v6, p6

    invoke-virtual {v8, v11}, Lcom/google/protobuf/m;->f(Lcom/google/protobuf/m$b;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_7f

    invoke-interface {v1}, Lcom/google/protobuf/f0;->newInstance()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v8, v11, v2}, Lcom/google/protobuf/m;->m(Lcom/google/protobuf/m$b;Ljava/lang/Object;)V

    :cond_7f
    move-object v4, v2

    move-object v2, v1

    move-object v1, v4

    move v4, v3

    move-object v7, v6

    move-object/from16 v3, p2

    move v6, v5

    move/from16 v5, p4

    invoke-static/range {v1 .. v7}, Lcom/google/protobuf/d;->u(Ljava/lang/Object;Lcom/google/protobuf/f0;[BIIILcom/google/protobuf/d$b;)I

    move-result v1

    move-object v6, v7

    goto :goto_54

    :pswitch_36
    move v4, v3

    move-object v3, v7

    invoke-static {v3, v4, v6}, Lcom/google/protobuf/d;->o([BILcom/google/protobuf/d$b;)I

    move-result v1

    iget-object v2, v6, Lcom/google/protobuf/d$b;->c:Ljava/lang/Object;

    goto/16 :goto_59

    :pswitch_37
    move v4, v3

    move-object v3, v7

    invoke-static {v3, v4, v6}, Lcom/google/protobuf/d;->a([BILcom/google/protobuf/d$b;)I

    move-result v1

    iget-object v2, v6, Lcom/google/protobuf/d$b;->c:Ljava/lang/Object;

    goto/16 :goto_59

    :pswitch_38
    move-object v3, v7

    const-string v1, "Shouldn\'t reach here."

    invoke-static {v1}, Lah;->f(Ljava/lang/String;)V

    goto/16 :goto_4d

    :pswitch_39
    move v4, v3

    move-object v3, v7

    invoke-static {v3, v4, v6}, Lcom/google/protobuf/d;->t([BILcom/google/protobuf/d$b;)I

    move-result v1

    iget-wide v4, v6, Lcom/google/protobuf/d$b;->b:J

    invoke-static {v4, v5}, Lcom/google/protobuf/f;->c(J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    goto/16 :goto_59

    :pswitch_3a
    move v4, v3

    move-object v3, v7

    invoke-static {v3, v4, v6}, Lcom/google/protobuf/d;->r([BILcom/google/protobuf/d$b;)I

    move-result v1

    iget v2, v6, Lcom/google/protobuf/d$b;->a:I

    invoke-static {v2}, Lcom/google/protobuf/f;->b(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto/16 :goto_59

    :pswitch_3b
    move v4, v3

    move-object v3, v7

    invoke-static {v3, v4, v6}, Lcom/google/protobuf/d;->t([BILcom/google/protobuf/d$b;)I

    move-result v1

    iget-wide v4, v6, Lcom/google/protobuf/d$b;->b:J

    cmp-long v2, v4, v20

    if-eqz v2, :cond_80

    const/4 v7, 0x1

    goto :goto_55

    :cond_80
    const/4 v7, 0x0

    :goto_55
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto/16 :goto_59

    :pswitch_3c
    move v4, v3

    move-object v3, v7

    invoke-static {v3, v4}, Lcom/google/protobuf/d;->b([BI)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_56
    add-int/lit8 v2, v4, 0x4

    :goto_57
    move/from16 v36, v2

    move-object v2, v1

    move/from16 v1, v36

    goto :goto_59

    :pswitch_3d
    move v4, v3

    move-object v3, v7

    invoke-static {v3, v4}, Lcom/google/protobuf/d;->c([BI)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    :goto_58
    add-int/lit8 v2, v4, 0x8

    goto :goto_57

    :pswitch_3e
    move v4, v3

    move-object v3, v7

    invoke-static {v3, v4, v6}, Lcom/google/protobuf/d;->r([BILcom/google/protobuf/d$b;)I

    move-result v1

    iget v2, v6, Lcom/google/protobuf/d$b;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_59

    :pswitch_3f
    move v4, v3

    move-object v3, v7

    invoke-static {v3, v4, v6}, Lcom/google/protobuf/d;->t([BILcom/google/protobuf/d$b;)I

    move-result v1

    iget-wide v4, v6, Lcom/google/protobuf/d$b;->b:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    goto :goto_59

    :pswitch_40
    move v4, v3

    move-object v3, v7

    invoke-static {v3, v4}, Lcom/google/protobuf/d;->b([BI)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    goto :goto_56

    :pswitch_41
    move v4, v3

    move-object v3, v7

    invoke-static {v3, v4}, Lcom/google/protobuf/d;->c([BI)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    goto :goto_58

    :goto_59
    if-eqz v22, :cond_81

    invoke-virtual {v8, v11, v2}, Lcom/google/protobuf/m;->a(Lcom/google/protobuf/m$b;Ljava/lang/Object;)V

    goto/16 :goto_54

    :cond_81
    invoke-virtual {v8, v11, v2}, Lcom/google/protobuf/m;->m(Lcom/google/protobuf/m$b;Ljava/lang/Object;)V

    goto/16 :goto_54

    :goto_5a
    move/from16 v6, p4

    move v1, v9

    goto :goto_5d

    :cond_82
    move-object/from16 v24, v14

    :goto_5b
    move v4, v3

    move-object v3, v6

    move-object v6, v11

    move/from16 v23, v15

    goto :goto_5c

    :cond_83
    move-object/from16 v24, v22

    goto :goto_5b

    :goto_5c
    invoke-static {v10}, Lcom/google/protobuf/c0;->n(Ljava/lang/Object;)Lcom/google/protobuf/k0;

    move-result-object v5

    move-object v2, v3

    move v3, v4

    move v1, v9

    move/from16 v4, p4

    invoke-static/range {v1 .. v6}, Lcom/google/protobuf/d;->p(I[BIILcom/google/protobuf/k0;Lcom/google/protobuf/d$b;)I

    move-result v3

    move v6, v4

    move v2, v3

    :goto_5d
    move-object/from16 v3, p2

    move v15, v1

    move v1, v2

    move v4, v6

    move-object v2, v10

    move v5, v12

    move/from16 v7, v23

    move-object/from16 v11, v24

    move/from16 v8, v26

    move/from16 v9, v29

    const v16, 0xfffff

    move-object/from16 v6, p6

    goto/16 :goto_1

    :cond_84
    move/from16 v13, p5

    move-object v10, v2

    move v6, v4

    move/from16 v26, v8

    move/from16 v29, v9

    move-object v8, v12

    move v7, v1

    const/4 v2, 0x0

    move/from16 v1, v26

    goto/16 :goto_4b

    :goto_5e
    if-eq v1, v5, :cond_85

    int-to-long v3, v1

    invoke-virtual {v8, v10, v3, v4, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_85
    iget v1, v0, Lcom/google/protobuf/c0;->i:I

    move v8, v1

    move-object v3, v2

    :goto_5f
    iget v1, v0, Lcom/google/protobuf/c0;->j:I

    if-ge v8, v1, :cond_86

    iget-object v1, v0, Lcom/google/protobuf/c0;->h:[I

    aget v2, v1, v8

    iget-object v4, v0, Lcom/google/protobuf/c0;->m:Lcom/google/protobuf/j0;

    move-object/from16 v5, p1

    move-object v1, v10

    invoke-virtual/range {v0 .. v5}, Lcom/google/protobuf/c0;->j(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/protobuf/j0;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v12, v1

    move-object v3, v2

    check-cast v3, Lcom/google/protobuf/k0;

    add-int/lit8 v8, v8, 0x1

    move-object v10, v12

    goto :goto_5f

    :cond_86
    move-object v12, v10

    if-eqz v3, :cond_87

    iget-object v0, v0, Lcom/google/protobuf/c0;->m:Lcom/google/protobuf/j0;

    invoke-virtual {v0, v12, v3}, Lcom/google/protobuf/j0;->n(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_87
    if-nez v13, :cond_89

    if-ne v7, v6, :cond_88

    goto :goto_60

    :cond_88
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->i()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    :cond_89
    if-gt v7, v6, :cond_8a

    if-ne v15, v13, :cond_8a

    :goto_60
    return v7

    :cond_8a
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->i()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_a
        :pswitch_3
        :pswitch_8
        :pswitch_9
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x12
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_18
        :pswitch_11
        :pswitch_16
        :pswitch_17
        :pswitch_10
        :pswitch_f
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_18
        :pswitch_11
        :pswitch_16
        :pswitch_17
        :pswitch_10
        :pswitch_f
        :pswitch_e
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x33
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_26
        :pswitch_1f
        :pswitch_24
        :pswitch_25
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_31
        :pswitch_30
        :pswitch_30
        :pswitch_2f
        :pswitch_2f
        :pswitch_2e
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3f
        :pswitch_3e
        :pswitch_3e
        :pswitch_3d
        :pswitch_3d
        :pswitch_3c
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
    .end packed-switch
.end method

.method public final C(Ljava/lang/Object;JLcom/google/protobuf/g;Lcom/google/protobuf/f0;Lcom/google/protobuf/j;)V
    .locals 1

    iget-object p0, p0, Lcom/google/protobuf/c0;->l:Lcom/google/protobuf/u;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/u;->c(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object p0

    iget-object p1, p4, Lcom/google/protobuf/g;->a:Lcom/google/protobuf/f;

    iget p2, p4, Lcom/google/protobuf/g;->b:I

    and-int/lit8 p3, p2, 0x7

    const/4 v0, 0x3

    if-ne p3, v0, :cond_3

    :cond_0
    invoke-interface {p5}, Lcom/google/protobuf/f0;->newInstance()Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p4, p3, p5, p6}, Lcom/google/protobuf/g;->b(Ljava/lang/Object;Lcom/google/protobuf/f0;Lcom/google/protobuf/j;)V

    invoke-interface {p5, p3}, Lcom/google/protobuf/f0;->makeImmutable(Ljava/lang/Object;)V

    invoke-interface {p0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lcom/google/protobuf/f;->e()Z

    move-result p3

    if-nez p3, :cond_2

    iget p3, p4, Lcom/google/protobuf/g;->d:I

    if-eqz p3, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/f;->z()I

    move-result p3

    if-eq p3, p2, :cond_0

    iput p3, p4, Lcom/google/protobuf/g;->d:I

    :cond_2
    :goto_0
    return-void

    :cond_3
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->e()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p0

    throw p0
.end method

.method public final D(Ljava/lang/Object;ILcom/google/protobuf/g;Lcom/google/protobuf/f0;Lcom/google/protobuf/j;)V
    .locals 2

    const v0, 0xfffff

    and-int/2addr p2, v0

    int-to-long v0, p2

    iget-object p0, p0, Lcom/google/protobuf/c0;->l:Lcom/google/protobuf/u;

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/protobuf/u;->c(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object p0

    iget-object p1, p3, Lcom/google/protobuf/g;->a:Lcom/google/protobuf/f;

    iget p2, p3, Lcom/google/protobuf/g;->b:I

    and-int/lit8 v0, p2, 0x7

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    :cond_0
    invoke-interface {p4}, Lcom/google/protobuf/f0;->newInstance()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p3, v0, p4, p5}, Lcom/google/protobuf/g;->c(Ljava/lang/Object;Lcom/google/protobuf/f0;Lcom/google/protobuf/j;)V

    invoke-interface {p4, v0}, Lcom/google/protobuf/f0;->makeImmutable(Ljava/lang/Object;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lcom/google/protobuf/f;->e()Z

    move-result v0

    if-nez v0, :cond_2

    iget v0, p3, Lcom/google/protobuf/g;->d:I

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/f;->z()I

    move-result v0

    if-eq v0, p2, :cond_0

    iput v0, p3, Lcom/google/protobuf/g;->d:I

    :cond_2
    :goto_0
    return-void

    :cond_3
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->e()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p0

    throw p0
.end method

.method public final E(ILcom/google/protobuf/g;Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p2, Lcom/google/protobuf/g;->a:Lcom/google/protobuf/f;

    const/high16 v1, 0x20000000

    and-int/2addr v1, p1

    const/4 v2, 0x2

    const v3, 0xfffff

    if-eqz v1, :cond_0

    and-int p0, p1, v3

    int-to-long p0, p0

    invoke-virtual {p2, v2}, Lcom/google/protobuf/g;->x(I)V

    invoke-virtual {v0}, Lcom/google/protobuf/f;->y()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p0, p1, p2}, Lh79;->q(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void

    :cond_0
    iget-boolean p0, p0, Lcom/google/protobuf/c0;->g:Z

    if-eqz p0, :cond_1

    and-int p0, p1, v3

    int-to-long p0, p0

    invoke-virtual {p2, v2}, Lcom/google/protobuf/g;->x(I)V

    invoke-virtual {v0}, Lcom/google/protobuf/f;->x()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p0, p1, p2}, Lh79;->q(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void

    :cond_1
    and-int p0, p1, v3

    int-to-long p0, p0

    invoke-virtual {p2}, Lcom/google/protobuf/g;->e()Lfx0;

    move-result-object p2

    invoke-static {p3, p0, p1, p2}, Lh79;->q(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method

.method public final F(ILcom/google/protobuf/g;Ljava/lang/Object;)V
    .locals 4

    const/high16 v0, 0x20000000

    and-int/2addr v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const v3, 0xfffff

    iget-object p0, p0, Lcom/google/protobuf/c0;->l:Lcom/google/protobuf/u;

    if-eqz v0, :cond_1

    and-int/2addr p1, v3

    int-to-long v0, p1

    invoke-virtual {p0, p3, v0, v1}, Lcom/google/protobuf/u;->c(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object p0

    invoke-virtual {p2, p0, v2}, Lcom/google/protobuf/g;->t(Ljava/util/List;Z)V

    return-void

    :cond_1
    and-int/2addr p1, v3

    int-to-long v2, p1

    invoke-virtual {p0, p3, v2, v3}, Lcom/google/protobuf/u;->c(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object p0

    invoke-virtual {p2, p0, v1}, Lcom/google/protobuf/g;->t(Ljava/util/List;Z)V

    return-void
.end method

.method public final H(Ljava/lang/Object;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    add-int/lit8 p2, p2, 0x2

    iget-object p0, p0, Lcom/google/protobuf/c0;->a:[I

    aget p0, p0, p2

    const p2, 0xfffff

    and-int/2addr p2, p0

    int-to-long v0, p2

    const-wide/32 v2, 0xfffff

    cmp-long p2, v0, v2

    if-nez p2, :cond_0

    return-void

    :cond_0
    ushr-int/lit8 p0, p0, 0x14

    const/4 p2, 0x1

    shl-int p0, p2, p0

    invoke-static {p1, v0, v1}, Lh79;->h(Ljava/lang/Object;J)I

    move-result p2

    or-int/2addr p0, p2

    invoke-static {p1, v0, v1, p0}, Lh79;->o(Ljava/lang/Object;JI)V

    return-void
.end method

.method public final I(Ljava/lang/Object;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II)V"
        }
    .end annotation

    add-int/lit8 p3, p3, 0x2

    iget-object p0, p0, Lcom/google/protobuf/c0;->a:[I

    aget p0, p0, p3

    const p3, 0xfffff

    and-int/2addr p0, p3

    int-to-long v0, p0

    invoke-static {p1, v0, v1, p2}, Lh79;->o(Ljava/lang/Object;JI)V

    return-void
.end method

.method public final J(II)I
    .locals 4

    iget-object p0, p0, Lcom/google/protobuf/c0;->a:[I

    array-length v0, p0

    div-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-gt p2, v0, :cond_2

    add-int v1, v0, p2

    ushr-int/lit8 v1, v1, 0x1

    mul-int/lit8 v2, v1, 0x3

    aget v3, p0, v2

    if-ne p1, v3, :cond_0

    return v2

    :cond_0
    if-ge p1, v3, :cond_1

    add-int/lit8 v1, v1, -0x1

    move v0, v1

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    move p2, v1

    goto :goto_0

    :cond_2
    const/4 p0, -0x1

    return p0
.end method

.method public final K(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    invoke-virtual {p0, p2}, Lcom/google/protobuf/c0;->N(I)I

    move-result v0

    const v1, 0xfffff

    and-int/2addr v0, v1

    int-to-long v0, v0

    sget-object v2, Lcom/google/protobuf/c0;->q:Lsun/misc/Unsafe;

    invoke-virtual {v2, p1, v0, v1, p3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/c0;->H(Ljava/lang/Object;I)V

    return-void
.end method

.method public final L(Ljava/lang/Object;IILjava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    invoke-virtual {p0, p3}, Lcom/google/protobuf/c0;->N(I)I

    move-result v0

    const v1, 0xfffff

    and-int/2addr v0, v1

    int-to-long v0, v0

    sget-object v2, Lcom/google/protobuf/c0;->q:Lsun/misc/Unsafe;

    invoke-virtual {v2, p1, v0, v1, p4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/c0;->I(Ljava/lang/Object;II)V

    return-void
.end method

.method public final N(I)I
    .locals 0

    add-int/lit8 p1, p1, 0x1

    iget-object p0, p0, Lcom/google/protobuf/c0;->a:[I

    aget p0, p0, p1

    return p0
.end method

.method public final O(Lcom/google/protobuf/n0;ILjava/lang/Object;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/n0;",
            "I",
            "Ljava/lang/Object;",
            "I)V"
        }
    .end annotation

    if-eqz p3, :cond_0

    invoke-virtual {p0, p4}, Lcom/google/protobuf/c0;->l(I)Ljava/lang/Object;

    move-result-object p4

    iget-object p0, p0, Lcom/google/protobuf/c0;->o:Lcom/google/protobuf/y;

    invoke-interface {p0, p4}, Lcom/google/protobuf/y;->forMapMetadata(Ljava/lang/Object;)Lcom/google/protobuf/w$a;

    move-result-object p4

    invoke-interface {p0, p3}, Lcom/google/protobuf/y;->forMapData(Ljava/lang/Object;)Lcom/google/protobuf/x;

    move-result-object p0

    check-cast p1, Lcom/google/protobuf/h;

    iget-object p1, p1, Lcom/google/protobuf/h;->a:Lcom/google/protobuf/CodedOutputStream;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/google/protobuf/x;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map$Entry;

    const/4 v0, 0x2

    invoke-virtual {p1, p2, v0}, Lcom/google/protobuf/CodedOutputStream;->u0(II)V

    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {p4, v1, v2}, Lcom/google/protobuf/w;->a(Lcom/google/protobuf/w$a;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/google/protobuf/CodedOutputStream;->w0(I)V

    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p3

    iget-object v2, p4, Lcom/google/protobuf/w$a;->a:Lui9;

    const/4 v3, 0x1

    invoke-static {p1, v2, v3, v1}, Lcom/google/protobuf/m;->o(Lcom/google/protobuf/CodedOutputStream;Lui9;ILjava/lang/Object;)V

    iget-object v1, p4, Lcom/google/protobuf/w$a;->b:Lui9;

    invoke-static {p1, v1, v0, p3}, Lcom/google/protobuf/m;->o(Lcom/google/protobuf/CodedOutputStream;Lui9;ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/Object;Lcom/google/protobuf/n0;)V
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/protobuf/n0;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v6, p2

    iget-boolean v2, v0, Lcom/google/protobuf/c0;->f:Z

    iget-object v7, v0, Lcom/google/protobuf/c0;->m:Lcom/google/protobuf/j0;

    iget-object v8, v0, Lcom/google/protobuf/c0;->a:[I

    move-object v3, v6

    check-cast v3, Lcom/google/protobuf/h;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Lcom/google/protobuf/n0$a;->ASCENDING:Lcom/google/protobuf/n0$a;

    sget-object v4, Lcom/google/protobuf/n0$a;->DESCENDING:Lcom/google/protobuf/n0$a;

    iget-object v9, v0, Lcom/google/protobuf/c0;->n:Lcom/google/protobuf/k;

    const v12, 0xfffff

    const/4 v13, 0x1

    const/4 v14, 0x0

    if-ne v3, v4, :cond_b

    invoke-virtual {v7, v1}, Lcom/google/protobuf/j0;->g(Ljava/lang/Object;)Lcom/google/protobuf/k0;

    move-result-object v3

    invoke-virtual {v7, v3, v6}, Lcom/google/protobuf/j0;->r(Ljava/lang/Object;Lcom/google/protobuf/n0;)V

    if-eqz v2, :cond_3

    invoke-virtual {v9, v1}, Lcom/google/protobuf/k;->c(Ljava/lang/Object;)Lcom/google/protobuf/m;

    move-result-object v2

    iget-object v3, v2, Lcom/google/protobuf/m;->a:Lcom/google/protobuf/h0;

    invoke-virtual {v3}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    iget-boolean v3, v2, Lcom/google/protobuf/m;->c:Z

    iget-object v2, v2, Lcom/google/protobuf/m;->a:Lcom/google/protobuf/h0;

    if-eqz v3, :cond_1

    new-instance v3, Lcom/google/protobuf/r$b;

    iget-object v4, v2, Lcom/google/protobuf/i0;->h:Lcom/google/protobuf/i0$b;

    if-nez v4, :cond_0

    new-instance v4, Lcom/google/protobuf/i0$b;

    invoke-direct {v4, v2}, Lcom/google/protobuf/i0$b;-><init>(Lcom/google/protobuf/i0;)V

    iput-object v4, v2, Lcom/google/protobuf/i0;->h:Lcom/google/protobuf/i0$b;

    :cond_0
    iget-object v2, v2, Lcom/google/protobuf/i0;->h:Lcom/google/protobuf/i0$b;

    invoke-virtual {v2}, Lcom/google/protobuf/i0$b;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-direct {v3, v2}, Lcom/google/protobuf/r$b;-><init>(Ljava/util/Iterator;)V

    goto :goto_0

    :cond_1
    iget-object v3, v2, Lcom/google/protobuf/i0;->h:Lcom/google/protobuf/i0$b;

    if-nez v3, :cond_2

    new-instance v3, Lcom/google/protobuf/i0$b;

    invoke-direct {v3, v2}, Lcom/google/protobuf/i0$b;-><init>(Lcom/google/protobuf/i0;)V

    iput-object v3, v2, Lcom/google/protobuf/i0;->h:Lcom/google/protobuf/i0$b;

    :cond_2
    iget-object v2, v2, Lcom/google/protobuf/i0;->h:Lcom/google/protobuf/i0$b;

    invoke-virtual {v2}, Lcom/google/protobuf/i0$b;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1
    array-length v4, v8

    add-int/lit8 v4, v4, -0x3

    :goto_2
    if-ltz v4, :cond_8

    invoke-virtual {v0, v4}, Lcom/google/protobuf/c0;->N(I)I

    move-result v5

    aget v7, v8, v4

    :goto_3
    if-eqz v2, :cond_5

    invoke-virtual {v9, v2}, Lcom/google/protobuf/k;->a(Ljava/util/Map$Entry;)I

    move-result v15

    if-le v15, v7, :cond_5

    invoke-virtual {v9, v6, v2}, Lcom/google/protobuf/k;->j(Lcom/google/protobuf/n0;Ljava/util/Map$Entry;)V

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    goto :goto_3

    :cond_4
    const/4 v2, 0x0

    goto :goto_3

    :cond_5
    invoke-static {v5}, Lcom/google/protobuf/c0;->M(I)I

    move-result v15

    packed-switch v15, :pswitch_data_0

    :cond_6
    const/16 v15, 0x3f

    goto/16 :goto_4

    :pswitch_0
    invoke-virtual {v0, v1, v7, v4}, Lcom/google/protobuf/c0;->r(Ljava/lang/Object;II)Z

    move-result v15

    if-eqz v15, :cond_6

    and-int/2addr v5, v12

    const/16 v15, 0x3f

    int-to-long v10, v5

    invoke-static {v1, v10, v11}, Lh79;->j(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v4}, Lcom/google/protobuf/c0;->m(I)Lcom/google/protobuf/f0;

    move-result-object v10

    move-object v11, v6

    check-cast v11, Lcom/google/protobuf/h;

    invoke-virtual {v11, v7, v5, v10}, Lcom/google/protobuf/h;->d(ILjava/lang/Object;Lcom/google/protobuf/f0;)V

    goto/16 :goto_4

    :pswitch_1
    const/16 v15, 0x3f

    invoke-virtual {v0, v1, v7, v4}, Lcom/google/protobuf/c0;->r(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_7

    and-int/2addr v5, v12

    int-to-long v10, v5

    invoke-static {v1, v10, v11}, Lcom/google/protobuf/c0;->A(Ljava/lang/Object;J)J

    move-result-wide v10

    move-object v5, v6

    check-cast v5, Lcom/google/protobuf/h;

    iget-object v5, v5, Lcom/google/protobuf/h;->a:Lcom/google/protobuf/CodedOutputStream;

    shl-long v16, v10, v13

    shr-long/2addr v10, v15

    xor-long v10, v16, v10

    invoke-virtual {v5, v7, v10, v11}, Lcom/google/protobuf/CodedOutputStream;->x0(IJ)V

    goto/16 :goto_4

    :pswitch_2
    const/16 v15, 0x3f

    invoke-virtual {v0, v1, v7, v4}, Lcom/google/protobuf/c0;->r(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_7

    and-int/2addr v5, v12

    int-to-long v10, v5

    invoke-static {v1, v10, v11}, Lcom/google/protobuf/c0;->z(Ljava/lang/Object;J)I

    move-result v5

    move-object v10, v6

    check-cast v10, Lcom/google/protobuf/h;

    iget-object v10, v10, Lcom/google/protobuf/h;->a:Lcom/google/protobuf/CodedOutputStream;

    shl-int/lit8 v11, v5, 0x1

    shr-int/lit8 v5, v5, 0x1f

    xor-int/2addr v5, v11

    invoke-virtual {v10, v7, v5}, Lcom/google/protobuf/CodedOutputStream;->v0(II)V

    goto/16 :goto_4

    :pswitch_3
    const/16 v15, 0x3f

    invoke-virtual {v0, v1, v7, v4}, Lcom/google/protobuf/c0;->r(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_7

    and-int/2addr v5, v12

    int-to-long v10, v5

    invoke-static {v1, v10, v11}, Lcom/google/protobuf/c0;->A(Ljava/lang/Object;J)J

    move-result-wide v10

    move-object v5, v6

    check-cast v5, Lcom/google/protobuf/h;

    iget-object v5, v5, Lcom/google/protobuf/h;->a:Lcom/google/protobuf/CodedOutputStream;

    invoke-virtual {v5, v7, v10, v11}, Lcom/google/protobuf/CodedOutputStream;->k0(IJ)V

    goto/16 :goto_4

    :pswitch_4
    const/16 v15, 0x3f

    invoke-virtual {v0, v1, v7, v4}, Lcom/google/protobuf/c0;->r(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_7

    and-int/2addr v5, v12

    int-to-long v10, v5

    invoke-static {v1, v10, v11}, Lcom/google/protobuf/c0;->z(Ljava/lang/Object;J)I

    move-result v5

    move-object v10, v6

    check-cast v10, Lcom/google/protobuf/h;

    iget-object v10, v10, Lcom/google/protobuf/h;->a:Lcom/google/protobuf/CodedOutputStream;

    invoke-virtual {v10, v7, v5}, Lcom/google/protobuf/CodedOutputStream;->i0(II)V

    goto/16 :goto_4

    :pswitch_5
    const/16 v15, 0x3f

    invoke-virtual {v0, v1, v7, v4}, Lcom/google/protobuf/c0;->r(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_7

    and-int/2addr v5, v12

    int-to-long v10, v5

    invoke-static {v1, v10, v11}, Lcom/google/protobuf/c0;->z(Ljava/lang/Object;J)I

    move-result v5

    move-object v10, v6

    check-cast v10, Lcom/google/protobuf/h;

    iget-object v10, v10, Lcom/google/protobuf/h;->a:Lcom/google/protobuf/CodedOutputStream;

    invoke-virtual {v10, v7, v5}, Lcom/google/protobuf/CodedOutputStream;->m0(II)V

    goto/16 :goto_4

    :pswitch_6
    const/16 v15, 0x3f

    invoke-virtual {v0, v1, v7, v4}, Lcom/google/protobuf/c0;->r(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_7

    and-int/2addr v5, v12

    int-to-long v10, v5

    invoke-static {v1, v10, v11}, Lcom/google/protobuf/c0;->z(Ljava/lang/Object;J)I

    move-result v5

    move-object v10, v6

    check-cast v10, Lcom/google/protobuf/h;

    iget-object v10, v10, Lcom/google/protobuf/h;->a:Lcom/google/protobuf/CodedOutputStream;

    invoke-virtual {v10, v7, v5}, Lcom/google/protobuf/CodedOutputStream;->v0(II)V

    goto/16 :goto_4

    :pswitch_7
    const/16 v15, 0x3f

    invoke-virtual {v0, v1, v7, v4}, Lcom/google/protobuf/c0;->r(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_7

    and-int/2addr v5, v12

    int-to-long v10, v5

    invoke-static {v1, v10, v11}, Lh79;->j(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lfx0;

    move-object v10, v6

    check-cast v10, Lcom/google/protobuf/h;

    invoke-virtual {v10, v7, v5}, Lcom/google/protobuf/h;->a(ILfx0;)V

    goto/16 :goto_4

    :pswitch_8
    const/16 v15, 0x3f

    invoke-virtual {v0, v1, v7, v4}, Lcom/google/protobuf/c0;->r(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_7

    and-int/2addr v5, v12

    int-to-long v10, v5

    invoke-static {v1, v10, v11}, Lh79;->j(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v4}, Lcom/google/protobuf/c0;->m(I)Lcom/google/protobuf/f0;

    move-result-object v10

    move-object v11, v6

    check-cast v11, Lcom/google/protobuf/h;

    invoke-virtual {v11, v7, v5, v10}, Lcom/google/protobuf/h;->g(ILjava/lang/Object;Lcom/google/protobuf/f0;)V

    goto/16 :goto_4

    :pswitch_9
    const/16 v15, 0x3f

    invoke-virtual {v0, v1, v7, v4}, Lcom/google/protobuf/c0;->r(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_7

    and-int/2addr v5, v12

    int-to-long v10, v5

    invoke-static {v1, v10, v11}, Lh79;->j(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v7, v5, v6}, Lcom/google/protobuf/c0;->P(ILjava/lang/Object;Lcom/google/protobuf/n0;)V

    goto/16 :goto_4

    :pswitch_a
    const/16 v15, 0x3f

    invoke-virtual {v0, v1, v7, v4}, Lcom/google/protobuf/c0;->r(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_7

    and-int/2addr v5, v12

    int-to-long v10, v5

    invoke-static {v1, v10, v11}, Lh79;->j(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    move-object v10, v6

    check-cast v10, Lcom/google/protobuf/h;

    iget-object v10, v10, Lcom/google/protobuf/h;->a:Lcom/google/protobuf/CodedOutputStream;

    invoke-virtual {v10, v7, v5}, Lcom/google/protobuf/CodedOutputStream;->e0(IZ)V

    goto/16 :goto_4

    :pswitch_b
    const/16 v15, 0x3f

    invoke-virtual {v0, v1, v7, v4}, Lcom/google/protobuf/c0;->r(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_7

    and-int/2addr v5, v12

    int-to-long v10, v5

    invoke-static {v1, v10, v11}, Lcom/google/protobuf/c0;->z(Ljava/lang/Object;J)I

    move-result v5

    move-object v10, v6

    check-cast v10, Lcom/google/protobuf/h;

    invoke-virtual {v10, v7, v5}, Lcom/google/protobuf/h;->b(II)V

    goto/16 :goto_4

    :pswitch_c
    const/16 v15, 0x3f

    invoke-virtual {v0, v1, v7, v4}, Lcom/google/protobuf/c0;->r(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_7

    and-int/2addr v5, v12

    int-to-long v10, v5

    invoke-static {v1, v10, v11}, Lcom/google/protobuf/c0;->A(Ljava/lang/Object;J)J

    move-result-wide v10

    move-object v5, v6

    check-cast v5, Lcom/google/protobuf/h;

    invoke-virtual {v5, v7, v10, v11}, Lcom/google/protobuf/h;->c(IJ)V

    goto/16 :goto_4

    :pswitch_d
    const/16 v15, 0x3f

    invoke-virtual {v0, v1, v7, v4}, Lcom/google/protobuf/c0;->r(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_7

    and-int/2addr v5, v12

    int-to-long v10, v5

    invoke-static {v1, v10, v11}, Lcom/google/protobuf/c0;->z(Ljava/lang/Object;J)I

    move-result v5

    move-object v10, v6

    check-cast v10, Lcom/google/protobuf/h;

    invoke-virtual {v10, v7, v5}, Lcom/google/protobuf/h;->e(II)V

    goto/16 :goto_4

    :pswitch_e
    const/16 v15, 0x3f

    invoke-virtual {v0, v1, v7, v4}, Lcom/google/protobuf/c0;->r(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_7

    and-int/2addr v5, v12

    int-to-long v10, v5

    invoke-static {v1, v10, v11}, Lcom/google/protobuf/c0;->A(Ljava/lang/Object;J)J

    move-result-wide v10

    move-object v5, v6

    check-cast v5, Lcom/google/protobuf/h;

    iget-object v5, v5, Lcom/google/protobuf/h;->a:Lcom/google/protobuf/CodedOutputStream;

    invoke-virtual {v5, v7, v10, v11}, Lcom/google/protobuf/CodedOutputStream;->x0(IJ)V

    goto/16 :goto_4

    :pswitch_f
    const/16 v15, 0x3f

    invoke-virtual {v0, v1, v7, v4}, Lcom/google/protobuf/c0;->r(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_7

    and-int/2addr v5, v12

    int-to-long v10, v5

    invoke-static {v1, v10, v11}, Lcom/google/protobuf/c0;->A(Ljava/lang/Object;J)J

    move-result-wide v10

    move-object v5, v6

    check-cast v5, Lcom/google/protobuf/h;

    invoke-virtual {v5, v7, v10, v11}, Lcom/google/protobuf/h;->f(IJ)V

    goto/16 :goto_4

    :pswitch_10
    const/16 v15, 0x3f

    invoke-virtual {v0, v1, v7, v4}, Lcom/google/protobuf/c0;->r(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_7

    and-int/2addr v5, v12

    int-to-long v10, v5

    invoke-static {v1, v10, v11}, Lh79;->j(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    move-object v10, v6

    check-cast v10, Lcom/google/protobuf/h;

    iget-object v10, v10, Lcom/google/protobuf/h;->a:Lcom/google/protobuf/CodedOutputStream;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v5

    invoke-virtual {v10, v7, v5}, Lcom/google/protobuf/CodedOutputStream;->i0(II)V

    goto/16 :goto_4

    :pswitch_11
    const/16 v15, 0x3f

    invoke-virtual {v0, v1, v7, v4}, Lcom/google/protobuf/c0;->r(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_7

    and-int/2addr v5, v12

    int-to-long v10, v5

    invoke-static {v1, v10, v11}, Lh79;->j(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    move-object v5, v6

    check-cast v5, Lcom/google/protobuf/h;

    iget-object v5, v5, Lcom/google/protobuf/h;->a:Lcom/google/protobuf/CodedOutputStream;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v10, v11}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v10

    invoke-virtual {v5, v7, v10, v11}, Lcom/google/protobuf/CodedOutputStream;->k0(IJ)V

    goto/16 :goto_4

    :pswitch_12
    const/16 v15, 0x3f

    and-int/2addr v5, v12

    int-to-long v10, v5

    invoke-static {v1, v10, v11}, Lh79;->j(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v6, v7, v5, v4}, Lcom/google/protobuf/c0;->O(Lcom/google/protobuf/n0;ILjava/lang/Object;I)V

    goto/16 :goto_4

    :pswitch_13
    const/16 v15, 0x3f

    aget v7, v8, v4

    and-int/2addr v5, v12

    int-to-long v10, v5

    invoke-static {v1, v10, v11}, Lh79;->j(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-virtual {v0, v4}, Lcom/google/protobuf/c0;->m(I)Lcom/google/protobuf/f0;

    move-result-object v10

    invoke-static {v7, v5, v6, v10}, Lcom/google/protobuf/g0;->v(ILjava/util/List;Lcom/google/protobuf/n0;Lcom/google/protobuf/f0;)V

    goto/16 :goto_4

    :pswitch_14
    const/16 v15, 0x3f

    aget v7, v8, v4

    and-int/2addr v5, v12

    int-to-long v10, v5

    invoke-static {v1, v10, v11}, Lh79;->j(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v7, v5, v6, v13}, Lcom/google/protobuf/g0;->C(ILjava/util/List;Lcom/google/protobuf/n0;Z)V

    goto/16 :goto_4

    :pswitch_15
    const/16 v15, 0x3f

    aget v7, v8, v4

    and-int/2addr v5, v12

    int-to-long v10, v5

    invoke-static {v1, v10, v11}, Lh79;->j(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v7, v5, v6, v13}, Lcom/google/protobuf/g0;->B(ILjava/util/List;Lcom/google/protobuf/n0;Z)V

    goto/16 :goto_4

    :pswitch_16
    const/16 v15, 0x3f

    aget v7, v8, v4

    and-int/2addr v5, v12

    int-to-long v10, v5

    invoke-static {v1, v10, v11}, Lh79;->j(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v7, v5, v6, v13}, Lcom/google/protobuf/g0;->A(ILjava/util/List;Lcom/google/protobuf/n0;Z)V

    goto/16 :goto_4

    :pswitch_17
    const/16 v15, 0x3f

    aget v7, v8, v4

    and-int/2addr v5, v12

    int-to-long v10, v5

    invoke-static {v1, v10, v11}, Lh79;->j(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v7, v5, v6, v13}, Lcom/google/protobuf/g0;->z(ILjava/util/List;Lcom/google/protobuf/n0;Z)V

    goto/16 :goto_4

    :pswitch_18
    const/16 v15, 0x3f

    aget v7, v8, v4

    and-int/2addr v5, v12

    int-to-long v10, v5

    invoke-static {v1, v10, v11}, Lh79;->j(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v7, v5, v6, v13}, Lcom/google/protobuf/g0;->r(ILjava/util/List;Lcom/google/protobuf/n0;Z)V

    goto/16 :goto_4

    :pswitch_19
    const/16 v15, 0x3f

    aget v7, v8, v4

    and-int/2addr v5, v12

    int-to-long v10, v5

    invoke-static {v1, v10, v11}, Lh79;->j(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v7, v5, v6, v13}, Lcom/google/protobuf/g0;->E(ILjava/util/List;Lcom/google/protobuf/n0;Z)V

    goto/16 :goto_4

    :pswitch_1a
    const/16 v15, 0x3f

    aget v7, v8, v4

    and-int/2addr v5, v12

    int-to-long v10, v5

    invoke-static {v1, v10, v11}, Lh79;->j(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v7, v5, v6, v13}, Lcom/google/protobuf/g0;->o(ILjava/util/List;Lcom/google/protobuf/n0;Z)V

    goto/16 :goto_4

    :pswitch_1b
    const/16 v15, 0x3f

    aget v7, v8, v4

    and-int/2addr v5, v12

    int-to-long v10, v5

    invoke-static {v1, v10, v11}, Lh79;->j(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v7, v5, v6, v13}, Lcom/google/protobuf/g0;->s(ILjava/util/List;Lcom/google/protobuf/n0;Z)V

    goto/16 :goto_4

    :pswitch_1c
    const/16 v15, 0x3f

    aget v7, v8, v4

    and-int/2addr v5, v12

    int-to-long v10, v5

    invoke-static {v1, v10, v11}, Lh79;->j(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v7, v5, v6, v13}, Lcom/google/protobuf/g0;->t(ILjava/util/List;Lcom/google/protobuf/n0;Z)V

    goto/16 :goto_4

    :pswitch_1d
    const/16 v15, 0x3f

    aget v7, v8, v4

    and-int/2addr v5, v12

    int-to-long v10, v5

    invoke-static {v1, v10, v11}, Lh79;->j(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v7, v5, v6, v13}, Lcom/google/protobuf/g0;->w(ILjava/util/List;Lcom/google/protobuf/n0;Z)V

    goto/16 :goto_4

    :pswitch_1e
    const/16 v15, 0x3f

    aget v7, v8, v4

    and-int/2addr v5, v12

    int-to-long v10, v5

    invoke-static {v1, v10, v11}, Lh79;->j(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v7, v5, v6, v13}, Lcom/google/protobuf/g0;->F(ILjava/util/List;Lcom/google/protobuf/n0;Z)V

    goto/16 :goto_4

    :pswitch_1f
    const/16 v15, 0x3f

    aget v7, v8, v4

    and-int/2addr v5, v12

    int-to-long v10, v5

    invoke-static {v1, v10, v11}, Lh79;->j(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v7, v5, v6, v13}, Lcom/google/protobuf/g0;->x(ILjava/util/List;Lcom/google/protobuf/n0;Z)V

    goto/16 :goto_4

    :pswitch_20
    const/16 v15, 0x3f

    aget v7, v8, v4

    and-int/2addr v5, v12

    int-to-long v10, v5

    invoke-static {v1, v10, v11}, Lh79;->j(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v7, v5, v6, v13}, Lcom/google/protobuf/g0;->u(ILjava/util/List;Lcom/google/protobuf/n0;Z)V

    goto/16 :goto_4

    :pswitch_21
    const/16 v15, 0x3f

    aget v7, v8, v4

    and-int/2addr v5, v12

    int-to-long v10, v5

    invoke-static {v1, v10, v11}, Lh79;->j(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v7, v5, v6, v13}, Lcom/google/protobuf/g0;->q(ILjava/util/List;Lcom/google/protobuf/n0;Z)V

    goto/16 :goto_4

    :pswitch_22
    const/16 v15, 0x3f

    aget v7, v8, v4

    and-int/2addr v5, v12

    int-to-long v10, v5

    invoke-static {v1, v10, v11}, Lh79;->j(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v7, v5, v6, v14}, Lcom/google/protobuf/g0;->C(ILjava/util/List;Lcom/google/protobuf/n0;Z)V

    goto/16 :goto_4

    :pswitch_23
    const/16 v15, 0x3f

    aget v7, v8, v4

    and-int/2addr v5, v12

    int-to-long v10, v5

    invoke-static {v1, v10, v11}, Lh79;->j(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v7, v5, v6, v14}, Lcom/google/protobuf/g0;->B(ILjava/util/List;Lcom/google/protobuf/n0;Z)V

    goto/16 :goto_4

    :pswitch_24
    const/16 v15, 0x3f

    aget v7, v8, v4

    and-int/2addr v5, v12

    int-to-long v10, v5

    invoke-static {v1, v10, v11}, Lh79;->j(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v7, v5, v6, v14}, Lcom/google/protobuf/g0;->A(ILjava/util/List;Lcom/google/protobuf/n0;Z)V

    goto/16 :goto_4

    :pswitch_25
    const/16 v15, 0x3f

    aget v7, v8, v4

    and-int/2addr v5, v12

    int-to-long v10, v5

    invoke-static {v1, v10, v11}, Lh79;->j(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v7, v5, v6, v14}, Lcom/google/protobuf/g0;->z(ILjava/util/List;Lcom/google/protobuf/n0;Z)V

    goto/16 :goto_4

    :pswitch_26
    const/16 v15, 0x3f

    aget v7, v8, v4

    and-int/2addr v5, v12

    int-to-long v10, v5

    invoke-static {v1, v10, v11}, Lh79;->j(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v7, v5, v6, v14}, Lcom/google/protobuf/g0;->r(ILjava/util/List;Lcom/google/protobuf/n0;Z)V

    goto/16 :goto_4

    :pswitch_27
    const/16 v15, 0x3f

    aget v7, v8, v4

    and-int/2addr v5, v12

    int-to-long v10, v5

    invoke-static {v1, v10, v11}, Lh79;->j(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v7, v5, v6, v14}, Lcom/google/protobuf/g0;->E(ILjava/util/List;Lcom/google/protobuf/n0;Z)V

    goto/16 :goto_4

    :pswitch_28
    const/16 v15, 0x3f

    aget v7, v8, v4

    and-int/2addr v5, v12

    int-to-long v10, v5

    invoke-static {v1, v10, v11}, Lh79;->j(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v7, v5, v6}, Lcom/google/protobuf/g0;->p(ILjava/util/List;Lcom/google/protobuf/n0;)V

    goto/16 :goto_4

    :pswitch_29
    const/16 v15, 0x3f

    aget v7, v8, v4

    and-int/2addr v5, v12

    int-to-long v10, v5

    invoke-static {v1, v10, v11}, Lh79;->j(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-virtual {v0, v4}, Lcom/google/protobuf/c0;->m(I)Lcom/google/protobuf/f0;

    move-result-object v10

    invoke-static {v7, v5, v6, v10}, Lcom/google/protobuf/g0;->y(ILjava/util/List;Lcom/google/protobuf/n0;Lcom/google/protobuf/f0;)V

    goto/16 :goto_4

    :pswitch_2a
    const/16 v15, 0x3f

    aget v7, v8, v4

    and-int/2addr v5, v12

    int-to-long v10, v5

    invoke-static {v1, v10, v11}, Lh79;->j(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v7, v5, v6}, Lcom/google/protobuf/g0;->D(ILjava/util/List;Lcom/google/protobuf/n0;)V

    goto/16 :goto_4

    :pswitch_2b
    const/16 v15, 0x3f

    aget v7, v8, v4

    and-int/2addr v5, v12

    int-to-long v10, v5

    invoke-static {v1, v10, v11}, Lh79;->j(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v7, v5, v6, v14}, Lcom/google/protobuf/g0;->o(ILjava/util/List;Lcom/google/protobuf/n0;Z)V

    goto/16 :goto_4

    :pswitch_2c
    const/16 v15, 0x3f

    aget v7, v8, v4

    and-int/2addr v5, v12

    int-to-long v10, v5

    invoke-static {v1, v10, v11}, Lh79;->j(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v7, v5, v6, v14}, Lcom/google/protobuf/g0;->s(ILjava/util/List;Lcom/google/protobuf/n0;Z)V

    goto/16 :goto_4

    :pswitch_2d
    const/16 v15, 0x3f

    aget v7, v8, v4

    and-int/2addr v5, v12

    int-to-long v10, v5

    invoke-static {v1, v10, v11}, Lh79;->j(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v7, v5, v6, v14}, Lcom/google/protobuf/g0;->t(ILjava/util/List;Lcom/google/protobuf/n0;Z)V

    goto/16 :goto_4

    :pswitch_2e
    const/16 v15, 0x3f

    aget v7, v8, v4

    and-int/2addr v5, v12

    int-to-long v10, v5

    invoke-static {v1, v10, v11}, Lh79;->j(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v7, v5, v6, v14}, Lcom/google/protobuf/g0;->w(ILjava/util/List;Lcom/google/protobuf/n0;Z)V

    goto/16 :goto_4

    :pswitch_2f
    const/16 v15, 0x3f

    aget v7, v8, v4

    and-int/2addr v5, v12

    int-to-long v10, v5

    invoke-static {v1, v10, v11}, Lh79;->j(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v7, v5, v6, v14}, Lcom/google/protobuf/g0;->F(ILjava/util/List;Lcom/google/protobuf/n0;Z)V

    goto/16 :goto_4

    :pswitch_30
    const/16 v15, 0x3f

    aget v7, v8, v4

    and-int/2addr v5, v12

    int-to-long v10, v5

    invoke-static {v1, v10, v11}, Lh79;->j(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v7, v5, v6, v14}, Lcom/google/protobuf/g0;->x(ILjava/util/List;Lcom/google/protobuf/n0;Z)V

    goto/16 :goto_4

    :pswitch_31
    const/16 v15, 0x3f

    aget v7, v8, v4

    and-int/2addr v5, v12

    int-to-long v10, v5

    invoke-static {v1, v10, v11}, Lh79;->j(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v7, v5, v6, v14}, Lcom/google/protobuf/g0;->u(ILjava/util/List;Lcom/google/protobuf/n0;Z)V

    goto/16 :goto_4

    :pswitch_32
    const/16 v15, 0x3f

    aget v7, v8, v4

    and-int/2addr v5, v12

    int-to-long v10, v5

    invoke-static {v1, v10, v11}, Lh79;->j(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v7, v5, v6, v14}, Lcom/google/protobuf/g0;->q(ILjava/util/List;Lcom/google/protobuf/n0;Z)V

    goto/16 :goto_4

    :pswitch_33
    const/16 v15, 0x3f

    invoke-virtual {v0, v1, v4}, Lcom/google/protobuf/c0;->o(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_7

    and-int/2addr v5, v12

    int-to-long v10, v5

    invoke-static {v1, v10, v11}, Lh79;->j(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v4}, Lcom/google/protobuf/c0;->m(I)Lcom/google/protobuf/f0;

    move-result-object v10

    move-object v11, v6

    check-cast v11, Lcom/google/protobuf/h;

    invoke-virtual {v11, v7, v5, v10}, Lcom/google/protobuf/h;->d(ILjava/lang/Object;Lcom/google/protobuf/f0;)V

    goto/16 :goto_4

    :pswitch_34
    const/16 v15, 0x3f

    invoke-virtual {v0, v1, v4}, Lcom/google/protobuf/c0;->o(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_7

    and-int/2addr v5, v12

    int-to-long v10, v5

    invoke-static {v1, v10, v11}, Lh79;->i(Ljava/lang/Object;J)J

    move-result-wide v10

    move-object v5, v6

    check-cast v5, Lcom/google/protobuf/h;

    iget-object v5, v5, Lcom/google/protobuf/h;->a:Lcom/google/protobuf/CodedOutputStream;

    shl-long v16, v10, v13

    shr-long/2addr v10, v15

    xor-long v10, v16, v10

    invoke-virtual {v5, v7, v10, v11}, Lcom/google/protobuf/CodedOutputStream;->x0(IJ)V

    goto/16 :goto_4

    :pswitch_35
    const/16 v15, 0x3f

    invoke-virtual {v0, v1, v4}, Lcom/google/protobuf/c0;->o(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_7

    and-int/2addr v5, v12

    int-to-long v10, v5

    invoke-static {v1, v10, v11}, Lh79;->h(Ljava/lang/Object;J)I

    move-result v5

    move-object v10, v6

    check-cast v10, Lcom/google/protobuf/h;

    iget-object v10, v10, Lcom/google/protobuf/h;->a:Lcom/google/protobuf/CodedOutputStream;

    shl-int/lit8 v11, v5, 0x1

    shr-int/lit8 v5, v5, 0x1f

    xor-int/2addr v5, v11

    invoke-virtual {v10, v7, v5}, Lcom/google/protobuf/CodedOutputStream;->v0(II)V

    goto/16 :goto_4

    :pswitch_36
    const/16 v15, 0x3f

    invoke-virtual {v0, v1, v4}, Lcom/google/protobuf/c0;->o(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_7

    and-int/2addr v5, v12

    int-to-long v10, v5

    invoke-static {v1, v10, v11}, Lh79;->i(Ljava/lang/Object;J)J

    move-result-wide v10

    move-object v5, v6

    check-cast v5, Lcom/google/protobuf/h;

    iget-object v5, v5, Lcom/google/protobuf/h;->a:Lcom/google/protobuf/CodedOutputStream;

    invoke-virtual {v5, v7, v10, v11}, Lcom/google/protobuf/CodedOutputStream;->k0(IJ)V

    goto/16 :goto_4

    :pswitch_37
    const/16 v15, 0x3f

    invoke-virtual {v0, v1, v4}, Lcom/google/protobuf/c0;->o(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_7

    and-int/2addr v5, v12

    int-to-long v10, v5

    invoke-static {v1, v10, v11}, Lh79;->h(Ljava/lang/Object;J)I

    move-result v5

    move-object v10, v6

    check-cast v10, Lcom/google/protobuf/h;

    iget-object v10, v10, Lcom/google/protobuf/h;->a:Lcom/google/protobuf/CodedOutputStream;

    invoke-virtual {v10, v7, v5}, Lcom/google/protobuf/CodedOutputStream;->i0(II)V

    goto/16 :goto_4

    :pswitch_38
    const/16 v15, 0x3f

    invoke-virtual {v0, v1, v4}, Lcom/google/protobuf/c0;->o(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_7

    and-int/2addr v5, v12

    int-to-long v10, v5

    invoke-static {v1, v10, v11}, Lh79;->h(Ljava/lang/Object;J)I

    move-result v5

    move-object v10, v6

    check-cast v10, Lcom/google/protobuf/h;

    iget-object v10, v10, Lcom/google/protobuf/h;->a:Lcom/google/protobuf/CodedOutputStream;

    invoke-virtual {v10, v7, v5}, Lcom/google/protobuf/CodedOutputStream;->m0(II)V

    goto/16 :goto_4

    :pswitch_39
    const/16 v15, 0x3f

    invoke-virtual {v0, v1, v4}, Lcom/google/protobuf/c0;->o(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_7

    and-int/2addr v5, v12

    int-to-long v10, v5

    invoke-static {v1, v10, v11}, Lh79;->h(Ljava/lang/Object;J)I

    move-result v5

    move-object v10, v6

    check-cast v10, Lcom/google/protobuf/h;

    iget-object v10, v10, Lcom/google/protobuf/h;->a:Lcom/google/protobuf/CodedOutputStream;

    invoke-virtual {v10, v7, v5}, Lcom/google/protobuf/CodedOutputStream;->v0(II)V

    goto/16 :goto_4

    :pswitch_3a
    const/16 v15, 0x3f

    invoke-virtual {v0, v1, v4}, Lcom/google/protobuf/c0;->o(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_7

    and-int/2addr v5, v12

    int-to-long v10, v5

    invoke-static {v1, v10, v11}, Lh79;->j(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lfx0;

    move-object v10, v6

    check-cast v10, Lcom/google/protobuf/h;

    invoke-virtual {v10, v7, v5}, Lcom/google/protobuf/h;->a(ILfx0;)V

    goto/16 :goto_4

    :pswitch_3b
    const/16 v15, 0x3f

    invoke-virtual {v0, v1, v4}, Lcom/google/protobuf/c0;->o(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_7

    and-int/2addr v5, v12

    int-to-long v10, v5

    invoke-static {v1, v10, v11}, Lh79;->j(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v4}, Lcom/google/protobuf/c0;->m(I)Lcom/google/protobuf/f0;

    move-result-object v10

    move-object v11, v6

    check-cast v11, Lcom/google/protobuf/h;

    invoke-virtual {v11, v7, v5, v10}, Lcom/google/protobuf/h;->g(ILjava/lang/Object;Lcom/google/protobuf/f0;)V

    goto/16 :goto_4

    :pswitch_3c
    const/16 v15, 0x3f

    invoke-virtual {v0, v1, v4}, Lcom/google/protobuf/c0;->o(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_7

    and-int/2addr v5, v12

    int-to-long v10, v5

    invoke-static {v1, v10, v11}, Lh79;->j(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v7, v5, v6}, Lcom/google/protobuf/c0;->P(ILjava/lang/Object;Lcom/google/protobuf/n0;)V

    goto/16 :goto_4

    :pswitch_3d
    const/16 v15, 0x3f

    invoke-virtual {v0, v1, v4}, Lcom/google/protobuf/c0;->o(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_7

    and-int/2addr v5, v12

    int-to-long v10, v5

    sget-object v5, Lh79;->c:Lh79$d;

    invoke-virtual {v5, v1, v10, v11}, Lh79$d;->b(Ljava/lang/Object;J)Z

    move-result v5

    move-object v10, v6

    check-cast v10, Lcom/google/protobuf/h;

    iget-object v10, v10, Lcom/google/protobuf/h;->a:Lcom/google/protobuf/CodedOutputStream;

    invoke-virtual {v10, v7, v5}, Lcom/google/protobuf/CodedOutputStream;->e0(IZ)V

    goto/16 :goto_4

    :pswitch_3e
    const/16 v15, 0x3f

    invoke-virtual {v0, v1, v4}, Lcom/google/protobuf/c0;->o(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_7

    and-int/2addr v5, v12

    int-to-long v10, v5

    invoke-static {v1, v10, v11}, Lh79;->h(Ljava/lang/Object;J)I

    move-result v5

    move-object v10, v6

    check-cast v10, Lcom/google/protobuf/h;

    invoke-virtual {v10, v7, v5}, Lcom/google/protobuf/h;->b(II)V

    goto/16 :goto_4

    :pswitch_3f
    const/16 v15, 0x3f

    invoke-virtual {v0, v1, v4}, Lcom/google/protobuf/c0;->o(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_7

    and-int/2addr v5, v12

    int-to-long v10, v5

    invoke-static {v1, v10, v11}, Lh79;->i(Ljava/lang/Object;J)J

    move-result-wide v10

    move-object v5, v6

    check-cast v5, Lcom/google/protobuf/h;

    invoke-virtual {v5, v7, v10, v11}, Lcom/google/protobuf/h;->c(IJ)V

    goto/16 :goto_4

    :pswitch_40
    const/16 v15, 0x3f

    invoke-virtual {v0, v1, v4}, Lcom/google/protobuf/c0;->o(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_7

    and-int/2addr v5, v12

    int-to-long v10, v5

    invoke-static {v1, v10, v11}, Lh79;->h(Ljava/lang/Object;J)I

    move-result v5

    move-object v10, v6

    check-cast v10, Lcom/google/protobuf/h;

    invoke-virtual {v10, v7, v5}, Lcom/google/protobuf/h;->e(II)V

    goto :goto_4

    :pswitch_41
    const/16 v15, 0x3f

    invoke-virtual {v0, v1, v4}, Lcom/google/protobuf/c0;->o(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_7

    and-int/2addr v5, v12

    int-to-long v10, v5

    invoke-static {v1, v10, v11}, Lh79;->i(Ljava/lang/Object;J)J

    move-result-wide v10

    move-object v5, v6

    check-cast v5, Lcom/google/protobuf/h;

    iget-object v5, v5, Lcom/google/protobuf/h;->a:Lcom/google/protobuf/CodedOutputStream;

    invoke-virtual {v5, v7, v10, v11}, Lcom/google/protobuf/CodedOutputStream;->x0(IJ)V

    goto :goto_4

    :pswitch_42
    const/16 v15, 0x3f

    invoke-virtual {v0, v1, v4}, Lcom/google/protobuf/c0;->o(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_7

    and-int/2addr v5, v12

    int-to-long v10, v5

    invoke-static {v1, v10, v11}, Lh79;->i(Ljava/lang/Object;J)J

    move-result-wide v10

    move-object v5, v6

    check-cast v5, Lcom/google/protobuf/h;

    invoke-virtual {v5, v7, v10, v11}, Lcom/google/protobuf/h;->f(IJ)V

    goto :goto_4

    :pswitch_43
    const/16 v15, 0x3f

    invoke-virtual {v0, v1, v4}, Lcom/google/protobuf/c0;->o(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_7

    and-int/2addr v5, v12

    int-to-long v10, v5

    sget-object v5, Lh79;->c:Lh79$d;

    invoke-virtual {v5, v1, v10, v11}, Lh79$d;->f(Ljava/lang/Object;J)F

    move-result v5

    move-object v10, v6

    check-cast v10, Lcom/google/protobuf/h;

    iget-object v10, v10, Lcom/google/protobuf/h;->a:Lcom/google/protobuf/CodedOutputStream;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v5

    invoke-virtual {v10, v7, v5}, Lcom/google/protobuf/CodedOutputStream;->i0(II)V

    goto :goto_4

    :pswitch_44
    const/16 v15, 0x3f

    invoke-virtual {v0, v1, v4}, Lcom/google/protobuf/c0;->o(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_7

    and-int/2addr v5, v12

    int-to-long v10, v5

    sget-object v5, Lh79;->c:Lh79$d;

    invoke-virtual {v5, v1, v10, v11}, Lh79$d;->e(Ljava/lang/Object;J)D

    move-result-wide v10

    move-object v5, v6

    check-cast v5, Lcom/google/protobuf/h;

    iget-object v5, v5, Lcom/google/protobuf/h;->a:Lcom/google/protobuf/CodedOutputStream;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v10, v11}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v10

    invoke-virtual {v5, v7, v10, v11}, Lcom/google/protobuf/CodedOutputStream;->k0(IJ)V

    :cond_7
    :goto_4
    add-int/lit8 v4, v4, -0x3

    goto/16 :goto_2

    :cond_8
    :goto_5
    if-eqz v2, :cond_a

    invoke-virtual {v9, v6, v2}, Lcom/google/protobuf/k;->j(Lcom/google/protobuf/n0;Ljava/util/Map$Entry;)V

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    move-object v2, v0

    goto :goto_5

    :cond_9
    const/4 v2, 0x0

    goto :goto_5

    :cond_a
    return-void

    :cond_b
    const/16 v15, 0x3f

    if-eqz v2, :cond_c

    invoke-virtual {v9, v1}, Lcom/google/protobuf/k;->c(Ljava/lang/Object;)Lcom/google/protobuf/m;

    move-result-object v2

    iget-object v3, v2, Lcom/google/protobuf/m;->a:Lcom/google/protobuf/h0;

    invoke-virtual {v3}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_c

    invoke-virtual {v2}, Lcom/google/protobuf/m;->j()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    move-object v10, v2

    goto :goto_6

    :cond_c
    const/4 v3, 0x0

    const/4 v10, 0x0

    :goto_6
    array-length v11, v8

    sget-object v2, Lcom/google/protobuf/c0;->q:Lsun/misc/Unsafe;

    move v5, v12

    move v4, v14

    move/from16 v16, v4

    :goto_7
    if-ge v4, v11, :cond_15

    invoke-virtual {v0, v4}, Lcom/google/protobuf/c0;->N(I)I

    move-result v17

    move/from16 v18, v15

    aget v15, v8, v4

    invoke-static/range {v17 .. v17}, Lcom/google/protobuf/c0;->M(I)I

    move-result v14

    move/from16 v19, v13

    const/16 v13, 0x11

    if-gt v14, v13, :cond_f

    add-int/lit8 v13, v4, 0x2

    aget v13, v8, v13

    move-object/from16 v20, v3

    and-int v3, v13, v12

    if-eq v3, v5, :cond_e

    if-ne v3, v12, :cond_d

    move/from16 v21, v12

    move/from16 v22, v13

    const/16 v16, 0x0

    goto :goto_8

    :cond_d
    move/from16 v21, v12

    move/from16 v22, v13

    int-to-long v12, v3

    invoke-virtual {v2, v1, v12, v13}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v5

    move/from16 v16, v5

    :goto_8
    move v5, v3

    goto :goto_9

    :cond_e
    move/from16 v21, v12

    move/from16 v22, v13

    :goto_9
    ushr-int/lit8 v3, v22, 0x14

    shl-int v3, v19, v3

    move v12, v5

    move v5, v3

    move v3, v12

    move-object/from16 v12, v20

    goto :goto_a

    :cond_f
    move-object/from16 v20, v3

    move/from16 v21, v12

    move v3, v5

    move-object/from16 v12, v20

    const/4 v5, 0x0

    :goto_a
    if-eqz v12, :cond_11

    invoke-virtual {v9, v12}, Lcom/google/protobuf/k;->a(Ljava/util/Map$Entry;)I

    move-result v13

    if-gt v13, v15, :cond_11

    invoke-virtual {v9, v6, v12}, Lcom/google/protobuf/k;->j(Lcom/google/protobuf/n0;Ljava/util/Map$Entry;)V

    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_10

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map$Entry;

    goto :goto_a

    :cond_10
    const/4 v12, 0x0

    goto :goto_a

    :cond_11
    and-int v13, v17, v21

    move-object/from16 v17, v10

    move/from16 v22, v11

    int-to-long v10, v13

    packed-switch v14, :pswitch_data_1

    :cond_12
    :goto_b
    move-object v14, v2

    move v2, v4

    move/from16 v4, v16

    const/4 v13, 0x0

    goto/16 :goto_f

    :pswitch_45
    invoke-virtual {v0, v1, v15, v4}, Lcom/google/protobuf/c0;->r(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_12

    invoke-virtual {v2, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v4}, Lcom/google/protobuf/c0;->m(I)Lcom/google/protobuf/f0;

    move-result-object v10

    move-object v11, v6

    check-cast v11, Lcom/google/protobuf/h;

    invoke-virtual {v11, v15, v5, v10}, Lcom/google/protobuf/h;->d(ILjava/lang/Object;Lcom/google/protobuf/f0;)V

    goto :goto_b

    :pswitch_46
    invoke-virtual {v0, v1, v15, v4}, Lcom/google/protobuf/c0;->r(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_12

    invoke-static {v1, v10, v11}, Lcom/google/protobuf/c0;->A(Ljava/lang/Object;J)J

    move-result-wide v10

    move-object v5, v6

    check-cast v5, Lcom/google/protobuf/h;

    iget-object v5, v5, Lcom/google/protobuf/h;->a:Lcom/google/protobuf/CodedOutputStream;

    shl-long v13, v10, v19

    shr-long v10, v10, v18

    xor-long/2addr v10, v13

    invoke-virtual {v5, v15, v10, v11}, Lcom/google/protobuf/CodedOutputStream;->x0(IJ)V

    goto :goto_b

    :pswitch_47
    invoke-virtual {v0, v1, v15, v4}, Lcom/google/protobuf/c0;->r(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_12

    invoke-static {v1, v10, v11}, Lcom/google/protobuf/c0;->z(Ljava/lang/Object;J)I

    move-result v5

    move-object v10, v6

    check-cast v10, Lcom/google/protobuf/h;

    iget-object v10, v10, Lcom/google/protobuf/h;->a:Lcom/google/protobuf/CodedOutputStream;

    shl-int/lit8 v11, v5, 0x1

    shr-int/lit8 v5, v5, 0x1f

    xor-int/2addr v5, v11

    invoke-virtual {v10, v15, v5}, Lcom/google/protobuf/CodedOutputStream;->v0(II)V

    goto :goto_b

    :pswitch_48
    invoke-virtual {v0, v1, v15, v4}, Lcom/google/protobuf/c0;->r(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_12

    invoke-static {v1, v10, v11}, Lcom/google/protobuf/c0;->A(Ljava/lang/Object;J)J

    move-result-wide v10

    move-object v5, v6

    check-cast v5, Lcom/google/protobuf/h;

    iget-object v5, v5, Lcom/google/protobuf/h;->a:Lcom/google/protobuf/CodedOutputStream;

    invoke-virtual {v5, v15, v10, v11}, Lcom/google/protobuf/CodedOutputStream;->k0(IJ)V

    goto :goto_b

    :pswitch_49
    invoke-virtual {v0, v1, v15, v4}, Lcom/google/protobuf/c0;->r(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_12

    invoke-static {v1, v10, v11}, Lcom/google/protobuf/c0;->z(Ljava/lang/Object;J)I

    move-result v5

    move-object v10, v6

    check-cast v10, Lcom/google/protobuf/h;

    iget-object v10, v10, Lcom/google/protobuf/h;->a:Lcom/google/protobuf/CodedOutputStream;

    invoke-virtual {v10, v15, v5}, Lcom/google/protobuf/CodedOutputStream;->i0(II)V

    goto :goto_b

    :pswitch_4a
    invoke-virtual {v0, v1, v15, v4}, Lcom/google/protobuf/c0;->r(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_12

    invoke-static {v1, v10, v11}, Lcom/google/protobuf/c0;->z(Ljava/lang/Object;J)I

    move-result v5

    move-object v10, v6

    check-cast v10, Lcom/google/protobuf/h;

    iget-object v10, v10, Lcom/google/protobuf/h;->a:Lcom/google/protobuf/CodedOutputStream;

    invoke-virtual {v10, v15, v5}, Lcom/google/protobuf/CodedOutputStream;->m0(II)V

    goto/16 :goto_b

    :pswitch_4b
    invoke-virtual {v0, v1, v15, v4}, Lcom/google/protobuf/c0;->r(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_12

    invoke-static {v1, v10, v11}, Lcom/google/protobuf/c0;->z(Ljava/lang/Object;J)I

    move-result v5

    move-object v10, v6

    check-cast v10, Lcom/google/protobuf/h;

    iget-object v10, v10, Lcom/google/protobuf/h;->a:Lcom/google/protobuf/CodedOutputStream;

    invoke-virtual {v10, v15, v5}, Lcom/google/protobuf/CodedOutputStream;->v0(II)V

    goto/16 :goto_b

    :pswitch_4c
    invoke-virtual {v0, v1, v15, v4}, Lcom/google/protobuf/c0;->r(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_12

    invoke-virtual {v2, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lfx0;

    move-object v10, v6

    check-cast v10, Lcom/google/protobuf/h;

    invoke-virtual {v10, v15, v5}, Lcom/google/protobuf/h;->a(ILfx0;)V

    goto/16 :goto_b

    :pswitch_4d
    invoke-virtual {v0, v1, v15, v4}, Lcom/google/protobuf/c0;->r(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_12

    invoke-virtual {v2, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v4}, Lcom/google/protobuf/c0;->m(I)Lcom/google/protobuf/f0;

    move-result-object v10

    move-object v11, v6

    check-cast v11, Lcom/google/protobuf/h;

    invoke-virtual {v11, v15, v5, v10}, Lcom/google/protobuf/h;->g(ILjava/lang/Object;Lcom/google/protobuf/f0;)V

    goto/16 :goto_b

    :pswitch_4e
    invoke-virtual {v0, v1, v15, v4}, Lcom/google/protobuf/c0;->r(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_12

    invoke-virtual {v2, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v15, v5, v6}, Lcom/google/protobuf/c0;->P(ILjava/lang/Object;Lcom/google/protobuf/n0;)V

    goto/16 :goto_b

    :pswitch_4f
    invoke-virtual {v0, v1, v15, v4}, Lcom/google/protobuf/c0;->r(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_12

    invoke-static {v1, v10, v11}, Lh79;->j(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    move-object v10, v6

    check-cast v10, Lcom/google/protobuf/h;

    iget-object v10, v10, Lcom/google/protobuf/h;->a:Lcom/google/protobuf/CodedOutputStream;

    invoke-virtual {v10, v15, v5}, Lcom/google/protobuf/CodedOutputStream;->e0(IZ)V

    goto/16 :goto_b

    :pswitch_50
    invoke-virtual {v0, v1, v15, v4}, Lcom/google/protobuf/c0;->r(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_12

    invoke-static {v1, v10, v11}, Lcom/google/protobuf/c0;->z(Ljava/lang/Object;J)I

    move-result v5

    move-object v10, v6

    check-cast v10, Lcom/google/protobuf/h;

    invoke-virtual {v10, v15, v5}, Lcom/google/protobuf/h;->b(II)V

    goto/16 :goto_b

    :pswitch_51
    invoke-virtual {v0, v1, v15, v4}, Lcom/google/protobuf/c0;->r(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_12

    invoke-static {v1, v10, v11}, Lcom/google/protobuf/c0;->A(Ljava/lang/Object;J)J

    move-result-wide v10

    move-object v5, v6

    check-cast v5, Lcom/google/protobuf/h;

    invoke-virtual {v5, v15, v10, v11}, Lcom/google/protobuf/h;->c(IJ)V

    goto/16 :goto_b

    :pswitch_52
    invoke-virtual {v0, v1, v15, v4}, Lcom/google/protobuf/c0;->r(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_12

    invoke-static {v1, v10, v11}, Lcom/google/protobuf/c0;->z(Ljava/lang/Object;J)I

    move-result v5

    move-object v10, v6

    check-cast v10, Lcom/google/protobuf/h;

    invoke-virtual {v10, v15, v5}, Lcom/google/protobuf/h;->e(II)V

    goto/16 :goto_b

    :pswitch_53
    invoke-virtual {v0, v1, v15, v4}, Lcom/google/protobuf/c0;->r(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_12

    invoke-static {v1, v10, v11}, Lcom/google/protobuf/c0;->A(Ljava/lang/Object;J)J

    move-result-wide v10

    move-object v5, v6

    check-cast v5, Lcom/google/protobuf/h;

    iget-object v5, v5, Lcom/google/protobuf/h;->a:Lcom/google/protobuf/CodedOutputStream;

    invoke-virtual {v5, v15, v10, v11}, Lcom/google/protobuf/CodedOutputStream;->x0(IJ)V

    goto/16 :goto_b

    :pswitch_54
    invoke-virtual {v0, v1, v15, v4}, Lcom/google/protobuf/c0;->r(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_12

    invoke-static {v1, v10, v11}, Lcom/google/protobuf/c0;->A(Ljava/lang/Object;J)J

    move-result-wide v10

    move-object v5, v6

    check-cast v5, Lcom/google/protobuf/h;

    invoke-virtual {v5, v15, v10, v11}, Lcom/google/protobuf/h;->f(IJ)V

    goto/16 :goto_b

    :pswitch_55
    invoke-virtual {v0, v1, v15, v4}, Lcom/google/protobuf/c0;->r(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_12

    invoke-static {v1, v10, v11}, Lh79;->j(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    move-object v10, v6

    check-cast v10, Lcom/google/protobuf/h;

    iget-object v10, v10, Lcom/google/protobuf/h;->a:Lcom/google/protobuf/CodedOutputStream;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v5

    invoke-virtual {v10, v15, v5}, Lcom/google/protobuf/CodedOutputStream;->i0(II)V

    goto/16 :goto_b

    :pswitch_56
    invoke-virtual {v0, v1, v15, v4}, Lcom/google/protobuf/c0;->r(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_12

    invoke-static {v1, v10, v11}, Lh79;->j(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    move-object v5, v6

    check-cast v5, Lcom/google/protobuf/h;

    iget-object v5, v5, Lcom/google/protobuf/h;->a:Lcom/google/protobuf/CodedOutputStream;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v10, v11}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v10

    invoke-virtual {v5, v15, v10, v11}, Lcom/google/protobuf/CodedOutputStream;->k0(IJ)V

    goto/16 :goto_b

    :pswitch_57
    invoke-virtual {v2, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v6, v15, v5, v4}, Lcom/google/protobuf/c0;->O(Lcom/google/protobuf/n0;ILjava/lang/Object;I)V

    goto/16 :goto_b

    :pswitch_58
    aget v5, v8, v4

    invoke-virtual {v2, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-virtual {v0, v4}, Lcom/google/protobuf/c0;->m(I)Lcom/google/protobuf/f0;

    move-result-object v11

    invoke-static {v5, v10, v6, v11}, Lcom/google/protobuf/g0;->v(ILjava/util/List;Lcom/google/protobuf/n0;Lcom/google/protobuf/f0;)V

    goto/16 :goto_b

    :pswitch_59
    aget v5, v8, v4

    invoke-virtual {v2, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    move/from16 v13, v19

    invoke-static {v5, v10, v6, v13}, Lcom/google/protobuf/g0;->C(ILjava/util/List;Lcom/google/protobuf/n0;Z)V

    goto/16 :goto_b

    :pswitch_5a
    move/from16 v13, v19

    aget v5, v8, v4

    invoke-virtual {v2, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v5, v10, v6, v13}, Lcom/google/protobuf/g0;->B(ILjava/util/List;Lcom/google/protobuf/n0;Z)V

    goto/16 :goto_b

    :pswitch_5b
    move/from16 v13, v19

    aget v5, v8, v4

    invoke-virtual {v2, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v5, v10, v6, v13}, Lcom/google/protobuf/g0;->A(ILjava/util/List;Lcom/google/protobuf/n0;Z)V

    goto/16 :goto_b

    :pswitch_5c
    move/from16 v13, v19

    aget v5, v8, v4

    invoke-virtual {v2, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v5, v10, v6, v13}, Lcom/google/protobuf/g0;->z(ILjava/util/List;Lcom/google/protobuf/n0;Z)V

    goto/16 :goto_b

    :pswitch_5d
    move/from16 v13, v19

    aget v5, v8, v4

    invoke-virtual {v2, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v5, v10, v6, v13}, Lcom/google/protobuf/g0;->r(ILjava/util/List;Lcom/google/protobuf/n0;Z)V

    goto/16 :goto_b

    :pswitch_5e
    move/from16 v13, v19

    aget v5, v8, v4

    invoke-virtual {v2, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v5, v10, v6, v13}, Lcom/google/protobuf/g0;->E(ILjava/util/List;Lcom/google/protobuf/n0;Z)V

    goto/16 :goto_b

    :pswitch_5f
    move/from16 v13, v19

    aget v5, v8, v4

    invoke-virtual {v2, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v5, v10, v6, v13}, Lcom/google/protobuf/g0;->o(ILjava/util/List;Lcom/google/protobuf/n0;Z)V

    goto/16 :goto_b

    :pswitch_60
    move/from16 v13, v19

    aget v5, v8, v4

    invoke-virtual {v2, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v5, v10, v6, v13}, Lcom/google/protobuf/g0;->s(ILjava/util/List;Lcom/google/protobuf/n0;Z)V

    goto/16 :goto_b

    :pswitch_61
    move/from16 v13, v19

    aget v5, v8, v4

    invoke-virtual {v2, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v5, v10, v6, v13}, Lcom/google/protobuf/g0;->t(ILjava/util/List;Lcom/google/protobuf/n0;Z)V

    goto/16 :goto_b

    :pswitch_62
    move/from16 v13, v19

    aget v5, v8, v4

    invoke-virtual {v2, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v5, v10, v6, v13}, Lcom/google/protobuf/g0;->w(ILjava/util/List;Lcom/google/protobuf/n0;Z)V

    goto/16 :goto_b

    :pswitch_63
    move/from16 v13, v19

    aget v5, v8, v4

    invoke-virtual {v2, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v5, v10, v6, v13}, Lcom/google/protobuf/g0;->F(ILjava/util/List;Lcom/google/protobuf/n0;Z)V

    goto/16 :goto_b

    :pswitch_64
    move/from16 v13, v19

    aget v5, v8, v4

    invoke-virtual {v2, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v5, v10, v6, v13}, Lcom/google/protobuf/g0;->x(ILjava/util/List;Lcom/google/protobuf/n0;Z)V

    goto/16 :goto_b

    :pswitch_65
    move/from16 v13, v19

    aget v5, v8, v4

    invoke-virtual {v2, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v5, v10, v6, v13}, Lcom/google/protobuf/g0;->u(ILjava/util/List;Lcom/google/protobuf/n0;Z)V

    goto/16 :goto_b

    :pswitch_66
    move/from16 v13, v19

    aget v5, v8, v4

    invoke-virtual {v2, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v5, v10, v6, v13}, Lcom/google/protobuf/g0;->q(ILjava/util/List;Lcom/google/protobuf/n0;Z)V

    goto/16 :goto_b

    :pswitch_67
    aget v5, v8, v4

    invoke-virtual {v2, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    const/4 v13, 0x0

    invoke-static {v5, v10, v6, v13}, Lcom/google/protobuf/g0;->C(ILjava/util/List;Lcom/google/protobuf/n0;Z)V

    :goto_c
    move-object v14, v2

    move v2, v4

    move/from16 v4, v16

    :cond_13
    :goto_d
    const/16 v19, 0x1

    goto/16 :goto_f

    :pswitch_68
    const/4 v13, 0x0

    aget v5, v8, v4

    invoke-virtual {v2, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v5, v10, v6, v13}, Lcom/google/protobuf/g0;->B(ILjava/util/List;Lcom/google/protobuf/n0;Z)V

    goto :goto_c

    :pswitch_69
    const/4 v13, 0x0

    aget v5, v8, v4

    invoke-virtual {v2, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v5, v10, v6, v13}, Lcom/google/protobuf/g0;->A(ILjava/util/List;Lcom/google/protobuf/n0;Z)V

    goto :goto_c

    :pswitch_6a
    const/4 v13, 0x0

    aget v5, v8, v4

    invoke-virtual {v2, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v5, v10, v6, v13}, Lcom/google/protobuf/g0;->z(ILjava/util/List;Lcom/google/protobuf/n0;Z)V

    goto :goto_c

    :pswitch_6b
    const/4 v13, 0x0

    aget v5, v8, v4

    invoke-virtual {v2, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v5, v10, v6, v13}, Lcom/google/protobuf/g0;->r(ILjava/util/List;Lcom/google/protobuf/n0;Z)V

    goto :goto_c

    :pswitch_6c
    const/4 v13, 0x0

    aget v5, v8, v4

    invoke-virtual {v2, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v5, v10, v6, v13}, Lcom/google/protobuf/g0;->E(ILjava/util/List;Lcom/google/protobuf/n0;Z)V

    goto :goto_c

    :pswitch_6d
    aget v5, v8, v4

    invoke-virtual {v2, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v5, v10, v6}, Lcom/google/protobuf/g0;->p(ILjava/util/List;Lcom/google/protobuf/n0;)V

    :goto_e
    move-object v14, v2

    move v2, v4

    move/from16 v4, v16

    const/4 v13, 0x0

    goto :goto_d

    :pswitch_6e
    aget v5, v8, v4

    invoke-virtual {v2, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-virtual {v0, v4}, Lcom/google/protobuf/c0;->m(I)Lcom/google/protobuf/f0;

    move-result-object v11

    invoke-static {v5, v10, v6, v11}, Lcom/google/protobuf/g0;->y(ILjava/util/List;Lcom/google/protobuf/n0;Lcom/google/protobuf/f0;)V

    goto :goto_e

    :pswitch_6f
    aget v5, v8, v4

    invoke-virtual {v2, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v5, v10, v6}, Lcom/google/protobuf/g0;->D(ILjava/util/List;Lcom/google/protobuf/n0;)V

    goto :goto_e

    :pswitch_70
    aget v5, v8, v4

    invoke-virtual {v2, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    const/4 v13, 0x0

    invoke-static {v5, v10, v6, v13}, Lcom/google/protobuf/g0;->o(ILjava/util/List;Lcom/google/protobuf/n0;Z)V

    goto/16 :goto_c

    :pswitch_71
    const/4 v13, 0x0

    aget v5, v8, v4

    invoke-virtual {v2, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v5, v10, v6, v13}, Lcom/google/protobuf/g0;->s(ILjava/util/List;Lcom/google/protobuf/n0;Z)V

    goto/16 :goto_c

    :pswitch_72
    const/4 v13, 0x0

    aget v5, v8, v4

    invoke-virtual {v2, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v5, v10, v6, v13}, Lcom/google/protobuf/g0;->t(ILjava/util/List;Lcom/google/protobuf/n0;Z)V

    goto/16 :goto_c

    :pswitch_73
    const/4 v13, 0x0

    aget v5, v8, v4

    invoke-virtual {v2, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v5, v10, v6, v13}, Lcom/google/protobuf/g0;->w(ILjava/util/List;Lcom/google/protobuf/n0;Z)V

    goto/16 :goto_c

    :pswitch_74
    const/4 v13, 0x0

    aget v5, v8, v4

    invoke-virtual {v2, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v5, v10, v6, v13}, Lcom/google/protobuf/g0;->F(ILjava/util/List;Lcom/google/protobuf/n0;Z)V

    goto/16 :goto_c

    :pswitch_75
    const/4 v13, 0x0

    aget v5, v8, v4

    invoke-virtual {v2, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v5, v10, v6, v13}, Lcom/google/protobuf/g0;->x(ILjava/util/List;Lcom/google/protobuf/n0;Z)V

    goto/16 :goto_c

    :pswitch_76
    const/4 v13, 0x0

    aget v5, v8, v4

    invoke-virtual {v2, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v5, v10, v6, v13}, Lcom/google/protobuf/g0;->u(ILjava/util/List;Lcom/google/protobuf/n0;Z)V

    goto/16 :goto_c

    :pswitch_77
    const/4 v13, 0x0

    aget v5, v8, v4

    invoke-virtual {v2, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v5, v10, v6, v13}, Lcom/google/protobuf/g0;->q(ILjava/util/List;Lcom/google/protobuf/n0;Z)V

    goto/16 :goto_c

    :pswitch_78
    move-object v14, v2

    move v2, v4

    move/from16 v4, v16

    const/4 v13, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/google/protobuf/c0;->p(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_13

    invoke-virtual {v14, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v2}, Lcom/google/protobuf/c0;->m(I)Lcom/google/protobuf/f0;

    move-result-object v10

    move-object v11, v6

    check-cast v11, Lcom/google/protobuf/h;

    invoke-virtual {v11, v15, v5, v10}, Lcom/google/protobuf/h;->d(ILjava/lang/Object;Lcom/google/protobuf/f0;)V

    goto/16 :goto_d

    :pswitch_79
    move-object v14, v2

    move v2, v4

    move/from16 v4, v16

    const/4 v13, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/google/protobuf/c0;->p(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_13

    invoke-virtual {v14, v1, v10, v11}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v10

    move-object v0, v6

    check-cast v0, Lcom/google/protobuf/h;

    iget-object v0, v0, Lcom/google/protobuf/h;->a:Lcom/google/protobuf/CodedOutputStream;

    const/16 v19, 0x1

    shl-long v23, v10, v19

    shr-long v10, v10, v18

    xor-long v10, v23, v10

    invoke-virtual {v0, v15, v10, v11}, Lcom/google/protobuf/CodedOutputStream;->x0(IJ)V

    goto/16 :goto_f

    :pswitch_7a
    move-object v14, v2

    move v2, v4

    move/from16 v4, v16

    const/4 v13, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/google/protobuf/c0;->p(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_14

    invoke-virtual {v14, v1, v10, v11}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    move-object v5, v6

    check-cast v5, Lcom/google/protobuf/h;

    iget-object v5, v5, Lcom/google/protobuf/h;->a:Lcom/google/protobuf/CodedOutputStream;

    shl-int/lit8 v10, v0, 0x1

    shr-int/lit8 v0, v0, 0x1f

    xor-int/2addr v0, v10

    invoke-virtual {v5, v15, v0}, Lcom/google/protobuf/CodedOutputStream;->v0(II)V

    goto/16 :goto_f

    :pswitch_7b
    move-object v14, v2

    move v2, v4

    move/from16 v4, v16

    const/4 v13, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/google/protobuf/c0;->p(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_14

    invoke-virtual {v14, v1, v10, v11}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v10

    move-object v0, v6

    check-cast v0, Lcom/google/protobuf/h;

    iget-object v0, v0, Lcom/google/protobuf/h;->a:Lcom/google/protobuf/CodedOutputStream;

    invoke-virtual {v0, v15, v10, v11}, Lcom/google/protobuf/CodedOutputStream;->k0(IJ)V

    goto/16 :goto_f

    :pswitch_7c
    move-object v14, v2

    move v2, v4

    move/from16 v4, v16

    const/4 v13, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/google/protobuf/c0;->p(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_14

    invoke-virtual {v14, v1, v10, v11}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    move-object v5, v6

    check-cast v5, Lcom/google/protobuf/h;

    iget-object v5, v5, Lcom/google/protobuf/h;->a:Lcom/google/protobuf/CodedOutputStream;

    invoke-virtual {v5, v15, v0}, Lcom/google/protobuf/CodedOutputStream;->i0(II)V

    goto/16 :goto_f

    :pswitch_7d
    move-object v14, v2

    move v2, v4

    move/from16 v4, v16

    const/4 v13, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/google/protobuf/c0;->p(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_14

    invoke-virtual {v14, v1, v10, v11}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    move-object v5, v6

    check-cast v5, Lcom/google/protobuf/h;

    iget-object v5, v5, Lcom/google/protobuf/h;->a:Lcom/google/protobuf/CodedOutputStream;

    invoke-virtual {v5, v15, v0}, Lcom/google/protobuf/CodedOutputStream;->m0(II)V

    goto/16 :goto_f

    :pswitch_7e
    move-object v14, v2

    move v2, v4

    move/from16 v4, v16

    const/4 v13, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/google/protobuf/c0;->p(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_14

    invoke-virtual {v14, v1, v10, v11}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    move-object v5, v6

    check-cast v5, Lcom/google/protobuf/h;

    iget-object v5, v5, Lcom/google/protobuf/h;->a:Lcom/google/protobuf/CodedOutputStream;

    invoke-virtual {v5, v15, v0}, Lcom/google/protobuf/CodedOutputStream;->v0(II)V

    goto/16 :goto_f

    :pswitch_7f
    move-object v14, v2

    move v2, v4

    move/from16 v4, v16

    const/4 v13, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/google/protobuf/c0;->p(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_14

    invoke-virtual {v14, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfx0;

    move-object v5, v6

    check-cast v5, Lcom/google/protobuf/h;

    invoke-virtual {v5, v15, v0}, Lcom/google/protobuf/h;->a(ILfx0;)V

    goto/16 :goto_f

    :pswitch_80
    move-object v14, v2

    move v2, v4

    move/from16 v4, v16

    const/4 v13, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/google/protobuf/c0;->p(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_14

    invoke-virtual {v14, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v2}, Lcom/google/protobuf/c0;->m(I)Lcom/google/protobuf/f0;

    move-result-object v10

    move-object v11, v6

    check-cast v11, Lcom/google/protobuf/h;

    invoke-virtual {v11, v15, v5, v10}, Lcom/google/protobuf/h;->g(ILjava/lang/Object;Lcom/google/protobuf/f0;)V

    goto/16 :goto_f

    :pswitch_81
    move-object v14, v2

    move v2, v4

    move/from16 v4, v16

    const/4 v13, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/google/protobuf/c0;->p(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_14

    invoke-virtual {v14, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v15, v0, v6}, Lcom/google/protobuf/c0;->P(ILjava/lang/Object;Lcom/google/protobuf/n0;)V

    goto/16 :goto_f

    :pswitch_82
    move-object v14, v2

    move v2, v4

    move/from16 v4, v16

    const/4 v13, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/google/protobuf/c0;->p(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_14

    sget-object v0, Lh79;->c:Lh79$d;

    invoke-virtual {v0, v1, v10, v11}, Lh79$d;->b(Ljava/lang/Object;J)Z

    move-result v0

    move-object v5, v6

    check-cast v5, Lcom/google/protobuf/h;

    iget-object v5, v5, Lcom/google/protobuf/h;->a:Lcom/google/protobuf/CodedOutputStream;

    invoke-virtual {v5, v15, v0}, Lcom/google/protobuf/CodedOutputStream;->e0(IZ)V

    goto/16 :goto_f

    :pswitch_83
    move-object v14, v2

    move v2, v4

    move/from16 v4, v16

    const/4 v13, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/google/protobuf/c0;->p(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_14

    invoke-virtual {v14, v1, v10, v11}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    move-object v5, v6

    check-cast v5, Lcom/google/protobuf/h;

    invoke-virtual {v5, v15, v0}, Lcom/google/protobuf/h;->b(II)V

    goto/16 :goto_f

    :pswitch_84
    move-object v14, v2

    move v2, v4

    move/from16 v4, v16

    const/4 v13, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/google/protobuf/c0;->p(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_14

    invoke-virtual {v14, v1, v10, v11}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v10

    move-object v0, v6

    check-cast v0, Lcom/google/protobuf/h;

    invoke-virtual {v0, v15, v10, v11}, Lcom/google/protobuf/h;->c(IJ)V

    goto/16 :goto_f

    :pswitch_85
    move-object v14, v2

    move v2, v4

    move/from16 v4, v16

    const/4 v13, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/google/protobuf/c0;->p(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_14

    invoke-virtual {v14, v1, v10, v11}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    move-object v5, v6

    check-cast v5, Lcom/google/protobuf/h;

    invoke-virtual {v5, v15, v0}, Lcom/google/protobuf/h;->e(II)V

    goto/16 :goto_f

    :pswitch_86
    move-object v14, v2

    move v2, v4

    move/from16 v4, v16

    const/4 v13, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/google/protobuf/c0;->p(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_14

    invoke-virtual {v14, v1, v10, v11}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v10

    move-object v0, v6

    check-cast v0, Lcom/google/protobuf/h;

    iget-object v0, v0, Lcom/google/protobuf/h;->a:Lcom/google/protobuf/CodedOutputStream;

    invoke-virtual {v0, v15, v10, v11}, Lcom/google/protobuf/CodedOutputStream;->x0(IJ)V

    goto :goto_f

    :pswitch_87
    move-object v14, v2

    move v2, v4

    move/from16 v4, v16

    const/4 v13, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/google/protobuf/c0;->p(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_14

    invoke-virtual {v14, v1, v10, v11}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v10

    move-object v0, v6

    check-cast v0, Lcom/google/protobuf/h;

    invoke-virtual {v0, v15, v10, v11}, Lcom/google/protobuf/h;->f(IJ)V

    goto :goto_f

    :pswitch_88
    move-object v14, v2

    move v2, v4

    move/from16 v4, v16

    const/4 v13, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/google/protobuf/c0;->p(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_14

    sget-object v0, Lh79;->c:Lh79$d;

    invoke-virtual {v0, v1, v10, v11}, Lh79$d;->f(Ljava/lang/Object;J)F

    move-result v0

    move-object v5, v6

    check-cast v5, Lcom/google/protobuf/h;

    iget-object v5, v5, Lcom/google/protobuf/h;->a:Lcom/google/protobuf/CodedOutputStream;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    invoke-virtual {v5, v15, v0}, Lcom/google/protobuf/CodedOutputStream;->i0(II)V

    goto :goto_f

    :pswitch_89
    move-object v14, v2

    move v2, v4

    move/from16 v4, v16

    const/4 v13, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/google/protobuf/c0;->p(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_14

    sget-object v0, Lh79;->c:Lh79$d;

    invoke-virtual {v0, v1, v10, v11}, Lh79$d;->e(Ljava/lang/Object;J)D

    move-result-wide v10

    move-object v0, v6

    check-cast v0, Lcom/google/protobuf/h;

    iget-object v0, v0, Lcom/google/protobuf/h;->a:Lcom/google/protobuf/CodedOutputStream;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v10, v11}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v10

    invoke-virtual {v0, v15, v10, v11}, Lcom/google/protobuf/CodedOutputStream;->k0(IJ)V

    :cond_14
    :goto_f
    add-int/lit8 v0, v2, 0x3

    move v5, v3

    move/from16 v16, v4

    move-object v3, v12

    move-object v2, v14

    move-object/from16 v10, v17

    move/from16 v15, v18

    move/from16 v12, v21

    move/from16 v11, v22

    move v4, v0

    move v14, v13

    move/from16 v13, v19

    move-object/from16 v0, p0

    goto/16 :goto_7

    :cond_15
    move-object/from16 v20, v3

    move-object/from16 v17, v10

    :goto_10
    if-eqz v3, :cond_17

    invoke-virtual {v9, v6, v3}, Lcom/google/protobuf/k;->j(Lcom/google/protobuf/n0;Ljava/util/Map$Entry;)V

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    move-object v3, v0

    goto :goto_10

    :cond_16
    const/4 v3, 0x0

    goto :goto_10

    :cond_17
    invoke-virtual {v7, v1}, Lcom/google/protobuf/j0;->g(Ljava/lang/Object;)Lcom/google/protobuf/k0;

    move-result-object v0

    invoke-virtual {v7, v0, v6}, Lcom/google/protobuf/j0;->r(Ljava/lang/Object;Lcom/google/protobuf/n0;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
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

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_89
        :pswitch_88
        :pswitch_87
        :pswitch_86
        :pswitch_85
        :pswitch_84
        :pswitch_83
        :pswitch_82
        :pswitch_81
        :pswitch_80
        :pswitch_7f
        :pswitch_7e
        :pswitch_7d
        :pswitch_7c
        :pswitch_7b
        :pswitch_7a
        :pswitch_79
        :pswitch_78
        :pswitch_77
        :pswitch_76
        :pswitch_75
        :pswitch_74
        :pswitch_73
        :pswitch_72
        :pswitch_71
        :pswitch_70
        :pswitch_6f
        :pswitch_6e
        :pswitch_6d
        :pswitch_6c
        :pswitch_6b
        :pswitch_6a
        :pswitch_69
        :pswitch_68
        :pswitch_67
        :pswitch_66
        :pswitch_65
        :pswitch_64
        :pswitch_63
        :pswitch_62
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
    .end packed-switch
.end method

.method public final b(Lcom/google/protobuf/a;)I
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v6, 0x0

    const v7, 0xfffff

    move v2, v6

    move v4, v2

    move v8, v4

    move v3, v7

    :goto_0
    iget-object v5, v0, Lcom/google/protobuf/c0;->a:[I

    array-length v9, v5

    if-ge v2, v9, :cond_1e

    invoke-virtual {v0, v2}, Lcom/google/protobuf/c0;->N(I)I

    move-result v9

    invoke-static {v9}, Lcom/google/protobuf/c0;->M(I)I

    move-result v10

    aget v11, v5, v2

    add-int/lit8 v12, v2, 0x2

    aget v5, v5, v12

    and-int v12, v5, v7

    const/16 v13, 0x11

    const/4 v14, 0x1

    sget-object v15, Lcom/google/protobuf/c0;->q:Lsun/misc/Unsafe;

    if-gt v10, v13, :cond_2

    if-eq v12, v3, :cond_1

    if-ne v12, v7, :cond_0

    move v4, v6

    goto :goto_1

    :cond_0
    int-to-long v3, v12

    invoke-virtual {v15, v1, v3, v4}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    move v4, v3

    :goto_1
    move v3, v12

    :cond_1
    ushr-int/lit8 v5, v5, 0x14

    shl-int v5, v14, v5

    goto :goto_2

    :cond_2
    move v5, v6

    :goto_2
    and-int/2addr v9, v7

    int-to-long v12, v9

    sget-object v9, Le93;->DOUBLE_LIST_PACKED:Le93;

    invoke-virtual {v9}, Le93;->a()I

    move-result v9

    if-lt v10, v9, :cond_3

    sget-object v9, Le93;->SINT64_LIST_PACKED:Le93;

    invoke-virtual {v9}, Le93;->a()I

    move-result v9

    :cond_3
    const/16 v9, 0x3f

    packed-switch v10, :pswitch_data_0

    goto/16 :goto_20

    :pswitch_0
    invoke-virtual {v0, v1, v11, v2}, Lcom/google/protobuf/c0;->r(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_1d

    invoke-virtual {v15, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/protobuf/a0;

    invoke-virtual {v0, v2}, Lcom/google/protobuf/c0;->m(I)Lcom/google/protobuf/f0;

    move-result-object v9

    invoke-static {v11}, Lcom/google/protobuf/CodedOutputStream;->Y(I)I

    move-result v10

    mul-int/lit8 v10, v10, 0x2

    check-cast v5, Lcom/google/protobuf/a;

    invoke-virtual {v5, v9}, Lcom/google/protobuf/a;->getSerializedSize(Lcom/google/protobuf/f0;)I

    move-result v5

    :goto_3
    add-int/2addr v5, v10

    :goto_4
    add-int/2addr v8, v5

    goto/16 :goto_20

    :pswitch_1
    invoke-virtual {v0, v1, v11, v2}, Lcom/google/protobuf/c0;->r(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_1d

    invoke-static {v1, v12, v13}, Lcom/google/protobuf/c0;->A(Ljava/lang/Object;J)J

    move-result-wide v12

    invoke-static {v11}, Lcom/google/protobuf/CodedOutputStream;->Y(I)I

    move-result v5

    shl-long v10, v12, v14

    shr-long/2addr v12, v9

    xor-long v9, v10, v12

    invoke-static {v9, v10}, Lcom/google/protobuf/CodedOutputStream;->a0(J)I

    move-result v9

    :goto_5
    add-int/2addr v9, v5

    add-int/2addr v8, v9

    goto/16 :goto_20

    :pswitch_2
    invoke-virtual {v0, v1, v11, v2}, Lcom/google/protobuf/c0;->r(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_1d

    invoke-static {v1, v12, v13}, Lcom/google/protobuf/c0;->z(Ljava/lang/Object;J)I

    move-result v5

    invoke-static {v11}, Lcom/google/protobuf/CodedOutputStream;->Y(I)I

    move-result v9

    shl-int/lit8 v10, v5, 0x1

    shr-int/lit8 v5, v5, 0x1f

    xor-int/2addr v5, v10

    invoke-static {v5}, Lcom/google/protobuf/CodedOutputStream;->Z(I)I

    move-result v5

    :goto_6
    add-int/2addr v5, v9

    goto :goto_4

    :pswitch_3
    invoke-virtual {v0, v1, v11, v2}, Lcom/google/protobuf/c0;->r(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_1d

    invoke-static {v11}, Lcom/google/protobuf/CodedOutputStream;->Y(I)I

    move-result v5

    :goto_7
    add-int/lit8 v5, v5, 0x8

    goto :goto_4

    :pswitch_4
    invoke-virtual {v0, v1, v11, v2}, Lcom/google/protobuf/c0;->r(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_1d

    invoke-static {v11}, Lcom/google/protobuf/CodedOutputStream;->Y(I)I

    move-result v5

    :goto_8
    add-int/lit8 v5, v5, 0x4

    goto :goto_4

    :pswitch_5
    invoke-virtual {v0, v1, v11, v2}, Lcom/google/protobuf/c0;->r(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_1d

    invoke-static {v1, v12, v13}, Lcom/google/protobuf/c0;->z(Ljava/lang/Object;J)I

    move-result v5

    invoke-static {v11}, Lcom/google/protobuf/CodedOutputStream;->Y(I)I

    move-result v9

    invoke-static {v5}, Lcom/google/protobuf/CodedOutputStream;->V(I)I

    move-result v5

    goto :goto_6

    :pswitch_6
    invoke-virtual {v0, v1, v11, v2}, Lcom/google/protobuf/c0;->r(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_1d

    invoke-static {v1, v12, v13}, Lcom/google/protobuf/c0;->z(Ljava/lang/Object;J)I

    move-result v5

    invoke-static {v11}, Lcom/google/protobuf/CodedOutputStream;->Y(I)I

    move-result v9

    invoke-static {v5}, Lcom/google/protobuf/CodedOutputStream;->Z(I)I

    move-result v5

    goto :goto_6

    :pswitch_7
    invoke-virtual {v0, v1, v11, v2}, Lcom/google/protobuf/c0;->r(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_1d

    invoke-virtual {v15, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lfx0;

    invoke-static {v11}, Lcom/google/protobuf/CodedOutputStream;->Y(I)I

    move-result v9

    invoke-virtual {v5}, Lfx0;->size()I

    move-result v5

    invoke-static {v5, v5, v9, v8}, Lej0;->c(IIII)I

    move-result v8

    goto/16 :goto_20

    :pswitch_8
    invoke-virtual {v0, v1, v11, v2}, Lcom/google/protobuf/c0;->r(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_1d

    invoke-virtual {v15, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v2}, Lcom/google/protobuf/c0;->m(I)Lcom/google/protobuf/f0;

    move-result-object v9

    sget-object v10, Lcom/google/protobuf/g0;->a:Ljava/lang/Class;

    instance-of v10, v5, Lcom/google/protobuf/s;

    if-eqz v10, :cond_4

    check-cast v5, Lcom/google/protobuf/s;

    invoke-static {v11}, Lcom/google/protobuf/CodedOutputStream;->Y(I)I

    move-result v9

    invoke-static {v5}, Lcom/google/protobuf/CodedOutputStream;->W(Lcom/google/protobuf/s;)I

    move-result v5

    goto :goto_6

    :cond_4
    check-cast v5, Lcom/google/protobuf/a0;

    invoke-static {v11}, Lcom/google/protobuf/CodedOutputStream;->Y(I)I

    move-result v10

    check-cast v5, Lcom/google/protobuf/a;

    invoke-virtual {v5, v9}, Lcom/google/protobuf/a;->getSerializedSize(Lcom/google/protobuf/f0;)I

    move-result v5

    invoke-static {v5}, Lcom/google/protobuf/CodedOutputStream;->Z(I)I

    move-result v9

    :goto_9
    add-int/2addr v9, v5

    add-int v5, v9, v10

    goto/16 :goto_4

    :pswitch_9
    invoke-virtual {v0, v1, v11, v2}, Lcom/google/protobuf/c0;->r(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_1d

    invoke-virtual {v15, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    instance-of v9, v5, Lfx0;

    if-eqz v9, :cond_5

    check-cast v5, Lfx0;

    invoke-static {v11}, Lcom/google/protobuf/CodedOutputStream;->Y(I)I

    move-result v9

    invoke-virtual {v5}, Lfx0;->size()I

    move-result v5

    invoke-static {v5, v5, v9, v8}, Lej0;->c(IIII)I

    move-result v5

    :goto_a
    move v8, v5

    goto/16 :goto_20

    :cond_5
    check-cast v5, Ljava/lang/String;

    invoke-static {v11}, Lcom/google/protobuf/CodedOutputStream;->Y(I)I

    move-result v9

    invoke-static {v5}, Lcom/google/protobuf/CodedOutputStream;->X(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v5, v9

    add-int/2addr v5, v8

    goto :goto_a

    :pswitch_a
    invoke-virtual {v0, v1, v11, v2}, Lcom/google/protobuf/c0;->r(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_1d

    invoke-static {v11}, Lcom/google/protobuf/CodedOutputStream;->Y(I)I

    move-result v5

    add-int/2addr v5, v14

    goto/16 :goto_4

    :pswitch_b
    invoke-virtual {v0, v1, v11, v2}, Lcom/google/protobuf/c0;->r(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_1d

    invoke-static {v11}, Lcom/google/protobuf/CodedOutputStream;->Y(I)I

    move-result v5

    goto/16 :goto_8

    :pswitch_c
    invoke-virtual {v0, v1, v11, v2}, Lcom/google/protobuf/c0;->r(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_1d

    invoke-static {v11}, Lcom/google/protobuf/CodedOutputStream;->Y(I)I

    move-result v5

    goto/16 :goto_7

    :pswitch_d
    invoke-virtual {v0, v1, v11, v2}, Lcom/google/protobuf/c0;->r(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_1d

    invoke-static {v1, v12, v13}, Lcom/google/protobuf/c0;->z(Ljava/lang/Object;J)I

    move-result v5

    invoke-static {v11}, Lcom/google/protobuf/CodedOutputStream;->Y(I)I

    move-result v9

    invoke-static {v5}, Lcom/google/protobuf/CodedOutputStream;->V(I)I

    move-result v5

    goto/16 :goto_6

    :pswitch_e
    invoke-virtual {v0, v1, v11, v2}, Lcom/google/protobuf/c0;->r(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_1d

    invoke-static {v1, v12, v13}, Lcom/google/protobuf/c0;->A(Ljava/lang/Object;J)J

    move-result-wide v9

    invoke-static {v11}, Lcom/google/protobuf/CodedOutputStream;->Y(I)I

    move-result v5

    invoke-static {v9, v10}, Lcom/google/protobuf/CodedOutputStream;->a0(J)I

    move-result v9

    goto/16 :goto_5

    :pswitch_f
    invoke-virtual {v0, v1, v11, v2}, Lcom/google/protobuf/c0;->r(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_1d

    invoke-static {v1, v12, v13}, Lcom/google/protobuf/c0;->A(Ljava/lang/Object;J)J

    move-result-wide v9

    invoke-static {v11}, Lcom/google/protobuf/CodedOutputStream;->Y(I)I

    move-result v5

    invoke-static {v9, v10}, Lcom/google/protobuf/CodedOutputStream;->a0(J)I

    move-result v9

    goto/16 :goto_5

    :pswitch_10
    invoke-virtual {v0, v1, v11, v2}, Lcom/google/protobuf/c0;->r(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_1d

    invoke-static {v11}, Lcom/google/protobuf/CodedOutputStream;->Y(I)I

    move-result v5

    goto/16 :goto_8

    :pswitch_11
    invoke-virtual {v0, v1, v11, v2}, Lcom/google/protobuf/c0;->r(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_1d

    invoke-static {v11}, Lcom/google/protobuf/CodedOutputStream;->Y(I)I

    move-result v5

    goto/16 :goto_7

    :pswitch_12
    invoke-virtual {v15, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v2}, Lcom/google/protobuf/c0;->l(I)Ljava/lang/Object;

    move-result-object v9

    iget-object v10, v0, Lcom/google/protobuf/c0;->o:Lcom/google/protobuf/y;

    invoke-interface {v10, v11, v5, v9}, Lcom/google/protobuf/y;->getSerializedSize(ILjava/lang/Object;Ljava/lang/Object;)I

    move-result v5

    goto/16 :goto_4

    :pswitch_13
    invoke-virtual {v15, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-virtual {v0, v2}, Lcom/google/protobuf/c0;->m(I)Lcom/google/protobuf/f0;

    move-result-object v9

    sget-object v10, Lcom/google/protobuf/g0;->a:Ljava/lang/Class;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v10

    if-nez v10, :cond_6

    move v13, v6

    goto :goto_c

    :cond_6
    move v12, v6

    move v13, v12

    :goto_b
    if-ge v12, v10, :cond_7

    invoke-interface {v5, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/google/protobuf/a0;

    invoke-static {v11}, Lcom/google/protobuf/CodedOutputStream;->Y(I)I

    move-result v15

    mul-int/lit8 v15, v15, 0x2

    check-cast v14, Lcom/google/protobuf/a;

    invoke-virtual {v14, v9}, Lcom/google/protobuf/a;->getSerializedSize(Lcom/google/protobuf/f0;)I

    move-result v14

    add-int/2addr v14, v15

    add-int/2addr v13, v14

    add-int/lit8 v12, v12, 0x1

    goto :goto_b

    :cond_7
    :goto_c
    add-int/2addr v8, v13

    goto/16 :goto_20

    :pswitch_14
    invoke-virtual {v15, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v5}, Lcom/google/protobuf/g0;->g(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_1d

    invoke-static {v11}, Lcom/google/protobuf/CodedOutputStream;->Y(I)I

    move-result v9

    invoke-static {v5, v9, v5, v8}, Lej0;->c(IIII)I

    move-result v8

    goto/16 :goto_20

    :pswitch_15
    invoke-virtual {v15, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v5}, Lcom/google/protobuf/g0;->f(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_1d

    invoke-static {v11}, Lcom/google/protobuf/CodedOutputStream;->Y(I)I

    move-result v9

    invoke-static {v5, v9, v5, v8}, Lej0;->c(IIII)I

    move-result v8

    goto/16 :goto_20

    :pswitch_16
    invoke-virtual {v15, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    sget-object v9, Lcom/google/protobuf/g0;->a:Ljava/lang/Class;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    mul-int/lit8 v5, v5, 0x8

    if-lez v5, :cond_1d

    invoke-static {v11}, Lcom/google/protobuf/CodedOutputStream;->Y(I)I

    move-result v9

    invoke-static {v5, v9, v5, v8}, Lej0;->c(IIII)I

    move-result v8

    goto/16 :goto_20

    :pswitch_17
    invoke-virtual {v15, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    sget-object v9, Lcom/google/protobuf/g0;->a:Ljava/lang/Class;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    mul-int/lit8 v5, v5, 0x4

    if-lez v5, :cond_1d

    invoke-static {v11}, Lcom/google/protobuf/CodedOutputStream;->Y(I)I

    move-result v9

    invoke-static {v5, v9, v5, v8}, Lej0;->c(IIII)I

    move-result v8

    goto/16 :goto_20

    :pswitch_18
    invoke-virtual {v15, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v5}, Lcom/google/protobuf/g0;->a(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_1d

    invoke-static {v11}, Lcom/google/protobuf/CodedOutputStream;->Y(I)I

    move-result v9

    invoke-static {v5, v9, v5, v8}, Lej0;->c(IIII)I

    move-result v8

    goto/16 :goto_20

    :pswitch_19
    invoke-virtual {v15, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v5}, Lcom/google/protobuf/g0;->h(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_1d

    invoke-static {v11}, Lcom/google/protobuf/CodedOutputStream;->Y(I)I

    move-result v9

    invoke-static {v5, v9, v5, v8}, Lej0;->c(IIII)I

    move-result v8

    goto/16 :goto_20

    :pswitch_1a
    invoke-virtual {v15, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    sget-object v9, Lcom/google/protobuf/g0;->a:Ljava/lang/Class;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_1d

    invoke-static {v11}, Lcom/google/protobuf/CodedOutputStream;->Y(I)I

    move-result v9

    invoke-static {v5, v9, v5, v8}, Lej0;->c(IIII)I

    move-result v8

    goto/16 :goto_20

    :pswitch_1b
    invoke-virtual {v15, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    sget-object v9, Lcom/google/protobuf/g0;->a:Ljava/lang/Class;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    mul-int/lit8 v5, v5, 0x4

    if-lez v5, :cond_1d

    invoke-static {v11}, Lcom/google/protobuf/CodedOutputStream;->Y(I)I

    move-result v9

    invoke-static {v5, v9, v5, v8}, Lej0;->c(IIII)I

    move-result v8

    goto/16 :goto_20

    :pswitch_1c
    invoke-virtual {v15, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    sget-object v9, Lcom/google/protobuf/g0;->a:Ljava/lang/Class;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    mul-int/lit8 v5, v5, 0x8

    if-lez v5, :cond_1d

    invoke-static {v11}, Lcom/google/protobuf/CodedOutputStream;->Y(I)I

    move-result v9

    invoke-static {v5, v9, v5, v8}, Lej0;->c(IIII)I

    move-result v8

    goto/16 :goto_20

    :pswitch_1d
    invoke-virtual {v15, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v5}, Lcom/google/protobuf/g0;->d(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_1d

    invoke-static {v11}, Lcom/google/protobuf/CodedOutputStream;->Y(I)I

    move-result v9

    invoke-static {v5, v9, v5, v8}, Lej0;->c(IIII)I

    move-result v8

    goto/16 :goto_20

    :pswitch_1e
    invoke-virtual {v15, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v5}, Lcom/google/protobuf/g0;->i(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_1d

    invoke-static {v11}, Lcom/google/protobuf/CodedOutputStream;->Y(I)I

    move-result v9

    invoke-static {v5, v9, v5, v8}, Lej0;->c(IIII)I

    move-result v8

    goto/16 :goto_20

    :pswitch_1f
    invoke-virtual {v15, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v5}, Lcom/google/protobuf/g0;->e(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_1d

    invoke-static {v11}, Lcom/google/protobuf/CodedOutputStream;->Y(I)I

    move-result v9

    invoke-static {v5, v9, v5, v8}, Lej0;->c(IIII)I

    move-result v8

    goto/16 :goto_20

    :pswitch_20
    invoke-virtual {v15, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    sget-object v9, Lcom/google/protobuf/g0;->a:Ljava/lang/Class;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    mul-int/lit8 v5, v5, 0x4

    if-lez v5, :cond_1d

    invoke-static {v11}, Lcom/google/protobuf/CodedOutputStream;->Y(I)I

    move-result v9

    invoke-static {v5, v9, v5, v8}, Lej0;->c(IIII)I

    move-result v8

    goto/16 :goto_20

    :pswitch_21
    invoke-virtual {v15, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    sget-object v9, Lcom/google/protobuf/g0;->a:Ljava/lang/Class;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    mul-int/lit8 v5, v5, 0x8

    if-lez v5, :cond_1d

    invoke-static {v11}, Lcom/google/protobuf/CodedOutputStream;->Y(I)I

    move-result v9

    invoke-static {v5, v9, v5, v8}, Lej0;->c(IIII)I

    move-result v8

    goto/16 :goto_20

    :pswitch_22
    invoke-virtual {v15, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    sget-object v9, Lcom/google/protobuf/g0;->a:Ljava/lang/Class;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v9

    if-nez v9, :cond_8

    :goto_d
    move v10, v6

    goto :goto_f

    :cond_8
    invoke-static {v5}, Lcom/google/protobuf/g0;->g(Ljava/util/List;)I

    move-result v5

    invoke-static {v11}, Lcom/google/protobuf/CodedOutputStream;->Y(I)I

    move-result v10

    :goto_e
    mul-int/2addr v10, v9

    add-int/2addr v10, v5

    :cond_9
    :goto_f
    add-int/2addr v8, v10

    goto/16 :goto_20

    :pswitch_23
    invoke-virtual {v15, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    sget-object v9, Lcom/google/protobuf/g0;->a:Ljava/lang/Class;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v9

    if-nez v9, :cond_a

    goto :goto_d

    :cond_a
    invoke-static {v5}, Lcom/google/protobuf/g0;->f(Ljava/util/List;)I

    move-result v5

    invoke-static {v11}, Lcom/google/protobuf/CodedOutputStream;->Y(I)I

    move-result v10

    goto :goto_e

    :pswitch_24
    invoke-virtual {v15, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v11, v5}, Lcom/google/protobuf/g0;->c(ILjava/util/List;)I

    move-result v5

    goto/16 :goto_4

    :pswitch_25
    invoke-virtual {v15, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v11, v5}, Lcom/google/protobuf/g0;->b(ILjava/util/List;)I

    move-result v5

    goto/16 :goto_4

    :pswitch_26
    invoke-virtual {v15, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    sget-object v9, Lcom/google/protobuf/g0;->a:Ljava/lang/Class;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v9

    if-nez v9, :cond_b

    goto :goto_d

    :cond_b
    invoke-static {v5}, Lcom/google/protobuf/g0;->a(Ljava/util/List;)I

    move-result v5

    invoke-static {v11}, Lcom/google/protobuf/CodedOutputStream;->Y(I)I

    move-result v10

    goto :goto_e

    :pswitch_27
    invoke-virtual {v15, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    sget-object v9, Lcom/google/protobuf/g0;->a:Ljava/lang/Class;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v9

    if-nez v9, :cond_c

    goto :goto_d

    :cond_c
    invoke-static {v5}, Lcom/google/protobuf/g0;->h(Ljava/util/List;)I

    move-result v5

    invoke-static {v11}, Lcom/google/protobuf/CodedOutputStream;->Y(I)I

    move-result v10

    goto :goto_e

    :pswitch_28
    invoke-virtual {v15, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    sget-object v9, Lcom/google/protobuf/g0;->a:Ljava/lang/Class;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v9

    if-nez v9, :cond_d

    goto :goto_d

    :cond_d
    invoke-static {v11}, Lcom/google/protobuf/CodedOutputStream;->Y(I)I

    move-result v10

    mul-int/2addr v10, v9

    move v9, v6

    :goto_10
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v11

    if-ge v9, v11, :cond_9

    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lfx0;

    invoke-virtual {v11}, Lfx0;->size()I

    move-result v11

    invoke-static {v11}, Lcom/google/protobuf/CodedOutputStream;->Z(I)I

    move-result v12

    add-int/2addr v12, v11

    add-int/2addr v10, v12

    add-int/lit8 v9, v9, 0x1

    goto :goto_10

    :pswitch_29
    invoke-virtual {v15, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-virtual {v0, v2}, Lcom/google/protobuf/c0;->m(I)Lcom/google/protobuf/f0;

    move-result-object v9

    sget-object v10, Lcom/google/protobuf/g0;->a:Ljava/lang/Class;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v10

    if-nez v10, :cond_e

    move v11, v6

    goto :goto_13

    :cond_e
    invoke-static {v11}, Lcom/google/protobuf/CodedOutputStream;->Y(I)I

    move-result v11

    mul-int/2addr v11, v10

    move v12, v6

    :goto_11
    if-ge v12, v10, :cond_10

    invoke-interface {v5, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    instance-of v14, v13, Lcom/google/protobuf/s;

    if-eqz v14, :cond_f

    check-cast v13, Lcom/google/protobuf/s;

    invoke-static {v13}, Lcom/google/protobuf/CodedOutputStream;->W(Lcom/google/protobuf/s;)I

    move-result v13

    add-int/2addr v13, v11

    move v11, v13

    goto :goto_12

    :cond_f
    check-cast v13, Lcom/google/protobuf/a0;

    check-cast v13, Lcom/google/protobuf/a;

    invoke-virtual {v13, v9}, Lcom/google/protobuf/a;->getSerializedSize(Lcom/google/protobuf/f0;)I

    move-result v13

    invoke-static {v13}, Lcom/google/protobuf/CodedOutputStream;->Z(I)I

    move-result v14

    add-int/2addr v14, v13

    add-int/2addr v14, v11

    move v11, v14

    :goto_12
    add-int/lit8 v12, v12, 0x1

    goto :goto_11

    :cond_10
    :goto_13
    add-int/2addr v8, v11

    goto/16 :goto_20

    :pswitch_2a
    invoke-virtual {v15, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    sget-object v9, Lcom/google/protobuf/g0;->a:Ljava/lang/Class;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v9

    if-nez v9, :cond_11

    goto/16 :goto_d

    :cond_11
    invoke-static {v11}, Lcom/google/protobuf/CodedOutputStream;->Y(I)I

    move-result v10

    mul-int/2addr v10, v9

    instance-of v11, v5, Loo4;

    if-eqz v11, :cond_13

    check-cast v5, Loo4;

    move v11, v6

    :goto_14
    if-ge v11, v9, :cond_9

    invoke-interface {v5, v11}, Loo4;->getRaw(I)Ljava/lang/Object;

    move-result-object v12

    instance-of v13, v12, Lfx0;

    if-eqz v13, :cond_12

    check-cast v12, Lfx0;

    invoke-virtual {v12}, Lfx0;->size()I

    move-result v12

    invoke-static {v12}, Lcom/google/protobuf/CodedOutputStream;->Z(I)I

    move-result v13

    add-int/2addr v13, v12

    add-int/2addr v13, v10

    move v10, v13

    goto :goto_15

    :cond_12
    check-cast v12, Ljava/lang/String;

    invoke-static {v12}, Lcom/google/protobuf/CodedOutputStream;->X(Ljava/lang/String;)I

    move-result v12

    add-int/2addr v12, v10

    move v10, v12

    :goto_15
    add-int/lit8 v11, v11, 0x1

    goto :goto_14

    :cond_13
    move v11, v6

    :goto_16
    if-ge v11, v9, :cond_9

    invoke-interface {v5, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    instance-of v13, v12, Lfx0;

    if-eqz v13, :cond_14

    check-cast v12, Lfx0;

    invoke-virtual {v12}, Lfx0;->size()I

    move-result v12

    invoke-static {v12}, Lcom/google/protobuf/CodedOutputStream;->Z(I)I

    move-result v13

    add-int/2addr v13, v12

    add-int/2addr v13, v10

    move v10, v13

    goto :goto_17

    :cond_14
    check-cast v12, Ljava/lang/String;

    invoke-static {v12}, Lcom/google/protobuf/CodedOutputStream;->X(Ljava/lang/String;)I

    move-result v12

    add-int/2addr v12, v10

    move v10, v12

    :goto_17
    add-int/lit8 v11, v11, 0x1

    goto :goto_16

    :pswitch_2b
    invoke-virtual {v15, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    sget-object v9, Lcom/google/protobuf/g0;->a:Ljava/lang/Class;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_15

    move v9, v6

    goto :goto_18

    :cond_15
    invoke-static {v11}, Lcom/google/protobuf/CodedOutputStream;->Y(I)I

    move-result v9

    add-int/2addr v9, v14

    mul-int/2addr v9, v5

    :goto_18
    add-int/2addr v8, v9

    goto/16 :goto_20

    :pswitch_2c
    invoke-virtual {v15, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v11, v5}, Lcom/google/protobuf/g0;->b(ILjava/util/List;)I

    move-result v5

    goto/16 :goto_4

    :pswitch_2d
    invoke-virtual {v15, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v11, v5}, Lcom/google/protobuf/g0;->c(ILjava/util/List;)I

    move-result v5

    goto/16 :goto_4

    :pswitch_2e
    invoke-virtual {v15, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    sget-object v9, Lcom/google/protobuf/g0;->a:Ljava/lang/Class;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v9

    if-nez v9, :cond_16

    goto/16 :goto_d

    :cond_16
    invoke-static {v5}, Lcom/google/protobuf/g0;->d(Ljava/util/List;)I

    move-result v5

    invoke-static {v11}, Lcom/google/protobuf/CodedOutputStream;->Y(I)I

    move-result v10

    goto/16 :goto_e

    :pswitch_2f
    invoke-virtual {v15, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    sget-object v9, Lcom/google/protobuf/g0;->a:Ljava/lang/Class;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v9

    if-nez v9, :cond_17

    goto/16 :goto_d

    :cond_17
    invoke-static {v5}, Lcom/google/protobuf/g0;->i(Ljava/util/List;)I

    move-result v5

    invoke-static {v11}, Lcom/google/protobuf/CodedOutputStream;->Y(I)I

    move-result v10

    goto/16 :goto_e

    :pswitch_30
    invoke-virtual {v15, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    sget-object v9, Lcom/google/protobuf/g0;->a:Ljava/lang/Class;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v9

    if-nez v9, :cond_18

    goto/16 :goto_d

    :cond_18
    invoke-static {v5}, Lcom/google/protobuf/g0;->e(Ljava/util/List;)I

    move-result v9

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v11}, Lcom/google/protobuf/CodedOutputStream;->Y(I)I

    move-result v10

    mul-int/2addr v10, v5

    add-int/2addr v10, v9

    goto/16 :goto_f

    :pswitch_31
    invoke-virtual {v15, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v11, v5}, Lcom/google/protobuf/g0;->b(ILjava/util/List;)I

    move-result v5

    goto/16 :goto_4

    :pswitch_32
    invoke-virtual {v15, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v11, v5}, Lcom/google/protobuf/g0;->c(ILjava/util/List;)I

    move-result v5

    goto/16 :goto_4

    :pswitch_33
    invoke-virtual/range {v0 .. v5}, Lcom/google/protobuf/c0;->p(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_1d

    invoke-virtual {v15, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/protobuf/a0;

    invoke-virtual {v0, v2}, Lcom/google/protobuf/c0;->m(I)Lcom/google/protobuf/f0;

    move-result-object v9

    invoke-static {v11}, Lcom/google/protobuf/CodedOutputStream;->Y(I)I

    move-result v10

    mul-int/lit8 v10, v10, 0x2

    check-cast v5, Lcom/google/protobuf/a;

    invoke-virtual {v5, v9}, Lcom/google/protobuf/a;->getSerializedSize(Lcom/google/protobuf/f0;)I

    move-result v5

    goto/16 :goto_3

    :pswitch_34
    invoke-virtual/range {v0 .. v5}, Lcom/google/protobuf/c0;->p(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_19

    invoke-virtual {v15, v1, v12, v13}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v12

    invoke-static {v11}, Lcom/google/protobuf/CodedOutputStream;->Y(I)I

    move-result v0

    shl-long v10, v12, v14

    shr-long/2addr v12, v9

    xor-long v9, v10, v12

    invoke-static {v9, v10}, Lcom/google/protobuf/CodedOutputStream;->a0(J)I

    move-result v5

    :goto_19
    add-int/2addr v5, v0

    add-int/2addr v8, v5

    :cond_19
    :goto_1a
    move-object/from16 v0, p0

    goto/16 :goto_20

    :pswitch_35
    invoke-virtual/range {v0 .. v5}, Lcom/google/protobuf/c0;->p(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_19

    invoke-virtual {v15, v1, v12, v13}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    invoke-static {v11}, Lcom/google/protobuf/CodedOutputStream;->Y(I)I

    move-result v5

    shl-int/lit8 v9, v0, 0x1

    shr-int/lit8 v0, v0, 0x1f

    xor-int/2addr v0, v9

    invoke-static {v0}, Lcom/google/protobuf/CodedOutputStream;->Z(I)I

    move-result v0

    :goto_1b
    add-int/2addr v0, v5

    add-int/2addr v8, v0

    goto :goto_1a

    :pswitch_36
    invoke-virtual/range {v0 .. v5}, Lcom/google/protobuf/c0;->p(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_1a

    invoke-static {v11}, Lcom/google/protobuf/CodedOutputStream;->Y(I)I

    move-result v0

    :goto_1c
    add-int/lit8 v0, v0, 0x8

    :goto_1d
    add-int/2addr v8, v0

    :cond_1a
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    goto/16 :goto_20

    :pswitch_37
    invoke-virtual/range {v0 .. v5}, Lcom/google/protobuf/c0;->p(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_1a

    invoke-static {v11}, Lcom/google/protobuf/CodedOutputStream;->Y(I)I

    move-result v0

    :goto_1e
    add-int/lit8 v0, v0, 0x4

    goto :goto_1d

    :pswitch_38
    invoke-virtual/range {v0 .. v5}, Lcom/google/protobuf/c0;->p(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_19

    invoke-virtual {v15, v1, v12, v13}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    invoke-static {v11}, Lcom/google/protobuf/CodedOutputStream;->Y(I)I

    move-result v5

    invoke-static {v0}, Lcom/google/protobuf/CodedOutputStream;->V(I)I

    move-result v0

    goto :goto_1b

    :pswitch_39
    invoke-virtual/range {v0 .. v5}, Lcom/google/protobuf/c0;->p(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_19

    invoke-virtual {v15, v1, v12, v13}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    invoke-static {v11}, Lcom/google/protobuf/CodedOutputStream;->Y(I)I

    move-result v5

    invoke-static {v0}, Lcom/google/protobuf/CodedOutputStream;->Z(I)I

    move-result v0

    goto :goto_1b

    :pswitch_3a
    invoke-virtual/range {v0 .. v5}, Lcom/google/protobuf/c0;->p(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_19

    invoke-virtual {v15, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfx0;

    invoke-static {v11}, Lcom/google/protobuf/CodedOutputStream;->Y(I)I

    move-result v5

    invoke-virtual {v0}, Lfx0;->size()I

    move-result v0

    invoke-static {v0, v0, v5, v8}, Lej0;->c(IIII)I

    move-result v8

    goto :goto_1a

    :pswitch_3b
    invoke-virtual/range {v0 .. v5}, Lcom/google/protobuf/c0;->p(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_1d

    invoke-virtual {v15, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v2}, Lcom/google/protobuf/c0;->m(I)Lcom/google/protobuf/f0;

    move-result-object v9

    sget-object v10, Lcom/google/protobuf/g0;->a:Ljava/lang/Class;

    instance-of v10, v5, Lcom/google/protobuf/s;

    if-eqz v10, :cond_1b

    check-cast v5, Lcom/google/protobuf/s;

    invoke-static {v11}, Lcom/google/protobuf/CodedOutputStream;->Y(I)I

    move-result v9

    invoke-static {v5}, Lcom/google/protobuf/CodedOutputStream;->W(Lcom/google/protobuf/s;)I

    move-result v5

    goto/16 :goto_6

    :cond_1b
    check-cast v5, Lcom/google/protobuf/a0;

    invoke-static {v11}, Lcom/google/protobuf/CodedOutputStream;->Y(I)I

    move-result v10

    check-cast v5, Lcom/google/protobuf/a;

    invoke-virtual {v5, v9}, Lcom/google/protobuf/a;->getSerializedSize(Lcom/google/protobuf/f0;)I

    move-result v5

    invoke-static {v5}, Lcom/google/protobuf/CodedOutputStream;->Z(I)I

    move-result v9

    goto/16 :goto_9

    :pswitch_3c
    invoke-virtual/range {v0 .. v5}, Lcom/google/protobuf/c0;->p(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_19

    invoke-virtual {v15, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    instance-of v5, v0, Lfx0;

    if-eqz v5, :cond_1c

    check-cast v0, Lfx0;

    invoke-static {v11}, Lcom/google/protobuf/CodedOutputStream;->Y(I)I

    move-result v5

    invoke-virtual {v0}, Lfx0;->size()I

    move-result v0

    invoke-static {v0, v0, v5, v8}, Lej0;->c(IIII)I

    move-result v0

    :goto_1f
    move v8, v0

    goto/16 :goto_1a

    :cond_1c
    check-cast v0, Ljava/lang/String;

    invoke-static {v11}, Lcom/google/protobuf/CodedOutputStream;->Y(I)I

    move-result v5

    invoke-static {v0}, Lcom/google/protobuf/CodedOutputStream;->X(Ljava/lang/String;)I

    move-result v0

    add-int/2addr v0, v5

    add-int/2addr v0, v8

    goto :goto_1f

    :pswitch_3d
    invoke-virtual/range {v0 .. v5}, Lcom/google/protobuf/c0;->p(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_1a

    invoke-static {v11}, Lcom/google/protobuf/CodedOutputStream;->Y(I)I

    move-result v0

    add-int/2addr v0, v14

    goto/16 :goto_1d

    :pswitch_3e
    invoke-virtual/range {v0 .. v5}, Lcom/google/protobuf/c0;->p(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_1a

    invoke-static {v11}, Lcom/google/protobuf/CodedOutputStream;->Y(I)I

    move-result v0

    goto/16 :goto_1e

    :pswitch_3f
    invoke-virtual/range {v0 .. v5}, Lcom/google/protobuf/c0;->p(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_1a

    invoke-static {v11}, Lcom/google/protobuf/CodedOutputStream;->Y(I)I

    move-result v0

    goto/16 :goto_1c

    :pswitch_40
    invoke-virtual/range {v0 .. v5}, Lcom/google/protobuf/c0;->p(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_19

    invoke-virtual {v15, v1, v12, v13}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    invoke-static {v11}, Lcom/google/protobuf/CodedOutputStream;->Y(I)I

    move-result v5

    invoke-static {v0}, Lcom/google/protobuf/CodedOutputStream;->V(I)I

    move-result v0

    goto/16 :goto_1b

    :pswitch_41
    invoke-virtual/range {v0 .. v5}, Lcom/google/protobuf/c0;->p(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_19

    invoke-virtual {v15, v1, v12, v13}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v9

    invoke-static {v11}, Lcom/google/protobuf/CodedOutputStream;->Y(I)I

    move-result v0

    invoke-static {v9, v10}, Lcom/google/protobuf/CodedOutputStream;->a0(J)I

    move-result v5

    goto/16 :goto_19

    :pswitch_42
    invoke-virtual/range {v0 .. v5}, Lcom/google/protobuf/c0;->p(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_19

    invoke-virtual {v15, v1, v12, v13}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v9

    invoke-static {v11}, Lcom/google/protobuf/CodedOutputStream;->Y(I)I

    move-result v0

    invoke-static {v9, v10}, Lcom/google/protobuf/CodedOutputStream;->a0(J)I

    move-result v5

    goto/16 :goto_19

    :pswitch_43
    invoke-virtual/range {v0 .. v5}, Lcom/google/protobuf/c0;->p(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_1a

    invoke-static {v11}, Lcom/google/protobuf/CodedOutputStream;->Y(I)I

    move-result v0

    goto/16 :goto_1e

    :pswitch_44
    invoke-virtual/range {v0 .. v5}, Lcom/google/protobuf/c0;->p(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_1d

    invoke-static {v11}, Lcom/google/protobuf/CodedOutputStream;->Y(I)I

    move-result v5

    goto/16 :goto_7

    :cond_1d
    :goto_20
    add-int/lit8 v2, v2, 0x3

    goto/16 :goto_0

    :cond_1e
    iget-object v2, v0, Lcom/google/protobuf/c0;->m:Lcom/google/protobuf/j0;

    invoke-virtual {v2, v1}, Lcom/google/protobuf/j0;->g(Ljava/lang/Object;)Lcom/google/protobuf/k0;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/protobuf/j0;->h(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v2, v8

    iget-boolean v3, v0, Lcom/google/protobuf/c0;->f:Z

    if-eqz v3, :cond_21

    iget-object v0, v0, Lcom/google/protobuf/c0;->n:Lcom/google/protobuf/k;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/k;->c(Ljava/lang/Object;)Lcom/google/protobuf/m;

    move-result-object v0

    iget-object v0, v0, Lcom/google/protobuf/m;->a:Lcom/google/protobuf/h0;

    move v1, v6

    :goto_21
    iget-object v3, v0, Lcom/google/protobuf/i0;->c:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v6, v3, :cond_1f

    invoke-virtual {v0, v6}, Lcom/google/protobuf/i0;->c(I)Ljava/util/Map$Entry;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/m$b;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/google/protobuf/m;->e(Lcom/google/protobuf/m$b;Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v1, v3

    add-int/lit8 v6, v6, 0x1

    goto :goto_21

    :cond_1f
    invoke-virtual {v0}, Lcom/google/protobuf/i0;->d()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_22
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/m$b;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/google/protobuf/m;->e(Lcom/google/protobuf/m$b;Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v1, v3

    goto :goto_22

    :cond_20
    add-int/2addr v2, v1

    :cond_21
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
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

.method public final c(Ljava/lang/Object;[BIILcom/google/protobuf/d$b;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BII",
            "Lcom/google/protobuf/d$b;",
            ")V"
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/google/protobuf/c0;->B(Ljava/lang/Object;[BIIILcom/google/protobuf/d$b;)I

    return-void
.end method

.method public final d(Lcom/google/protobuf/o;)I
    .locals 11

    iget-object v0, p0, Lcom/google/protobuf/c0;->a:[I

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_3

    invoke-virtual {p0, v2}, Lcom/google/protobuf/c0;->N(I)I

    move-result v4

    aget v5, v0, v2

    const v6, 0xfffff

    and-int/2addr v6, v4

    int-to-long v6, v6

    invoke-static {v4}, Lcom/google/protobuf/c0;->M(I)I

    move-result v4

    const/16 v8, 0x4d5

    const/16 v9, 0x4cf

    const/16 v10, 0x25

    packed-switch v4, :pswitch_data_0

    goto/16 :goto_4

    :pswitch_0
    invoke-virtual {p0, p1, v5, v2}, Lcom/google/protobuf/c0;->r(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {p1, v6, v7}, Lh79;->j(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    mul-int/lit8 v3, v3, 0x35

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    :goto_1
    add-int/2addr v4, v3

    move v3, v4

    goto/16 :goto_4

    :pswitch_1
    invoke-virtual {p0, p1, v5, v2}, Lcom/google/protobuf/c0;->r(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/c0;->A(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/protobuf/q;->b(J)I

    move-result v4

    goto :goto_1

    :pswitch_2
    invoke-virtual {p0, p1, v5, v2}, Lcom/google/protobuf/c0;->r(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/c0;->z(Ljava/lang/Object;J)I

    move-result v4

    goto :goto_1

    :pswitch_3
    invoke-virtual {p0, p1, v5, v2}, Lcom/google/protobuf/c0;->r(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/c0;->A(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/protobuf/q;->b(J)I

    move-result v4

    goto :goto_1

    :pswitch_4
    invoke-virtual {p0, p1, v5, v2}, Lcom/google/protobuf/c0;->r(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/c0;->z(Ljava/lang/Object;J)I

    move-result v4

    goto :goto_1

    :pswitch_5
    invoke-virtual {p0, p1, v5, v2}, Lcom/google/protobuf/c0;->r(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/c0;->z(Ljava/lang/Object;J)I

    move-result v4

    goto :goto_1

    :pswitch_6
    invoke-virtual {p0, p1, v5, v2}, Lcom/google/protobuf/c0;->r(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/c0;->z(Ljava/lang/Object;J)I

    move-result v4

    goto :goto_1

    :pswitch_7
    invoke-virtual {p0, p1, v5, v2}, Lcom/google/protobuf/c0;->r(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    invoke-static {p1, v6, v7}, Lh79;->j(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    goto :goto_1

    :pswitch_8
    invoke-virtual {p0, p1, v5, v2}, Lcom/google/protobuf/c0;->r(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {p1, v6, v7}, Lh79;->j(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    mul-int/lit8 v3, v3, 0x35

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    goto :goto_1

    :pswitch_9
    invoke-virtual {p0, p1, v5, v2}, Lcom/google/protobuf/c0;->r(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    invoke-static {p1, v6, v7}, Lh79;->j(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    goto/16 :goto_1

    :pswitch_a
    invoke-virtual {p0, p1, v5, v2}, Lcom/google/protobuf/c0;->r(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    invoke-static {p1, v6, v7}, Lh79;->j(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    sget-object v5, Lcom/google/protobuf/q;->a:Ljava/nio/charset/Charset;

    if-eqz v4, :cond_0

    :goto_2
    move v8, v9

    :cond_0
    add-int/2addr v8, v3

    move v3, v8

    goto/16 :goto_4

    :pswitch_b
    invoke-virtual {p0, p1, v5, v2}, Lcom/google/protobuf/c0;->r(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/c0;->z(Ljava/lang/Object;J)I

    move-result v4

    goto/16 :goto_1

    :pswitch_c
    invoke-virtual {p0, p1, v5, v2}, Lcom/google/protobuf/c0;->r(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/c0;->A(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/protobuf/q;->b(J)I

    move-result v4

    goto/16 :goto_1

    :pswitch_d
    invoke-virtual {p0, p1, v5, v2}, Lcom/google/protobuf/c0;->r(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/c0;->z(Ljava/lang/Object;J)I

    move-result v4

    goto/16 :goto_1

    :pswitch_e
    invoke-virtual {p0, p1, v5, v2}, Lcom/google/protobuf/c0;->r(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/c0;->A(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/protobuf/q;->b(J)I

    move-result v4

    goto/16 :goto_1

    :pswitch_f
    invoke-virtual {p0, p1, v5, v2}, Lcom/google/protobuf/c0;->r(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/c0;->A(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/protobuf/q;->b(J)I

    move-result v4

    goto/16 :goto_1

    :pswitch_10
    invoke-virtual {p0, p1, v5, v2}, Lcom/google/protobuf/c0;->r(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    invoke-static {p1, v6, v7}, Lh79;->j(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    goto/16 :goto_1

    :pswitch_11
    invoke-virtual {p0, p1, v5, v2}, Lcom/google/protobuf/c0;->r(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    invoke-static {p1, v6, v7}, Lh79;->j(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/protobuf/q;->b(J)I

    move-result v4

    goto/16 :goto_1

    :pswitch_12
    mul-int/lit8 v3, v3, 0x35

    invoke-static {p1, v6, v7}, Lh79;->j(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    goto/16 :goto_1

    :pswitch_13
    mul-int/lit8 v3, v3, 0x35

    invoke-static {p1, v6, v7}, Lh79;->j(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    goto/16 :goto_1

    :pswitch_14
    invoke-static {p1, v6, v7}, Lh79;->j(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v10

    :cond_1
    :goto_3
    mul-int/lit8 v3, v3, 0x35

    add-int/2addr v3, v10

    goto/16 :goto_4

    :pswitch_15
    mul-int/lit8 v3, v3, 0x35

    invoke-static {p1, v6, v7}, Lh79;->i(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/protobuf/q;->b(J)I

    move-result v4

    goto/16 :goto_1

    :pswitch_16
    mul-int/lit8 v3, v3, 0x35

    invoke-static {p1, v6, v7}, Lh79;->h(Ljava/lang/Object;J)I

    move-result v4

    goto/16 :goto_1

    :pswitch_17
    mul-int/lit8 v3, v3, 0x35

    invoke-static {p1, v6, v7}, Lh79;->i(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/protobuf/q;->b(J)I

    move-result v4

    goto/16 :goto_1

    :pswitch_18
    mul-int/lit8 v3, v3, 0x35

    invoke-static {p1, v6, v7}, Lh79;->h(Ljava/lang/Object;J)I

    move-result v4

    goto/16 :goto_1

    :pswitch_19
    mul-int/lit8 v3, v3, 0x35

    invoke-static {p1, v6, v7}, Lh79;->h(Ljava/lang/Object;J)I

    move-result v4

    goto/16 :goto_1

    :pswitch_1a
    mul-int/lit8 v3, v3, 0x35

    invoke-static {p1, v6, v7}, Lh79;->h(Ljava/lang/Object;J)I

    move-result v4

    goto/16 :goto_1

    :pswitch_1b
    mul-int/lit8 v3, v3, 0x35

    invoke-static {p1, v6, v7}, Lh79;->j(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    goto/16 :goto_1

    :pswitch_1c
    invoke-static {p1, v6, v7}, Lh79;->j(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v10

    goto :goto_3

    :pswitch_1d
    mul-int/lit8 v3, v3, 0x35

    invoke-static {p1, v6, v7}, Lh79;->j(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    goto/16 :goto_1

    :pswitch_1e
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Lh79;->c:Lh79$d;

    invoke-virtual {v4, p1, v6, v7}, Lh79$d;->b(Ljava/lang/Object;J)Z

    move-result v4

    sget-object v5, Lcom/google/protobuf/q;->a:Ljava/nio/charset/Charset;

    if-eqz v4, :cond_0

    goto/16 :goto_2

    :pswitch_1f
    mul-int/lit8 v3, v3, 0x35

    invoke-static {p1, v6, v7}, Lh79;->h(Ljava/lang/Object;J)I

    move-result v4

    goto/16 :goto_1

    :pswitch_20
    mul-int/lit8 v3, v3, 0x35

    invoke-static {p1, v6, v7}, Lh79;->i(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/protobuf/q;->b(J)I

    move-result v4

    goto/16 :goto_1

    :pswitch_21
    mul-int/lit8 v3, v3, 0x35

    invoke-static {p1, v6, v7}, Lh79;->h(Ljava/lang/Object;J)I

    move-result v4

    goto/16 :goto_1

    :pswitch_22
    mul-int/lit8 v3, v3, 0x35

    invoke-static {p1, v6, v7}, Lh79;->i(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/protobuf/q;->b(J)I

    move-result v4

    goto/16 :goto_1

    :pswitch_23
    mul-int/lit8 v3, v3, 0x35

    invoke-static {p1, v6, v7}, Lh79;->i(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/protobuf/q;->b(J)I

    move-result v4

    goto/16 :goto_1

    :pswitch_24
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Lh79;->c:Lh79$d;

    invoke-virtual {v4, p1, v6, v7}, Lh79$d;->f(Ljava/lang/Object;J)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    goto/16 :goto_1

    :pswitch_25
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Lh79;->c:Lh79$d;

    invoke-virtual {v4, p1, v6, v7}, Lh79$d;->e(Ljava/lang/Object;J)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/protobuf/q;->b(J)I

    move-result v4

    goto/16 :goto_1

    :cond_2
    :goto_4
    add-int/lit8 v2, v2, 0x3

    goto/16 :goto_0

    :cond_3
    mul-int/lit8 v3, v3, 0x35

    iget-object v0, p0, Lcom/google/protobuf/c0;->m:Lcom/google/protobuf/j0;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/j0;->g(Ljava/lang/Object;)Lcom/google/protobuf/k0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/k0;->hashCode()I

    move-result v0

    add-int/2addr v0, v3

    iget-boolean v1, p0, Lcom/google/protobuf/c0;->f:Z

    if-eqz v1, :cond_4

    mul-int/lit8 v0, v0, 0x35

    iget-object p0, p0, Lcom/google/protobuf/c0;->n:Lcom/google/protobuf/k;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/k;->c(Ljava/lang/Object;)Lcom/google/protobuf/m;

    move-result-object p0

    iget-object p0, p0, Lcom/google/protobuf/m;->a:Lcom/google/protobuf/h0;

    invoke-virtual {p0}, Lcom/google/protobuf/i0;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0

    :cond_4
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_12
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

.method public final e(Ljava/lang/Object;Lcom/google/protobuf/g;Lcom/google/protobuf/j;)V
    .locals 20

    move-object/from16 v1, p0

    move-object/from16 v4, p3

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static/range {p1 .. p1}, Lcom/google/protobuf/c0;->h(Ljava/lang/Object;)V

    iget-object v5, v1, Lcom/google/protobuf/c0;->m:Lcom/google/protobuf/j0;

    iget-object v8, v1, Lcom/google/protobuf/c0;->h:[I

    iget v9, v1, Lcom/google/protobuf/c0;->j:I

    iget v10, v1, Lcom/google/protobuf/c0;->i:I

    const/4 v6, 0x0

    const/4 v12, 0x0

    :goto_0
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Lcom/google/protobuf/g;->a()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1a

    :try_start_1
    iget v0, v1, Lcom/google/protobuf/c0;->c:I

    const/4 v13, 0x0

    if-lt v2, v0, :cond_0

    iget v0, v1, Lcom/google/protobuf/c0;->d:I

    if-gt v2, v0, :cond_0

    invoke-virtual {v1, v2, v13}, Lcom/google/protobuf/c0;->J(II)I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_19

    :goto_1
    move v3, v0

    goto :goto_3

    :goto_2
    move-object/from16 v2, p1

    move-object v15, v6

    goto/16 :goto_9

    :cond_0
    const/4 v0, -0x1

    goto :goto_1

    :goto_3
    if-gez v3, :cond_9

    const v0, 0x7fffffff

    if-ne v2, v0, :cond_2

    move-object v4, v6

    :goto_4
    if-ge v10, v9, :cond_1

    aget v3, v8, v10

    move-object/from16 v6, p1

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/google/protobuf/c0;->j(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/protobuf/j0;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v14, v1

    move-object v1, v2

    add-int/lit8 v10, v10, 0x1

    move-object v1, v14

    goto :goto_4

    :cond_1
    move-object/from16 v1, p1

    if-eqz v4, :cond_14

    invoke-virtual {v5, v1, v4}, Lcom/google/protobuf/j0;->n(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_28

    :cond_2
    move-object v14, v1

    move-object/from16 v1, p1

    :try_start_2
    iget-boolean v0, v14, Lcom/google/protobuf/c0;->f:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    move v3, v0

    iget-object v0, v14, Lcom/google/protobuf/c0;->n:Lcom/google/protobuf/k;

    if-nez v3, :cond_3

    const/4 v3, 0x0

    goto :goto_5

    :cond_3
    :try_start_3
    iget-object v3, v14, Lcom/google/protobuf/c0;->e:Lcom/google/protobuf/a0;

    invoke-virtual {v0, v4, v3, v2}, Lcom/google/protobuf/k;->b(Lcom/google/protobuf/j;Lcom/google/protobuf/a0;I)Lcom/google/protobuf/o$e;

    move-result-object v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    move-object v3, v2

    :goto_5
    if-eqz v3, :cond_5

    if-nez v12, :cond_4

    :try_start_4
    invoke-virtual {v0, v1}, Lcom/google/protobuf/k;->d(Ljava/lang/Object;)Lcom/google/protobuf/m;

    move-result-object v12
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_4
    move-object/from16 v2, p2

    move-object v7, v5

    move-object v5, v12

    goto :goto_7

    :catchall_0
    move-exception v0

    move-object v2, v1

    :goto_6
    move/from16 v19, v10

    goto/16 :goto_2a

    :goto_7
    :try_start_5
    invoke-virtual/range {v0 .. v7}, Lcom/google/protobuf/k;->g(Ljava/lang/Object;Lcom/google/protobuf/g;Ljava/lang/Object;Lcom/google/protobuf/j;Lcom/google/protobuf/m;Ljava/lang/Object;Lcom/google/protobuf/j0;)Ljava/lang/Object;

    move-result-object v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-object v12, v5

    move-object v5, v4

    move-object v4, v2

    move-object v2, v1

    :goto_8
    move-object v4, v5

    move-object v5, v7

    move-object v1, v14

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object v2, v1

    move-object v15, v6

    move-object v5, v7

    goto :goto_6

    :cond_5
    move-object v2, v1

    move-object v7, v5

    move-object v15, v6

    move-object v5, v4

    move-object/from16 v4, p2

    :try_start_6
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    if-nez v15, :cond_6

    :try_start_7
    invoke-virtual {v7, v2}, Lcom/google/protobuf/j0;->f(Ljava/lang/Object;)Lcom/google/protobuf/k0;

    move-result-object v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    move-object v6, v0

    goto :goto_b

    :catchall_2
    move-exception v0

    move-object v5, v7

    :goto_9
    move/from16 v19, v10

    :goto_a
    move-object v6, v15

    goto/16 :goto_2a

    :cond_6
    move-object v6, v15

    :goto_b
    :try_start_8
    invoke-virtual {v7, v13, v4, v6}, Lcom/google/protobuf/j0;->l(ILcom/google/protobuf/g;Ljava/lang/Object;)Z

    move-result v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    if-eqz v0, :cond_7

    goto :goto_8

    :cond_7
    move-object v4, v6

    :goto_c
    if-ge v10, v9, :cond_8

    aget v3, v8, v10

    move-object/from16 v6, p1

    move-object v5, v7

    move-object v1, v14

    invoke-virtual/range {v1 .. v6}, Lcom/google/protobuf/c0;->j(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/protobuf/j0;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v7, v2

    move-object v14, v5

    add-int/lit8 v10, v10, 0x1

    move-object v7, v14

    move-object v14, v1

    goto :goto_c

    :cond_8
    move-object v14, v7

    move-object v7, v2

    if-eqz v4, :cond_14

    :goto_d
    invoke-virtual {v14, v7, v4}, Lcom/google/protobuf/j0;->n(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_28

    :catchall_3
    move-exception v0

    move-object v1, v14

    move-object v14, v7

    move-object v7, v2

    :goto_e
    move/from16 v19, v10

    :goto_f
    move-object v5, v14

    goto/16 :goto_2a

    :catchall_4
    move-exception v0

    move-object v1, v14

    move-object v14, v7

    move-object v7, v2

    :goto_10
    move/from16 v19, v10

    :goto_11
    move-object v5, v14

    goto :goto_a

    :catchall_5
    move-exception v0

    move-object v7, v1

    move-object v15, v6

    move-object v1, v14

    move-object v14, v5

    move-object v2, v7

    goto :goto_6

    :cond_9
    move-object/from16 v7, p1

    move-object v14, v5

    move-object v15, v6

    move-object v5, v4

    move-object/from16 v4, p2

    :try_start_9
    invoke-virtual {v1, v3}, Lcom/google/protobuf/c0;->N(I)I

    move-result v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    :try_start_a
    invoke-static {v0}, Lcom/google/protobuf/c0;->M(I)I

    move-result v6
    :try_end_a
    .catch Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_a .. :try_end_a} :catch_10
    .catchall {:try_start_a .. :try_end_a} :catchall_17

    const v18, 0xfffff

    iget-object v11, v1, Lcom/google/protobuf/c0;->l:Lcom/google/protobuf/u;

    packed-switch v6, :pswitch_data_0

    if-nez v15, :cond_a

    :try_start_b
    invoke-virtual {v14, v7}, Lcom/google/protobuf/j0;->f(Ljava/lang/Object;)Lcom/google/protobuf/k0;

    move-result-object v0
    :try_end_b
    .catch Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    move-object v6, v0

    goto :goto_13

    :catchall_6
    move-exception v0

    move-object v2, v7

    goto :goto_10

    :catch_0
    move-object v2, v7

    move/from16 v19, v10

    move-object v13, v12

    move-object v6, v15

    :goto_12
    move-object v7, v1

    move-object v10, v4

    goto/16 :goto_25

    :cond_a
    move-object v6, v15

    :goto_13
    :try_start_c
    invoke-virtual {v14, v13, v4, v6}, Lcom/google/protobuf/j0;->l(ILcom/google/protobuf/g;Ljava/lang/Object;)Z

    move-result v0
    :try_end_c
    .catch Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_7

    if-nez v0, :cond_c

    move-object v4, v6

    :goto_14
    if-ge v10, v9, :cond_b

    aget v3, v8, v10

    move-object/from16 v6, p1

    move-object v2, v7

    move-object v5, v14

    invoke-virtual/range {v1 .. v6}, Lcom/google/protobuf/c0;->j(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/protobuf/j0;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v10, v10, 0x1

    goto :goto_14

    :cond_b
    if-eqz v4, :cond_14

    goto :goto_d

    :cond_c
    move-object v2, v7

    move/from16 v19, v10

    move-object v13, v12

    move-object v7, v1

    move-object v10, v4

    goto/16 :goto_24

    :catchall_7
    move-exception v0

    move-object v2, v7

    goto :goto_e

    :catch_1
    move-object v2, v7

    move/from16 v19, v10

    move-object v13, v12

    goto :goto_12

    :pswitch_0
    :try_start_d
    invoke-virtual {v1, v7, v2, v3}, Lcom/google/protobuf/c0;->w(Ljava/lang/Object;II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/a0;

    invoke-virtual {v1, v3}, Lcom/google/protobuf/c0;->m(I)Lcom/google/protobuf/f0;

    move-result-object v6

    const/4 v11, 0x3

    invoke-virtual {v4, v11}, Lcom/google/protobuf/g;->x(I)V

    invoke-virtual {v4, v0, v6, v5}, Lcom/google/protobuf/g;->b(Ljava/lang/Object;Lcom/google/protobuf/f0;Lcom/google/protobuf/j;)V

    invoke-virtual {v1, v7, v2, v3, v0}, Lcom/google/protobuf/c0;->L(Ljava/lang/Object;IILjava/lang/Object;)V
    :try_end_d
    .catch Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    move-object v2, v7

    move/from16 v19, v10

    move-object v13, v12

    move-object v7, v1

    move-object v10, v4

    goto/16 :goto_23

    :pswitch_1
    and-int v0, v0, v18

    move/from16 v19, v10

    int-to-long v10, v0

    :try_start_e
    invoke-virtual {v4, v13}, Lcom/google/protobuf/g;->x(I)V

    iget-object v0, v4, Lcom/google/protobuf/g;->a:Lcom/google/protobuf/f;

    invoke-virtual {v0}, Lcom/google/protobuf/f;->w()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v7, v10, v11, v0}, Lh79;->q(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v1, v7, v2, v3}, Lcom/google/protobuf/c0;->I(Ljava/lang/Object;II)V

    :goto_15
    move-object v10, v4

    move-object v2, v7

    move-object v13, v12

    move-object v7, v1

    goto/16 :goto_23

    :catchall_8
    move-exception v0

    move-object v2, v7

    goto/16 :goto_11

    :catch_2
    move-object v10, v4

    move-object v2, v7

    move-object v13, v12

    move-object v6, v15

    move-object v7, v1

    goto/16 :goto_25

    :pswitch_2
    move/from16 v19, v10

    and-int v0, v0, v18

    int-to-long v10, v0

    invoke-virtual {v4, v13}, Lcom/google/protobuf/g;->x(I)V

    iget-object v0, v4, Lcom/google/protobuf/g;->a:Lcom/google/protobuf/f;

    invoke-virtual {v0}, Lcom/google/protobuf/f;->v()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v7, v10, v11, v0}, Lh79;->q(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v1, v7, v2, v3}, Lcom/google/protobuf/c0;->I(Ljava/lang/Object;II)V

    goto :goto_15

    :pswitch_3
    move/from16 v19, v10

    and-int v0, v0, v18

    int-to-long v10, v0

    const/4 v0, 0x1

    invoke-virtual {v4, v0}, Lcom/google/protobuf/g;->x(I)V

    iget-object v0, v4, Lcom/google/protobuf/g;->a:Lcom/google/protobuf/f;

    invoke-virtual {v0}, Lcom/google/protobuf/f;->u()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v7, v10, v11, v0}, Lh79;->q(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v1, v7, v2, v3}, Lcom/google/protobuf/c0;->I(Ljava/lang/Object;II)V

    goto :goto_15

    :pswitch_4
    move/from16 v19, v10

    and-int v0, v0, v18

    int-to-long v10, v0

    const/4 v0, 0x5

    invoke-virtual {v4, v0}, Lcom/google/protobuf/g;->x(I)V

    iget-object v0, v4, Lcom/google/protobuf/g;->a:Lcom/google/protobuf/f;

    invoke-virtual {v0}, Lcom/google/protobuf/f;->t()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v7, v10, v11, v0}, Lh79;->q(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v1, v7, v2, v3}, Lcom/google/protobuf/c0;->I(Ljava/lang/Object;II)V

    goto :goto_15

    :pswitch_5
    move/from16 v19, v10

    invoke-virtual {v4, v13}, Lcom/google/protobuf/g;->x(I)V

    iget-object v6, v4, Lcom/google/protobuf/g;->a:Lcom/google/protobuf/f;

    invoke-virtual {v6}, Lcom/google/protobuf/f;->m()I

    move-result v6

    invoke-virtual {v1, v3}, Lcom/google/protobuf/c0;->k(I)Lcom/google/protobuf/q$e;

    move-result-object v10

    if-eqz v10, :cond_e

    invoke-interface {v10, v6}, Lcom/google/protobuf/q$e;->isInRange(I)Z

    move-result v10

    if-eqz v10, :cond_d

    goto :goto_16

    :cond_d
    invoke-static {v7, v2, v6, v15, v14}, Lcom/google/protobuf/g0;->n(Ljava/lang/Object;IILjava/lang/Object;Lcom/google/protobuf/j0;)Ljava/lang/Object;

    move-result-object v6

    move-object v10, v4

    move-object v2, v7

    move-object v13, v12

    move-object v7, v1

    goto/16 :goto_24

    :cond_e
    :goto_16
    and-int v0, v0, v18

    int-to-long v10, v0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v7, v10, v11, v0}, Lh79;->q(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v1, v7, v2, v3}, Lcom/google/protobuf/c0;->I(Ljava/lang/Object;II)V

    goto/16 :goto_15

    :pswitch_6
    move/from16 v19, v10

    and-int v0, v0, v18

    int-to-long v10, v0

    invoke-virtual {v4, v13}, Lcom/google/protobuf/g;->x(I)V

    iget-object v0, v4, Lcom/google/protobuf/g;->a:Lcom/google/protobuf/f;

    invoke-virtual {v0}, Lcom/google/protobuf/f;->A()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v7, v10, v11, v0}, Lh79;->q(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v1, v7, v2, v3}, Lcom/google/protobuf/c0;->I(Ljava/lang/Object;II)V

    goto/16 :goto_15

    :pswitch_7
    move/from16 v19, v10

    and-int v0, v0, v18

    int-to-long v10, v0

    invoke-virtual {v4}, Lcom/google/protobuf/g;->e()Lfx0;

    move-result-object v0

    invoke-static {v7, v10, v11, v0}, Lh79;->q(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v1, v7, v2, v3}, Lcom/google/protobuf/c0;->I(Ljava/lang/Object;II)V

    goto/16 :goto_15

    :pswitch_8
    move/from16 v19, v10

    invoke-virtual {v1, v7, v2, v3}, Lcom/google/protobuf/c0;->w(Ljava/lang/Object;II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/a0;

    invoke-virtual {v1, v3}, Lcom/google/protobuf/c0;->m(I)Lcom/google/protobuf/f0;

    move-result-object v6

    const/4 v10, 0x2

    invoke-virtual {v4, v10}, Lcom/google/protobuf/g;->x(I)V

    invoke-virtual {v4, v0, v6, v5}, Lcom/google/protobuf/g;->c(Ljava/lang/Object;Lcom/google/protobuf/f0;Lcom/google/protobuf/j;)V

    invoke-virtual {v1, v7, v2, v3, v0}, Lcom/google/protobuf/c0;->L(Ljava/lang/Object;IILjava/lang/Object;)V

    goto/16 :goto_15

    :pswitch_9
    move/from16 v19, v10

    invoke-virtual {v1, v0, v4, v7}, Lcom/google/protobuf/c0;->E(ILcom/google/protobuf/g;Ljava/lang/Object;)V

    invoke-virtual {v1, v7, v2, v3}, Lcom/google/protobuf/c0;->I(Ljava/lang/Object;II)V

    goto/16 :goto_15

    :pswitch_a
    move/from16 v19, v10

    and-int v0, v0, v18

    int-to-long v10, v0

    invoke-virtual {v4, v13}, Lcom/google/protobuf/g;->x(I)V

    iget-object v0, v4, Lcom/google/protobuf/g;->a:Lcom/google/protobuf/f;

    invoke-virtual {v0}, Lcom/google/protobuf/f;->j()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v7, v10, v11, v0}, Lh79;->q(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v1, v7, v2, v3}, Lcom/google/protobuf/c0;->I(Ljava/lang/Object;II)V

    goto/16 :goto_15

    :pswitch_b
    move/from16 v19, v10

    and-int v0, v0, v18

    int-to-long v10, v0

    const/4 v0, 0x5

    invoke-virtual {v4, v0}, Lcom/google/protobuf/g;->x(I)V

    iget-object v0, v4, Lcom/google/protobuf/g;->a:Lcom/google/protobuf/f;

    invoke-virtual {v0}, Lcom/google/protobuf/f;->n()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v7, v10, v11, v0}, Lh79;->q(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v1, v7, v2, v3}, Lcom/google/protobuf/c0;->I(Ljava/lang/Object;II)V

    goto/16 :goto_15

    :pswitch_c
    move/from16 v19, v10

    and-int v0, v0, v18

    int-to-long v10, v0

    const/4 v0, 0x1

    invoke-virtual {v4, v0}, Lcom/google/protobuf/g;->x(I)V

    iget-object v0, v4, Lcom/google/protobuf/g;->a:Lcom/google/protobuf/f;

    invoke-virtual {v0}, Lcom/google/protobuf/f;->o()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v7, v10, v11, v0}, Lh79;->q(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v1, v7, v2, v3}, Lcom/google/protobuf/c0;->I(Ljava/lang/Object;II)V

    goto/16 :goto_15

    :pswitch_d
    move/from16 v19, v10

    and-int v0, v0, v18

    int-to-long v10, v0

    invoke-virtual {v4, v13}, Lcom/google/protobuf/g;->x(I)V

    iget-object v0, v4, Lcom/google/protobuf/g;->a:Lcom/google/protobuf/f;

    invoke-virtual {v0}, Lcom/google/protobuf/f;->q()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v7, v10, v11, v0}, Lh79;->q(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v1, v7, v2, v3}, Lcom/google/protobuf/c0;->I(Ljava/lang/Object;II)V

    goto/16 :goto_15

    :pswitch_e
    move/from16 v19, v10

    and-int v0, v0, v18

    int-to-long v10, v0

    invoke-virtual {v4, v13}, Lcom/google/protobuf/g;->x(I)V

    iget-object v0, v4, Lcom/google/protobuf/g;->a:Lcom/google/protobuf/f;

    invoke-virtual {v0}, Lcom/google/protobuf/f;->B()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v7, v10, v11, v0}, Lh79;->q(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v1, v7, v2, v3}, Lcom/google/protobuf/c0;->I(Ljava/lang/Object;II)V

    goto/16 :goto_15

    :pswitch_f
    move/from16 v19, v10

    and-int v0, v0, v18

    int-to-long v10, v0

    invoke-virtual {v4, v13}, Lcom/google/protobuf/g;->x(I)V

    iget-object v0, v4, Lcom/google/protobuf/g;->a:Lcom/google/protobuf/f;

    invoke-virtual {v0}, Lcom/google/protobuf/f;->r()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v7, v10, v11, v0}, Lh79;->q(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v1, v7, v2, v3}, Lcom/google/protobuf/c0;->I(Ljava/lang/Object;II)V

    goto/16 :goto_15

    :pswitch_10
    move/from16 v19, v10

    and-int v0, v0, v18

    int-to-long v10, v0

    const/4 v0, 0x5

    invoke-virtual {v4, v0}, Lcom/google/protobuf/g;->x(I)V

    iget-object v0, v4, Lcom/google/protobuf/g;->a:Lcom/google/protobuf/f;

    invoke-virtual {v0}, Lcom/google/protobuf/f;->p()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v7, v10, v11, v0}, Lh79;->q(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v1, v7, v2, v3}, Lcom/google/protobuf/c0;->I(Ljava/lang/Object;II)V

    goto/16 :goto_15

    :pswitch_11
    move/from16 v19, v10

    and-int v0, v0, v18

    int-to-long v10, v0

    const/4 v0, 0x1

    invoke-virtual {v4, v0}, Lcom/google/protobuf/g;->x(I)V

    iget-object v0, v4, Lcom/google/protobuf/g;->a:Lcom/google/protobuf/f;

    invoke-virtual {v0}, Lcom/google/protobuf/f;->l()D

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-static {v7, v10, v11, v0}, Lh79;->q(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v1, v7, v2, v3}, Lcom/google/protobuf/c0;->I(Ljava/lang/Object;II)V
    :try_end_e
    .catch Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_e .. :try_end_e} :catch_2
    .catchall {:try_start_e .. :try_end_e} :catchall_8

    goto/16 :goto_15

    :pswitch_12
    move/from16 v19, v10

    :try_start_f
    invoke-virtual {v1, v3}, Lcom/google/protobuf/c0;->l(I)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v6, p2

    move-object v2, v7

    invoke-virtual/range {v1 .. v6}, Lcom/google/protobuf/c0;->s(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/protobuf/j;Lcom/google/protobuf/g;)V
    :try_end_f
    .catch Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_f .. :try_end_f} :catch_3
    .catchall {:try_start_f .. :try_end_f} :catchall_9

    move-object/from16 v2, p1

    move-object/from16 v10, p2

    move-object v7, v1

    :goto_17
    move-object v13, v12

    goto/16 :goto_23

    :catchall_9
    move-exception v0

    move-object/from16 v2, p1

    goto/16 :goto_11

    :catch_3
    move-object/from16 v2, p1

    move-object/from16 v10, p2

    move-object v7, v1

    :catch_4
    :goto_18
    move-object v13, v12

    :catch_5
    :goto_19
    move-object v6, v15

    goto/16 :goto_25

    :pswitch_13
    move v6, v3

    move/from16 v19, v10

    and-int v0, v0, v18

    int-to-long v3, v0

    :try_start_10
    invoke-virtual {v1, v6}, Lcom/google/protobuf/c0;->m(I)Lcom/google/protobuf/f0;

    move-result-object v6
    :try_end_10
    .catch Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_10 .. :try_end_10} :catch_3
    .catchall {:try_start_10 .. :try_end_10} :catchall_b

    move-object/from16 v2, p1

    move-object/from16 v5, p2

    move-object/from16 v7, p3

    :try_start_11
    invoke-virtual/range {v1 .. v7}, Lcom/google/protobuf/c0;->C(Ljava/lang/Object;JLcom/google/protobuf/g;Lcom/google/protobuf/f0;Lcom/google/protobuf/j;)V
    :try_end_11
    .catch Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_11 .. :try_end_11} :catch_6
    .catchall {:try_start_11 .. :try_end_11} :catchall_a

    move-object v7, v1

    move-object v1, v2

    move-object v10, v5

    :goto_1a
    move-object v2, v1

    goto :goto_17

    :catchall_a
    move-exception v0

    move-object v7, v1

    move-object v1, v2

    goto/16 :goto_11

    :catch_6
    move-object v7, v1

    move-object v10, v5

    goto :goto_18

    :catchall_b
    move-exception v0

    move-object v7, v1

    move-object/from16 v1, p1

    :goto_1b
    move-object v2, v1

    goto/16 :goto_11

    :pswitch_14
    move-object/from16 v19, v7

    move-object v7, v1

    move-object/from16 v1, v19

    move/from16 v19, v10

    move-object v10, v4

    and-int v0, v0, v18

    int-to-long v2, v0

    :try_start_12
    invoke-virtual {v11, v1, v2, v3}, Lcom/google/protobuf/u;->c(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/google/protobuf/g;->s(Ljava/util/List;)V

    goto :goto_1a

    :catchall_c
    move-exception v0

    goto :goto_1b

    :catch_7
    move-object v2, v1

    goto :goto_18

    :pswitch_15
    move-object/from16 v19, v7

    move-object v7, v1

    move-object/from16 v1, v19

    move/from16 v19, v10

    move-object v10, v4

    and-int v0, v0, v18

    int-to-long v2, v0

    invoke-virtual {v11, v1, v2, v3}, Lcom/google/protobuf/u;->c(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/google/protobuf/g;->r(Ljava/util/List;)V

    goto :goto_1a

    :pswitch_16
    move-object/from16 v19, v7

    move-object v7, v1

    move-object/from16 v1, v19

    move/from16 v19, v10

    move-object v10, v4

    and-int v0, v0, v18

    int-to-long v2, v0

    invoke-virtual {v11, v1, v2, v3}, Lcom/google/protobuf/u;->c(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/google/protobuf/g;->q(Ljava/util/List;)V

    goto :goto_1a

    :pswitch_17
    move-object/from16 v19, v7

    move-object v7, v1

    move-object/from16 v1, v19

    move/from16 v19, v10

    move-object v10, v4

    and-int v0, v0, v18

    int-to-long v2, v0

    invoke-virtual {v11, v1, v2, v3}, Lcom/google/protobuf/u;->c(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/google/protobuf/g;->p(Ljava/util/List;)V

    goto :goto_1a

    :pswitch_18
    move-object v6, v7

    move-object v7, v1

    move-object v1, v6

    move v6, v3

    move/from16 v19, v10

    move-object v10, v4

    invoke-static {v0}, Lcom/google/protobuf/c0;->y(I)J

    move-result-wide v3

    invoke-virtual {v11, v1, v3, v4}, Lcom/google/protobuf/u;->c(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v10, v3}, Lcom/google/protobuf/g;->h(Ljava/util/List;)V

    invoke-virtual {v7, v6}, Lcom/google/protobuf/c0;->k(I)Lcom/google/protobuf/q$e;

    move-result-object v4
    :try_end_12
    .catch Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_12 .. :try_end_12} :catch_7
    .catchall {:try_start_12 .. :try_end_12} :catchall_c

    move-object v6, v14

    move-object v5, v15

    :try_start_13
    invoke-static/range {v1 .. v6}, Lcom/google/protobuf/g0;->k(Ljava/lang/Object;ILjava/util/List;Lcom/google/protobuf/q$e;Ljava/lang/Object;Lcom/google/protobuf/j0;)Ljava/lang/Object;

    move-result-object v0
    :try_end_13
    .catch Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_13 .. :try_end_13} :catch_8
    .catchall {:try_start_13 .. :try_end_13} :catchall_d

    move-object v2, v1

    move-object v5, v6

    move-object v6, v0

    move-object v14, v5

    :goto_1c
    move-object v13, v12

    goto/16 :goto_24

    :catchall_d
    move-exception v0

    move-object v2, v1

    move-object v15, v5

    move-object v5, v6

    goto/16 :goto_a

    :catch_8
    move-object v15, v5

    move-object v2, v1

    move-object v14, v6

    goto/16 :goto_18

    :pswitch_19
    move-object v2, v7

    move/from16 v19, v10

    move-object v5, v14

    move-object v7, v1

    move-object v10, v4

    :try_start_14
    invoke-static {v0}, Lcom/google/protobuf/c0;->y(I)J

    move-result-wide v0

    invoke-virtual {v11, v2, v0, v1}, Lcom/google/protobuf/u;->c(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/google/protobuf/g;->u(Ljava/util/List;)V

    :goto_1d
    move-object v14, v5

    goto/16 :goto_17

    :catchall_e
    move-exception v0

    goto/16 :goto_a

    :catch_9
    move-object v14, v5

    goto/16 :goto_18

    :pswitch_1a
    move-object v2, v7

    move/from16 v19, v10

    move-object v5, v14

    move-object v7, v1

    move-object v10, v4

    invoke-static {v0}, Lcom/google/protobuf/c0;->y(I)J

    move-result-wide v0

    invoke-virtual {v11, v2, v0, v1}, Lcom/google/protobuf/u;->c(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/google/protobuf/g;->d(Ljava/util/List;)V

    goto :goto_1d

    :pswitch_1b
    move-object v2, v7

    move/from16 v19, v10

    move-object v5, v14

    move-object v7, v1

    move-object v10, v4

    invoke-static {v0}, Lcom/google/protobuf/c0;->y(I)J

    move-result-wide v0

    invoke-virtual {v11, v2, v0, v1}, Lcom/google/protobuf/u;->c(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/google/protobuf/g;->j(Ljava/util/List;)V

    goto :goto_1d

    :pswitch_1c
    move-object v2, v7

    move/from16 v19, v10

    move-object v5, v14

    move-object v7, v1

    move-object v10, v4

    invoke-static {v0}, Lcom/google/protobuf/c0;->y(I)J

    move-result-wide v0

    invoke-virtual {v11, v2, v0, v1}, Lcom/google/protobuf/u;->c(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/google/protobuf/g;->k(Ljava/util/List;)V

    goto :goto_1d

    :pswitch_1d
    move-object v2, v7

    move/from16 v19, v10

    move-object v5, v14

    move-object v7, v1

    move-object v10, v4

    invoke-static {v0}, Lcom/google/protobuf/c0;->y(I)J

    move-result-wide v0

    invoke-virtual {v11, v2, v0, v1}, Lcom/google/protobuf/u;->c(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/google/protobuf/g;->m(Ljava/util/List;)V

    goto :goto_1d

    :pswitch_1e
    move-object v2, v7

    move/from16 v19, v10

    move-object v5, v14

    move-object v7, v1

    move-object v10, v4

    invoke-static {v0}, Lcom/google/protobuf/c0;->y(I)J

    move-result-wide v0

    invoke-virtual {v11, v2, v0, v1}, Lcom/google/protobuf/u;->c(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/google/protobuf/g;->v(Ljava/util/List;)V

    goto :goto_1d

    :pswitch_1f
    move-object v2, v7

    move/from16 v19, v10

    move-object v5, v14

    move-object v7, v1

    move-object v10, v4

    invoke-static {v0}, Lcom/google/protobuf/c0;->y(I)J

    move-result-wide v0

    invoke-virtual {v11, v2, v0, v1}, Lcom/google/protobuf/u;->c(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/google/protobuf/g;->n(Ljava/util/List;)V

    goto :goto_1d

    :pswitch_20
    move-object v2, v7

    move/from16 v19, v10

    move-object v5, v14

    move-object v7, v1

    move-object v10, v4

    invoke-static {v0}, Lcom/google/protobuf/c0;->y(I)J

    move-result-wide v0

    invoke-virtual {v11, v2, v0, v1}, Lcom/google/protobuf/u;->c(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/google/protobuf/g;->l(Ljava/util/List;)V

    goto/16 :goto_1d

    :pswitch_21
    move-object v2, v7

    move/from16 v19, v10

    move-object v5, v14

    move-object v7, v1

    move-object v10, v4

    invoke-static {v0}, Lcom/google/protobuf/c0;->y(I)J

    move-result-wide v0

    invoke-virtual {v11, v2, v0, v1}, Lcom/google/protobuf/u;->c(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/google/protobuf/g;->g(Ljava/util/List;)V

    goto/16 :goto_1d

    :pswitch_22
    move-object v2, v7

    move/from16 v19, v10

    move-object v5, v14

    move-object v7, v1

    move-object v10, v4

    invoke-static {v0}, Lcom/google/protobuf/c0;->y(I)J

    move-result-wide v0

    invoke-virtual {v11, v2, v0, v1}, Lcom/google/protobuf/u;->c(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/google/protobuf/g;->s(Ljava/util/List;)V

    goto/16 :goto_1d

    :pswitch_23
    move-object v2, v7

    move/from16 v19, v10

    move-object v5, v14

    move-object v7, v1

    move-object v10, v4

    invoke-static {v0}, Lcom/google/protobuf/c0;->y(I)J

    move-result-wide v0

    invoke-virtual {v11, v2, v0, v1}, Lcom/google/protobuf/u;->c(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/google/protobuf/g;->r(Ljava/util/List;)V

    goto/16 :goto_1d

    :pswitch_24
    move-object v2, v7

    move/from16 v19, v10

    move-object v5, v14

    move-object v7, v1

    move-object v10, v4

    invoke-static {v0}, Lcom/google/protobuf/c0;->y(I)J

    move-result-wide v0

    invoke-virtual {v11, v2, v0, v1}, Lcom/google/protobuf/u;->c(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/google/protobuf/g;->q(Ljava/util/List;)V

    goto/16 :goto_1d

    :pswitch_25
    move-object v2, v7

    move/from16 v19, v10

    move-object v5, v14

    move-object v7, v1

    move-object v10, v4

    invoke-static {v0}, Lcom/google/protobuf/c0;->y(I)J

    move-result-wide v0

    invoke-virtual {v11, v2, v0, v1}, Lcom/google/protobuf/u;->c(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/google/protobuf/g;->p(Ljava/util/List;)V
    :try_end_14
    .catch Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_14 .. :try_end_14} :catch_9
    .catchall {:try_start_14 .. :try_end_14} :catchall_e

    goto/16 :goto_1d

    :pswitch_26
    move-object v5, v7

    move-object v7, v1

    move v1, v2

    move-object v2, v5

    move v6, v3

    move/from16 v19, v10

    move-object v5, v14

    move-object v10, v4

    :try_start_15
    invoke-static {v0}, Lcom/google/protobuf/c0;->y(I)J

    move-result-wide v3

    invoke-virtual {v11, v2, v3, v4}, Lcom/google/protobuf/u;->c(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v10, v3}, Lcom/google/protobuf/g;->h(Ljava/util/List;)V

    invoke-virtual {v7, v6}, Lcom/google/protobuf/c0;->k(I)Lcom/google/protobuf/q$e;

    move-result-object v4
    :try_end_15
    .catch Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_15 .. :try_end_15} :catch_9
    .catchall {:try_start_15 .. :try_end_15} :catchall_10

    move-object v6, v2

    move v2, v1

    move-object v1, v6

    move-object v6, v5

    move-object v5, v15

    :try_start_16
    invoke-static/range {v1 .. v6}, Lcom/google/protobuf/g0;->k(Ljava/lang/Object;ILjava/util/List;Lcom/google/protobuf/q$e;Ljava/lang/Object;Lcom/google/protobuf/j0;)Ljava/lang/Object;

    move-result-object v0
    :try_end_16
    .catch Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_16 .. :try_end_16} :catch_8
    .catchall {:try_start_16 .. :try_end_16} :catchall_f

    move-object v2, v1

    move-object v14, v6

    move-object v6, v0

    goto/16 :goto_1c

    :catchall_f
    move-exception v0

    move-object v2, v1

    move-object v15, v5

    move-object v14, v6

    goto/16 :goto_11

    :catchall_10
    move-exception v0

    move-object v14, v5

    goto/16 :goto_a

    :pswitch_27
    move-object v2, v7

    move/from16 v19, v10

    move-object v7, v1

    move-object v10, v4

    :try_start_17
    invoke-static {v0}, Lcom/google/protobuf/c0;->y(I)J

    move-result-wide v0

    invoke-virtual {v11, v2, v0, v1}, Lcom/google/protobuf/u;->c(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/google/protobuf/g;->u(Ljava/util/List;)V

    goto/16 :goto_17

    :catchall_11
    move-exception v0

    goto/16 :goto_11

    :pswitch_28
    move-object v2, v7

    move/from16 v19, v10

    move-object v7, v1

    move-object v10, v4

    invoke-static {v0}, Lcom/google/protobuf/c0;->y(I)J

    move-result-wide v0

    invoke-virtual {v11, v2, v0, v1}, Lcom/google/protobuf/u;->c(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/google/protobuf/g;->f(Ljava/util/List;)V
    :try_end_17
    .catch Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_17 .. :try_end_17} :catch_4
    .catchall {:try_start_17 .. :try_end_17} :catchall_11

    goto/16 :goto_17

    :pswitch_29
    move v6, v3

    move-object v2, v7

    move/from16 v19, v10

    move-object v7, v1

    move-object v10, v4

    :try_start_18
    invoke-virtual {v7, v6}, Lcom/google/protobuf/c0;->m(I)Lcom/google/protobuf/f0;

    move-result-object v5
    :try_end_18
    .catch Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_18 .. :try_end_18} :catch_b
    .catchall {:try_start_18 .. :try_end_18} :catchall_11

    move-object/from16 v6, p3

    move v3, v0

    :try_start_19
    invoke-virtual/range {v1 .. v6}, Lcom/google/protobuf/c0;->D(Ljava/lang/Object;ILcom/google/protobuf/g;Lcom/google/protobuf/f0;Lcom/google/protobuf/j;)V
    :try_end_19
    .catch Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_19 .. :try_end_19} :catch_a
    .catchall {:try_start_19 .. :try_end_19} :catchall_12

    move-object v7, v1

    move-object v10, v4

    move-object v0, v6

    goto/16 :goto_17

    :catchall_12
    move-exception v0

    :goto_1e
    move-object v7, v1

    goto/16 :goto_11

    :catch_a
    move-object v7, v1

    move-object v10, v4

    move-object v0, v6

    goto/16 :goto_18

    :catch_b
    move-object/from16 v0, p3

    goto/16 :goto_18

    :pswitch_2a
    move v3, v0

    move-object v0, v5

    move-object v2, v7

    move/from16 v19, v10

    move-object v7, v1

    move-object v10, v4

    :try_start_1a
    invoke-virtual {v7, v3, v10, v2}, Lcom/google/protobuf/c0;->F(ILcom/google/protobuf/g;Ljava/lang/Object;)V

    goto/16 :goto_17

    :pswitch_2b
    move v3, v0

    move-object v0, v5

    move-object v2, v7

    move/from16 v19, v10

    move-object v7, v1

    move-object v10, v4

    invoke-static {v3}, Lcom/google/protobuf/c0;->y(I)J

    move-result-wide v3

    invoke-virtual {v11, v2, v3, v4}, Lcom/google/protobuf/u;->c(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/google/protobuf/g;->d(Ljava/util/List;)V

    goto/16 :goto_17

    :pswitch_2c
    move v3, v0

    move-object v0, v5

    move-object v2, v7

    move/from16 v19, v10

    move-object v7, v1

    move-object v10, v4

    invoke-static {v3}, Lcom/google/protobuf/c0;->y(I)J

    move-result-wide v3

    invoke-virtual {v11, v2, v3, v4}, Lcom/google/protobuf/u;->c(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/google/protobuf/g;->j(Ljava/util/List;)V

    goto/16 :goto_17

    :pswitch_2d
    move v3, v0

    move-object v0, v5

    move-object v2, v7

    move/from16 v19, v10

    move-object v7, v1

    move-object v10, v4

    invoke-static {v3}, Lcom/google/protobuf/c0;->y(I)J

    move-result-wide v3

    invoke-virtual {v11, v2, v3, v4}, Lcom/google/protobuf/u;->c(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/google/protobuf/g;->k(Ljava/util/List;)V

    goto/16 :goto_17

    :pswitch_2e
    move v3, v0

    move-object v0, v5

    move-object v2, v7

    move/from16 v19, v10

    move-object v7, v1

    move-object v10, v4

    invoke-static {v3}, Lcom/google/protobuf/c0;->y(I)J

    move-result-wide v3

    invoke-virtual {v11, v2, v3, v4}, Lcom/google/protobuf/u;->c(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/google/protobuf/g;->m(Ljava/util/List;)V

    goto/16 :goto_17

    :pswitch_2f
    move v3, v0

    move-object v0, v5

    move-object v2, v7

    move/from16 v19, v10

    move-object v7, v1

    move-object v10, v4

    invoke-static {v3}, Lcom/google/protobuf/c0;->y(I)J

    move-result-wide v3

    invoke-virtual {v11, v2, v3, v4}, Lcom/google/protobuf/u;->c(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/google/protobuf/g;->v(Ljava/util/List;)V

    goto/16 :goto_17

    :pswitch_30
    move v3, v0

    move-object v0, v5

    move-object v2, v7

    move/from16 v19, v10

    move-object v7, v1

    move-object v10, v4

    invoke-static {v3}, Lcom/google/protobuf/c0;->y(I)J

    move-result-wide v3

    invoke-virtual {v11, v2, v3, v4}, Lcom/google/protobuf/u;->c(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/google/protobuf/g;->n(Ljava/util/List;)V

    goto/16 :goto_17

    :pswitch_31
    move v3, v0

    move-object v0, v5

    move-object v2, v7

    move/from16 v19, v10

    move-object v7, v1

    move-object v10, v4

    invoke-static {v3}, Lcom/google/protobuf/c0;->y(I)J

    move-result-wide v3

    invoke-virtual {v11, v2, v3, v4}, Lcom/google/protobuf/u;->c(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/google/protobuf/g;->l(Ljava/util/List;)V

    goto/16 :goto_17

    :pswitch_32
    move v3, v0

    move-object v0, v5

    move-object v2, v7

    move/from16 v19, v10

    move-object v7, v1

    move-object v10, v4

    invoke-static {v3}, Lcom/google/protobuf/c0;->y(I)J

    move-result-wide v3

    invoke-virtual {v11, v2, v3, v4}, Lcom/google/protobuf/u;->c(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/google/protobuf/g;->g(Ljava/util/List;)V

    goto/16 :goto_17

    :pswitch_33
    move v6, v3

    move-object v0, v5

    move-object v2, v7

    move/from16 v19, v10

    move-object v7, v1

    move-object v10, v4

    invoke-virtual {v7, v2, v6}, Lcom/google/protobuf/c0;->v(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/a0;

    invoke-virtual {v7, v6}, Lcom/google/protobuf/c0;->m(I)Lcom/google/protobuf/f0;

    move-result-object v3

    const/4 v11, 0x3

    invoke-virtual {v10, v11}, Lcom/google/protobuf/g;->x(I)V

    invoke-virtual {v10, v1, v3, v0}, Lcom/google/protobuf/g;->b(Ljava/lang/Object;Lcom/google/protobuf/f0;Lcom/google/protobuf/j;)V

    invoke-virtual {v7, v2, v6, v1}, Lcom/google/protobuf/c0;->K(Ljava/lang/Object;ILjava/lang/Object;)V
    :try_end_1a
    .catch Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_1a .. :try_end_1a} :catch_4
    .catchall {:try_start_1a .. :try_end_1a} :catchall_11

    goto/16 :goto_17

    :pswitch_34
    move v6, v3

    move-object v2, v7

    move/from16 v19, v10

    move v3, v0

    move-object v7, v1

    move-object v10, v4

    move-object v0, v5

    :try_start_1b
    invoke-static {v3}, Lcom/google/protobuf/c0;->y(I)J

    move-result-wide v3
    :try_end_1b
    .catch Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_1b .. :try_end_1b} :catch_4
    .catchall {:try_start_1b .. :try_end_1b} :catchall_14

    :try_start_1c
    invoke-virtual {v10, v13}, Lcom/google/protobuf/g;->x(I)V

    iget-object v1, v10, Lcom/google/protobuf/g;->a:Lcom/google/protobuf/f;
    :try_end_1c
    .catch Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_1c .. :try_end_1c} :catch_d
    .catchall {:try_start_1c .. :try_end_1c} :catchall_14

    move-object v11, v14

    :try_start_1d
    invoke-virtual {v1}, Lcom/google/protobuf/f;->w()J

    move-result-wide v13

    invoke-static {v2, v3, v4, v13, v14}, Lh79;->p(Ljava/lang/Object;JJ)V

    invoke-virtual {v7, v2, v6}, Lcom/google/protobuf/c0;->H(Ljava/lang/Object;I)V

    :goto_1f
    move-object v14, v11

    goto/16 :goto_17

    :catchall_13
    move-exception v0

    :goto_20
    move-object v5, v11

    goto/16 :goto_a

    :catch_c
    :goto_21
    move-object v14, v11

    goto/16 :goto_18

    :catch_d
    move-object v11, v14

    goto :goto_21

    :catchall_14
    move-exception v0

    move-object v11, v14

    goto :goto_20

    :pswitch_35
    move v6, v3

    move-object v2, v7

    move/from16 v19, v10

    move-object v11, v14

    move v3, v0

    move-object v7, v1

    move-object v10, v4

    move-object v0, v5

    invoke-static {v3}, Lcom/google/protobuf/c0;->y(I)J

    move-result-wide v3

    const/4 v1, 0x0

    invoke-virtual {v10, v1}, Lcom/google/protobuf/g;->x(I)V

    iget-object v1, v10, Lcom/google/protobuf/g;->a:Lcom/google/protobuf/f;

    invoke-virtual {v1}, Lcom/google/protobuf/f;->v()I

    move-result v1

    invoke-static {v2, v3, v4, v1}, Lh79;->o(Ljava/lang/Object;JI)V

    invoke-virtual {v7, v2, v6}, Lcom/google/protobuf/c0;->H(Ljava/lang/Object;I)V

    goto :goto_1f

    :pswitch_36
    move v6, v3

    move-object v2, v7

    move/from16 v19, v10

    move-object v11, v14

    move v3, v0

    move-object v7, v1

    move-object v10, v4

    move-object v0, v5

    invoke-static {v3}, Lcom/google/protobuf/c0;->y(I)J

    move-result-wide v3

    const/4 v1, 0x1

    invoke-virtual {v10, v1}, Lcom/google/protobuf/g;->x(I)V

    iget-object v1, v10, Lcom/google/protobuf/g;->a:Lcom/google/protobuf/f;

    invoke-virtual {v1}, Lcom/google/protobuf/f;->u()J

    move-result-wide v13

    invoke-static {v2, v3, v4, v13, v14}, Lh79;->p(Ljava/lang/Object;JJ)V

    invoke-virtual {v7, v2, v6}, Lcom/google/protobuf/c0;->H(Ljava/lang/Object;I)V

    goto :goto_1f

    :pswitch_37
    move v6, v3

    move-object v2, v7

    move/from16 v19, v10

    move-object v11, v14

    move v3, v0

    move-object v7, v1

    move-object v10, v4

    move-object v0, v5

    invoke-static {v3}, Lcom/google/protobuf/c0;->y(I)J

    move-result-wide v3

    const/4 v1, 0x5

    invoke-virtual {v10, v1}, Lcom/google/protobuf/g;->x(I)V

    iget-object v1, v10, Lcom/google/protobuf/g;->a:Lcom/google/protobuf/f;

    invoke-virtual {v1}, Lcom/google/protobuf/f;->t()I

    move-result v1

    invoke-static {v2, v3, v4, v1}, Lh79;->o(Ljava/lang/Object;JI)V

    invoke-virtual {v7, v2, v6}, Lcom/google/protobuf/c0;->H(Ljava/lang/Object;I)V
    :try_end_1d
    .catch Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_1d .. :try_end_1d} :catch_c
    .catchall {:try_start_1d .. :try_end_1d} :catchall_13

    goto :goto_1f

    :pswitch_38
    move-object v6, v7

    move-object v7, v1

    move v1, v2

    move-object v2, v6

    move v6, v3

    move/from16 v19, v10

    move-object v11, v14

    move v3, v0

    move-object v10, v4

    move-object v0, v5

    move v4, v13

    :try_start_1e
    invoke-virtual {v10, v4}, Lcom/google/protobuf/g;->x(I)V

    iget-object v4, v10, Lcom/google/protobuf/g;->a:Lcom/google/protobuf/f;

    invoke-virtual {v4}, Lcom/google/protobuf/f;->m()I

    move-result v4
    :try_end_1e
    .catch Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_1e .. :try_end_1e} :catch_e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_15

    :try_start_1f
    invoke-virtual {v7, v6}, Lcom/google/protobuf/c0;->k(I)Lcom/google/protobuf/q$e;

    move-result-object v5

    if-eqz v5, :cond_f

    invoke-interface {v5, v4}, Lcom/google/protobuf/q$e;->isInRange(I)Z

    move-result v5
    :try_end_1f
    .catch Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_1f .. :try_end_1f} :catch_c
    .catchall {:try_start_1f .. :try_end_1f} :catchall_15

    if-eqz v5, :cond_10

    :cond_f
    move-object v14, v11

    move-object v13, v12

    goto :goto_22

    :cond_10
    move-object v14, v11

    :try_start_20
    invoke-static {v2, v1, v4, v15, v14}, Lcom/google/protobuf/g0;->n(Ljava/lang/Object;IILjava/lang/Object;Lcom/google/protobuf/j0;)Ljava/lang/Object;

    move-result-object v6
    :try_end_20
    .catch Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_20 .. :try_end_20} :catch_4
    .catchall {:try_start_20 .. :try_end_20} :catchall_11

    goto/16 :goto_1c

    :catchall_15
    move-exception v0

    move-object v14, v11

    goto/16 :goto_11

    :goto_22
    :try_start_21
    invoke-static {v3}, Lcom/google/protobuf/c0;->y(I)J

    move-result-wide v11

    invoke-static {v2, v11, v12, v4}, Lh79;->o(Ljava/lang/Object;JI)V

    invoke-virtual {v7, v2, v6}, Lcom/google/protobuf/c0;->H(Ljava/lang/Object;I)V

    goto/16 :goto_23

    :catch_e
    move-object v14, v11

    goto/16 :goto_18

    :pswitch_39
    move v6, v3

    move-object v2, v7

    move/from16 v19, v10

    move-object v13, v12

    move v3, v0

    move-object v7, v1

    move-object v10, v4

    move-object v0, v5

    invoke-static {v3}, Lcom/google/protobuf/c0;->y(I)J

    move-result-wide v3

    const/4 v1, 0x0

    invoke-virtual {v10, v1}, Lcom/google/protobuf/g;->x(I)V

    iget-object v1, v10, Lcom/google/protobuf/g;->a:Lcom/google/protobuf/f;

    invoke-virtual {v1}, Lcom/google/protobuf/f;->A()I

    move-result v1

    invoke-static {v2, v3, v4, v1}, Lh79;->o(Ljava/lang/Object;JI)V

    invoke-virtual {v7, v2, v6}, Lcom/google/protobuf/c0;->H(Ljava/lang/Object;I)V

    goto/16 :goto_23

    :pswitch_3a
    move v6, v3

    move-object v2, v7

    move/from16 v19, v10

    move-object v13, v12

    move v3, v0

    move-object v7, v1

    move-object v10, v4

    move-object v0, v5

    invoke-static {v3}, Lcom/google/protobuf/c0;->y(I)J

    move-result-wide v3

    invoke-virtual {v10}, Lcom/google/protobuf/g;->e()Lfx0;

    move-result-object v1

    invoke-static {v2, v3, v4, v1}, Lh79;->q(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v7, v2, v6}, Lcom/google/protobuf/c0;->H(Ljava/lang/Object;I)V

    goto/16 :goto_23

    :pswitch_3b
    move v6, v3

    move-object v0, v5

    move-object v2, v7

    move/from16 v19, v10

    move-object v13, v12

    move-object v7, v1

    move-object v10, v4

    invoke-virtual {v7, v2, v6}, Lcom/google/protobuf/c0;->v(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/a0;

    invoke-virtual {v7, v6}, Lcom/google/protobuf/c0;->m(I)Lcom/google/protobuf/f0;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v10, v4}, Lcom/google/protobuf/g;->x(I)V

    invoke-virtual {v10, v1, v3, v0}, Lcom/google/protobuf/g;->c(Ljava/lang/Object;Lcom/google/protobuf/f0;Lcom/google/protobuf/j;)V

    invoke-virtual {v7, v2, v6, v1}, Lcom/google/protobuf/c0;->K(Ljava/lang/Object;ILjava/lang/Object;)V

    goto/16 :goto_23

    :pswitch_3c
    move v6, v3

    move-object v2, v7

    move/from16 v19, v10

    move-object v13, v12

    move v3, v0

    move-object v7, v1

    move-object v10, v4

    move-object v0, v5

    invoke-virtual {v7, v3, v10, v2}, Lcom/google/protobuf/c0;->E(ILcom/google/protobuf/g;Ljava/lang/Object;)V

    invoke-virtual {v7, v2, v6}, Lcom/google/protobuf/c0;->H(Ljava/lang/Object;I)V

    goto/16 :goto_23

    :pswitch_3d
    move v6, v3

    move-object v2, v7

    move/from16 v19, v10

    move-object v13, v12

    move v3, v0

    move-object v7, v1

    move-object v10, v4

    move-object v0, v5

    invoke-static {v3}, Lcom/google/protobuf/c0;->y(I)J

    move-result-wide v3

    const/4 v1, 0x0

    invoke-virtual {v10, v1}, Lcom/google/protobuf/g;->x(I)V

    iget-object v1, v10, Lcom/google/protobuf/g;->a:Lcom/google/protobuf/f;

    invoke-virtual {v1}, Lcom/google/protobuf/f;->j()Z

    move-result v1

    sget-object v5, Lh79;->c:Lh79$d;

    invoke-virtual {v5, v2, v3, v4, v1}, Lh79$d;->g(Ljava/lang/Object;JZ)V

    invoke-virtual {v7, v2, v6}, Lcom/google/protobuf/c0;->H(Ljava/lang/Object;I)V

    goto/16 :goto_23

    :pswitch_3e
    move v6, v3

    move-object v2, v7

    move/from16 v19, v10

    move-object v13, v12

    move v3, v0

    move-object v7, v1

    move-object v10, v4

    move-object v0, v5

    invoke-static {v3}, Lcom/google/protobuf/c0;->y(I)J

    move-result-wide v3

    const/4 v1, 0x5

    invoke-virtual {v10, v1}, Lcom/google/protobuf/g;->x(I)V

    iget-object v1, v10, Lcom/google/protobuf/g;->a:Lcom/google/protobuf/f;

    invoke-virtual {v1}, Lcom/google/protobuf/f;->n()I

    move-result v1

    invoke-static {v2, v3, v4, v1}, Lh79;->o(Ljava/lang/Object;JI)V

    invoke-virtual {v7, v2, v6}, Lcom/google/protobuf/c0;->H(Ljava/lang/Object;I)V

    goto/16 :goto_23

    :pswitch_3f
    move v6, v3

    move-object v2, v7

    move/from16 v19, v10

    move-object v13, v12

    move v3, v0

    move-object v7, v1

    move-object v10, v4

    move-object v0, v5

    invoke-static {v3}, Lcom/google/protobuf/c0;->y(I)J

    move-result-wide v3

    const/4 v1, 0x1

    invoke-virtual {v10, v1}, Lcom/google/protobuf/g;->x(I)V

    iget-object v1, v10, Lcom/google/protobuf/g;->a:Lcom/google/protobuf/f;

    invoke-virtual {v1}, Lcom/google/protobuf/f;->o()J

    move-result-wide v11

    invoke-static {v2, v3, v4, v11, v12}, Lh79;->p(Ljava/lang/Object;JJ)V

    invoke-virtual {v7, v2, v6}, Lcom/google/protobuf/c0;->H(Ljava/lang/Object;I)V

    goto/16 :goto_23

    :pswitch_40
    move v6, v3

    move-object v2, v7

    move/from16 v19, v10

    move-object v13, v12

    move v3, v0

    move-object v7, v1

    move-object v10, v4

    move-object v0, v5

    invoke-static {v3}, Lcom/google/protobuf/c0;->y(I)J

    move-result-wide v3

    const/4 v1, 0x0

    invoke-virtual {v10, v1}, Lcom/google/protobuf/g;->x(I)V

    iget-object v1, v10, Lcom/google/protobuf/g;->a:Lcom/google/protobuf/f;

    invoke-virtual {v1}, Lcom/google/protobuf/f;->q()I

    move-result v1

    invoke-static {v2, v3, v4, v1}, Lh79;->o(Ljava/lang/Object;JI)V

    invoke-virtual {v7, v2, v6}, Lcom/google/protobuf/c0;->H(Ljava/lang/Object;I)V

    goto/16 :goto_23

    :pswitch_41
    move v6, v3

    move-object v2, v7

    move/from16 v19, v10

    move-object v13, v12

    move v3, v0

    move-object v7, v1

    move-object v10, v4

    move-object v0, v5

    invoke-static {v3}, Lcom/google/protobuf/c0;->y(I)J

    move-result-wide v3

    const/4 v1, 0x0

    invoke-virtual {v10, v1}, Lcom/google/protobuf/g;->x(I)V

    iget-object v1, v10, Lcom/google/protobuf/g;->a:Lcom/google/protobuf/f;

    invoke-virtual {v1}, Lcom/google/protobuf/f;->B()J

    move-result-wide v11

    invoke-static {v2, v3, v4, v11, v12}, Lh79;->p(Ljava/lang/Object;JJ)V

    invoke-virtual {v7, v2, v6}, Lcom/google/protobuf/c0;->H(Ljava/lang/Object;I)V

    goto/16 :goto_23

    :pswitch_42
    move v6, v3

    move-object v2, v7

    move/from16 v19, v10

    move-object v13, v12

    move v3, v0

    move-object v7, v1

    move-object v10, v4

    move-object v0, v5

    invoke-static {v3}, Lcom/google/protobuf/c0;->y(I)J

    move-result-wide v3

    const/4 v1, 0x0

    invoke-virtual {v10, v1}, Lcom/google/protobuf/g;->x(I)V

    iget-object v1, v10, Lcom/google/protobuf/g;->a:Lcom/google/protobuf/f;

    invoke-virtual {v1}, Lcom/google/protobuf/f;->r()J

    move-result-wide v11

    invoke-static {v2, v3, v4, v11, v12}, Lh79;->p(Ljava/lang/Object;JJ)V

    invoke-virtual {v7, v2, v6}, Lcom/google/protobuf/c0;->H(Ljava/lang/Object;I)V

    goto :goto_23

    :pswitch_43
    move v6, v3

    move-object v2, v7

    move/from16 v19, v10

    move-object v13, v12

    move v3, v0

    move-object v7, v1

    move-object v10, v4

    move-object v0, v5

    invoke-static {v3}, Lcom/google/protobuf/c0;->y(I)J

    move-result-wide v3

    const/4 v1, 0x5

    invoke-virtual {v10, v1}, Lcom/google/protobuf/g;->x(I)V

    iget-object v1, v10, Lcom/google/protobuf/g;->a:Lcom/google/protobuf/f;

    invoke-virtual {v1}, Lcom/google/protobuf/f;->p()F

    move-result v1

    sget-object v5, Lh79;->c:Lh79$d;

    invoke-virtual {v5, v2, v3, v4, v1}, Lh79$d;->j(Ljava/lang/Object;JF)V

    invoke-virtual {v7, v2, v6}, Lcom/google/protobuf/c0;->H(Ljava/lang/Object;I)V

    goto :goto_23

    :pswitch_44
    move v6, v3

    move-object v2, v7

    move/from16 v19, v10

    move-object v13, v12

    move v3, v0

    move-object v7, v1

    move-object v10, v4

    move-object v0, v5

    invoke-static {v3}, Lcom/google/protobuf/c0;->y(I)J

    move-result-wide v3

    const/4 v1, 0x1

    invoke-virtual {v10, v1}, Lcom/google/protobuf/g;->x(I)V

    iget-object v1, v10, Lcom/google/protobuf/g;->a:Lcom/google/protobuf/f;

    invoke-virtual {v1}, Lcom/google/protobuf/f;->l()D

    move-result-wide v11

    sget-object v0, Lh79;->c:Lh79$d;
    :try_end_21
    .catch Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_21 .. :try_end_21} :catch_5
    .catchall {:try_start_21 .. :try_end_21} :catchall_11

    move-object v1, v2

    move-wide v2, v3

    move-wide v4, v11

    :try_start_22
    invoke-virtual/range {v0 .. v5}, Lh79$d;->i(Ljava/lang/Object;JD)V
    :try_end_22
    .catch Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_22 .. :try_end_22} :catch_f
    .catchall {:try_start_22 .. :try_end_22} :catchall_16

    move-object v2, v1

    :try_start_23
    invoke-virtual {v7, v2, v6}, Lcom/google/protobuf/c0;->H(Ljava/lang/Object;I)V
    :try_end_23
    .catch Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_23 .. :try_end_23} :catch_5
    .catchall {:try_start_23 .. :try_end_23} :catchall_11

    :goto_23
    move-object v6, v15

    :cond_11
    :goto_24
    move-object v5, v14

    goto :goto_29

    :catchall_16
    move-exception v0

    goto/16 :goto_1b

    :catch_f
    move-object v2, v1

    goto/16 :goto_19

    :catchall_17
    move-exception v0

    move-object v2, v7

    move/from16 v19, v10

    goto/16 :goto_1e

    :catch_10
    move-object v2, v7

    move/from16 v19, v10

    move-object v13, v12

    move-object v7, v1

    move-object v10, v4

    goto/16 :goto_19

    :goto_25
    :try_start_24
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v6, :cond_12

    invoke-virtual {v14, v2}, Lcom/google/protobuf/j0;->f(Ljava/lang/Object;)Lcom/google/protobuf/k0;

    move-result-object v0

    move-object v6, v0

    :cond_12
    const/4 v1, 0x0

    goto :goto_26

    :catchall_18
    move-exception v0

    goto/16 :goto_f

    :goto_26
    invoke-virtual {v14, v1, v10, v6}, Lcom/google/protobuf/j0;->l(ILcom/google/protobuf/g;Ljava/lang/Object;)Z

    move-result v0
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_18

    if-nez v0, :cond_11

    move-object v4, v6

    move/from16 v10, v19

    :goto_27
    if-ge v10, v9, :cond_13

    aget v3, v8, v10

    move-object/from16 v6, p1

    move-object v1, v7

    move-object v5, v14

    invoke-virtual/range {v1 .. v6}, Lcom/google/protobuf/c0;->j(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/protobuf/j0;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v10, v10, 0x1

    move-object/from16 v7, p0

    goto :goto_27

    :cond_13
    move-object v5, v14

    if-eqz v4, :cond_14

    invoke-virtual {v5, v2, v4}, Lcom/google/protobuf/j0;->n(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_14
    :goto_28
    return-void

    :goto_29
    move-object/from16 v1, p0

    move-object/from16 v4, p3

    move-object v12, v13

    move/from16 v10, v19

    goto/16 :goto_0

    :catchall_19
    move-exception v0

    goto/16 :goto_2

    :catchall_1a
    move-exception v0

    move-object/from16 v2, p1

    move-object v15, v6

    goto/16 :goto_6

    :goto_2a
    move-object v4, v6

    move/from16 v10, v19

    :goto_2b
    if-ge v10, v9, :cond_15

    aget v3, v8, v10

    move-object/from16 v6, p1

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/google/protobuf/c0;->j(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/protobuf/j0;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v10, v10, 0x1

    goto :goto_2b

    :cond_15
    if-eqz v4, :cond_16

    invoke-virtual {v5, v2, v4}, Lcom/google/protobuf/j0;->n(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_16
    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
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

.method public final f(Lcom/google/protobuf/o;Lcom/google/protobuf/o;)Z
    .locals 11

    iget-object v0, p0, Lcom/google/protobuf/c0;->a:[I

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, 0x1

    if-ge v3, v1, :cond_2

    invoke-virtual {p0, v3}, Lcom/google/protobuf/c0;->N(I)I

    move-result v5

    const v6, 0xfffff

    and-int v7, v5, v6

    int-to-long v7, v7

    invoke-static {v5}, Lcom/google/protobuf/c0;->M(I)I

    move-result v5

    packed-switch v5, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    add-int/lit8 v5, v3, 0x2

    aget v5, v0, v5

    and-int/2addr v5, v6

    int-to-long v5, v5

    invoke-static {p1, v5, v6}, Lh79;->h(Ljava/lang/Object;J)I

    move-result v9

    invoke-static {p2, v5, v6}, Lh79;->h(Ljava/lang/Object;J)I

    move-result v5

    if-ne v9, v5, :cond_0

    invoke-static {p1, v7, v8}, Lh79;->j(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-static {p2, v7, v8}, Lh79;->j(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/google/protobuf/g0;->m(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto/16 :goto_1

    :cond_0
    move v4, v2

    goto/16 :goto_1

    :pswitch_1
    invoke-static {p1, v7, v8}, Lh79;->j(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p2, v7, v8}, Lh79;->j(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/g0;->m(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    goto/16 :goto_1

    :pswitch_2
    invoke-static {p1, v7, v8}, Lh79;->j(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p2, v7, v8}, Lh79;->j(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/g0;->m(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    goto/16 :goto_1

    :pswitch_3
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/protobuf/c0;->g(Lcom/google/protobuf/o;Lcom/google/protobuf/o;I)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {p1, v7, v8}, Lh79;->j(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-static {p2, v7, v8}, Lh79;->j(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/google/protobuf/g0;->m(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto/16 :goto_1

    :pswitch_4
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/protobuf/c0;->g(Lcom/google/protobuf/o;Lcom/google/protobuf/o;I)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {p1, v7, v8}, Lh79;->i(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-static {p2, v7, v8}, Lh79;->i(Ljava/lang/Object;J)J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-nez v5, :cond_0

    goto/16 :goto_1

    :pswitch_5
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/protobuf/c0;->g(Lcom/google/protobuf/o;Lcom/google/protobuf/o;I)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {p1, v7, v8}, Lh79;->h(Ljava/lang/Object;J)I

    move-result v5

    invoke-static {p2, v7, v8}, Lh79;->h(Ljava/lang/Object;J)I

    move-result v6

    if-ne v5, v6, :cond_0

    goto/16 :goto_1

    :pswitch_6
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/protobuf/c0;->g(Lcom/google/protobuf/o;Lcom/google/protobuf/o;I)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {p1, v7, v8}, Lh79;->i(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-static {p2, v7, v8}, Lh79;->i(Ljava/lang/Object;J)J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-nez v5, :cond_0

    goto/16 :goto_1

    :pswitch_7
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/protobuf/c0;->g(Lcom/google/protobuf/o;Lcom/google/protobuf/o;I)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {p1, v7, v8}, Lh79;->h(Ljava/lang/Object;J)I

    move-result v5

    invoke-static {p2, v7, v8}, Lh79;->h(Ljava/lang/Object;J)I

    move-result v6

    if-ne v5, v6, :cond_0

    goto/16 :goto_1

    :pswitch_8
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/protobuf/c0;->g(Lcom/google/protobuf/o;Lcom/google/protobuf/o;I)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {p1, v7, v8}, Lh79;->h(Ljava/lang/Object;J)I

    move-result v5

    invoke-static {p2, v7, v8}, Lh79;->h(Ljava/lang/Object;J)I

    move-result v6

    if-ne v5, v6, :cond_0

    goto/16 :goto_1

    :pswitch_9
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/protobuf/c0;->g(Lcom/google/protobuf/o;Lcom/google/protobuf/o;I)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {p1, v7, v8}, Lh79;->h(Ljava/lang/Object;J)I

    move-result v5

    invoke-static {p2, v7, v8}, Lh79;->h(Ljava/lang/Object;J)I

    move-result v6

    if-ne v5, v6, :cond_0

    goto/16 :goto_1

    :pswitch_a
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/protobuf/c0;->g(Lcom/google/protobuf/o;Lcom/google/protobuf/o;I)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {p1, v7, v8}, Lh79;->j(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-static {p2, v7, v8}, Lh79;->j(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/google/protobuf/g0;->m(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto/16 :goto_1

    :pswitch_b
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/protobuf/c0;->g(Lcom/google/protobuf/o;Lcom/google/protobuf/o;I)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {p1, v7, v8}, Lh79;->j(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-static {p2, v7, v8}, Lh79;->j(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/google/protobuf/g0;->m(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto/16 :goto_1

    :pswitch_c
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/protobuf/c0;->g(Lcom/google/protobuf/o;Lcom/google/protobuf/o;I)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {p1, v7, v8}, Lh79;->j(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-static {p2, v7, v8}, Lh79;->j(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/google/protobuf/g0;->m(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto/16 :goto_1

    :pswitch_d
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/protobuf/c0;->g(Lcom/google/protobuf/o;Lcom/google/protobuf/o;I)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Lh79;->c:Lh79$d;

    invoke-virtual {v5, p1, v7, v8}, Lh79$d;->b(Ljava/lang/Object;J)Z

    move-result v6

    invoke-virtual {v5, p2, v7, v8}, Lh79$d;->b(Ljava/lang/Object;J)Z

    move-result v5

    if-ne v6, v5, :cond_0

    goto/16 :goto_1

    :pswitch_e
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/protobuf/c0;->g(Lcom/google/protobuf/o;Lcom/google/protobuf/o;I)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {p1, v7, v8}, Lh79;->h(Ljava/lang/Object;J)I

    move-result v5

    invoke-static {p2, v7, v8}, Lh79;->h(Ljava/lang/Object;J)I

    move-result v6

    if-ne v5, v6, :cond_0

    goto/16 :goto_1

    :pswitch_f
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/protobuf/c0;->g(Lcom/google/protobuf/o;Lcom/google/protobuf/o;I)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {p1, v7, v8}, Lh79;->i(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-static {p2, v7, v8}, Lh79;->i(Ljava/lang/Object;J)J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-nez v5, :cond_0

    goto/16 :goto_1

    :pswitch_10
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/protobuf/c0;->g(Lcom/google/protobuf/o;Lcom/google/protobuf/o;I)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {p1, v7, v8}, Lh79;->h(Ljava/lang/Object;J)I

    move-result v5

    invoke-static {p2, v7, v8}, Lh79;->h(Ljava/lang/Object;J)I

    move-result v6

    if-ne v5, v6, :cond_0

    goto :goto_1

    :pswitch_11
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/protobuf/c0;->g(Lcom/google/protobuf/o;Lcom/google/protobuf/o;I)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {p1, v7, v8}, Lh79;->i(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-static {p2, v7, v8}, Lh79;->i(Ljava/lang/Object;J)J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-nez v5, :cond_0

    goto :goto_1

    :pswitch_12
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/protobuf/c0;->g(Lcom/google/protobuf/o;Lcom/google/protobuf/o;I)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {p1, v7, v8}, Lh79;->i(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-static {p2, v7, v8}, Lh79;->i(Ljava/lang/Object;J)J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-nez v5, :cond_0

    goto :goto_1

    :pswitch_13
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/protobuf/c0;->g(Lcom/google/protobuf/o;Lcom/google/protobuf/o;I)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Lh79;->c:Lh79$d;

    invoke-virtual {v5, p1, v7, v8}, Lh79$d;->f(Ljava/lang/Object;J)F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v6

    invoke-virtual {v5, p2, v7, v8}, Lh79$d;->f(Ljava/lang/Object;J)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v5

    if-ne v6, v5, :cond_0

    goto :goto_1

    :pswitch_14
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/protobuf/c0;->g(Lcom/google/protobuf/o;Lcom/google/protobuf/o;I)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Lh79;->c:Lh79$d;

    invoke-virtual {v5, p1, v7, v8}, Lh79$d;->e(Ljava/lang/Object;J)D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v9

    invoke-virtual {v5, p2, v7, v8}, Lh79$d;->e(Ljava/lang/Object;J)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v5

    cmp-long v5, v9, v5

    if-nez v5, :cond_0

    :goto_1
    if-nez v4, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v3, v3, 0x3

    goto/16 :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/protobuf/c0;->m:Lcom/google/protobuf/j0;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/j0;->g(Ljava/lang/Object;)Lcom/google/protobuf/k0;

    move-result-object v1

    invoke-virtual {v0, p2}, Lcom/google/protobuf/j0;->g(Ljava/lang/Object;)Lcom/google/protobuf/k0;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/protobuf/k0;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    :goto_2
    return v2

    :cond_3
    iget-boolean v0, p0, Lcom/google/protobuf/c0;->f:Z

    if-eqz v0, :cond_4

    iget-object p0, p0, Lcom/google/protobuf/c0;->n:Lcom/google/protobuf/k;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/k;->c(Ljava/lang/Object;)Lcom/google/protobuf/m;

    move-result-object p1

    invoke-virtual {p0, p2}, Lcom/google/protobuf/k;->c(Ljava/lang/Object;)Lcom/google/protobuf/m;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/google/protobuf/m;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_4
    return v4

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_14
        :pswitch_13
        :pswitch_12
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
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final g(Lcom/google/protobuf/o;Lcom/google/protobuf/o;I)Z
    .locals 0

    invoke-virtual {p0, p1, p3}, Lcom/google/protobuf/c0;->o(Ljava/lang/Object;I)Z

    move-result p1

    invoke-virtual {p0, p2, p3}, Lcom/google/protobuf/c0;->o(Ljava/lang/Object;I)Z

    move-result p0

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final isInitialized(Ljava/lang/Object;)Z
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const v6, 0xfffff

    const/4 v7, 0x0

    move v2, v6

    move v3, v7

    move v8, v3

    :goto_0
    iget v4, v0, Lcom/google/protobuf/c0;->i:I

    const/4 v5, 0x1

    if-ge v8, v4, :cond_e

    iget-object v4, v0, Lcom/google/protobuf/c0;->h:[I

    aget v4, v4, v8

    iget-object v9, v0, Lcom/google/protobuf/c0;->a:[I

    aget v10, v9, v4

    invoke-virtual {v0, v4}, Lcom/google/protobuf/c0;->N(I)I

    move-result v11

    add-int/lit8 v12, v4, 0x2

    aget v9, v9, v12

    and-int v12, v9, v6

    ushr-int/lit8 v9, v9, 0x14

    shl-int/2addr v5, v9

    if-eq v12, v2, :cond_1

    if-eq v12, v6, :cond_0

    sget-object v2, Lcom/google/protobuf/c0;->q:Lsun/misc/Unsafe;

    int-to-long v13, v12

    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    :cond_0
    move v2, v4

    move v4, v3

    move v3, v12

    goto :goto_1

    :cond_1
    move v15, v3

    move v3, v2

    move v2, v4

    move v4, v15

    :goto_1
    const/high16 v9, 0x10000000

    and-int/2addr v9, v11

    if-eqz v9, :cond_2

    invoke-virtual/range {v0 .. v5}, Lcom/google/protobuf/c0;->p(Ljava/lang/Object;IIII)Z

    move-result v9

    if-nez v9, :cond_2

    goto/16 :goto_4

    :cond_2
    invoke-static {v11}, Lcom/google/protobuf/c0;->M(I)I

    move-result v9

    const/16 v12, 0x9

    if-eq v9, v12, :cond_c

    const/16 v12, 0x11

    if-eq v9, v12, :cond_c

    const/16 v5, 0x1b

    if-eq v9, v5, :cond_9

    const/16 v5, 0x3c

    if-eq v9, v5, :cond_8

    const/16 v5, 0x44

    if-eq v9, v5, :cond_8

    const/16 v5, 0x31

    if-eq v9, v5, :cond_9

    const/16 v5, 0x32

    if-eq v9, v5, :cond_3

    goto/16 :goto_3

    :cond_3
    and-int v5, v11, v6

    int-to-long v9, v5

    invoke-static {v1, v9, v10}, Lh79;->j(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    iget-object v9, v0, Lcom/google/protobuf/c0;->o:Lcom/google/protobuf/y;

    invoke-interface {v9, v5}, Lcom/google/protobuf/y;->forMapData(Ljava/lang/Object;)Lcom/google/protobuf/x;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/HashMap;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_4

    goto/16 :goto_3

    :cond_4
    invoke-virtual {v0, v2}, Lcom/google/protobuf/c0;->l(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v9, v2}, Lcom/google/protobuf/y;->forMapMetadata(Ljava/lang/Object;)Lcom/google/protobuf/w$a;

    move-result-object v2

    iget-object v2, v2, Lcom/google/protobuf/w$a;->b:Lui9;

    invoke-virtual {v2}, Lui9;->a()Lvi9;

    move-result-object v2

    sget-object v9, Lvi9;->MESSAGE:Lvi9;

    if-eq v2, v9, :cond_5

    goto/16 :goto_3

    :cond_5
    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v5, 0x0

    :cond_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    if-nez v5, :cond_7

    sget-object v5, Lrs6;->c:Lrs6;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v5, v10}, Lrs6;->a(Ljava/lang/Class;)Lcom/google/protobuf/f0;

    move-result-object v5

    :cond_7
    invoke-interface {v5, v9}, Lcom/google/protobuf/f0;->isInitialized(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6

    goto/16 :goto_4

    :cond_8
    invoke-virtual {v0, v1, v10, v2}, Lcom/google/protobuf/c0;->r(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-virtual {v0, v2}, Lcom/google/protobuf/c0;->m(I)Lcom/google/protobuf/f0;

    move-result-object v2

    and-int v5, v11, v6

    int-to-long v9, v5

    invoke-static {v1, v9, v10}, Lh79;->j(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v2, v5}, Lcom/google/protobuf/f0;->isInitialized(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    goto :goto_4

    :cond_9
    and-int v5, v11, v6

    int-to-long v9, v5

    invoke-static {v1, v9, v10}, Lh79;->j(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_a

    goto :goto_3

    :cond_a
    invoke-virtual {v0, v2}, Lcom/google/protobuf/c0;->m(I)Lcom/google/protobuf/f0;

    move-result-object v2

    move v9, v7

    :goto_2
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v10

    if-ge v9, v10, :cond_d

    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v2, v10}, Lcom/google/protobuf/f0;->isInitialized(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_b

    goto :goto_4

    :cond_b
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_c
    invoke-virtual/range {v0 .. v5}, Lcom/google/protobuf/c0;->p(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-virtual {v0, v2}, Lcom/google/protobuf/c0;->m(I)Lcom/google/protobuf/f0;

    move-result-object v2

    and-int v5, v11, v6

    int-to-long v9, v5

    invoke-static {v1, v9, v10}, Lh79;->j(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v2, v5}, Lcom/google/protobuf/f0;->isInitialized(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    goto :goto_4

    :cond_d
    :goto_3
    add-int/lit8 v8, v8, 0x1

    move v2, v3

    move v3, v4

    goto/16 :goto_0

    :cond_e
    iget-boolean v2, v0, Lcom/google/protobuf/c0;->f:Z

    if-eqz v2, :cond_f

    iget-object v0, v0, Lcom/google/protobuf/c0;->n:Lcom/google/protobuf/k;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/k;->c(Ljava/lang/Object;)Lcom/google/protobuf/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/m;->h()Z

    move-result v0

    if-nez v0, :cond_f

    :goto_4
    return v7

    :cond_f
    return v5
.end method

.method public final j(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/protobuf/j0;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "ITUB;",
            "Lcom/google/protobuf/j0<",
            "TUT;TUB;>;",
            "Ljava/lang/Object;",
            ")TUB;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/c0;->a:[I

    aget v0, v0, p2

    invoke-virtual {p0, p2}, Lcom/google/protobuf/c0;->N(I)I

    move-result v1

    const v2, 0xfffff

    and-int/2addr v1, v2

    int-to-long v1, v1

    invoke-static {p1, v1, v2}, Lh79;->j(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p2}, Lcom/google/protobuf/c0;->k(I)Lcom/google/protobuf/q$e;

    move-result-object v1

    if-nez v1, :cond_1

    :goto_0
    return-object p3

    :cond_1
    iget-object v2, p0, Lcom/google/protobuf/c0;->o:Lcom/google/protobuf/y;

    invoke-interface {v2, p1}, Lcom/google/protobuf/y;->forMutableMapData(Ljava/lang/Object;)Lcom/google/protobuf/x;

    move-result-object p1

    invoke-virtual {p0, p2}, Lcom/google/protobuf/c0;->l(I)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {v2, p0}, Lcom/google/protobuf/y;->forMapMetadata(Ljava/lang/Object;)Lcom/google/protobuf/w$a;

    move-result-object p0

    invoke-virtual {p1}, Lcom/google/protobuf/x;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/google/protobuf/q$e;->isInRange(I)Z

    move-result v2

    if-nez v2, :cond_2

    if-nez p3, :cond_3

    invoke-virtual {p4, p5}, Lcom/google/protobuf/j0;->f(Ljava/lang/Object;)Lcom/google/protobuf/k0;

    move-result-object p3

    :cond_3
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {p0, v2, v3}, Lcom/google/protobuf/w;->a(Lcom/google/protobuf/w$a;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    new-array v3, v2, [B

    new-instance v4, Lcom/google/protobuf/CodedOutputStream$b;

    const/4 v5, 0x0

    invoke-direct {v4, v3, v5, v2}, Lcom/google/protobuf/CodedOutputStream$b;-><init>([BII)V

    :try_start_0
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    iget-object v5, p0, Lcom/google/protobuf/w$a;->a:Lui9;

    const/4 v6, 0x1

    invoke-static {v4, v5, v6, v2}, Lcom/google/protobuf/m;->o(Lcom/google/protobuf/CodedOutputStream;Lui9;ILjava/lang/Object;)V

    iget-object v2, p0, Lcom/google/protobuf/w$a;->b:Lui9;

    const/4 v5, 0x2

    invoke-static {v4, v2, v5, p2}, Lcom/google/protobuf/m;->o(Lcom/google/protobuf/CodedOutputStream;Lui9;ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v4}, Lcom/google/protobuf/CodedOutputStream;->U()V

    new-instance p2, Lfx0$h;

    invoke-direct {p2, v3}, Lfx0$h;-><init>([B)V

    invoke-virtual {p4, p3, v0, p2}, Lcom/google/protobuf/j0;->d(Ljava/lang/Object;ILfx0;)V

    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    :catch_0
    move-exception p0

    invoke-static {p0}, Lti0;->f(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0

    :cond_4
    return-object p3
.end method

.method public final k(I)Lcom/google/protobuf/q$e;
    .locals 0

    div-int/lit8 p1, p1, 0x3

    mul-int/lit8 p1, p1, 0x2

    add-int/lit8 p1, p1, 0x1

    iget-object p0, p0, Lcom/google/protobuf/c0;->b:[Ljava/lang/Object;

    aget-object p0, p0, p1

    check-cast p0, Lcom/google/protobuf/q$e;

    return-object p0
.end method

.method public final l(I)Ljava/lang/Object;
    .locals 0

    div-int/lit8 p1, p1, 0x3

    mul-int/lit8 p1, p1, 0x2

    iget-object p0, p0, Lcom/google/protobuf/c0;->b:[Ljava/lang/Object;

    aget-object p0, p0, p1

    return-object p0
.end method

.method public final m(I)Lcom/google/protobuf/f0;
    .locals 2

    div-int/lit8 p1, p1, 0x3

    mul-int/lit8 p1, p1, 0x2

    iget-object p0, p0, Lcom/google/protobuf/c0;->b:[Ljava/lang/Object;

    aget-object v0, p0, p1

    check-cast v0, Lcom/google/protobuf/f0;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Lrs6;->c:Lrs6;

    add-int/lit8 v1, p1, 0x1

    aget-object v1, p0, v1

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {v0, v1}, Lrs6;->a(Ljava/lang/Class;)Lcom/google/protobuf/f0;

    move-result-object v0

    aput-object v0, p0, p1

    return-object v0
.end method

.method public final makeImmutable(Ljava/lang/Object;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/protobuf/c0;->q(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    instance-of v0, p1, Lcom/google/protobuf/o;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/google/protobuf/o;

    invoke-virtual {v0}, Lcom/google/protobuf/o;->clearMemoizedSerializedSize()V

    invoke-virtual {v0}, Lcom/google/protobuf/o;->clearMemoizedHashCode()V

    invoke-virtual {v0}, Lcom/google/protobuf/o;->markImmutable()V

    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/c0;->a:[I

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_5

    invoke-virtual {p0, v2}, Lcom/google/protobuf/c0;->N(I)I

    move-result v3

    const v4, 0xfffff

    and-int/2addr v4, v3

    int-to-long v4, v4

    invoke-static {v3}, Lcom/google/protobuf/c0;->M(I)I

    move-result v3

    const/16 v6, 0x9

    sget-object v7, Lcom/google/protobuf/c0;->q:Lsun/misc/Unsafe;

    if-eq v3, v6, :cond_3

    const/16 v6, 0x3c

    if-eq v3, v6, :cond_2

    const/16 v6, 0x44

    if-eq v3, v6, :cond_2

    packed-switch v3, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    invoke-virtual {v7, p1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_4

    iget-object v6, p0, Lcom/google/protobuf/c0;->o:Lcom/google/protobuf/y;

    invoke-interface {v6, v3}, Lcom/google/protobuf/y;->toImmutable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v7, p1, v4, v5, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_1

    :pswitch_1
    iget-object v3, p0, Lcom/google/protobuf/c0;->l:Lcom/google/protobuf/u;

    invoke-virtual {v3, p1, v4, v5}, Lcom/google/protobuf/u;->a(Ljava/lang/Object;J)V

    goto :goto_1

    :cond_2
    aget v3, v0, v2

    invoke-virtual {p0, p1, v3, v2}, Lcom/google/protobuf/c0;->r(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p0, v2}, Lcom/google/protobuf/c0;->m(I)Lcom/google/protobuf/f0;

    move-result-object v3

    invoke-virtual {v7, p1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/google/protobuf/f0;->makeImmutable(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    :pswitch_2
    invoke-virtual {p0, p1, v2}, Lcom/google/protobuf/c0;->o(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p0, v2}, Lcom/google/protobuf/c0;->m(I)Lcom/google/protobuf/f0;

    move-result-object v3

    invoke-virtual {v7, p1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/google/protobuf/f0;->makeImmutable(Ljava/lang/Object;)V

    :cond_4
    :goto_1
    add-int/lit8 v2, v2, 0x3

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/google/protobuf/c0;->m:Lcom/google/protobuf/j0;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/j0;->j(Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/google/protobuf/c0;->f:Z

    if-eqz v0, :cond_6

    iget-object p0, p0, Lcom/google/protobuf/c0;->n:Lcom/google/protobuf/k;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/k;->f(Ljava/lang/Object;)V

    :cond_6
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final mergeFrom(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)V"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/protobuf/c0;->h(Ljava/lang/Object;)V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/protobuf/c0;->a:[I

    array-length v2, v1

    if-ge v0, v2, :cond_1

    invoke-virtual {p0, v0}, Lcom/google/protobuf/c0;->N(I)I

    move-result v2

    const v3, 0xfffff

    and-int/2addr v3, v2

    int-to-long v6, v3

    aget v1, v1, v0

    invoke-static {v2}, Lcom/google/protobuf/c0;->M(I)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/protobuf/c0;->u(Ljava/lang/Object;Ljava/lang/Object;I)V

    :cond_0
    :goto_1
    move-object v5, p1

    goto/16 :goto_2

    :pswitch_1
    invoke-virtual {p0, p2, v1, v0}, Lcom/google/protobuf/c0;->r(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p2, v6, v7}, Lh79;->j(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1, v6, v7, v2}, Lh79;->q(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {p0, p1, v1, v0}, Lcom/google/protobuf/c0;->I(Ljava/lang/Object;II)V

    goto :goto_1

    :pswitch_2
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/protobuf/c0;->u(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto :goto_1

    :pswitch_3
    invoke-virtual {p0, p2, v1, v0}, Lcom/google/protobuf/c0;->r(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p2, v6, v7}, Lh79;->j(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1, v6, v7, v2}, Lh79;->q(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {p0, p1, v1, v0}, Lcom/google/protobuf/c0;->I(Ljava/lang/Object;II)V

    goto :goto_1

    :pswitch_4
    sget-object v1, Lcom/google/protobuf/g0;->a:Ljava/lang/Class;

    invoke-static {p1, v6, v7}, Lh79;->j(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p2, v6, v7}, Lh79;->j(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lcom/google/protobuf/c0;->o:Lcom/google/protobuf/y;

    invoke-interface {v3, v1, v2}, Lcom/google/protobuf/y;->mergeFrom(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/protobuf/x;

    move-result-object v1

    invoke-static {p1, v6, v7, v1}, Lh79;->q(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_1

    :pswitch_5
    iget-object v1, p0, Lcom/google/protobuf/c0;->l:Lcom/google/protobuf/u;

    invoke-virtual {v1, p1, p2, v6, v7}, Lcom/google/protobuf/u;->b(Ljava/lang/Object;Ljava/lang/Object;J)V

    goto :goto_1

    :pswitch_6
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/protobuf/c0;->t(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto :goto_1

    :pswitch_7
    invoke-virtual {p0, p2, v0}, Lcom/google/protobuf/c0;->o(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, v6, v7}, Lh79;->i(Ljava/lang/Object;J)J

    move-result-wide v1

    invoke-static {p1, v6, v7, v1, v2}, Lh79;->p(Ljava/lang/Object;JJ)V

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/c0;->H(Ljava/lang/Object;I)V

    goto :goto_1

    :pswitch_8
    invoke-virtual {p0, p2, v0}, Lcom/google/protobuf/c0;->o(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, v6, v7}, Lh79;->h(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v6, v7, v1}, Lh79;->o(Ljava/lang/Object;JI)V

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/c0;->H(Ljava/lang/Object;I)V

    goto :goto_1

    :pswitch_9
    invoke-virtual {p0, p2, v0}, Lcom/google/protobuf/c0;->o(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, v6, v7}, Lh79;->i(Ljava/lang/Object;J)J

    move-result-wide v1

    invoke-static {p1, v6, v7, v1, v2}, Lh79;->p(Ljava/lang/Object;JJ)V

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/c0;->H(Ljava/lang/Object;I)V

    goto :goto_1

    :pswitch_a
    invoke-virtual {p0, p2, v0}, Lcom/google/protobuf/c0;->o(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, v6, v7}, Lh79;->h(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v6, v7, v1}, Lh79;->o(Ljava/lang/Object;JI)V

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/c0;->H(Ljava/lang/Object;I)V

    goto/16 :goto_1

    :pswitch_b
    invoke-virtual {p0, p2, v0}, Lcom/google/protobuf/c0;->o(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, v6, v7}, Lh79;->h(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v6, v7, v1}, Lh79;->o(Ljava/lang/Object;JI)V

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/c0;->H(Ljava/lang/Object;I)V

    goto/16 :goto_1

    :pswitch_c
    invoke-virtual {p0, p2, v0}, Lcom/google/protobuf/c0;->o(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, v6, v7}, Lh79;->h(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v6, v7, v1}, Lh79;->o(Ljava/lang/Object;JI)V

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/c0;->H(Ljava/lang/Object;I)V

    goto/16 :goto_1

    :pswitch_d
    invoke-virtual {p0, p2, v0}, Lcom/google/protobuf/c0;->o(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, v6, v7}, Lh79;->j(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v6, v7, v1}, Lh79;->q(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/c0;->H(Ljava/lang/Object;I)V

    goto/16 :goto_1

    :pswitch_e
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/protobuf/c0;->t(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_1

    :pswitch_f
    invoke-virtual {p0, p2, v0}, Lcom/google/protobuf/c0;->o(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, v6, v7}, Lh79;->j(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v6, v7, v1}, Lh79;->q(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/c0;->H(Ljava/lang/Object;I)V

    goto/16 :goto_1

    :pswitch_10
    invoke-virtual {p0, p2, v0}, Lcom/google/protobuf/c0;->o(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lh79;->c:Lh79$d;

    invoke-virtual {v1, p2, v6, v7}, Lh79$d;->b(Ljava/lang/Object;J)Z

    move-result v2

    invoke-virtual {v1, p1, v6, v7, v2}, Lh79$d;->g(Ljava/lang/Object;JZ)V

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/c0;->H(Ljava/lang/Object;I)V

    goto/16 :goto_1

    :pswitch_11
    invoke-virtual {p0, p2, v0}, Lcom/google/protobuf/c0;->o(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, v6, v7}, Lh79;->h(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v6, v7, v1}, Lh79;->o(Ljava/lang/Object;JI)V

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/c0;->H(Ljava/lang/Object;I)V

    goto/16 :goto_1

    :pswitch_12
    invoke-virtual {p0, p2, v0}, Lcom/google/protobuf/c0;->o(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, v6, v7}, Lh79;->i(Ljava/lang/Object;J)J

    move-result-wide v1

    invoke-static {p1, v6, v7, v1, v2}, Lh79;->p(Ljava/lang/Object;JJ)V

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/c0;->H(Ljava/lang/Object;I)V

    goto/16 :goto_1

    :pswitch_13
    invoke-virtual {p0, p2, v0}, Lcom/google/protobuf/c0;->o(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, v6, v7}, Lh79;->h(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v6, v7, v1}, Lh79;->o(Ljava/lang/Object;JI)V

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/c0;->H(Ljava/lang/Object;I)V

    goto/16 :goto_1

    :pswitch_14
    invoke-virtual {p0, p2, v0}, Lcom/google/protobuf/c0;->o(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, v6, v7}, Lh79;->i(Ljava/lang/Object;J)J

    move-result-wide v1

    invoke-static {p1, v6, v7, v1, v2}, Lh79;->p(Ljava/lang/Object;JJ)V

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/c0;->H(Ljava/lang/Object;I)V

    goto/16 :goto_1

    :pswitch_15
    invoke-virtual {p0, p2, v0}, Lcom/google/protobuf/c0;->o(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, v6, v7}, Lh79;->i(Ljava/lang/Object;J)J

    move-result-wide v1

    invoke-static {p1, v6, v7, v1, v2}, Lh79;->p(Ljava/lang/Object;JJ)V

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/c0;->H(Ljava/lang/Object;I)V

    goto/16 :goto_1

    :pswitch_16
    invoke-virtual {p0, p2, v0}, Lcom/google/protobuf/c0;->o(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lh79;->c:Lh79$d;

    invoke-virtual {v1, p2, v6, v7}, Lh79$d;->f(Ljava/lang/Object;J)F

    move-result v2

    invoke-virtual {v1, p1, v6, v7, v2}, Lh79$d;->j(Ljava/lang/Object;JF)V

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/c0;->H(Ljava/lang/Object;I)V

    goto/16 :goto_1

    :pswitch_17
    invoke-virtual {p0, p2, v0}, Lcom/google/protobuf/c0;->o(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v4, Lh79;->c:Lh79$d;

    invoke-virtual {v4, p2, v6, v7}, Lh79$d;->e(Ljava/lang/Object;J)D

    move-result-wide v8

    move-object v5, p1

    invoke-virtual/range {v4 .. v9}, Lh79$d;->i(Ljava/lang/Object;JD)V

    invoke-virtual {p0, v5, v0}, Lcom/google/protobuf/c0;->H(Ljava/lang/Object;I)V

    :goto_2
    add-int/lit8 v0, v0, 0x3

    move-object p1, v5

    goto/16 :goto_0

    :cond_1
    move-object v5, p1

    sget-object p1, Lcom/google/protobuf/g0;->a:Ljava/lang/Class;

    iget-object p1, p0, Lcom/google/protobuf/c0;->m:Lcom/google/protobuf/j0;

    invoke-virtual {p1, v5}, Lcom/google/protobuf/j0;->g(Ljava/lang/Object;)Lcom/google/protobuf/k0;

    move-result-object v0

    invoke-virtual {p1, p2}, Lcom/google/protobuf/j0;->g(Ljava/lang/Object;)Lcom/google/protobuf/k0;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/j0;->k(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/protobuf/k0;

    move-result-object v0

    invoke-virtual {p1, v5, v0}, Lcom/google/protobuf/j0;->o(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-boolean p1, p0, Lcom/google/protobuf/c0;->f:Z

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/google/protobuf/c0;->n:Lcom/google/protobuf/k;

    invoke-static {p0, v5, p2}, Lcom/google/protobuf/g0;->l(Lcom/google/protobuf/k;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
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
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final newInstance()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/c0;->k:Lan5;

    iget-object p0, p0, Lcom/google/protobuf/c0;->e:Lcom/google/protobuf/a0;

    invoke-interface {v0, p0}, Lan5;->newInstance(Ljava/lang/Object;)Lcom/google/protobuf/o;

    move-result-object p0

    return-object p0
.end method

.method public final o(Ljava/lang/Object;I)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)Z"
        }
    .end annotation

    add-int/lit8 v0, p2, 0x2

    iget-object v1, p0, Lcom/google/protobuf/c0;->a:[I

    aget v0, v1, v0

    const v1, 0xfffff

    and-int v2, v0, v1

    int-to-long v2, v2

    const-wide/32 v4, 0xfffff

    cmp-long v4, v2, v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v4, :cond_2

    invoke-virtual {p0, p2}, Lcom/google/protobuf/c0;->N(I)I

    move-result p0

    and-int p2, p0, v1

    int-to-long v0, p2

    invoke-static {p0}, Lcom/google/protobuf/c0;->M(I)I

    move-result p0

    const-wide/16 v2, 0x0

    packed-switch p0, :pswitch_data_0

    invoke-static {}, Lmi2;->b()V

    return v5

    :pswitch_0
    invoke-static {p1, v0, v1}, Lh79;->j(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_3

    goto/16 :goto_0

    :pswitch_1
    invoke-static {p1, v0, v1}, Lh79;->i(Ljava/lang/Object;J)J

    move-result-wide p0

    cmp-long p0, p0, v2

    if-eqz p0, :cond_3

    goto/16 :goto_0

    :pswitch_2
    invoke-static {p1, v0, v1}, Lh79;->h(Ljava/lang/Object;J)I

    move-result p0

    if-eqz p0, :cond_3

    goto/16 :goto_0

    :pswitch_3
    invoke-static {p1, v0, v1}, Lh79;->i(Ljava/lang/Object;J)J

    move-result-wide p0

    cmp-long p0, p0, v2

    if-eqz p0, :cond_3

    goto/16 :goto_0

    :pswitch_4
    invoke-static {p1, v0, v1}, Lh79;->h(Ljava/lang/Object;J)I

    move-result p0

    if-eqz p0, :cond_3

    goto/16 :goto_0

    :pswitch_5
    invoke-static {p1, v0, v1}, Lh79;->h(Ljava/lang/Object;J)I

    move-result p0

    if-eqz p0, :cond_3

    goto/16 :goto_0

    :pswitch_6
    invoke-static {p1, v0, v1}, Lh79;->h(Ljava/lang/Object;J)I

    move-result p0

    if-eqz p0, :cond_3

    goto/16 :goto_0

    :pswitch_7
    sget-object p0, Lfx0;->c:Lfx0$h;

    invoke-static {p1, v0, v1}, Lh79;->j(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lfx0$h;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/2addr p0, v6

    return p0

    :pswitch_8
    invoke-static {p1, v0, v1}, Lh79;->j(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_3

    goto/16 :goto_0

    :pswitch_9
    invoke-static {p1, v0, v1}, Lh79;->j(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Ljava/lang/String;

    if-eqz p1, :cond_0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    xor-int/2addr p0, v6

    return p0

    :cond_0
    instance-of p1, p0, Lfx0;

    if-eqz p1, :cond_1

    sget-object p1, Lfx0;->c:Lfx0$h;

    invoke-virtual {p1, p0}, Lfx0$h;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/2addr p0, v6

    return p0

    :cond_1
    invoke-static {}, Lmi2;->b()V

    return v5

    :pswitch_a
    sget-object p0, Lh79;->c:Lh79$d;

    invoke-virtual {p0, p1, v0, v1}, Lh79$d;->b(Ljava/lang/Object;J)Z

    move-result p0

    return p0

    :pswitch_b
    invoke-static {p1, v0, v1}, Lh79;->h(Ljava/lang/Object;J)I

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_0

    :pswitch_c
    invoke-static {p1, v0, v1}, Lh79;->i(Ljava/lang/Object;J)J

    move-result-wide p0

    cmp-long p0, p0, v2

    if-eqz p0, :cond_3

    goto :goto_0

    :pswitch_d
    invoke-static {p1, v0, v1}, Lh79;->h(Ljava/lang/Object;J)I

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_0

    :pswitch_e
    invoke-static {p1, v0, v1}, Lh79;->i(Ljava/lang/Object;J)J

    move-result-wide p0

    cmp-long p0, p0, v2

    if-eqz p0, :cond_3

    goto :goto_0

    :pswitch_f
    invoke-static {p1, v0, v1}, Lh79;->i(Ljava/lang/Object;J)J

    move-result-wide p0

    cmp-long p0, p0, v2

    if-eqz p0, :cond_3

    goto :goto_0

    :pswitch_10
    sget-object p0, Lh79;->c:Lh79$d;

    invoke-virtual {p0, p1, v0, v1}, Lh79$d;->f(Ljava/lang/Object;J)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_0

    :pswitch_11
    sget-object p0, Lh79;->c:Lh79$d;

    invoke-virtual {p0, p1, v0, v1}, Lh79$d;->e(Ljava/lang/Object;J)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p0

    cmp-long p0, p0, v2

    if-eqz p0, :cond_3

    goto :goto_0

    :cond_2
    ushr-int/lit8 p0, v0, 0x14

    shl-int p0, v6, p0

    invoke-static {p1, v2, v3}, Lh79;->h(Ljava/lang/Object;J)I

    move-result p1

    and-int/2addr p0, p1

    if-eqz p0, :cond_3

    :goto_0
    return v6

    :cond_3
    return v5

    :pswitch_data_0
    .packed-switch 0x0
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

.method public final p(Ljava/lang/Object;IIII)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;IIII)Z"
        }
    .end annotation

    const v0, 0xfffff

    if-ne p3, v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/c0;->o(Ljava/lang/Object;I)Z

    move-result p0

    return p0

    :cond_0
    and-int p0, p4, p5

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final r(Ljava/lang/Object;II)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II)Z"
        }
    .end annotation

    add-int/lit8 p3, p3, 0x2

    iget-object p0, p0, Lcom/google/protobuf/c0;->a:[I

    aget p0, p0, p3

    const p3, 0xfffff

    and-int/2addr p0, p3

    int-to-long v0, p0

    invoke-static {p1, v0, v1}, Lh79;->h(Ljava/lang/Object;J)I

    move-result p0

    if-ne p0, p2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final s(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/protobuf/j;Lcom/google/protobuf/g;)V
    .locals 7

    invoke-virtual {p0, p2}, Lcom/google/protobuf/c0;->N(I)I

    move-result p2

    const v0, 0xfffff

    and-int/2addr p2, v0

    int-to-long v0, p2

    invoke-static {p1, v0, v1}, Lh79;->j(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    iget-object p0, p0, Lcom/google/protobuf/c0;->o:Lcom/google/protobuf/y;

    if-nez p2, :cond_0

    invoke-interface {p0}, Lcom/google/protobuf/y;->a()Lcom/google/protobuf/x;

    move-result-object p2

    invoke-static {p1, v0, v1, p2}, Lh79;->q(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-interface {p0, p2}, Lcom/google/protobuf/y;->isImmutable(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Lcom/google/protobuf/y;->a()Lcom/google/protobuf/x;

    move-result-object v2

    invoke-interface {p0, v2, p2}, Lcom/google/protobuf/y;->mergeFrom(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/protobuf/x;

    invoke-static {p1, v0, v1, v2}, Lh79;->q(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object p2, v2

    :cond_1
    :goto_0
    invoke-interface {p0, p2}, Lcom/google/protobuf/y;->forMutableMapData(Ljava/lang/Object;)Lcom/google/protobuf/x;

    move-result-object p1

    invoke-interface {p0, p3}, Lcom/google/protobuf/y;->forMapMetadata(Ljava/lang/Object;)Lcom/google/protobuf/w$a;

    move-result-object p0

    const/4 p2, 0x2

    invoke-virtual {p5, p2}, Lcom/google/protobuf/g;->x(I)V

    iget-object p3, p5, Lcom/google/protobuf/g;->a:Lcom/google/protobuf/f;

    invoke-virtual {p3}, Lcom/google/protobuf/f;->A()I

    move-result v0

    invoke-virtual {p3, v0}, Lcom/google/protobuf/f;->i(I)I

    move-result v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Lcom/google/protobuf/w$a;->c:Ljava/lang/Object;

    const-string v2, ""

    move-object v3, v1

    :goto_1
    :try_start_0
    invoke-virtual {p5}, Lcom/google/protobuf/g;->a()I

    move-result v4

    const v5, 0x7fffffff

    if-eq v4, v5, :cond_7

    invoke-virtual {p3}, Lcom/google/protobuf/f;->e()Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_2

    goto :goto_2

    :cond_2
    const/4 v5, 0x1

    const-string v6, "Unable to parse map entry."

    if-eq v4, v5, :cond_5

    if-eq v4, p2, :cond_4

    :try_start_1
    invoke-virtual {p5}, Lcom/google/protobuf/g;->y()Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_1

    :cond_3
    new-instance v4, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {v4, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_4
    iget-object v4, p0, Lcom/google/protobuf/w$a;->b:Lui9;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {p5, v4, v5, p4}, Lcom/google/protobuf/g;->i(Lui9;Ljava/lang/Class;Lcom/google/protobuf/j;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_1

    :cond_5
    iget-object v4, p0, Lcom/google/protobuf/w$a;->a:Lui9;

    const/4 v5, 0x0

    invoke-virtual {p5, v4, v5, v5}, Lcom/google/protobuf/g;->i(Lui9;Ljava/lang/Class;Lcom/google/protobuf/j;)Ljava/lang/Object;

    move-result-object v2
    :try_end_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    :try_start_2
    invoke-virtual {p5}, Lcom/google/protobuf/g;->y()Z

    move-result v4

    if-eqz v4, :cond_6

    goto :goto_1

    :cond_6
    new-instance p0, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p0, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    :goto_2
    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/x;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {p3, v0}, Lcom/google/protobuf/f;->h(I)V

    return-void

    :goto_3
    invoke-virtual {p3, v0}, Lcom/google/protobuf/f;->h(I)V

    throw p0
.end method

.method public final t(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;I)V"
        }
    .end annotation

    invoke-virtual {p0, p2, p3}, Lcom/google/protobuf/c0;->o(Ljava/lang/Object;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p3}, Lcom/google/protobuf/c0;->N(I)I

    move-result v0

    const v1, 0xfffff

    and-int/2addr v0, v1

    int-to-long v0, v0

    sget-object v2, Lcom/google/protobuf/c0;->q:Lsun/misc/Unsafe;

    invoke-virtual {v2, p2, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {p0, p3}, Lcom/google/protobuf/c0;->m(I)Lcom/google/protobuf/f0;

    move-result-object p2

    invoke-virtual {p0, p1, p3}, Lcom/google/protobuf/c0;->o(Ljava/lang/Object;I)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {v3}, Lcom/google/protobuf/c0;->q(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v2, p1, v0, v1, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-interface {p2}, Lcom/google/protobuf/f0;->newInstance()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p2, v4, v3}, Lcom/google/protobuf/f0;->mergeFrom(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, p1, v0, v1, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_0
    invoke-virtual {p0, p1, p3}, Lcom/google/protobuf/c0;->H(Ljava/lang/Object;I)V

    return-void

    :cond_2
    invoke-virtual {v2, p1, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/google/protobuf/c0;->q(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_3

    invoke-interface {p2}, Lcom/google/protobuf/f0;->newInstance()Ljava/lang/Object;

    move-result-object p3

    invoke-interface {p2, p3, p0}, Lcom/google/protobuf/f0;->mergeFrom(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, p1, v0, v1, p3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object p0, p3

    :cond_3
    invoke-interface {p2, p0, v3}, Lcom/google/protobuf/f0;->mergeFrom(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_4
    iget-object p0, p0, Lcom/google/protobuf/c0;->a:[I

    aget p0, p0, p3

    invoke-static {p0, p2}, Lmg;->c(ILjava/lang/Object;)V

    return-void
.end method

.method public final u(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;I)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/c0;->a:[I

    aget v1, v0, p3

    invoke-virtual {p0, p2, v1, p3}, Lcom/google/protobuf/c0;->r(Ljava/lang/Object;II)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p3}, Lcom/google/protobuf/c0;->N(I)I

    move-result v2

    const v3, 0xfffff

    and-int/2addr v2, v3

    int-to-long v2, v2

    sget-object v4, Lcom/google/protobuf/c0;->q:Lsun/misc/Unsafe;

    invoke-virtual {v4, p2, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-virtual {p0, p3}, Lcom/google/protobuf/c0;->m(I)Lcom/google/protobuf/f0;

    move-result-object p2

    invoke-virtual {p0, p1, v1, p3}, Lcom/google/protobuf/c0;->r(Ljava/lang/Object;II)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {v5}, Lcom/google/protobuf/c0;->q(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v4, p1, v2, v3, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-interface {p2}, Lcom/google/protobuf/f0;->newInstance()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2, v0, v5}, Lcom/google/protobuf/f0;->mergeFrom(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v4, p1, v2, v3, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_0
    invoke-virtual {p0, p1, v1, p3}, Lcom/google/protobuf/c0;->I(Ljava/lang/Object;II)V

    return-void

    :cond_2
    invoke-virtual {v4, p1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/google/protobuf/c0;->q(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_3

    invoke-interface {p2}, Lcom/google/protobuf/f0;->newInstance()Ljava/lang/Object;

    move-result-object p3

    invoke-interface {p2, p3, p0}, Lcom/google/protobuf/f0;->mergeFrom(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v4, p1, v2, v3, p3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object p0, p3

    :cond_3
    invoke-interface {p2, p0, v5}, Lcom/google/protobuf/f0;->mergeFrom(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_4
    aget p0, v0, p3

    invoke-static {p0, p2}, Lmg;->c(ILjava/lang/Object;)V

    return-void
.end method

.method public final v(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p2}, Lcom/google/protobuf/c0;->m(I)Lcom/google/protobuf/f0;

    move-result-object v0

    invoke-virtual {p0, p2}, Lcom/google/protobuf/c0;->N(I)I

    move-result v1

    const v2, 0xfffff

    and-int/2addr v1, v2

    int-to-long v1, v1

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/c0;->o(Ljava/lang/Object;I)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-interface {v0}, Lcom/google/protobuf/f0;->newInstance()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object p0, Lcom/google/protobuf/c0;->q:Lsun/misc/Unsafe;

    invoke-virtual {p0, p1, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/google/protobuf/c0;->q(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-object p0

    :cond_1
    invoke-interface {v0}, Lcom/google/protobuf/f0;->newInstance()Ljava/lang/Object;

    move-result-object p1

    if-eqz p0, :cond_2

    invoke-interface {v0, p1, p0}, Lcom/google/protobuf/f0;->mergeFrom(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    return-object p1
.end method

.method public final w(Ljava/lang/Object;II)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p3}, Lcom/google/protobuf/c0;->m(I)Lcom/google/protobuf/f0;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/c0;->r(Ljava/lang/Object;II)Z

    move-result p2

    if-nez p2, :cond_0

    invoke-interface {v0}, Lcom/google/protobuf/f0;->newInstance()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0, p3}, Lcom/google/protobuf/c0;->N(I)I

    move-result p0

    const p2, 0xfffff

    and-int/2addr p0, p2

    int-to-long p2, p0

    sget-object p0, Lcom/google/protobuf/c0;->q:Lsun/misc/Unsafe;

    invoke-virtual {p0, p1, p2, p3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/google/protobuf/c0;->q(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-object p0

    :cond_1
    invoke-interface {v0}, Lcom/google/protobuf/f0;->newInstance()Ljava/lang/Object;

    move-result-object p1

    if-eqz p0, :cond_2

    invoke-interface {v0, p1, p0}, Lcom/google/protobuf/f0;->mergeFrom(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    return-object p1
.end method
