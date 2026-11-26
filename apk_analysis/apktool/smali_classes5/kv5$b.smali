.class public final Lkv5$b;
.super Lgy3;
.source "SourceFile"

# interfaces
.implements Li06$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkv5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public A:Z

.field public B:Z

.field public C:Z

.field public D:I

.field public E:I

.field public final F:Lj13;

.field public final G:Li06;

.field public final H:Llv5;

.field public I:Z

.field public final J:Llj8;

.field public K:Li06$b;

.field public L:I

.field public final synthetic M:Lkv5;

.field public final w:I

.field public final x:Ljava/lang/Object;

.field public y:Ljava/util/ArrayList;

.field public final z:Lbu0;


# direct methods
.method public constructor <init>(Lkv5;ILg88;Ljava/lang/Object;Lj13;Li06;Llv5;ILio/grpc/b;)V
    .locals 0

    iput-object p1, p0, Lkv5$b;->M:Lkv5;

    iget-object p1, p1, Lt;->c:Lg39;

    invoke-direct {p0, p2, p3, p1, p9}, Lt$b;-><init>(ILg88;Lg39;Lio/grpc/b;)V

    sget-object p1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    iput-object p1, p0, Lgy3;->t:Ljava/nio/charset/Charset;

    new-instance p1, Lbu0;

    invoke-direct {p1}, Lbu0;-><init>()V

    iput-object p1, p0, Lkv5$b;->z:Lbu0;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lkv5$b;->A:Z

    iput-boolean p1, p0, Lkv5$b;->B:Z

    iput-boolean p1, p0, Lkv5$b;->C:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lkv5$b;->I:Z

    const/4 p1, -0x1

    iput p1, p0, Lkv5$b;->L:I

    const-string p1, "lock"

    invoke-static {p4, p1}, Lo8;->l(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p4, p0, Lkv5$b;->x:Ljava/lang/Object;

    iput-object p5, p0, Lkv5$b;->F:Lj13;

    iput-object p6, p0, Lkv5$b;->G:Li06;

    iput-object p7, p0, Lkv5$b;->H:Llv5;

    iput p8, p0, Lkv5$b;->D:I

    iput p8, p0, Lkv5$b;->E:I

    iput p8, p0, Lkv5$b;->w:I

    sget-object p1, Lr46;->a:La34;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, La34;->a:Llj8;

    iput-object p1, p0, Lkv5$b;->J:Llj8;

    return-void
.end method


# virtual methods
.method public final b(I)V
    .locals 4

    iget v0, p0, Lkv5$b;->E:I

    sub-int/2addr v0, p1

    iput v0, p0, Lkv5$b;->E:I

    int-to-float p1, v0

    iget v1, p0, Lkv5$b;->w:I

    int-to-float v2, v1

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v2, v3

    cmpg-float p1, p1, v2

    if-gtz p1, :cond_0

    sub-int/2addr v1, v0

    iget p1, p0, Lkv5$b;->D:I

    add-int/2addr p1, v1

    iput p1, p0, Lkv5$b;->D:I

    add-int/2addr v0, v1

    iput v0, p0, Lkv5$b;->E:I

    iget p1, p0, Lkv5$b;->L:I

    int-to-long v0, v1

    iget-object p0, p0, Lkv5$b;->F:Lj13;

    invoke-virtual {p0, p1, v0, v1}, Lj13;->T(IJ)V

    :cond_0
    return-void
.end method

.method public final c(Z)V
    .locals 8

    iget-boolean v0, p0, Lt$b;->o:Z

    iget-object v1, p0, Lkv5$b;->H:Llv5;

    iget v2, p0, Lkv5$b;->L:I

    if-nez v0, :cond_0

    sget-object v4, Ldm1$a;->PROCESSED:Ldm1$a;

    sget-object v6, Lq03;->CANCEL:Lq03;

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v1 .. v7}, Llv5;->g(ILh88;Ldm1$a;ZLq03;Lla5;)V

    goto :goto_0

    :cond_0
    sget-object v4, Ldm1$a;->PROCESSED:Ldm1$a;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v1 .. v7}, Llv5;->g(ILh88;Ldm1$a;ZLq03;Lla5;)V

    :goto_0
    iget-boolean v0, p0, Lt$b;->p:Z

    const-string v1, "status should have been reported on deframer closed"

    invoke-static {v0, v1}, Lo8;->s(ZLjava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lt$b;->m:Z

    iget-boolean v1, p0, Lt$b;->q:Z

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    sget-object p1, Lh88;->l:Lh88;

    const-string v1, "Encountered end-of-stream mid-frame"

    invoke-virtual {p1, v1}, Lh88;->h(Ljava/lang/String;)Lh88;

    move-result-object p1

    new-instance v1, Lla5;

    invoke-direct {v1}, Lla5;-><init>()V

    invoke-virtual {p0, p1, v0, v1}, Lt$b;->j(Lh88;ZLla5;)V

    :cond_1
    iget-object p1, p0, Lt$b;->n:Lt$b$a;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lt$b$a;->run()V

    const/4 p1, 0x0

    iput-object p1, p0, Lt$b;->n:Lt$b$a;

    :cond_2
    return-void
.end method

.method public final m(Lh88;ZLla5;)V
    .locals 9

    iget-boolean v0, p0, Lkv5$b;->C:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lkv5$b;->C:Z

    iget-boolean v1, p0, Lkv5$b;->I:Z

    iget-object v2, p0, Lkv5$b;->H:Llv5;

    if-eqz v1, :cond_2

    iget-object p2, v2, Llv5;->H:Ljava/util/LinkedList;

    iget-object v1, p0, Lkv5$b;->M:Lkv5;

    invoke-virtual {p2, v1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v2, v1}, Llv5;->l(Lkv5;)V

    const/4 p2, 0x0

    iput-object p2, p0, Lkv5$b;->y:Ljava/util/ArrayList;

    iget-object p2, p0, Lkv5$b;->z:Lbu0;

    invoke-virtual {p2}, Lbu0;->p()V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lkv5$b;->I:Z

    if-eqz p3, :cond_1

    goto :goto_0

    :cond_1
    new-instance p3, Lla5;

    invoke-direct {p3}, Lla5;-><init>()V

    :goto_0
    invoke-virtual {p0, p1, v0, p3}, Lt$b;->j(Lh88;ZLla5;)V

    return-void

    :cond_2
    iget v3, p0, Lkv5$b;->L:I

    sget-object v5, Ldm1$a;->PROCESSED:Ldm1$a;

    sget-object v7, Lq03;->CANCEL:Lq03;

    move-object v4, p1

    move v6, p2

    move-object v8, p3

    invoke-virtual/range {v2 .. v8}, Llv5;->g(ILh88;Ldm1$a;ZLq03;Lla5;)V

    return-void
.end method

.method public final n(Ljava/lang/Throwable;)V
    .locals 2

    invoke-static {p1}, Lh88;->e(Ljava/lang/Throwable;)Lh88;

    move-result-object p1

    new-instance v0, Lla5;

    invoke-direct {v0}, Lla5;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1, v0}, Lkv5$b;->m(Lh88;ZLla5;)V

    return-void
