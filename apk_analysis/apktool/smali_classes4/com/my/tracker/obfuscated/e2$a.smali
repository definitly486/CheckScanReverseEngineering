.class final Lcom/my/tracker/obfuscated/e2$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/my/tracker/obfuscated/d2$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/my/tracker/obfuscated/e2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/my/tracker/obfuscated/h1;

.field private final b:Lcom/my/tracker/obfuscated/h1$f;


# direct methods
.method public constructor <init>(Lcom/my/tracker/obfuscated/h1;Lcom/my/tracker/obfuscated/h1$f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/my/tracker/obfuscated/e2$a;->a:Lcom/my/tracker/obfuscated/h1;

    iput-object p2, p0, Lcom/my/tracker/obfuscated/e2$a;->b:Lcom/my/tracker/obfuscated/h1$f;

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    iget-object p0, p0, Lcom/my/tracker/obfuscated/e2$a;->b:Lcom/my/tracker/obfuscated/h1$f;

    invoke-virtual {p0}, Lcom/my/tracker/obfuscated/h1$f;->a()J

    move-result-wide v0

    return-wide v0
.end method

.method public b()Z
    .locals 0

    iget-object p0, p0, Lcom/my/tracker/obfuscated/e2$a;->b:Lcom/my/tracker/obfuscated/h1$f;

    invoke-virtual {p0}, Lcom/my/tracker/obfuscated/h1$a;->b()Z

    move-result p0

    return p0
.end method

.method public c()J
    .locals 2

    iget-object p0, p0, Lcom/my/tracker/obfuscated/e2$a;->b:Lcom/my/tracker/obfuscated/h1$f;

    invoke-virtual {p0}, Lcom/my/tracker/obfuscated/h1$f;->c()J

    move-result-wide v0

    return-wide v0
.end method

.method public close()V
    .locals 0

    iget-object p0, p0, Lcom/my/tracker/obfuscated/e2$a;->b:Lcom/my/tracker/obfuscated/h1$f;

    invoke-virtual {p0}, Lcom/my/tracker/obfuscated/h1$a;->close()V

    return-void
.end method

.method public d()Lcom/my/tracker/obfuscated/d2$b;
    .locals 4

    new-instance v0, Lcom/my/tracker/obfuscated/e2$b;

    iget-object v1, p0, Lcom/my/tracker/obfuscated/e2$a;->a:Lcom/my/tracker/obfuscated/h1;

    iget-object p0, p0, Lcom/my/tracker/obfuscated/e2$a;->b:Lcom/my/tracker/obfuscated/h1$f;

    invoke-virtual {p0}, Lcom/my/tracker/obfuscated/h1$f;->a()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/my/tracker/obfuscated/h1;->h(J)Lcom/my/tracker/obfuscated/h1$g;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/my/tracker/obfuscated/e2$b;-><init>(Lcom/my/tracker/obfuscated/h1$g;)V

    return-object v0
.end method

.method public k()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/my/tracker/obfuscated/e2$a;->b:Lcom/my/tracker/obfuscated/h1$f;

    invoke-virtual {p0}, Lcom/my/tracker/obfuscated/h1$f;->k()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
