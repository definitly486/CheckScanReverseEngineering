.class public final synthetic Lpy2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Lnb6;


# direct methods
.method public synthetic constructor <init>(Lnb6;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpy2;->b:Lnb6;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Lcom/posthog/PostHogEvent;

    check-cast p2, Ljava/io/OutputStream;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lpy2;->b:Lnb6;

    invoke-virtual {p0}, Lnb6;->b()Lwd6;

    move-result-object p0

    sget-object v0, Lha1;->b:Ljava/nio/charset/Charset;

    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-direct {v1, p2, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    new-instance p2, Ljava/io/BufferedWriter;

    const/16 v0, 0x2000

    invoke-direct {p2, v1, v0}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    iget-object p0, p0, Lwd6;->a:Lcom/google/gson/Gson;

    new-instance v0, Laz2;

    invoke-direct {v0}, Laz2;-><init>()V

    iget-object v0, v0, Lx39;->b:Ljava/lang/reflect/Type;

    invoke-virtual {p0, p1, v0, p2}, Lcom/google/gson/Gson;->m(Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/lang/Appendable;)V

    invoke-virtual {p2}, Ljava/io/Writer;->flush()V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