.end method

.method public final o(Lbu0;ZZ)V
    .locals 4

    iget-boolean v0, p0, Lkv5$b;->C:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lkv5$b;->I:Z

    if-eqz v0, :cond_1

    iget-wide v0, p1, Lbu0;->c:J

    long-to-int v0, v0

    iget-object v1, p0, Lkv5$b;->z:Lbu0;

    int-to-long v2, v0

    invoke-virtual {v1, p1, v2, v3}, Lbu0;->H(Lbu0;J)V

    iget-boolean p1, p0, Lkv5$b;->A:Z

    or-int/2addr p1, p2

    iput-boolean p1, p0, Lkv5$b;->A:Z

    iget-boolean p1, p0, Lkv5$b;->B:Z

    or-int/2addr p1, p3

    iput-boolean p1, p0, Lkv5$b;->B:Z

    return-void

    :cond_1
    iget v0, p0, Lkv5$b;->L:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    const-string v1, "streamId should be set"

    invoke-static {v0, v1}, Lo8;->s(ZLjava/lang/Object;)V

    iget-object v0, p0, Lkv5$b;->G:Li06;

    iget-object p0, p0, Lkv5$b;->K:Li06$b;

    invoke-virtual {v0, p2, p0, p1, p3}, Li06;->a(ZLi06$b;Lbu0;Z)V

    return-void
.end method

