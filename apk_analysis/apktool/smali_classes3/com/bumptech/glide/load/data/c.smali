.class public final Lcom/bumptech/glide/load/data/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/load/data/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/data/c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/data/a<",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Li07;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lpr;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Li07;

    invoke-direct {v0, p1, p2}, Li07;-><init>(Ljava/io/InputStream;Lpr;)V

    iput-object v0, p0, Lcom/bumptech/glide/load/data/c;->a:Li07;

    const/high16 p0, 0x500000

    invoke-virtual {v0, p0}, Li07;->mark(I)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/bumptech/glide/load/data/c;->a:Li07;

    invoke-virtual {p0}, Li07;->reset()V

    return-object p0
.end method

.method public final b()V
    .locals 0

    iget-object p0, p0, Lcom/bumptech/glide/load/data/c;->a:Li07;

    invoke-virtual {p0}, Li07;->release()V

    return-void
.end method
