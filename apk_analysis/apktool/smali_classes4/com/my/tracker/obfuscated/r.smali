.class public Lcom/my/tracker/obfuscated/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/my/tracker/obfuscated/w0$a;


# instance fields
.field private final a:Lcom/my/tracker/obfuscated/q;


# direct methods
.method public constructor <init>(Lcom/my/tracker/obfuscated/q;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/my/tracker/obfuscated/r;->a:Lcom/my/tracker/obfuscated/q;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 0

    .line 6
    const-string p0, "application/octet-stream"

    return-object p0
.end method

.method public a(Ljava/io/OutputStream;)V
    .locals 0

    iget-object p0, p0, Lcom/my/tracker/obfuscated/r;->a:Lcom/my/tracker/obfuscated/q;

    invoke-virtual {p0, p1}, Lcom/my/tracker/obfuscated/q;->a(Ljava/io/OutputStream;)V

    return-void
.end method
