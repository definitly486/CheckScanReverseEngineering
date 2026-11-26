.class public final synthetic Lbb6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Ldb6;

.field public final synthetic c:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ldb6;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbb6;->b:Ldb6;

    iput-object p2, p0, Lbb6;->c:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p1, Ljava/io/OutputStream;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lbb6;->b:Ldb6;

    iget-object v0, v0, Ldb6;->a:Lta6;

    invoke-virtual {v0}, Lnb6;->b()Lwd6;

    move-result-object v0

    sget-object v1, Lha1;->b:Ljava/nio/charset/Charset;

    new-instance v2, Ljava/io/OutputStreamWriter;

    invoke-direct {v2, p1, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    new-instance p1, Ljava/io/BufferedWriter;

    const/16 v1, 0x2000

    invoke-direct {p1, v2, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    iget-object v0, v0, Lwd6;->a:Lcom/google/gson/Gson;

    new-instance v1, Lhb6;

    invoke-direct {v1}, Lhb6;-><init>()V

    iget-object v1, v1, Lx39;->b:Ljava/lang/reflect/Type;

    iget-object p0, p0, Lbb6;->c:Ljava/util/List;

    invoke-virtual {v0, p0, v1, p1}, Lcom/google/gson/Gson;->m(Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/lang/Appendable;)V

    invoke-virtual {p1}, Ljava/io/Writer;->flush()V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
