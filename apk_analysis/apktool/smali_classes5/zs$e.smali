.class public abstract Lzs$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "e"
.end annotation


# instance fields
.field public final synthetic b:Lzs;


# direct methods
.method public constructor <init>(Lzs;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lzs$e;->b:Lzs;

    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method public final run()V
    .locals 2

    iget-object v0, p0, Lzs$e;->b:Lzs;

    :try_start_0
    iget-object v1, v0, Lzs;->i:Lbt;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lzs$e;->a()V

    return-void

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string v1, "Unable to perform write due to unavailable sink."

    invoke-direct {p0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, v0, Lzs;->e:Llv5;

    invoke-virtual {v0, p0}, Llv5;->m(Ljava/lang/Exception;)V

    return-void
.end method
