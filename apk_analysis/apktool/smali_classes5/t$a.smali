.class public final Lt$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwk3;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public a:Lla5;

.field public b:Z

.field public final c:Lg88;

.field public d:[B

.field public final synthetic e:Lt;


# direct methods
.method public constructor <init>(Lt;Lla5;Lg88;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt$a;->e:Lt;

    const-string p1, "headers"

    invoke-static {p2, p1}, Lo8;->l(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p2, p0, Lt$a;->a:Lla5;

    iput-object p3, p0, Lt$a;->c:Lg88;

    return-void
.end method


# virtual methods
.method public final b(I)V
    .locals 0

    return-void
.end method

.method public final c(Lqu1;)Lwk3;
    .locals 0

    return-object p0
.end method

.method public final close()V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lt$a;->b:Z

    iget-object v1, p0, Lt$a;->d:[B

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Lack of request message. GET request is only supported for unary requests"

    invoke-static {v0, v1}, Lo8;->s(ZLjava/lang/Object;)V

    iget-object v0, p0, Lt$a;->e:Lt;

    invoke-virtual {v0}, Lt;->o()Lkv5$a;

    move-result-object v0

    iget-object v1, p0, Lt$a;->a:Lla5;

    iget-object v2, p0, Lt$a;->d:[B

    invoke-virtual {v0, v1, v2}, Lkv5$a;->a(Lla5;[B)V

    const/4 v0, 0x0

    iput-object v0, p0, Lt$a;->d:[B

    iput-object v0, p0, Lt$a;->a:Lla5;

    return-void
.end method

.method public final d(Ljava/io/InputStream;)V
    .locals 10

    iget-object v0, p0, Lt$a;->c:Lg88;

    iget-object v1, v0, Lg88;->a:[Ly14;

    iget-object v2, p0, Lt$a;->d:[B

    const/4 v3, 0x0

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    const-string v4, "writePayload should not be called multiple times"

    invoke-static {v2, v4}, Lo8;->s(ZLjava/lang/Object;)V

    :try_start_0
    invoke-static {p1}, Ldx0;->b(Ljava/io/InputStream;)[B

    move-result-object p1

    iput-object p1, p0, Lt$a;->d:[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    array-length p1, v1

    move v2, v3

    :goto_1
    if-ge v2, p1, :cond_1

    aget-object v4, v1, v2

    invoke-virtual {v4, v3}, Ly14;->J(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lt$a;->d:[B

    array-length v2, p1

    int-to-long v6, v2

    array-length p1, p1

    int-to-long v8, p1

    iget-object p1, v0, Lg88;->a:[Ly14;

    array-length v0, p1

    move v2, v3

    :goto_2
    if-ge v2, v0, :cond_2

    aget-object v4, p1, v2

    const/4 v5, 0x0

    invoke-virtual/range {v4 .. v9}, Ly14;->K(IJJ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    iget-object p1, p0, Lt$a;->d:[B

    array-length p1, p1

    int-to-long v4, p1

    array-length p1, v1

    move v0, v3

    :goto_3
    if-ge v0, p1, :cond_3

    aget-object v2, v1, v0

    invoke-virtual {v2, v4, v5}, Ly14;->L(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_3
    iget-object p0, p0, Lt$a;->d:[B

    array-length p0, p0

    int-to-long p0, p0

    array-length v0, v1

    :goto_4
    if-ge v3, v0, :cond_4

    aget-object v2, v1, v3

    invoke-virtual {v2, p0, p1}, Ly14;->M(J)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_4
    return-void

    :catch_0
    move-exception v0

    move-object p0, v0

    invoke-static {p0}, Lti0;->f(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final flush()V
    .locals 0

    return-void
.end method

.method public final isClosed()Z
    .locals 0

    iget-boolean p0, p0, Lt$a;->b:Z

    return p0
.end method
