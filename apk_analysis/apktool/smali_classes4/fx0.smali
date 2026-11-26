.class public abstract Lfx0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfx0$d;,
        Lfx0$h;,
        Lfx0$g;,
        Lfx0$b;,
        Lfx0$f;,
        Lfx0$c;,
        Lfx0$i;,
        Lfx0$e;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Ljava/lang/Byte;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final c:Lfx0$h;

.field public static final d:Lfx0$e;


# instance fields
.field public b:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lfx0$h;

    sget-object v1, Lcom/google/protobuf/q;->b:[B

    invoke-direct {v0, v1}, Lfx0$h;-><init>([B)V

    sput-object v0, Lfx0;->c:Lfx0$h;

    invoke-static {}, Lxf;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lfx0$i;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v0, Lfx0$c;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    :goto_0
    sput-object v0, Lfx0;->d:Lfx0$e;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lfx0;->b:I

    return-void
.end method

.method public static b(III)I
    .locals 3

    sub-int v0, p1, p0

    or-int v1, p0, p1

    or-int/2addr v1, v0

    sub-int v2, p2, p1

    or-int/2addr v1, v2

    if-gez v1, :cond_2

    if-ltz p0, :cond_1

    if-ge p1, p0, :cond_0

    const-string p2, "Beginning index larger than ending index: "

    const-string v0, ", "

    invoke-static {p0, p1, p2, v0}, Lrz0;->c(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lyq;->d(Ljava/lang/String;)V

    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_0
    const-string p0, "End index: "

    const-string v0, " >= "

    invoke-static {p1, p2, p0, v0}, Lrz0;->c(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lyq;->d(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p1, "Beginning index: "

    const-string p2, " < 0"

    invoke-static {p0, p1, p2}, Lkv2;->b(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lyq;->d(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    return v0
.end method

.method public static d([BII)Lfx0$h;
    .locals 2

    add-int v0, p1, p2

    array-length v1, p0

    invoke-static {p1, v0, v1}, Lfx0;->b(III)I

    new-instance v0, Lfx0$h;

    sget-object v1, Lfx0;->d:Lfx0$e;

    invoke-interface {v1, p0, p1, p2}, Lfx0$e;->copyFrom([BII)[B

    move-result-object p0

    invoke-direct {v0, p0}, Lfx0$h;-><init>([B)V

    return-object v0
.end method

.method public static f(Ljava/lang/String;)Lfx0$h;
    .locals 2

    new-instance v0, Lfx0$h;

    sget-object v1, Lcom/google/protobuf/q;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-direct {v0, p0}, Lfx0$h;-><init>([B)V

    return-object v0
.end method


# virtual methods
.method public abstract a(I)B
.end method

.method public abstract equals(Ljava/lang/Object;)Z
.end method

.method public abstract g([BIII)V
.end method

.method public final hashCode()I
    .locals 2

    iget v0, p0, Lfx0;->b:I

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lfx0;->size()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v0}, Lfx0;->m(III)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput v0, p0, Lfx0;->b:I

    :cond_1
    return v0
.end method

.method public abstract i(I)B
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1

    new-instance v0, Lfx0$a;

    invoke-direct {v0, p0}, Lfx0$a;-><init>(Lfx0;)V

    return-object v0
.end method

.method public abstract j()Z
.end method

.method public abstract k()Lcom/google/protobuf/f;
.end method

.method public abstract m(III)I
.end method

.method public abstract n(II)Lfx0;
.end method

.method public abstract o(Ljava/nio/charset/Charset;)Ljava/lang/String;
.end method

.method public final p()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/google/protobuf/q;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p0}, Lfx0;->size()I

    move-result v1

    if-nez v1, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    invoke-virtual {p0, v0}, Lfx0;->o(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public abstract q(Lcom/google/protobuf/CodedOutputStream;)V
.end method

.method public abstract size()I
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lfx0;->size()I

    move-result v1

    invoke-virtual {p0}, Lfx0;->size()I

    move-result v2

    const/16 v3, 0x32

    if-gt v2, v3, :cond_0

    invoke-static {p0}, Lm57;->a(Lfx0;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    const/16 v3, 0x2f

    invoke-virtual {p0, v2, v3}, Lfx0;->n(II)Lfx0;

    move-result-object p0

    invoke-static {p0}, Lm57;->a(Lfx0;)Ljava/lang/String;

    move-result-object p0

    const-string v2, "..."

    invoke-virtual {p0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    const-string v2, " size="

    const-string v3, " contents=\""

    const-string v4, "<ByteString@"

    invoke-static {v1, v4, v0, v2, v3}, Lmz0;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\">"

    invoke-static {v0, p0, v1}, Lme0;->d(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
