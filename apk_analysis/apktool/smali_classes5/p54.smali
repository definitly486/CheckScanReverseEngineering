.class public abstract Lp54;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lz05;

.field public b:Lzn5;

.field public c:Ljava/lang/String;

.field public d:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/regex/Pattern;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lp54;->a:Lz05;

    iget v1, p0, Lp54;->d:I

    iput v1, v0, Lz05;->h:I

    invoke-virtual {v0, p1}, Lz05;->c(Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lp54;->a:Lz05;

    iget v0, v0, Lz05;->h:I

    iput v0, p0, Lp54;->d:I

    return-object p1
.end method

.method public abstract b()Lzn5;
.end method

.method public final c()C
    .locals 1

    iget-object v0, p0, Lp54;->a:Lz05;

    iget p0, p0, Lp54;->d:I

    iput p0, v0, Lz05;->h:I

    invoke-virtual {v0}, Lz05;->d()C

    move-result p0

    return p0
.end method

.method public abstract d()C
.end method

.method public final e()V
    .locals 2

    iget-object v0, p0, Lp54;->a:Lz05;

    iget v1, p0, Lp54;->d:I

    iput v1, v0, Lz05;->h:I

    sget-object v1, Lz05;->l:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v1}, Lz05;->c(Ljava/util/regex/Pattern;)Ljava/lang/String;

    iget-object v0, p0, Lp54;->a:Lz05;

    iget v0, v0, Lz05;->h:I

    iput v0, p0, Lp54;->d:I

    return-void
.end method

.method public final f(Ljava/lang/String;)Ldq8;
    .locals 0

    iget-object p0, p0, Lp54;->a:Lz05;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Ldq8;

    invoke-direct {p0, p1}, Ldq8;-><init>(Ljava/lang/String;)V

    return-object p0
.end method
