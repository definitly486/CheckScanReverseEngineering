.class public final Lzs$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzs;->close()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lzs;


# direct methods
.method public constructor <init>(Lzs;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lzs$c;->b:Lzs;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object p0, p0, Lzs$c;->b:Lzs;

    iget-object v0, p0, Lzs;->e:Llv5;

    :try_start_0
    iget-object v1, p0, Lzs;->i:Lbt;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lzs;->c:Lbu0;

    iget-wide v3, v2, Lbu0;->c:J

    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-lez v5, :cond_0

    invoke-virtual {v1, v2, v3, v4}, Lbt;->H(Lbu0;J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v0, v1}, Llv5;->m(Ljava/lang/Exception;)V

    :cond_0
    :goto_0
    :try_start_1
    iget-object v1, p0, Lzs;->i:Lbt;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lbt;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    invoke-virtual {v0, v1}, Llv5;->m(Ljava/lang/Exception;)V

    :cond_1
    :goto_1
    :try_start_2
    iget-object p0, p0, Lzs;->j:Ljava/net/Socket;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/net/Socket;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception p0

    invoke-virtual {v0, p0}, Llv5;->m(Ljava/lang/Exception;)V

    :cond_2
    :goto_2
    return-void
.end method