.method public final p(Lla5;Ljava/lang/String;)V
    .locals 13

    iget-object v0, p0, Lkv5$b;->M:Lkv5;

    iget-object v1, v0, Lkv5;->m:Ljava/lang/String;

    iget-object v2, v0, Lkv5;->k:Ljava/lang/String;

    iget-boolean v3, v0, Lkv5;->q:Z

    iget-object v4, p0, Lkv5$b;->H:Llv5;

    iget-object v5, v4, Llv5;->D:Ljavax/net/ssl/SSLSocketFactory;

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-nez v5, :cond_0

    move v5, v7

    goto :goto_0

    :cond_0
    move v5, v6

    :goto_0
    sget-object v8, Lhv3;->a:Lzu3;

    const-string v8, "headers"

    invoke-static {p1, v8}, Lo8;->l(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v8, "authority"

    invoke-static {v1, v8}, Lo8;->l(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v8, Lvs3;->i:Lla5$b;

    invoke-virtual {p1, v8}, Lla5;->a(Lla5$d;)V

    sget-object v8, Lvs3;->j:Lla5$b;

    invoke-virtual {p1, v8}, Lla5;->a(Lla5$d;)V

    sget-object v8, Lvs3;->k:Lla5$b;

    invoke-virtual {p1, v8}, Lla5;->a(Lla5$d;)V

    new-instance v9, Ljava/util/ArrayList;

    sget-object v10, Ln94;->a:Ljava/nio/charset/Charset;

    iget v10, p1, Lla5;->b:I

    add-int/lit8 v10, v10, 0x7

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(I)V

    if-eqz v5, :cond_1

    sget-object v5, Lhv3;->b:Lzu3;

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    sget-object v5, Lhv3;->a:Lzu3;

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    if-eqz v3, :cond_2

    sget-object v3, Lhv3;->d:Lzu3;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    sget-object v3, Lhv3;->c:Lzu3;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    new-instance v3, Lzu3;

    sget-object v5, Lzu3;->h:Lgx0;

    invoke-direct {v3, v5, v1}, Lzu3;-><init>(Lgx0;Ljava/lang/String;)V

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lzu3;

    sget-object v3, Lzu3;->f:Lgx0;

    invoke-direct {v1, v3, p2}, Lzu3;-><init>(Lgx0;Ljava/lang/String;)V

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p2, Lzu3;

    iget-object v1, v8, Lla5$d;->a:Ljava/lang/String;

    invoke-direct {p2, v1, v2}, Lzu3;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p2, Lhv3;->e:Lzu3;

    invoke-virtual {v9, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p2, Lhv3;->f:Lzu3;

    invoke-virtual {v9, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p2, Lv29;->a:Ljava/util/logging/Logger;

    iget p2, p1, Lla5;->b:I

    mul-int/lit8 p2, p2, 0x2

    new-array v1, p2, [[B

    iget-object v2, p1, Lla5;->a:[Ljava/lang/Object;

    instance-of v3, v2, [[B

    if-eqz v3, :cond_3

    invoke-static {v2, v6, v1, v6, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_5

    :cond_3
    move v2, v6

    :goto_3
    iget v3, p1, Lla5;->b:I

    if-ge v2, v3, :cond_5

    mul-int/lit8 v3, v2, 0x2

    iget-object v5, p1, Lla5;->a:[Ljava/lang/Object;

    aget-object v8, v5, v3

    check-cast v8, [B

    aput-object v8, v1, v3

    add-int/2addr v3, v7

    aget-object v5, v5, v3

    instance-of v8, v5, [B

    if-eqz v8, :cond_4

    check-cast v5, [B

    goto :goto_4

    :cond_4
    check-cast v5, Lla5$e;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v5, 0x0

    :goto_4
    aput-object v5, v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_5
    :goto_5
    move p1, v6

    move v2, p1

    :goto_6
    if-ge p1, p2, :cond_a

    aget-object v3, v1, p1

    add-int/lit8 v5, p1, 0x1

    aget-object v5, v1, v5

    sget-object v8, Lv29;->b:[B

    invoke-static {v3, v8}, Lv29;->a([B[B)Z

    move-result v8

    if-eqz v8, :cond_6

    aput-object v3, v1, v2

    add-int/lit8 v3, v2, 0x1

    sget-object v8, Ln94;->b:Lcom/google/common/io/BaseEncoding;

    invoke-virtual {v8, v5}, Lcom/google/common/io/BaseEncoding;->c([B)Ljava/lang/String;

    move-result-object v5

    sget-object v8, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v5, v8}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    aput-object v5, v1, v3

    :goto_7
    add-int/lit8 v2, v2, 0x2

    goto :goto_a

    :cond_6
    array-length v8, v5

    move v10, v6

    :goto_8
    if-ge v10, v8, :cond_9

    aget-byte v11, v5, v10

    const/16 v12, 0x20

    if-lt v11, v12, :cond_8

    const/16 v12, 0x7e

    if-le v11, v12, :cond_7

    goto :goto_9

    :cond_7
    add-int/lit8 v10, v10, 0x1

    goto :goto_8

    :cond_8
    :goto_9
    new-instance v8, Ljava/lang/String;

    sget-object v10, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v8, v3, v10}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    sget-object v3, Lv29;->a:Ljava/util/logging/Logger;

    const-string v10, "Metadata key="

    const-string v11, ", value="

    invoke-static {v10, v8, v11}, Ln7;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v5}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " contains invalid ASCII characters"

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto :goto_a

    :cond_9
    aput-object v3, v1, v2

    add-int/lit8 v3, v2, 0x1

    aput-object v5, v1, v3

    goto :goto_7

    :goto_a
    add-int/lit8 p1, p1, 0x2

    goto :goto_6

    :cond_a
    if-ne v2, p2, :cond_b

    goto :goto_b

    :cond_b
    invoke-static {v1, v6, v2}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, [[B

    :goto_b
    move p1, v6

    :goto_c
    array-length p2, v1

    if-ge p1, p2, :cond_e

    aget-object p2, v1, p1

    invoke-static {p2}, Lgx0;->q([B)Lgx0;

    move-result-object p2

    iget-object v2, p2, Lgx0;->b:[B

    array-length v3, v2

    if-eqz v3, :cond_d

    aget-byte v2, v2, v6

    const/16 v3, 0x3a

    if-ne v2, v3, :cond_c

    goto :goto_d

    :cond_c
    add-int/lit8 v2, p1, 0x1

    aget-object v2, v1, v2

    invoke-static {v2}, Lgx0;->q([B)Lgx0;

    move-result-object v2

    new-instance v3, Lzu3;

    invoke-direct {v3, p2, v2}, Lzu3;-><init>(Lgx0;Lgx0;)V

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d
    :goto_d
    add-int/lit8 p1, p1, 0x2

    goto :goto_c

    :cond_e
    iput-object v9, p0, Lkv5$b;->y:Ljava/util/ArrayList;

    iget-object p0, v0, Lkv5;->m:Ljava/lang/String;

    sget-boolean p1, Llv5;->X:Z

    iget-object p2, v4, Llv5;->R:Llv5$g;

    iget-object v1, v4, Llv5;->x:Lh88;

    if-eqz v1, :cond_f

    iget-object p0, v0, Lkv5;->n:Lkv5$b;

    sget-object p1, Ldm1$a;->MISCARRIED:Ldm1$a;

    new-instance p2, Lla5;

    invoke-direct {p2}, Lla5;-><init>()V

    invoke-virtual {p0, v1, p1, v7, p2}, Lt$b;->i(Lh88;Ldm1$a;ZLla5;)V

    return-void

    :cond_f
    iget-object v1, v4, Llv5;->F:Ljava/net/Socket;

    instance-of v1, v1, Ljavax/net/ssl/SSLSocket;

    if-eqz v1, :cond_17

    iget-object v1, v4, Llv5;->d:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    invoke-virtual {p2, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-virtual {p2, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lh88;

    goto/16 :goto_13

    :cond_10
    iget-object v1, v4, Llv5;->Q:Ljavax/net/ssl/X509TrustManager;

    sget-object v2, Llv5;->W:Ljava/util/logging/Logger;

    iget-object v3, v4, Llv5;->E:Ljavax/net/ssl/HostnameVerifier;

    iget-object v5, v4, Llv5;->F:Ljava/net/Socket;

    check-cast v5, Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v5}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v5

    invoke-interface {v3, p0, v5}, Ljavax/net/ssl/HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result v3

    const-string v5, "HostNameVerifier verification failed for authority \'"

    if-eqz v3, :cond_11

    sget-object v3, Lh88;->e:Lh88;

    goto :goto_e

    :cond_11
    sget-object v3, Lh88;->m:Lh88;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Lh88;->h(Ljava/lang/String;)Lh88;

    move-result-object v3

    :goto_e
    invoke-virtual {v3}, Lh88;->f()Z

    move-result v8

    if-nez v8, :cond_12

    if-nez p1, :cond_12

    sget-object v8, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\'. This will be an error in the future."

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v8, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_12
    invoke-virtual {v3}, Lh88;->f()Z

    move-result v5

    if-eqz v5, :cond_16

    if-nez v1, :cond_13

    sget-object v1, Lh88;->m:Lh88;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Could not verify authority \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\' for the rpc with no X509TrustManager available"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lh88;->h(Ljava/lang/String;)Lh88;

    move-result-object v1

    goto/16 :goto_12

    :cond_13
    sget-object v5, Llv5;->Y:Ljava/lang/Class;

    invoke-virtual {v5, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_16

    :try_start_0
    iget-object v3, v4, Llv5;->b:Ljavax/net/ssl/SSLSession;

    invoke-interface {v3}, Ljavax/net/ssl/SSLSession;->getPeerCertificates()[Ljava/security/cert/Certificate;

    move-result-object v3

    array-length v5, v3

    new-array v5, v5, [Ljava/security/cert/X509Certificate;

    :goto_f
    array-length v8, v3

    if-ge v6, v8, :cond_14

    aget-object v8, v3, v6

    check-cast v8, Ljava/security/cert/X509Certificate;

    aput-object v8, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_f

    :catch_0
    move-exception v1

    goto :goto_10

    :catch_1
    move-exception v1

    goto :goto_10

    :catch_2
    move-exception v1

    goto :goto_10

    :cond_14
    sget-object v3, Llv5;->Z:Ljava/lang/reflect/Method;

    const-string v6, "RSA"

    new-instance v8, Llv5$h;

    iget-object v9, v4, Llv5;->F:Ljava/net/Socket;

    check-cast v9, Ljavax/net/ssl/SSLSocket;

    invoke-direct {v8, v9, p0}, Llv5$h;-><init>(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;)V

    filled-new-array {v5, v6, v8}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lh88;->e:Lh88;
    :try_end_0
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_11

    :goto_10
    sget-object v3, Lh88;->m:Lh88;

    invoke-virtual {v3, v1}, Lh88;->g(Ljava/lang/Throwable;)Lh88;

    move-result-object v1

    const-string v3, "Peer verification failed"

    invoke-virtual {v1, v3}, Lh88;->h(Ljava/lang/String;)Lh88;

    move-result-object v1

    :goto_11
    iget-object v3, v1, Lh88;->c:Ljava/lang/Throwable;

    iget-object v5, v1, Lh88;->b:Ljava/lang/String;

    const-string v6, ". This will be an error in the future."

    if-eqz v3, :cond_15

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {v5, v6}, Lni0;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, v1, Lh88;->c:Ljava/lang/Throwable;

    invoke-virtual {v2, v3, v5, v6}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_12

    :cond_15
    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_12

    :cond_16
    move-object v1, v3

    :goto_12
    invoke-virtual {p2, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object p0, v1

    :goto_13
    invoke-virtual {p0}, Lh88;->f()Z

    move-result p2

    if-nez p2, :cond_17

    if-eqz p1, :cond_17

    iget-object p1, v0, Lkv5;->n:Lkv5$b;

    sget-object p2, Ldm1$a;->PROCESSED:Ldm1$a;

    new-instance v0, Lla5;

    invoke-direct {v0}, Lla5;-><init>()V

    invoke-virtual {p1, p0, p2, v7, v0}, Lt$b;->i(Lh88;Ldm1$a;ZLla5;)V

    goto :goto_14

    :cond_17
    iget-object p0, v4, Llv5;->p:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->size()I

    move-result p0

    iget p1, v4, Llv5;->G:I

    if-lt p0, p1, :cond_19

    iget-object p0, v4, Llv5;->H:Ljava/util/LinkedList;

    invoke-virtual {p0, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget-boolean p0, v4, Llv5;->B:Z

    if-nez p0, :cond_18

    iput-boolean v7, v4, Llv5;->B:Z

    iget-object p0, v4, Llv5;->J:Lif4;

    if-eqz p0, :cond_18

    invoke-virtual {p0}, Lif4;->b()V

    :cond_18
    iget-boolean p0, v0, Lt;->e:Z

    if-eqz p0, :cond_1a

    iget-object p0, v4, Llv5;->S:Llv5$a;

    invoke-virtual {p0, v0, v7}, Lu1;->o(Ljava/lang/Object;Z)V

    goto :goto_14

    :cond_19
    invoke-virtual {v4, v0}, Llv5;->s(Lkv5;)V

    :cond_1a
    :goto_14
    return-void
.end method

.method public final q(ILbu0;Z)V
    .locals 7

    iget-wide v0, p2, Lbu0;->c:J

    long-to-int v2, v0

    iget v3, p0, Lkv5$b;->D:I

    add-int/2addr v2, p1

    sub-int/2addr v3, v2

    iput v3, p0, Lkv5$b;->D:I

    iget v2, p0, Lkv5$b;->E:I

    sub-int/2addr v2, p1

    iput v2, p0, Lkv5$b;->E:I

    if-gez v3, :cond_0

    iget p1, p0, Lkv5$b;->L:I

    sget-object p2, Lq03;->FLOW_CONTROL_ERROR:Lq03;

    iget-object p3, p0, Lkv5$b;->F:Lj13;

    invoke-virtual {p3, p1, p2}, Lj13;->h0(ILq03;)V

    iget v1, p0, Lkv5$b;->L:I

    sget-object p1, Lh88;->l:Lh88;

    const-string p2, "Received data size exceeded our receiving window size"

    invoke-virtual {p1, p2}, Lh88;->h(Ljava/lang/String;)Lh88;

    move-result-object v2

    sget-object v3, Ldm1$a;->PROCESSED:Ldm1$a;

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-object v0, p0, Lkv5$b;->H:Llv5;

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v6}, Llv5;->g(ILh88;Ldm1$a;ZLq03;Lla5;)V

    return-void

    :cond_0
    new-instance p1, Lpv5;

    invoke-direct {p1, p2}, Lpv5;-><init>(Lbu0;)V

    iget-object v2, p0, Lgy3;->r:Lh88;

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    iget-object v0, p0, Lgy3;->t:Ljava/nio/charset/Charset;

    sget-object v1, Ley6;->a:Ley6$b;

    const-string v1, "charset"

    invoke-static {v0, v1}, Lo8;->l(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-wide v4, p2, Lbu0;->c:J

    long-to-int p2, v4

    new-array v1, p2, [B

    invoke-virtual {p1, v1, v3, p2}, Lpv5;->G([BII)V

    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, v1, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    const-string v0, "DATA-----------------------------\n"

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Lh88;->b(Ljava/lang/String;)Lh88;

    move-result-object p2

    iput-object p2, p0, Lgy3;->r:Lh88;

    invoke-virtual {p1}, Lpv5;->close()V

    iget-object p1, p0, Lgy3;->r:Lh88;

    iget-object p1, p1, Lh88;->b:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/16 p2, 0x3e8

    if-gt p1, p2, :cond_1

    if-eqz p3, :cond_6

    :cond_1
    iget-object p1, p0, Lgy3;->r:Lh88;

    iget-object p2, p0, Lgy3;->s:Lla5;

    invoke-virtual {p0, p1, v3, p2}, Lkv5$b;->m(Lh88;ZLla5;)V

    return-void

    :cond_2
    iget-boolean p2, p0, Lgy3;->u:Z

    if-nez p2, :cond_3

    invoke-virtual {p1}, Lpv5;->close()V

    sget-object p1, Lh88;->l:Lh88;

    const-string p2, "headers not received before payload"

    invoke-virtual {p1, p2}, Lh88;->h(Ljava/lang/String;)Lh88;

    move-result-object p1

    new-instance p2, Lla5;

    invoke-direct {p2}, Lla5;-><init>()V

    invoke-virtual {p0, p1, v3, p2}, Lkv5$b;->m(Lh88;ZLla5;)V

    return-void

    :cond_3
    long-to-int p2, v0

    const/4 v1, 0x1

    :try_start_0
    iget-boolean v0, p0, Lt$b;->p:Z

    if-eqz v0, :cond_4

    sget-object v0, Lt;->i:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v4, "Received data on closed stream"

    invoke-virtual {v0, v2, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Lpv5;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    move v3, v1

    goto :goto_2

    :cond_4
    :try_start_1
    iget-object v0, p0, Lt1$a;->a:Lvk2;

    invoke-interface {v0, p1}, Lvk2;->b(Lpv5;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_2
    invoke-virtual {p0, v0}, Lkv5$b;->n(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :goto_0
    if-eqz p3, :cond_6

    if-lez p2, :cond_5

    sget-object p1, Lh88;->l:Lh88;

    const-string p2, "Received unexpected EOS on non-empty DATA frame from server"

    invoke-virtual {p1, p2}, Lh88;->h(Ljava/lang/String;)Lh88;

    move-result-object p1

    iput-object p1, p0, Lgy3;->r:Lh88;

    goto :goto_1

    :cond_5
    sget-object p1, Lh88;->l:Lh88;

    const-string p2, "Received unexpected EOS on empty DATA frame from server"

    invoke-virtual {p1, p2}, Lh88;->h(Ljava/lang/String;)Lh88;

    move-result-object p1

    iput-object p1, p0, Lgy3;->r:Lh88;

    :goto_1
    new-instance p1, Lla5;

    invoke-direct {p1}, Lla5;-><init>()V

    iput-object p1, p0, Lgy3;->s:Lla5;

    iget-object p2, p0, Lgy3;->r:Lh88;

    invoke-virtual {p0, p2, v3, p1}, Lt$b;->j(Lh88;ZLla5;)V

    :cond_6
    return-void

    :catchall_2
    move-exception v0

    move-object p0, v0

    :goto_2
    if-eqz v3, :cond_7

    invoke-virtual {p1}, Lpv5;->close()V

    :cond_7
    throw p0
.end method

.method public final r(Ljava/util/ArrayList;Z)V
    .locals 5

    sget-object v0, Lgy3;->v:Lla5$f;

    if-eqz p2, :cond_7

    invoke-static {p1}, Ljb9;->a(Ljava/util/ArrayList;)[[B

    move-result-object p1

    new-instance p2, Lla5;

    array-length v1, p1

    div-int/lit8 v1, v1, 0x2

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput v1, p2, Lla5;->b:I

    iput-object p1, p2, Lla5;->a:[Ljava/lang/Object;

    iget-object p1, p0, Lgy3;->r:Lh88;

    if-nez p1, :cond_0

    iget-boolean v1, p0, Lgy3;->u:Z

    if-nez v1, :cond_0

    invoke-static {p2}, Lgy3;->l(Lla5;)Lh88;

    move-result-object p1

    iput-object p1, p0, Lgy3;->r:Lh88;

    if-eqz p1, :cond_0

    iput-object p2, p0, Lgy3;->s:Lla5;

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "trailers: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lh88;->b(Ljava/lang/String;)Lh88;

    move-result-object p1

    iput-object p1, p0, Lgy3;->r:Lh88;

    iget-object p2, p0, Lgy3;->s:Lla5;

    invoke-virtual {p0, p1, v1, p2}, Lkv5$b;->m(Lh88;ZLla5;)V

    return-void

    :cond_1
    sget-object p1, Lo94;->b:Lla5$f;

    invoke-virtual {p2, p1}, Lla5;->c(Lla5$d;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lh88;

    if-eqz v2, :cond_2

    sget-object v3, Lo94;->a:Lla5$f;

    invoke-virtual {p2, v3}, Lla5;->c(Lla5$d;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Lh88;->h(Ljava/lang/String;)Lh88;

    move-result-object v2

    goto :goto_1

    :cond_2
    iget-boolean v2, p0, Lgy3;->u:Z

    if-eqz v2, :cond_3

    sget-object v2, Lh88;->g:Lh88;

    const-string v3, "missing GRPC status in response"

    invoke-virtual {v2, v3}, Lh88;->h(Ljava/lang/String;)Lh88;

    move-result-object v2

    goto :goto_1

    :cond_3
    invoke-virtual {p2, v0}, Lla5;->c(Lla5$d;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lvs3;->f(I)Lh88;

    move-result-object v2

    goto :goto_0

    :cond_4
    sget-object v2, Lh88;->l:Lh88;

    const-string v3, "missing HTTP status code"

    invoke-virtual {v2, v3}, Lh88;->h(Ljava/lang/String;)Lh88;

    move-result-object v2

    :goto_0
    const-string v3, "missing GRPC status, inferred error from HTTP status code"

    invoke-virtual {v2, v3}, Lh88;->b(Ljava/lang/String;)Lh88;

    move-result-object v2

    :goto_1
    invoke-virtual {p2, v0}, Lla5;->a(Lla5$d;)V

    invoke-virtual {p2, p1}, Lla5;->a(Lla5$d;)V

    sget-object p1, Lo94;->a:Lla5$f;

    invoke-virtual {p2, p1}, Lla5;->a(Lla5$d;)V

    iget-boolean p1, p0, Lt$b;->p:Z

    if-eqz p1, :cond_5

    sget-object p0, Lt;->i:Ljava/util/logging/Logger;

    sget-object p1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v0, "Received trailers on closed stream:\n {1}\n {2}"

    filled-new-array {v2, p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, p1, v0, p2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_5
    iget-object p1, p0, Lt$b;->i:Lg88;

    iget-object p1, p1, Lg88;->a:[Ly14;

    array-length v0, p1

    move v3, v1

    :goto_2
    if-ge v3, v0, :cond_6

    aget-object v4, p1, v3

    check-cast v4, Lio/grpc/c;

    invoke-virtual {v4, p2}, Lio/grpc/c;->X(Lla5;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_6
    invoke-virtual {p0, v2, v1, p2}, Lt$b;->j(Lh88;ZLla5;)V

    return-void

    :cond_7
    invoke-static {p1}, Ljb9;->a(Ljava/util/ArrayList;)[[B

    move-result-object p1

    new-instance p2, Lla5;

    array-length v1, p1

    div-int/lit8 v1, v1, 0x2

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput v1, p2, Lla5;->b:I

    iput-object p1, p2, Lla5;->a:[Ljava/lang/Object;

    iget-object p1, p0, Lgy3;->r:Lh88;

    const-string v1, "headers: "

    if-eqz p1, :cond_8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lh88;->b(Ljava/lang/String;)Lh88;

    move-result-object p1

    iput-object p1, p0, Lgy3;->r:Lh88;

    return-void

    :cond_8
    :try_start_0
    iget-boolean p1, p0, Lgy3;->u:Z

    if-eqz p1, :cond_9

    sget-object p1, Lh88;->l:Lh88;

    const-string v0, "Received headers twice"

    invoke-virtual {p1, v0}, Lh88;->h(Ljava/lang/String;)Lh88;

    move-result-object p1

    iput-object p1, p0, Lgy3;->r:Lh88;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lh88;->b(Ljava/lang/String;)Lh88;

    move-result-object p1

    iput-object p1, p0, Lgy3;->r:Lh88;

    iput-object p2, p0, Lgy3;->s:Lla5;

    invoke-static {p2}, Lgy3;->k(Lla5;)Ljava/nio/charset/Charset;

    move-result-object p1

    iput-object p1, p0, Lgy3;->t:Ljava/nio/charset/Charset;

    return-void

    :catchall_0
    move-exception p1

    goto/16 :goto_3

    :cond_9
    :try_start_1
    invoke-virtual {p2, v0}, Lla5;->c(Lla5$d;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x64

    if-lt v2, v3, :cond_a

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 v2, 0xc8

    if-ge p1, v2, :cond_a

    iget-object p1, p0, Lgy3;->r:Lh88;

    if-eqz p1, :cond_c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lh88;->b(Ljava/lang/String;)Lh88;

    move-result-object p1

    iput-object p1, p0, Lgy3;->r:Lh88;

    iput-object p2, p0, Lgy3;->s:Lla5;

    invoke-static {p2}, Lgy3;->k(Lla5;)Ljava/nio/charset/Charset;

    move-result-object p1

    iput-object p1, p0, Lgy3;->t:Ljava/nio/charset/Charset;

    return-void

    :cond_a
    const/4 p1, 0x1

    :try_start_2
    iput-boolean p1, p0, Lgy3;->u:Z

    invoke-static {p2}, Lgy3;->l(Lla5;)Lh88;

    move-result-object p1

    iput-object p1, p0, Lgy3;->r:Lh88;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p1, :cond_b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lh88;->b(Ljava/lang/String;)Lh88;

    move-result-object p1

    iput-object p1, p0, Lgy3;->r:Lh88;

    iput-object p2, p0, Lgy3;->s:Lla5;

    invoke-static {p2}, Lgy3;->k(Lla5;)Ljava/nio/charset/Charset;

    move-result-object p1

    iput-object p1, p0, Lgy3;->t:Ljava/nio/charset/Charset;

    return-void

    :cond_b
    :try_start_3
    invoke-virtual {p2, v0}, Lla5;->a(Lla5$d;)V

    sget-object p1, Lo94;->b:Lla5$f;

    invoke-virtual {p2, p1}, Lla5;->a(Lla5$d;)V

    sget-object p1, Lo94;->a:Lla5$f;

    invoke-virtual {p2, p1}, Lla5;->a(Lla5$d;)V

    invoke-virtual {p0, p2}, Lt$b;->h(Lla5;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iget-object p1, p0, Lgy3;->r:Lh88;

    if-eqz p1, :cond_c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lh88;->b(Ljava/lang/String;)Lh88;

    move-result-object p1

    iput-object p1, p0, Lgy3;->r:Lh88;

    iput-object p2, p0, Lgy3;->s:Lla5;

    invoke-static {p2}, Lgy3;->k(Lla5;)Ljava/nio/charset/Charset;

    move-result-object p1

    iput-object p1, p0, Lgy3;->t:Ljava/nio/charset/Charset;

    :cond_c
    return-void

    :goto_3
    iget-object v0, p0, Lgy3;->r:Lh88;

    if-eqz v0, :cond_d

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lh88;->b(Ljava/lang/String;)Lh88;

    move-result-object v0

    iput-object v0, p0, Lgy3;->r:Lh88;

    iput-object p2, p0, Lgy3;->s:Lla5;

    invoke-static {p2}, Lgy3;->k(Lla5;)Ljava/nio/charset/Charset;

    move-result-object p2

    iput-object p2, p0, Lgy3;->t:Ljava/nio/charset/Charset;

    :cond_d
    throw p1
.end method
