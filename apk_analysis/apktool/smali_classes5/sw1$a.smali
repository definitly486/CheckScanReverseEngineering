.class public final Lsw1$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsw1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Z

.field public b:[Ljava/lang/String;

.field public c:[Ljava/lang/String;

.field public d:Z


# direct methods
.method public constructor <init>(Lsw1;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-boolean v0, p1, Lsw1;->a:Z

    iput-boolean v0, p0, Lsw1$a;->a:Z

    iget-object v0, p1, Lsw1;->b:[Ljava/lang/String;

    iput-object v0, p0, Lsw1$a;->b:[Ljava/lang/String;

    iget-object v0, p1, Lsw1;->c:[Ljava/lang/String;

    iput-object v0, p0, Lsw1$a;->c:[Ljava/lang/String;

    iget-boolean p1, p1, Lsw1;->d:Z

    iput-boolean p1, p0, Lsw1$a;->d:Z

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-boolean p1, p0, Lsw1$a;->a:Z

    return-void
.end method


# virtual methods
.method public final varargs a([Lzj1;)V
    .locals 3

    iget-boolean v0, p0, Lsw1$a;->a:Z

    if-eqz v0, :cond_1

    array-length v0, p1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    aget-object v2, p1, v1

    iget-object v2, v2, Lzj1;->javaName:Ljava/lang/String;

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iput-object v0, p0, Lsw1$a;->b:[Ljava/lang/String;

    return-void

    :cond_1
    const-string p0, "no cipher suites for cleartext connections"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-void
.end method

.method public final b()V
    .locals 1

    iget-boolean v0, p0, Lsw1$a;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lsw1$a;->d:Z

    return-void

    :cond_0
    const-string p0, "no TLS extensions for cleartext connections"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-void
.end method

.method public final varargs c([Lzw8;)V
    .locals 3

    iget-boolean v0, p0, Lsw1$a;->a:Z

    if-eqz v0, :cond_2

    array-length v0, p1

    if-eqz v0, :cond_1

    array-length v0, p1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    aget-object v2, p1, v1

    iget-object v2, v2, Lzw8;->javaName:Ljava/lang/String;

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iput-object v0, p0, Lsw1$a;->c:[Ljava/lang/String;

    return-void

    :cond_1
    const-string p0, "At least one TlsVersion is required"

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    return-void

    :cond_2
    const-string p0, "no TLS versions for cleartext connections"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-void
.end method
