.class final Lcom/my/tracker/obfuscated/e2$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/my/tracker/obfuscated/d2$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/my/tracker/obfuscated/e2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private final a:Lcom/my/tracker/obfuscated/h1$g;


# direct methods
.method public constructor <init>(Lcom/my/tracker/obfuscated/h1$g;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/my/tracker/obfuscated/e2$b;->a:Lcom/my/tracker/obfuscated/h1$g;

    return-void
.end method


# virtual methods
.method public b()Z
    .locals 0

    iget-object p0, p0, Lcom/my/tracker/obfuscated/e2$b;->a:Lcom/my/tracker/obfuscated/h1$g;

    invoke-virtual {p0}, Lcom/my/tracker/obfuscated/h1$a;->b()Z

    move-result p0

    return p0
.end method

.method public close()V
    .locals 0

    iget-object p0, p0, Lcom/my/tracker/obfuscated/e2$b;->a:Lcom/my/tracker/obfuscated/h1$g;

    invoke-virtual {p0}, Lcom/my/tracker/obfuscated/h1$a;->close()V

    return-void
.end method

.method public f()Z
    .locals 0

    iget-object p0, p0, Lcom/my/tracker/obfuscated/e2$b;->a:Lcom/my/tracker/obfuscated/h1$g;

    invoke-virtual {p0}, Lcom/my/tracker/obfuscated/h1$g;->o()Z

    move-result p0

    return p0
.end method

.method public h()J
    .locals 2

    iget-object p0, p0, Lcom/my/tracker/obfuscated/e2$b;->a:Lcom/my/tracker/obfuscated/h1$g;

    invoke-virtual {p0}, Lcom/my/tracker/obfuscated/h1$g;->n()J

    move-result-wide v0

    return-wide v0
.end method

.method public j()J
    .locals 2

    iget-object p0, p0, Lcom/my/tracker/obfuscated/e2$b;->a:Lcom/my/tracker/obfuscated/h1$g;

    invoke-virtual {p0}, Lcom/my/tracker/obfuscated/h1$g;->m()J

    move-result-wide v0

    return-wide v0
.end method
