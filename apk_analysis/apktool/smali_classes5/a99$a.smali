.class public final La99$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La99;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, La99$a;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()La99;
    .locals 4

    iget-object v0, p0, La99$a;->a:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const-string v3, "Missing required scheme."

    invoke-static {v0, v3}, Lo8;->s(ZLjava/lang/Object;)V

    iget-object v0, p0, La99$a;->f:Ljava/lang/String;

    if-nez v0, :cond_3

    iget-object v0, p0, La99$a;->g:Ljava/lang/String;

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    const-string v3, "Cannot set port without host."

    invoke-static {v0, v3}, Lo8;->s(ZLjava/lang/Object;)V

    iget-object v0, p0, La99$a;->e:Ljava/lang/String;

    if-nez v0, :cond_2

    move v1, v2

    :cond_2
    const-string v0, "Cannot set userInfo without host."

    invoke-static {v1, v0}, Lo8;->s(ZLjava/lang/Object;)V

    :cond_3
    new-instance v0, La99;

    invoke-direct {v0, p0}, La99;-><init>(La99$a;)V

    return-object v0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 7

    const-string v0, "["

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    const-string v3, "]"

    const/4 v4, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x25

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-lez v1, :cond_0

    invoke-static {v2, v1, p1}, Lrg;->f(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v5, "scope"

    sget-object v6, La99;->k:Ljava/util/BitSet;

    invoke-static {v1, v5, v6, v4}, La99;->d(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/util/BitSet;Ljava/nio/ByteBuffer;)V

    :cond_0
    sget-object v1, Lp44;->a:Ly91$f;

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v2, v2, p1}, Lrg;->f(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x10

    goto :goto_0

    :cond_1
    const/4 v1, 0x4

    move-object v0, p1

    :goto_0
    invoke-static {v0, v4}, Lp44;->b(Ljava/lang/String;Lp44$a;)[B

    move-result-object v0

    if-eqz v0, :cond_3

    array-length v2, v0

    if-eq v2, v1, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {v4, v0}, Lp44;->a(Ljava/lang/String;[B)Ljava/net/InetAddress;

    move-result-object v0

    goto :goto_2

    :cond_3
    :goto_1
    move-object v0, v4

    :goto_2
    if-eqz v0, :cond_4

    goto :goto_3

    :cond_4
    const-string v0, "host"

    sget-object v1, La99;->l:Ljava/util/BitSet;

    invoke-static {p1, v0, v1, v4}, La99;->d(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/util/BitSet;Ljava/nio/ByteBuffer;)V

    :goto_3
    iput-object p1, p0, La99$a;->f:Ljava/lang/String;

    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, La99;->i:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v1, v0, :cond_1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    sget-object v2, La99;->j:Ljava/util/BitSet;

    invoke-virtual {v2, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const-string p0, "Invalid character in scheme at index "

    invoke-static {v1, p0}, Ljh;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    return-void

    :cond_1
    iput-object p1, p0, La99$a;->a:Ljava/lang/String;

    return-void

    :cond_2
    const-string p0, "Scheme must start with an alphabetic char"

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    return-void
.end method
