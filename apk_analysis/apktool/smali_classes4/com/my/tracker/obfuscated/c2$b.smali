.class final Lcom/my/tracker/obfuscated/c2$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/my/tracker/obfuscated/b2$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/my/tracker/obfuscated/c2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private final a:Lcom/my/tracker/obfuscated/h1$d;


# direct methods
.method public constructor <init>(Lcom/my/tracker/obfuscated/h1$d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/my/tracker/obfuscated/c2$b;->a:Lcom/my/tracker/obfuscated/h1$d;

    return-void
.end method


# virtual methods
.method public b()Z
    .locals 0

    iget-object p0, p0, Lcom/my/tracker/obfuscated/c2$b;->a:Lcom/my/tracker/obfuscated/h1$d;

    invoke-virtual {p0}, Lcom/my/tracker/obfuscated/h1$a;->b()Z

    move-result p0

    return p0
.end method

.method public close()V
    .locals 0

    iget-object p0, p0, Lcom/my/tracker/obfuscated/c2$b;->a:Lcom/my/tracker/obfuscated/h1$d;

    invoke-virtual {p0}, Lcom/my/tracker/obfuscated/h1$a;->close()V

    return-void
.end method

.method public e()J
    .locals 2

    iget-object p0, p0, Lcom/my/tracker/obfuscated/c2$b;->a:Lcom/my/tracker/obfuscated/h1$d;

    invoke-virtual {p0}, Lcom/my/tracker/obfuscated/h1$d;->e()J

    move-result-wide v0

    return-wide v0
.end method
