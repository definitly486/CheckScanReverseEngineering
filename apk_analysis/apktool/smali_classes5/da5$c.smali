.class public final Lda5$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj98$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lda5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public a:Ljava/io/InputStream;


# virtual methods
.method public final next()Ljava/io/InputStream;
    .locals 2

    iget-object v0, p0, Lda5$c;->a:Ljava/io/InputStream;

    const/4 v1, 0x0

    iput-object v1, p0, Lda5$c;->a:Ljava/io/InputStream;

    return-object v0
.end method
