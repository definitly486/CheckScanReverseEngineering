.class public final Ly93$b$c;
.super Ly93$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ly93$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "c"
.end annotation


# instance fields
.field public b:Z

.field public c:[Ljava/io/File;

.field public d:I


# virtual methods
.method public final a()Ljava/io/File;
    .locals 5

    iget-boolean v0, p0, Ly93$b$c;->b:Z

    iget-object v1, p0, Ly93$c;->a:Ljava/io/File;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Ly93$b$c;->b:Z

    return-object v1

    :cond_0
    iget-object v0, p0, Ly93$b$c;->c:[Ljava/io/File;

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    iget v3, p0, Ly93$b$c;->d:I

    array-length v4, v0

    if-ge v3, v4, :cond_1

    goto :goto_0

    :cond_1
    return-object v2

    :cond_2
    :goto_0
    if-nez v0, :cond_4

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Ly93$b$c;->c:[Ljava/io/File;

    if-eqz v0, :cond_3

    array-length v1, v0

    if-nez v1, :cond_4

    :cond_3
    return-object v2

    :cond_4
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v1, p0, Ly93$b$c;->d:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ly93$b$c;->d:I

    aget-object p0, v0, v1

    return-object p0
.end method
